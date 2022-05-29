#include "common.h"
#include "memory.h"
#include "string.h"

#include <elf.h>

#ifdef HAS_DEVICE_IDE
#define ELF_OFFSET_IN_DISK 0
#endif

#define STACK_SIZE (1 << 20)

void ide_read(uint8_t *, uint32_t, uint32_t);
void create_video_mapping();
uint32_t get_ucr3();

void *loadmemcpy(void *dst,void *src,unsigned len){
	int i = 0;
	for(i = 0; i < len; i++){
		*((unsigned char *)(dst+i)) = *((unsigned char *)(src+i));
	}
	return dst;
}

void *loadmemset(void *dst,unsigned char ch,unsigned len){
	int i = 0;
	for(i = 0; i < len; i++){
		*((unsigned char *)(dst+i)) = ch;
	}
	return dst;
}

uint32_t loader()
{
	Elf32_Ehdr *elf;
	Elf32_Phdr *ph, *eph;

#ifdef HAS_DEVICE_IDE
	uint8_t buf[4096];
	ide_read(buf, ELF_OFFSET_IN_DISK, 4096);
	elf = (void *)buf;
	Log("ELF loading from hard disk.");
#else
	elf = (void *)0x0;
	Log("ELF loading from ram disk.");
#endif

	/* Load each program segment */
	ph = (void *)elf + elf->e_phoff;
	eph = ph + elf->e_phnum;
	for (; ph < eph; ph++)
	{
		if (ph->p_type == PT_LOAD)
		{
		/* Enable PAGE call mm_malloc to allocate memory */
		uint32_t paddr=mm_malloc(ph->p_vaddr,ph->p_memsz);
		Log("Mapping %x to %x",ph->p_vaddr,paddr);
		
        /* TODO: copy the segment from the ELF file to its proper memory area */
#ifdef HAS_DEVICE_IDE
        ide_read((uint8_t *)paddr, (uint32_t)ph->p_offset + ELF_OFFSET_IN_DISK, (uint32_t)ph->p_filesz);
#else
        loadmemcpy((void *)paddr, (void *)((uint32_t)ph->p_offset + (uint32_t)elf), (uint32_t)ph->p_filesz);
#endif      
        /* TODO: zeror the memory area [vaddr + file_sz, vaddr + mem_sz) */
        loadmemset((void *)paddr + ph->p_filesz, 0,(unsigned) ph->p_memsz - ph->p_filesz);

#ifdef IA32_PAGE
		/* Record the program break for future use */
		extern uint32_t brk;
		uint32_t new_brk = ph->p_vaddr + ph->p_memsz - 1;
		if (brk < new_brk)
		{
			brk = new_brk;
		}
#endif
		}
	}

	volatile uint32_t entry = elf->e_entry;

#ifdef IA32_PAGE
	mm_malloc(KOFFSET - STACK_SIZE, STACK_SIZE);
#ifdef HAS_DEVICE_VGA
	create_video_mapping();
#endif
	write_cr3(get_ucr3());
#endif
	return entry;
}
