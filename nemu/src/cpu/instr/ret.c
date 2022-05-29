#include "cpu/instr.h"
/*
Put the implementations of `ret' instructions here.
*/

make_instr_func(ret_near)
{
    OPERAND old_eip;
    old_eip.type = OPR_MEM;
    old_eip.sreg = SREG_SS;
    old_eip.addr = cpu.esp;
    old_eip.data_size = 32;
    
    operand_read(&old_eip);
    cpu.eip = old_eip.val;
    cpu.esp += 4;
    
    return 0;
}

make_instr_func(ret_near_imm16)
{
    OPERAND old_eip;
    old_eip.type = OPR_MEM;
    old_eip.sreg = SREG_SS;
    old_eip.addr = cpu.esp;
    old_eip.data_size = 32;
    
    operand_read(&old_eip);
    cpu.eip = old_eip.val;
    cpu.esp += 4;
    
    OPERAND imm;
    imm.data_size = 16;
    imm.type = OPR_IMM;
    imm.addr = eip + 1;
    
    operand_read(&imm);
    cpu.esp += imm.val * (data_size / 16);
    
    return 0;
}