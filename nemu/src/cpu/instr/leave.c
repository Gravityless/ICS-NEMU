#include "cpu/instr.h"
/*
Put the implementations of `leave' instructions here.
*/

make_instr_func(leave)
{
    int len = 1;
    
    OPERAND old_ebp;
    old_ebp.data_size = data_size;
    old_ebp.type = OPR_MEM;
    old_ebp.sreg = SREG_SS;
    old_ebp.addr = cpu.ebp;
    
    operand_read(&old_ebp);
    cpu.esp = cpu.ebp;
    cpu.ebp = old_ebp.val;
    cpu.esp += data_size / 8;
    
    
    
    return len;
}
