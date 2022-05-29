#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"

#define GDT_ENTRY(n) ((n) << 3)

void raise_intr(uint8_t intr_no)
{
#ifdef IA32_INTR
    cpu.esp -= 4;
    vaddr_write(cpu.esp, SREG_SS, 4, cpu.eflags.val);
    cpu.esp -= 2;
    vaddr_write(cpu.esp, SREG_SS, 2, cpu.cs.val);
    cpu.esp -= 4;
    vaddr_write(cpu.esp, SREG_SS, 4, cpu.eip);
    
    union {
        GateDesc gateDesc;
        uint32_t val[2];
    } gd;
	
	gd.val[0] = laddr_read(cpu.idtr.base + 8 * intr_no, 4);
	gd.val[1] = laddr_read(cpu.idtr.base + 8 * intr_no + 4, 4);
	if (gd.gateDesc.type == 0xe) cpu.eflags.IF = 0;
	
	cpu.cs.val = GDT_ENTRY(1);
	load_sreg(1);
	cpu.eip = (gd.gateDesc.offset_31_16 << 16) + (gd.gateDesc.offset_15_0);
#endif
}

void raise_sw_intr(uint8_t intr_no)
{
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
