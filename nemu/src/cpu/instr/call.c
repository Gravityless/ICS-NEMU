#include "cpu/instr.h"
/*
Put the implementations of `call' instructions here.
*/

make_instr_func(call_near)
{
    int len = 1;
    
    decode_data_size_v
    decode_operand_i
    operand_read(&opr_src);
    
    cpu.esp -= 4;
    
    OPERAND old_eip;
    old_eip.type = OPR_MEM;
    old_eip.sreg = SREG_SS;
    old_eip.addr = cpu.esp;
    old_eip.val = eip + len;
    old_eip.data_size = 32;
    
    operand_write(&old_eip);
    
    cpu.eip += opr_src.val;
    
    return len;
}

make_instr_func(call_near_indirect)
{
    int len = 1;
    
    decode_data_size_v
    decode_operand_rm
    operand_read(&opr_src);
    
    cpu.esp -= 4;
    
    OPERAND old_eip;
    old_eip.type = OPR_MEM;
    old_eip.sreg = SREG_SS;
    old_eip.addr = cpu.esp;
    old_eip.val = eip + len;
    old_eip.data_size = 32;
    
    operand_write(&old_eip);
    
    int offset = sign_ext(opr_src.val, data_size);
    cpu.eip = offset;
    
    return 0;
}