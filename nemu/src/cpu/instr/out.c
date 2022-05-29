#include "cpu/instr.h"
#include "device/port_io.h"
/*
Put the implementations of `out' instructions here.
*/

make_instr_func(out_b)
{
    pio_write(cpu.edx & 0xffff, 1, cpu.eax);
    return 1;
}

make_instr_func(out_v)
{
    pio_write(cpu.edx & 0xffff, data_size >> 3, cpu.eax);
    return 1;
}
