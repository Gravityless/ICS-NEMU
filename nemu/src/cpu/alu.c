#include "cpu/cpu.h"

// CF contains information relevant to unsigned integers
void set_CF_add(uint32_t res, uint32_t src, size_t data_size) {
    res = sign_ext(res & (0xFFFFFFFF >> (32 - data_size)), data_size);
    src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
    cpu.eflags.CF = res < src;
}

// https://cloud.tencent.com/developer/article/1176348
void set_PF(uint32_t res) {
    res = res & (0xFFFFFFFF >> 24);
    uint8_t count = 0;  
    while (res) {  
        res = res & (res - 1);  
        count++;  
    }
    cpu.eflags.PF = (0 == (count & 1));
}

void set_ZF(uint32_t res, size_t data_size) {
    res = res & (0xFFFFFFFF >> (32 - data_size));
    cpu.eflags.ZF = (res == 0);
}

// SF and OF contain information relevant to signed integers
void set_SF(uint32_t res, size_t data_size) {
    res = sign_ext(res & (0xFFFFFFFF >> (32 - data_size)), data_size);
    cpu.eflags.SF = sign(res);
}

void set_OF_add(uint32_t res, uint32_t src, uint32_t dst, size_t data_size) {
    switch (data_size) {
        case 8:
            res = sign_ext(res & 0xFF, 8);
            src = sign_ext(src & 0xFF, 8);
            dst = sign_ext(dst & 0xFF, 8);
            break;
        case 16:
            res = sign_ext(res & 0xFFFF, 16);
            src = sign_ext(src & 0xFFFF, 16);
            dst = sign_ext(dst & 0xFFFF, 16);
            break;
        default:
            break;
    }
    if (sign(src) == sign(dst)) {
        if (sign(src) != sign(res))
            cpu.eflags.OF = 1;
        else
            cpu.eflags.OF = 0;
    } else {
        cpu.eflags.OF = 0;
    }
}

uint32_t alu_add(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_add(src, dst, data_size); // 标准实现
    
    uint32_t res = 0;
    res = dst + src; // 获取计算结果
    
    set_CF_add(res, src, data_size); // 进借位标志位
    set_PF(res); // 低8位奇校验
    // set_AF(); // 不设置
    set_ZF(res, data_size); // 零标志位
    set_SF(res, data_size); // 符号位
    set_OF_add(res, src, dst, data_size); // 溢出判断位 
    
    return res & (0xFFFFFFFF >> (32 - data_size)); // 高位清零并返回
}


void set_CF_adc(uint32_t res, uint32_t src, size_t data_size) {
    res = sign_ext(res & (0xFFFFFFFF >> (32 - data_size)), data_size);
    src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
    if (cpu.eflags.CF == 0)
        cpu.eflags.CF = (res < src);
    else
        cpu.eflags.CF = (res <= src);
}

// 直接使用set_OF_add
void set_OF_adc(uint32_t res, uint32_t src, uint32_t dst, size_t data_size) {
    switch (data_size) {
        case 8:
            res = sign_ext(res & 0xFF, 8);
            src = sign_ext(src & 0xFF, 8);
            dst = sign_ext(dst & 0xFF, 8);
            break;
        case 16:
            res = sign_ext(res & 0xFFFF, 16);
            src = sign_ext(src & 0xFFFF, 16);
            dst = sign_ext(dst & 0xFFFF, 16);
            break;
        default:
            break;
    }
    if (sign(src) == sign(dst)) {
        if (sign(src) != sign(res))
            cpu.eflags.OF = 1;
        else
            cpu.eflags.OF = 0;
    } else {
        cpu.eflags.OF = 0;
    }
}

uint32_t alu_adc(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_adc(src, dst, data_size);
    
    uint32_t res = 0;
    res = dst + src + cpu.eflags.CF;
    
    set_CF_adc(res, src, data_size);
    set_PF(res);
    set_ZF(res, data_size);
    set_SF(res, data_size);
    set_OF_adc(res, src, dst, data_size);
    
    return res & (0xFFFFFFFF >> (32 - data_size));
}

void set_CF_sub(uint32_t res, uint32_t dst, size_t data_size) {
    res = sign_ext(res & (0xFFFFFFFF >> (32 - data_size)), data_size);
    dst = sign_ext(dst & (0xFFFFFFFF >> (32 - data_size)), data_size);
    cpu.eflags.CF = (res > dst); // 如果余数比被减数大，则借位为1
}

