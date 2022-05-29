#include "cpu/instr.h"

make_instr_func(jmp_near)
{
    OPERAND rel;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = eip + 1;

    operand_read(&rel);

    int offset = sign_ext(rel.val, data_size);
    // thank Ting Xu from CS'17 for finding this bug
    print_asm_1("jmp", "", 1 + data_size / 8, &rel);

    cpu.eip += offset;

    return 1 + data_size / 8;
}

make_instr_func(jmp_short)
{
    OPERAND rel;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.data_size = 8;
    rel.addr = eip + 1;

    operand_read(&rel);

    int offset = sign_ext(rel.val, rel.data_size);
    // thank Ting Xu from CS'17 for finding this bug
    print_asm_1("jmp", "", 1 + data_size / 8, &rel);

    cpu.eip += offset;

    return 1 + rel.data_size / 8;
}

make_instr_func(jmp_near_indirect)
{
    int len = 1;
    OPERAND rel;
    rel.data_size = data_size;

    len += modrm_rm(eip + 1, &rel);
    operand_read(&rel);

    int offset = sign_ext(rel.val, data_size);
    cpu.eip = offset;

    return 0;
}

make_instr_func(jmp_far_imm)
{
    OPERAND rel;
    rel.data_size = 32;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.addr = eip + 1;
    operand_read(&rel);
    
    int offset = sign_ext(rel.val, data_size);
    // thank Ting Xu from CS'17 for finding this bug
    print_asm_1("long jmp", "", 1 + data_size / 8 + 2, &rel);

    rel.data_size = 16;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.addr = eip + 1 + data_size / 8;
    operand_read(&rel);
    
    cpu.cs.val = rel.val;
    load_sreg(1);
    cpu.eip = segment_translate(offset, rel.val);

    return 0;
}
