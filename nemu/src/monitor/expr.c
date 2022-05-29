#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"
#include "cpu/operand.h"
#include "monitor/ui.h"
#include <stdlib.h>
#include <string.h>
#include <elf.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

/* TODO: Add more token types */
enum
{
	NOTYPE = 256,
	NUM, // 数字：十进制
	HEX, // 数字：十六进制
	SYMB, // 符号：test_case, ……
	REG, // 寄存器：$eax, $edx, ……
    DEREF, // 指针解引用
    NEG, // 负数
    EQ, // 等式
};

static struct rule
{
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +", NOTYPE}, // white space
    {"0[xX][0-9a-fA-F]+", HEX}, // hexcimal
    {"[0-9]{1,10}", NUM}, // decimal
    {"[a-zA-Z]+[0-9]*[a-zA-z]*", SYMB}, // viriable
    {"\\$e?[abcdsdi][xhlip]", REG}, // register
    {"-", '-'},
	{"\\+", '+'},
	{"/", '/'},
    {"\\*", '*'},
    {"\\(", '('},
    {"\\)", ')'}
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]))

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex()
{
	int i;
	char error_msg[128];
	int ret;

	for (i = 0; i < NR_REGEX; i++)
	{
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if (ret != 0)
		{
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token
{
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static void cat_string(char *dst, char *src, int len)
{
    int i = 0;
    for (; i < len; i++)
        *(dst + i) = *(src + i);
    *(dst + i) = '\0';
    // printf("Put string: %s into token\n", dst);
}

static bool make_token(char *e)
{
	int position = 0;
	int i;
	regmatch_t pmatch;

	nr_token = 0;

	while (e[position] != '\0')
	{
		/* Try all rules one by one. */
		for (i = 0; i < NR_REGEX; i++)
		{
			if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0)
			{
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				printf("match regex[%d] at position %d with len %d: %.*s type is %d\n", i, position, substr_len, substr_len, substr_start, rules[i].token_type);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */

				switch (rules[i].token_type)
				{
				case NOTYPE:
				    break;
				default:
				    cat_string(tokens[nr_token].str, substr_start, substr_len);
					tokens[nr_token].type = rules[i].token_type;
					nr_token++;
				}

				break;
			}
		}

		if (i == NR_REGEX)
		{
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true;
}

static uint32_t get_dominate(int start, int end)
{
    int dominate_op_index = -1;
    int dominate_op = -1;
    for (int i = start; i <= end; i++) {
        if (tokens[i].type == NEG && dominate_op == -1) {
            dominate_op_index = i;
            dominate_op = NEG;
        } else if (tokens[i].type == DEREF && dominate_op == -1) {
            dominate_op_index = i;
            dominate_op = DEREF;
        } else if (tokens[i].type > 256) {
            continue;
        } else if (tokens[i].type == '(') {
            while (tokens[i].type != ')') i++;
            i++;
        } else if (tokens[i].type == '*' || tokens[i].type == '/') {
            if (dominate_op == -1 || dominate_op == NEG || dominate_op == DEREF) {
                dominate_op_index = i;
                dominate_op = tokens[i].type;
            }
        } else if (tokens[i].type == '+' || tokens[i].type == '-') {
            dominate_op_index = i;
            dominate_op = tokens[i].type;
        }
    }
    return dominate_op_index;
}

static bool check_parentheses(int start, int end)
{
    if (tokens[start].type == '(' && tokens[end].type == ')') return true;
    return false;
}

static int decode_dec(int start)
{
    int decimal = 0;
    for (int i = 0; i < strlen(tokens[start].str); i++) {
        decimal = decimal * 10 + (tokens[start].str[i] - 0x30);
    }
    return decimal;
}

static int decode_hex(int start)
{
    int decimal = 0;
    for (int i = 2; i < strlen(tokens[start].str); i++) {
        if (tokens[start].str[i] < 0x40)
            decimal = decimal * 16 + (tokens[start].str[i] - 0x30);
        else if (tokens[start].str[i] < 0x47)
            decimal = decimal * 16 + (tokens[start].str[i] - 0x41 + 10);
        else 
            decimal = decimal * 16 + (tokens[start].str[i] - 0x61 + 10);
    }
    return decimal;
}

static int reg_reader(int reg_index, int len)
{
    OPERAND reg;
    reg.type = OPR_REG;
    reg.addr = reg_index;
    reg.data_size = len * 8;
    operand_read(&reg);
    return reg.val;
}

static int decode_reg(int start)
{
    char *reg = tokens[start].str;
    if (strcmp(reg, "$eax") == 0) return reg_reader(REG_EAX, 4);
    else if (strcmp(reg, "$ax") == 0) return reg_reader(REG_AX, 2);
    else if (strcmp(reg, "$ah") == 0) return reg_reader(REG_AH, 1);
    else if (strcmp(reg, "$al") == 0) return reg_reader(REG_AL, 1);
    else if (strcmp(reg, "$ebx") == 0) return reg_reader(REG_EBX, 4);
    else if (strcmp(reg, "$bx") == 0) return reg_reader(REG_BX, 2);
    else if (strcmp(reg, "$bh") == 0) return reg_reader(REG_BH, 1);
    else if (strcmp(reg, "$bl") == 0) return reg_reader(REG_BL, 1);
    else if (strcmp(reg, "$ecx") == 0) return reg_reader(REG_ECX, 4);
    else if (strcmp(reg, "$cx") == 0) return reg_reader(REG_CX, 2);
    else if (strcmp(reg, "$ch") == 0) return reg_reader(REG_CH, 1);
    else if (strcmp(reg, "$cl") == 0) return reg_reader(REG_CL, 1);
    else if (strcmp(reg, "$edx") == 0) return reg_reader(REG_EDX, 4);
    else if (strcmp(reg, "$dx") == 0) return reg_reader(REG_DX, 2);
    else if (strcmp(reg, "$dh") == 0) return reg_reader(REG_DH, 1);
    else if (strcmp(reg, "$dl") == 0) return reg_reader(REG_DL, 1);
    else if (strcmp(reg, "$esp") == 0) return reg_reader(REG_ESP, 4);
    else if (strcmp(reg, "$sp") == 0) return reg_reader(REG_SP, 2);
    else if (strcmp(reg, "$ebp") == 0) return reg_reader(REG_EBP, 4);
    else if (strcmp(reg, "$bp") == 0) return reg_reader(REG_BP, 2);
    else if (strcmp(reg, "$esi") == 0) return reg_reader(REG_ESI, 4);
    else if (strcmp(reg, "$si") == 0) return reg_reader(REG_SI, 2);
    else if (strcmp(reg, "$edi") == 0) return reg_reader(REG_EDI, 4);
    else if (strcmp(reg, "$di") == 0) return reg_reader(REG_DI, 2);
    else printf("Unrecognised register: %s\n", reg);
    return 0;
}

uint32_t look_up_symtab(char *sym, bool *success);

static int decode_symb(int start, bool *success)
{
    return look_up_symtab(tokens[start].str, success);
}

uint32_t eval(int start, int end, bool *success)
{
    if(*success == false || start > end) {
        printf("bad expression\n");
        *success = false;
        return 0;
    }
    else if(start == end) { 
        /* Single token.
         * For now this token should be a number, return the value of the number.
         */
        switch(tokens[start].type) {
            case NUM: return decode_dec(start);
            case HEX: return decode_hex(start);
            case REG: return decode_reg(start);
            case SYMB: return decode_symb(start, success);
            default: 
            printf("Unknown number type\n");
            *success = false;
            return 0;
        }
    }
    else if(check_parentheses(start, end) == true) {
        /* The expression is surrounded by a matched pair of parentheses. 
         * If that is the case, just throw away the parentheses.
         */
        return eval(start + 1, end - 1, success);
    }
    else {
        int addr = 0;
        int op = get_dominate(start, end);
        switch(tokens[op].type) {
            case '+': return eval(start, op - 1, success) + eval(op + 1, end, success);
            case '-': return eval(start, op - 1, success) - eval(op + 1, end, success);
            case '*': return eval(start, op - 1, success) * eval(op + 1, end, success);
            case '/': return eval(start, op - 1, success) / eval(op + 1, end, success);
            case NEG: return - eval(op + 1, end, success);
            case DEREF: 
                addr = eval(op + 1, end, success);
                printf("Read from memory: %d is %d\n", addr, vaddr_read(addr, SREG_DS, 4));
                return vaddr_read(addr, SREG_DS, 4);
            default: 
            printf("Invalid dominate operator type\n");
            *success = false;
            return 0;
        }
    }
}

uint32_t expr(char *e, bool *success)
{
	if (!make_token(e))
	{
		*success = false;
		return 0;
	}
 	// *success = true;

    /* TODO: Implement code to evaluate the expression. */
    for(int i = 0; i < nr_token; i++) {
        if (tokens[i].type == '*' && (i == 0 || tokens[i - 1].type == '+' || tokens[i - 1].type == '-' || tokens[i - 1].type == '*' || tokens[i - 1].type == '/')) {
            tokens[i].type = DEREF;
        }
        if (tokens[i].type == '-' && (i == 0 || tokens[i - 1].type == '+' || tokens[i - 1].type == '-' || tokens[i - 1].type == '*' || tokens[i - 1].type == '/')) {
            tokens[i].type = NEG;
        }
    }
    return eval(0, nr_token - 1, success);
}
