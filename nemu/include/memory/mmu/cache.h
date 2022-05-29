#ifndef __CACHE_H__
#define __CACHE_H__

#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>
#include <stdlib.h>

// typedef struct {
//     uint32_t valid : 1;
//     uint32_t tag   : 19;
//     uint8_t data[64];
// } CacheLine;

typedef struct {
    uint8_t valid;
    uint32_t tag;
    uint8_t data[64];
} CacheLine;

// init the cache
void init_cache();

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len);

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data);

void cache_read_not_hit(paddr_t paddr, size_t len);

void cache_write_hw_mem(paddr_t paddr, size_t len, uint32_t data);

#endif
