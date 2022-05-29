
example.o:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	83 ec 14             	sub    $0x14,%esp
   3:	c7 45 f4 31 39 31 38 	movl   $0x38313931,-0xc(%ebp)
   a:	c7 45 f8 33 30 31 37 	movl   $0x37313033,-0x8(%ebp)
  11:	c7 45 fc 33 00 00 00 	movl   $0x33,-0x4(%ebp)
  18:	8d 45 f4             	lea    -0xc(%ebp),%eax
  1b:	c7 45 ec 76 4f 62 52 	movl   $0x52624f76,-0x14(%ebp)
  22:	c7 45 f0 49 7a 63 00 	movl   $0x637a49,-0x10(%ebp)
  29:	8d 5d ec             	lea    -0x14(%ebp),%ebx
  2c:	50                   	push   %eax
  2d:	53                   	push   %ebx
  2e:	e8 95 ff ff ff       	call   0xffffffc8
  33:	83 c4 1c             	add    $0x1c,%esp