void set_OF_sub(uint32_t res, uint32_t src, uint32_t dst, size_t data_size) {
    switch (data_size) {
        case 8:
            res = sign_ext(res & 0xFF, 8);
            src = sign_ext(src & 0xFF, 8);
            dst = sign_ext(dst & 0xFF, 8);
            break;
        case 16:
            res = sign_ext(res & 0xFFFF, 16);
            src = sign_ext(src & 0xFFFF, 16);
            dst = sign_ext(dst & 0xFFFF, 16);
            break;
        default:
            break;
    }
    if (sign(src) != sign(dst)) {
        if (sign(dst) != sign(res))
            cpu.eflags.OF = 1;
        else
            cpu.eflags.OF = 0;
    } else {
        cpu.eflags.OF = 0;
    }
}

uint32_t alu_sub(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_sub(src, dst, data_size);
	
	uint32_t res = 0;
	res = dst - sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	
	set_CF_sub(res, dst, data_size);
    set_PF(res);
    set_ZF(res, data_size);
    set_SF(res, data_size);
    set_OF_sub(res, src, dst, data_size);
    
    return res & (0xFFFFFFFF >> (32 - data_size));
}

void set_CF_sbb(uint32_t res, uint32_t dst, size_t data_size) {
    res = sign_ext(res & (0xFFFFFFFF >> (32 - data_size)), data_size);
    dst = sign_ext(dst & (0xFFFFFFFF >> (32 - data_size)), data_size);
    if (cpu.eflags.CF == 0)
        cpu.eflags.CF = (res > dst);
    else
        cpu.eflags.CF = (res >= dst);
}

void set_OF_sbb(uint32_t res, uint32_t src, uint32_t dst, size_t data_size) {
    switch (data_size) {
        case 8:
            res = sign_ext(res & 0xFF, 8);
            src = sign_ext(src & 0xFF, 8);
            dst = sign_ext(dst & 0xFF, 8);
            break;
        case 16:
            res = sign_ext(res & 0xFFFF, 16);
            src = sign_ext(src & 0xFFFF, 16);
            dst = sign_ext(dst & 0xFFFF, 16);
            break;
        default:
            break;
    }
    if (sign(src) != sign(dst)) {
        if (sign(dst) != sign(res))
            cpu.eflags.OF = 1;
        else
            cpu.eflags.OF = 0;
    } else {
        cpu.eflags.OF = 0;
    }
}

uint32_t alu_sbb(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_sbb(src, dst, data_size);
	
	uint32_t res = 0;
	res = dst - sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size) - cpu.eflags.CF;
	
	set_CF_sbb(res, dst, data_size);
    set_PF(res);
    set_ZF(res, data_size);
    set_SF(res, data_size);
    set_OF_sbb(res, src, dst, data_size);
    
    return res & (0xFFFFFFFF >> (32 - data_size));
}

void set_OF_mul(uint64_t res, size_t data_size) {
    cpu.eflags.OF = (0 != (res >> data_size));
}

void set_CF_mul(uint64_t res, size_t data_size) {
    cpu.eflags.CF = (0 != (res >> data_size));
}

uint64_t alu_mul(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_mul(src, dst, data_size);

    uint64_t res = 0;
    res = (uint64_t)(src & (0xFFFFFFFF >> (32 - data_size))) * (dst & (0xFFFFFFFF >> (32 - data_size))); // 有效位相乘
    
    set_OF_mul(res, data_size);
    set_CF_mul(res, data_size);
    
    return res & (0xFFFFFFFFFFFFFFFF >> (64 - 2 * data_size)); // 高位清零并返回
}

