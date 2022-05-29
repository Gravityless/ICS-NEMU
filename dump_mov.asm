
./testcase/bin/mov:     file format elf32-i386


Disassembly of section .text:

00100000 <start>:
  100000:	e9 00 00 00 00       	jmp    100005 <main>

00100005 <main>:
  100005:	b8 00 00 00 00       	mov    $0x0,%eax
  10000a:	bb 00 00 00 00       	mov    $0x0,%ebx
  10000f:	b9 00 00 00 00       	mov    $0x0,%ecx
  100014:	ba 00 00 00 00       	mov    $0x0,%edx
  100019:	b9 00 80 00 00       	mov    $0x8000,%ecx
  10001e:	66 bb 00 00          	mov    $0x0,%bx
  100022:	b7 00                	mov    $0x0,%bh
  100024:	c7 05 34 12 00 00 01 	movl   $0x1,0x1234
  10002b:	00 00 00 
  10002e:	66 c7 05 34 12 00 00 	movw   $0x1,0x1234
  100035:	01 00 
  100037:	c6 05 34 12 00 00 01 	movb   $0x1,0x1234
  10003e:	c7 01 01 00 00 00    	movl   $0x1,(%ecx)
  100044:	66 c7 01 01 00       	movw   $0x1,(%ecx)
  100049:	c6 01 01             	movb   $0x1,(%ecx)
  10004c:	c7 04 99 01 00 00 00 	movl   $0x1,(%ecx,%ebx,4)
  100053:	66 c7 04 99 01 00    	movw   $0x1,(%ecx,%ebx,4)
  100059:	c6 04 99 01          	movb   $0x1,(%ecx,%ebx,4)
  10005d:	c7 41 02 01 00 00 00 	movl   $0x1,0x2(%ecx)
  100064:	66 c7 41 02 01 00    	movw   $0x1,0x2(%ecx)
  10006a:	c6 41 02 01          	movb   $0x1,0x2(%ecx)
  10006e:	c7 41 fe 01 00 00 00 	movl   $0x1,-0x2(%ecx)
  100075:	66 c7 41 fe 01 00    	movw   $0x1,-0x2(%ecx)
  10007b:	c6 41 fe 01          	movb   $0x1,-0x2(%ecx)
  10007f:	c7 44 99 02 01 00 00 	movl   $0x1,0x2(%ecx,%ebx,4)
  100086:	00 
  100087:	66 c7 44 99 02 01 00 	movw   $0x1,0x2(%ecx,%ebx,4)
  10008e:	c6 44 99 02 01       	movb   $0x1,0x2(%ecx,%ebx,4)
  100093:	c7 44 99 fe 01 00 00 	movl   $0x1,-0x2(%ecx,%ebx,4)
  10009a:	00 
  10009b:	66 c7 44 99 fe 01 00 	movw   $0x1,-0x2(%ecx,%ebx,4)
  1000a2:	c6 44 99 fe 01       	movb   $0x1,-0x2(%ecx,%ebx,4)
  1000a7:	c7 81 00 20 00 00 01 	movl   $0x1,0x2000(%ecx)
  1000ae:	00 00 00 
  1000b1:	66 c7 81 00 20 00 00 	movw   $0x1,0x2000(%ecx)
  1000b8:	01 00 
  1000ba:	c6 81 00 20 00 00 01 	movb   $0x1,0x2000(%ecx)
  1000c1:	c7 81 00 e0 ff ff 01 	movl   $0x1,-0x2000(%ecx)
  1000c8:	00 00 00 
  1000cb:	66 c7 81 00 e0 ff ff 	movw   $0x1,-0x2000(%ecx)
  1000d2:	01 00 
  1000d4:	c6 81 00 e0 ff ff 01 	movb   $0x1,-0x2000(%ecx)
  1000db:	c7 84 99 00 20 00 00 	movl   $0x1,0x2000(%ecx,%ebx,4)
  1000e2:	01 00 00 00 
  1000e6:	66 c7 84 99 00 20 00 	movw   $0x1,0x2000(%ecx,%ebx,4)
  1000ed:	00 01 00 
  1000f0:	c6 84 99 00 20 00 00 	movb   $0x1,0x2000(%ecx,%ebx,4)
  1000f7:	01 
  1000f8:	c7 84 99 00 e0 ff ff 	movl   $0x1,-0x2000(%ecx,%ebx,4)
  1000ff:	01 00 00 00 
  100103:	66 c7 84 99 00 e0 ff 	movw   $0x1,-0x2000(%ecx,%ebx,4)
  10010a:	ff 01 00 
  10010d:	c6 84 99 00 e0 ff ff 	movb   $0x1,-0x2000(%ecx,%ebx,4)
  100114:	01 
  100115:	89 c3                	mov    %eax,%ebx
  100117:	66 89 c3             	mov    %ax,%bx
  10011a:	88 e3                	mov    %ah,%bl
  10011c:	a3 34 12 00 00       	mov    %eax,0x1234
  100121:	66 a3 34 12 00 00    	mov    %ax,0x1234
  100127:	a2 34 12 00 00       	mov    %al,0x1234
  10012c:	88 25 34 12 00 00    	mov    %ah,0x1234
  100132:	89 03                	mov    %eax,(%ebx)
  100134:	89 04 99             	mov    %eax,(%ecx,%ebx,4)
  100137:	66 89 04 99          	mov    %ax,(%ecx,%ebx,4)
  10013b:	88 24 99             	mov    %ah,(%ecx,%ebx,4)
  10013e:	89 41 02             	mov    %eax,0x2(%ecx)
  100141:	66 89 41 02          	mov    %ax,0x2(%ecx)
  100145:	88 61 02             	mov    %ah,0x2(%ecx)
  100148:	89 44 99 02          	mov    %eax,0x2(%ecx,%ebx,4)
  10014c:	66 89 44 99 02       	mov    %ax,0x2(%ecx,%ebx,4)
  100151:	88 64 99 02          	mov    %ah,0x2(%ecx,%ebx,4)
  100155:	89 81 00 20 00 00    	mov    %eax,0x2000(%ecx)
  10015b:	66 89 81 00 20 00 00 	mov    %ax,0x2000(%ecx)
  100162:	88 a1 00 20 00 00    	mov    %ah,0x2000(%ecx)
  100168:	89 84 99 00 20 00 00 	mov    %eax,0x2000(%ecx,%ebx,4)
  10016f:	66 89 84 99 00 20 00 	mov    %ax,0x2000(%ecx,%ebx,4)
  100176:	00 
  100177:	88 a4 99 00 20 00 00 	mov    %ah,0x2000(%ecx,%ebx,4)
  10017e:	89 d3                	mov    %edx,%ebx
  100180:	66 89 d3             	mov    %dx,%bx
  100183:	88 f3                	mov    %dh,%bl
  100185:	89 15 34 12 00 00    	mov    %edx,0x1234
  10018b:	66 89 15 34 12 00 00 	mov    %dx,0x1234
  100192:	88 15 34 12 00 00    	mov    %dl,0x1234
  100198:	88 35 34 12 00 00    	mov    %dh,0x1234
  10019e:	89 13                	mov    %edx,(%ebx)
  1001a0:	89 14 99             	mov    %edx,(%ecx,%ebx,4)
  1001a3:	66 89 14 99          	mov    %dx,(%ecx,%ebx,4)
  1001a7:	88 34 99             	mov    %dh,(%ecx,%ebx,4)
  1001aa:	89 51 02             	mov    %edx,0x2(%ecx)
  1001ad:	66 89 51 02          	mov    %dx,0x2(%ecx)
  1001b1:	88 71 02             	mov    %dh,0x2(%ecx)
  1001b4:	89 54 99 02          	mov    %edx,0x2(%ecx,%ebx,4)
  1001b8:	66 89 54 99 02       	mov    %dx,0x2(%ecx,%ebx,4)
  1001bd:	88 74 99 02          	mov    %dh,0x2(%ecx,%ebx,4)
  1001c1:	89 91 00 20 00 00    	mov    %edx,0x2000(%ecx)
  1001c7:	66 89 91 00 20 00 00 	mov    %dx,0x2000(%ecx)
  1001ce:	88 b1 00 20 00 00    	mov    %dh,0x2000(%ecx)
  1001d4:	89 94 99 00 20 00 00 	mov    %edx,0x2000(%ecx,%ebx,4)
  1001db:	66 89 94 99 00 20 00 	mov    %dx,0x2000(%ecx,%ebx,4)
  1001e2:	00 
  1001e3:	88 b4 99 00 20 00 00 	mov    %dh,0x2000(%ecx,%ebx,4)
  1001ea:	a1 34 12 00 00       	mov    0x1234,%eax
  1001ef:	66 a1 34 12 00 00    	mov    0x1234,%ax
  1001f5:	a0 34 12 00 00       	mov    0x1234,%al
  1001fa:	8a 25 34 12 00 00    	mov    0x1234,%ah
  100200:	8b 03                	mov    (%ebx),%eax
  100202:	8b 04 99             	mov    (%ecx,%ebx,4),%eax
  100205:	66 8b 04 99          	mov    (%ecx,%ebx,4),%ax
  100209:	8a 24 99             	mov    (%ecx,%ebx,4),%ah
  10020c:	8b 41 02             	mov    0x2(%ecx),%eax
  10020f:	66 8b 41 02          	mov    0x2(%ecx),%ax
  100213:	8a 61 02             	mov    0x2(%ecx),%ah
  100216:	8b 44 99 02          	mov    0x2(%ecx,%ebx,4),%eax
  10021a:	66 8b 44 99 02       	mov    0x2(%ecx,%ebx,4),%ax
  10021f:	8a 64 99 02          	mov    0x2(%ecx,%ebx,4),%ah
  100223:	8b 81 00 20 00 00    	mov    0x2000(%ecx),%eax
  100229:	66 8b 81 00 20 00 00 	mov    0x2000(%ecx),%ax
  100230:	8a a1 00 20 00 00    	mov    0x2000(%ecx),%ah
  100236:	8b 84 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%eax
  10023d:	66 8b 84 99 00 20 00 	mov    0x2000(%ecx,%ebx,4),%ax
  100244:	00 
  100245:	8a a4 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%ah
  10024c:	8b 15 34 12 00 00    	mov    0x1234,%edx
  100252:	66 8b 15 34 12 00 00 	mov    0x1234,%dx
  100259:	8a 15 34 12 00 00    	mov    0x1234,%dl
  10025f:	8a 35 34 12 00 00    	mov    0x1234,%dh
  100265:	8b 13                	mov    (%ebx),%edx
  100267:	8b 14 99             	mov    (%ecx,%ebx,4),%edx
  10026a:	66 8b 14 99          	mov    (%ecx,%ebx,4),%dx
  10026e:	8a 34 99             	mov    (%ecx,%ebx,4),%dh
  100271:	8b 51 02             	mov    0x2(%ecx),%edx
  100274:	66 8b 51 02          	mov    0x2(%ecx),%dx
  100278:	8a 71 02             	mov    0x2(%ecx),%dh
  10027b:	8b 54 99 02          	mov    0x2(%ecx,%ebx,4),%edx
  10027f:	66 8b 54 99 02       	mov    0x2(%ecx,%ebx,4),%dx
  100284:	8a 74 99 02          	mov    0x2(%ecx,%ebx,4),%dh
  100288:	8b 91 00 20 00 00    	mov    0x2000(%ecx),%edx
  10028e:	66 8b 91 00 20 00 00 	mov    0x2000(%ecx),%dx
  100295:	8a b1 00 20 00 00    	mov    0x2000(%ecx),%dh
  10029b:	8b 94 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%edx
  1002a2:	66 8b 94 99 00 20 00 	mov    0x2000(%ecx,%ebx,4),%dx
  1002a9:	00 
  1002aa:	8a b4 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%dh
  1002b1:	b8 00 00 00 00       	mov    $0x0,%eax
  1002b6:	82                   	.byte 0x82
