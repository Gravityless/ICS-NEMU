#include "memory/mmu/cache.h"

uint32_t local_hw_mem_read(paddr_t paddr, size_t len)
{
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void local_hw_mem_write(paddr_t paddr, size_t len, uint32_t data)
{
	memcpy(hw_mem + paddr, &data, len);
}

CacheLine cache[1024];

// init the cache
void init_cache()
{
	// 初始化cache，核心就是把valid bit都清0
	printf("Initializing cache\n");
    for (int i = 0; i < 1024; i++) {
        cache[i].valid = 0;
    }
}

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
    // 两个参数分别是物理地址和读的字节数
    // data参数是待写的数据， data_b是每个data的每个字节
    uint8_t data_b = 0;
    uint32_t offset = paddr & 0x0000003f;
    uint32_t set = (paddr >> 6) & 0x0000007f;
    int hit = -1;
    int next_hit = -1;
    uint32_t next_set = (set + 1) % 128;
    if (offset + len > 64) {
        // printf("CACHE: Write 2 lines\n");
        for (int i = 0; i < 8; i++)
            if (cache[set * 8 + i].tag == ((paddr >> 13) & 0x0007ffff))
                if (cache[set * 8 + i].valid == 1) {
                    hit = set * 8 + i;
                    break;
                }
        for (int i = 0; i < 8; i++)
            if (cache[next_set * 8 + i].tag == ((paddr >> 13) & 0x0007ffff))
                if (cache[next_set * 8 + i].valid == 1) {
                    next_hit = next_set * 8 + i;
                    break;
                }
                
        if (hit != -1)
            for (int i = 0; i < 64 - offset; i++) {
                data_b = data >> (i * 8);
                cache[hit].data[offset + i] = data_b;
            }

        if (next_hit != -1)
            for (int i = 64 - offset; i < len; i++) {
                data_b = data >> (i * 8);
                cache[next_hit].data[i - (64 - offset)] = data_b;
            }
            
    } else {
        for (int i = 0; i < 8; i++)
            if (cache[set * 8 + i].tag == ((paddr >> 13) & 0x0007ffff))
                if (cache[set * 8 + i].valid == 1) {
                    hit = set * 8 + i;
                    break;
                }
        if (hit != -1)
            for (int i = 0; i < len; i++) {
                data_b = data >> (i * 8);
                cache[hit].data[offset + i] = data_b;
            }
    }
    
    // printf("MEM: Write data\n");
    cache_write_hw_mem(paddr, len, data);
    
    return;
}

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len)
{
	// 两个参数分别是物理地址和读的字节数
    // 返回值为读出的数据
    uint32_t data = 0;
    uint32_t offset = paddr & 0x0000003f;
    uint32_t set = (paddr >> 6) & 0x0000007f;
    int hit = -1;    
    int next_hit = -1;
    uint32_t next_line = 0;
    uint32_t next_set = (set + 1) % 128;

    // printf("CACHE: offset + len = %d, offset = %d, len = %d\n", offset + len, offset, len);
    
    if (offset + len > 64) {
        // 跨行读取
        // 避免随机替换导致错误
        // printf("CACHE: Read 2 lines\n");
        while (hit == -1 || next_hit == -1) {
            hit = -1;
            next_hit = -1;
            for (int i = 0; i < 8; i++)
                if (cache[set * 8 + i].tag == ((paddr >> 13) & 0x0007ffff))
                    if (cache[set * 8 + i].valid == 1) {
                        hit = set * 8 + i;
                        break;
                    }
            for (int i = 0; i < 8; i++)
                if (cache[next_set * 8 + i].tag == ((paddr >> 13) & 0x0007ffff))
                    if (cache[next_set * 8 + i].valid == 1) {
                        next_hit = next_set * 8 + i;
                        break;
                    }
            if (hit == -1 || next_hit == -1)
                cache_read_not_hit(paddr, len);
        }
        // printf("Line 1 hit %d & Line 2 hit %d\n", hit, next_hit);
            
        next_line = offset + len - 64;
        for (int i = next_line - 1; i >= 0; i--) {
            data = data << 8;
            data = data | cache[next_hit].data[i];
        }

        for (int i = 63; i >= offset; i--) {
            data = data << 8;
            data = data | cache[hit].data[i];
        }
    } else {
        // 判断是否命中cache
        // printf("CACHE: Read 1 line\n");
        while (hit == -1) {
            for (int i = 0; i < 8; i++) {
                if (cache[set * 8 + i].tag == ((paddr >> 13) & 0x0007ffff)) {
                    if (cache[set * 8 + i].valid == 1) {
                        hit = set * 8 + i;
                        break;
                    }
                }
            }
            // 从cache中读取
            if (hit == -1)
                cache_read_not_hit(paddr,len);
        }
        // printf("Line hit %d\n", hit);
        
        for (int i = len - 1; i >= 0; i--) {
            data = data << 8;
            data = data | cache[hit].data[offset + i];
        }
    }
    
	return data;
}

// 从主存中读取并添加到cache
void cache_read_not_hit(paddr_t paddr, size_t len)
{
    // printf("CACHE: lines bad hit\n");
    uint32_t offset = paddr & 0x0000003f;
    int set = (paddr >> 6) & 0x0000007f;
    int way = set * 8 + rand() % 8;
    // printf("MEM: offset + len = %d, offset = %d, len = %d\n", offset + len, offset, len);
    // printf("MEM: Read 1st line set = %d, way = %d\n", set, way % 8);
    for (int i = 0; i < 64; i++) {
        cache[way].data[i] = local_hw_mem_read((paddr & 0xffffffc0) + i, 1);
    }
    cache[way].valid = 1;
    cache[way].tag = (paddr >> 13) & 0x0007ffff;
    
    // 跨行读取
    if (offset + len > 64) {
        set = (set + 1) % 128;
        int way = set * 8 + rand() % 8;
        // printf("MEM: Read 2cd line set = %d, way = %d\n", set, way % 8);
        for (int i = 0; i < 64; i++) {
            cache[way].data[i] = local_hw_mem_read((paddr & 0xffffffc0) + 0x40 + i, 1);
        }
        cache[way].valid = 1;
        cache[way].tag = (paddr >> 13) & 0x0007ffff;    
    }

    return;
}

void cache_write_hw_mem(paddr_t paddr, size_t len, uint32_t data)
{
    local_hw_mem_write(paddr, len, data);
}
