#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg)
{
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
// 	printf("Use segment_translate\n");
	uint32_t base = cpu.segReg[sreg].base;
	return base + offset;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg)
{
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	 SegDesc segDesc;
// 	 if (cpu.cr0.pg) {
// 	     segDesc = *(SegDesc *)(hw_mem + page_translate(cpu.gdtr.base + (cpu.segReg[sreg].index << 3)));
// 	 } else {
// 	     segDesc = *(SegDesc *)(hw_mem + cpu.gdtr.base + (cpu.segReg[sreg].index << 3));
// 	 }
     segDesc.val[0] = laddr_read(cpu.gdtr.base + (cpu.segReg[sreg].index << 3), 4);
     segDesc.val[1] = laddr_read(cpu.gdtr.base + (cpu.segReg[sreg].index << 3) + 4, 8);
	 uint32_t base = (segDesc.base_31_24 << 24) + (segDesc.base_23_16 << 16) + (segDesc.base_15_0);
	 uint32_t limit = (segDesc.limit_19_16 << 16) + (segDesc.limit_15_0);
	 
// 	 printf("Checking segReg base %x\n", base);
// 	 assert(base == 0);
// 	 printf("Cheking segReg limit %x\n", limit);
// 	 assert(limit == 0xFFFFF);
    //  printf("sreg index = %d\n", sreg);
    //  printf("gdtr index = %d\n", (cpu.segReg[sreg].index << 3));
     if (limit != 0xfffff)
        printf("Ops...Somewhere may wrong, limit = %x\n", limit);
	 cpu.segReg[sreg].base = base;
	 cpu.segReg[sreg].limit = limit;
}
