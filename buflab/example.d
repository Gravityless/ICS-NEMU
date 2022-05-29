
example.o:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	b8 e8 d1 04 08       	mov    $0x804d1e8,%eax
   5:	c7 00 39 64 64 34    	movl   $0x34646439,(%eax)
   b:	c7 40 04 31 32 63 63 	movl   $0x63633231,0x4(%eax)
  12:	50                   	push   %eax
  13:	83 ec 04             	sub    $0x4,%esp
  16:	68 0d 95 04 08       	push   $0x804950d
  1b:	c3                   	ret    
  1c:	bc 1e 2f 68 55       	mov    $0x55682f1e,%esp
