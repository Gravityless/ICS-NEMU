#include "cpu/instr.h"
/*
Put the implementations of `push' instructions here.
*/

static void instr_execute_1op()
{
    operand_read(&opr_src);
    
    cpu.esp -= data_size / 8;
    
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_src.data_size = data_size;
    opr_src.type = OPR_MEM;
    opr_src.sreg = SREG_SS;
    opr_src.addr = cpu.esp;
    
    operand_write(&opr_src);
}

make_instr_impl_1op(push, r, v)
make_instr_impl_1op(push, rm, v)
make_instr_impl_1op(push, i, b)
make_instr_impl_1op(push, i, v)

make_instr_func(pusha)
{
    for (int i = 0; i < 8; i++) {
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[i].val);
    }
    return 1;
}

// make_instr_func(pusha)
// {
//     decode_data_size_v
    
//     opr_src.type = OPR_REG;
//     opr_src.addr = REG_SP;
//     opr_dest.type = OPR_MEM;
//     opr_dest.sreg = SREG_SS;
//     opr_dest.addr = cpu.esp;
    
//     operand_read(&opr_src);
//     int temp = opr_src.val;
    
//     for (int i = REG_AX; i <= REG_BX; i++) {
//         opr_src.type = OPR_REG;
//         opr_src.addr = i;
        
//         operand_read(&opr_src);
//         opr_dest.val = opr_src.val;
//         cpu.esp -= data_size / 8;
//         opr_dest.addr = cpu.esp;
//         operand_write(&opr_dest);
//     }

//     opr_dest.val = temp;
//     cpu.esp -= data_size / 8;
//     opr_dest.addr = cpu.esp;
//     operand_write(&opr_dest);
    
//     for (int i = REG_BP; i <= REG_DI; i++) {
//         opr_src.type = OPR_REG;
//         opr_src.addr = i;
        
//         operand_read(&opr_src);
//         opr_dest.val = opr_src.val;
//         cpu.esp -= data_size / 8;
//         opr_dest.addr = cpu.esp;
//         operand_write(&opr_dest);
//     }
    
//     return 1;
// }