#include "cpu/instr.h"
/*
Put the implementations of `test' instructions here.
*/

static void set_PF(uint32_t res) {
    res = res & (0xFFFFFFFF >> 24);
    uint8_t count = 0;  
    while (res) {  
        res = res & (res - 1);  
        count++;  
    }
    cpu.eflags.PF = (0 == (count & 1));
}

static void set_ZF(uint32_t res, size_t data_size) {
    res = res & (0xFFFFFFFF >> (32 - data_size));
    cpu.eflags.ZF = (res == 0);
}

static void set_SF(uint32_t res, size_t data_size) {
    res = sign_ext(res & (0xFFFFFFFF >> (32 - data_size)), data_size);
    cpu.eflags.SF = sign(res);
}

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    
    opr_dest.val = opr_dest.val & opr_src.val;
    
    cpu.eflags.CF = 0;
    cpu.eflags.OF = 0;
    
    set_PF(opr_dest.val);
    set_ZF(opr_dest.val, opr_dest.data_size);
    set_SF(opr_dest.val, opr_dest.data_size);
}

make_instr_impl_2op(test, r, rm, v)
make_instr_impl_2op(test, r, rm, b)
make_instr_impl_2op(test, i, rm, v)
make_instr_impl_2op(test, i, a, v)
make_instr_impl_2op(test, i, a, b)
make_instr_impl_2op(test, i, rm, b)