void set_CF_imul(uint32_t src, uint32_t dst, uint64_t res, size_t data_size) {
    dst = sign_ext_64(dst & (0xFFFFFFFF >> (32 - data_size)), data_size);
    src = sign_ext_64(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
    
    res = (res >> (2 * data_size - 1)) & 1;
    cpu.eflags.CF = (res == (sign(dst) ^ sign(src)));
}

void set_OF_imul(uint32_t src, uint32_t dst, uint64_t res, size_t data_size) {
    dst = sign_ext_64(dst & (0xFFFFFFFF >> (32 - data_size)), data_size);
    src = sign_ext_64(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
    
    res = (res >> (2 * data_size - 1)) & 1;
    cpu.eflags.OF = (res == (sign(dst) ^ sign(src)));
}

int64_t alu_imul(int32_t src, int32_t dst, size_t data_size)
{
	// return __ref_alu_imul(src, dst, data_size);
	
	int64_t res = 0;
	res = (int64_t)src * dst;
	
	set_OF_imul(src, dst, res, data_size);
	set_CF_imul(src, dst, res, data_size);
	
	// printf("dst = %d, src = %d, res = %lld\n", dst, src, res);
	
	return res;
}

// need to implement alu_mod before testing
uint32_t alu_div(uint64_t src, uint64_t dst, size_t data_size)
{
	// return __ref_alu_div(src, dst, data_size);
	
	return dst / src;
}

// need to implement alu_imod before testing
int32_t alu_idiv(int64_t src, int64_t dst, size_t data_size)
{
	// return __ref_alu_idiv(src, dst, data_size);
	
	return dst / src;
}

uint32_t alu_mod(uint64_t src, uint64_t dst)
{
    // return __ref_alu_mod(src, dst);
    
    return dst % src;
}

int32_t alu_imod(int64_t src, int64_t dst)
{
	// return __ref_alu_imod(src, dst);
    
    return (int64_t)dst % src;
}

uint32_t alu_and(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_and(src, dst, data_size);
	
	uint32_t res = 0;
	res = src & dst;
	
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_xor(uint32_t src, uint32_t dst, size_t data_size)
{
    // return __ref_alu_xor(src, dst, data_size);
	
	uint32_t res = 0;
	res = src ^ dst;
	
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_or(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_or(src, dst, data_size);
	
	uint32_t res = 0;
	res = src | dst;
	
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	
	return res & (0xFFFFFFFF >> (32 - data_size));
}

void set_CF_shl(uint32_t src, uint32_t dst, size_t data_size) {
    dst = dst & (0xFFFFFFFF >> (32 - data_size)); // 高位清零
    dst = dst >> (data_size - (src & 31)); // 右移data_size - dst位，保留移出的所有位
    cpu.eflags.CF = (dst & 1);
}

uint32_t alu_shl(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_shl(src, dst, data_size);
	
	uint32_t res = 0;
	res = dst << (src & 31);
	
	if ((src & 31) == 1)
	    cpu.eflags.OF = (sign(dst) != sign(res));
	set_CF_shl(src, dst, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	
	return res & (0xFFFFFFFF >> (32 - data_size));
}

void set_CF_shr(uint32_t src, uint32_t dst, size_t data_size) {
    dst = dst & (0xFFFFFFFF >> (32 - data_size)); // 高位清零
    dst = dst >> ((src & 31) - 1); // 右移data_size - dst - 1位，留下移出的最低位
    cpu.eflags.CF = (dst & 1);
}

uint32_t alu_shr(uint32_t src, uint32_t dst, size_t data_size)
{
    // return __ref_alu_shr(src, dst, data_size);
	
	uint32_t res = 0;
	res = (dst & (0xFFFFFFFF >> (32 - data_size))) >> (src & 31);
	
	if ((src & 31) == 1)
	    cpu.eflags.OF = (sign(dst) != sign(res));
	set_CF_shr(src, dst, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	
	return res & (0xFFFFFFFF >> (32 - data_size));
}

void set_CF_sar(uint32_t src, uint32_t dst, size_t data_size) {
    dst = dst & (0xFFFFFFFF >> (32 - data_size)); // 高位清零
    dst = dst >> ((src & 31) - 1); // 右移data_size - dst - 1位，留下移出的最低位
    cpu.eflags.CF = (dst & 1);
}

uint32_t alu_sar(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_sar(src, dst, data_size);
	
	uint32_t res = 0;
	res = (int32_t)sign_ext(dst & (0xFFFFFFFF >> (32 - data_size)), data_size) >> (src & 31);
	
	if ((src & 31) == 1)
	    cpu.eflags.OF = (sign(dst) != sign(res));
	set_CF_sar(src, dst, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_sal(uint32_t src, uint32_t dst, size_t data_size)
{
	// return __ref_alu_sal(src, dst, data_size);
	
	return alu_shl(src, dst, data_size);
}
