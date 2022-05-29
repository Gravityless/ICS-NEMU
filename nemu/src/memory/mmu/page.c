#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr)
{
#ifndef TLB_ENABLED
    uint32_t dir = (laddr >> 22) & 0x3ff;
    uint32_t page = (laddr >> 12) & 0x3ff;
    // printf("Page translating...\n");
    PDE *pd = (PDE *)(hw_mem + (cpu.cr3.pdtr << 12) + (dir << 2));
    assert(pd->present == 1);
    PTE *pt = (PTE *)(hw_mem + (pd->page_frame << 12) + (page << 2));
    assert(pt->present == 1);
    return (pt->page_frame << 12) + (laddr & 0xfff);
#else
	return tlb_read(laddr) | (laddr & PAGE_MASK);
#endif
}
