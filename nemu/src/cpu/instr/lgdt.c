#include "cpu/instr.h"
/*
Put the implementations of `lgdt' instructions here.
*/

make_instr_func(lgdt)
{
    int len = 1;
    OPERAND rel;
    rel.data_size = 16;
    len += modrm_rm(eip + 1, &rel);
    operand_read(&rel);
    cpu.gdtr.limit = rel.val;
    
    rel.data_size = 32;
    rel.addr += 2;
    operand_read(&rel);
    cpu.gdtr.base = rel.val;
    
    return len;
}
