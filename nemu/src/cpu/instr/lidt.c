#include "cpu/instr.h"
/*
Put the implementations of `lidt' instructions here.
*/

make_instr_func(lidt) 
{
    int len = 1;
    opr_src.data_size = 16;
    len += modrm_rm(eip + 1, &opr_src);
    operand_read(&opr_src);
    cpu.idtr.limit = opr_src.val;
    opr_src.data_size = 32;
    opr_src.addr += 2;
    operand_read(&opr_src);
    cpu.idtr.base = opr_src.val;
    return len;
}
