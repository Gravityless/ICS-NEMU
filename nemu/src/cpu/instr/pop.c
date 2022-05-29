#include "cpu/instr.h"
/*
Put the implementations of `pop' instructions here.
*/

static void instr_execute_1op()
{
    OPERAND stack_top;
    
    stack_top.type = OPR_MEM;
    stack_top.sreg = SREG_SS;
    stack_top.addr = cpu.esp;
    stack_top.data_size = opr_src.data_size;
    
    operand_read(&stack_top);
    cpu.esp += opr_src.data_size / 8;
    
    opr_src.val = stack_top.val;
    operand_write(&opr_src);
}

make_instr_impl_1op(pop, r, v)

make_instr_func(popa)
{
    for (int i = 0; i < 8; i++) {
        cpu.gpr[7 - i].val = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
    }
    return 1;
}

// make_instr_func(popa)
// {
//     decode_data_size_v
    
//     opr_src.type = OPR_MEM;
//     opr_src.sreg = SREG_SS;
//     opr_dest.type = OPR_REG;

//     for (int i = REG_DI; i >= REG_BP; i--) {
//         opr_src.addr = cpu.esp;
//         operand_read(&opr_src);
//         cpu.esp += data_size / 8;
//         opr_dest.addr = i;
//         opr_dest.val = opr_src.val;
//         operand_write(&opr_dest);
//     }

//     cpu.esp += data_size / 8;
    
//     for (int i = REG_BX; i >= REG_AX; i--) {
//         opr_src.addr = cpu.esp;
//         operand_read(&opr_src);
//         cpu.esp += data_size / 8;
//         opr_dest.addr = i;
//         opr_dest.val = opr_src.val;
//         operand_write(&opr_dest);
//     }
    
//     return 1;
// }
