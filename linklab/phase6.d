
phase6.o:     file format elf32-i386


Disassembly of section .text:

00000000 <HCAyPyqudL>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 10             	sub    $0x10,%esp
   6:	e8 fc ff ff ff       	call   7 <HCAyPyqudL+0x7>
   b:	05 01 00 00 00       	add    $0x1,%eax
  10:	c7 45 f1 6a 4e 76 6f 	movl   $0x6f764e6a,-0xf(%ebp)
  17:	c7 45 f5 4a 70 79 6e 	movl   $0x6e79704a,-0xb(%ebp)
  1e:	66 c7 45 f9 46 73    	movw   $0x7346,-0x7(%ebp)
  24:	c6 45 fb 00          	movb   $0x0,-0x5(%ebp)
  28:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%ebp)
  2f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  33:	78 15                	js     4a <HCAyPyqudL+0x4a>
  35:	8b 45 08             	mov    0x8(%ebp),%eax
  38:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  3b:	7d 0d                	jge    4a <HCAyPyqudL+0x4a>
  3d:	8d 55 f1             	lea    -0xf(%ebp),%edx
  40:	8b 45 08             	mov    0x8(%ebp),%eax
  43:	01 d0                	add    %edx,%eax
  45:	0f b6 00             	movzbl (%eax),%eax
  48:	eb 05                	jmp    4f <HCAyPyqudL+0x4f>
  4a:	b8 00 00 00 00       	mov    $0x0,%eax
  4f:	c9                   	leave  
  50:	c3                   	ret    

00000051 <transform_code>:
  51:	55                   	push   %ebp
  52:	89 e5                	mov    %esp,%ebp
  54:	e8 fc ff ff ff       	call   55 <transform_code+0x4>
  59:	05 01 00 00 00       	add    $0x1,%eax
  5e:	8b 90 00 00 00 00    	mov    0x0(%eax),%edx
  64:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  67:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
  6a:	83 e2 07             	and    $0x7,%edx
  6d:	83 fa 07             	cmp    $0x7,%edx
  70:	0f 87 85 00 00 00    	ja     fb <.L6>
  76:	c1 e2 02             	shl    $0x2,%edx
  79:	8b 94 02 5c 00 00 00 	mov    0x5c(%edx,%eax,1),%edx
  80:	01 c2                	add    %eax,%edx
  82:	ff e2                	jmp    *%edx

00000084 <.L14>:
  84:	f7 55 08             	notl   0x8(%ebp)
  87:	eb 76                	jmp    ff <.L6+0x4>

00000089 <.L13>:
  89:	8b 80 00 00 00 00    	mov    0x0(%eax),%eax
  8f:	8b 55 0c             	mov    0xc(%ebp),%edx
  92:	8b 04 90             	mov    (%eax,%edx,4),%eax
  95:	83 e0 03             	and    $0x3,%eax
  98:	89 c1                	mov    %eax,%ecx
  9a:	d3 7d 08             	sarl   %cl,0x8(%ebp)
  9d:	eb 60                	jmp    ff <.L6+0x4>

0000009f <.L12>:
  9f:	8b 80 00 00 00 00    	mov    0x0(%eax),%eax
  a5:	8b 55 0c             	mov    0xc(%ebp),%edx
  a8:	8b 04 90             	mov    (%eax,%edx,4),%eax
  ab:	f7 d0                	not    %eax
  ad:	21 45 08             	and    %eax,0x8(%ebp)
  b0:	eb 4d                	jmp    ff <.L6+0x4>

000000b2 <.L11>:
  b2:	8b 80 00 00 00 00    	mov    0x0(%eax),%eax
  b8:	8b 55 0c             	mov    0xc(%ebp),%edx
  bb:	8b 04 90             	mov    (%eax,%edx,4),%eax
  be:	c1 e0 08             	shl    $0x8,%eax
  c1:	09 45 08             	or     %eax,0x8(%ebp)
  c4:	eb 39                	jmp    ff <.L6+0x4>

000000c6 <.L10>:
  c6:	8b 80 00 00 00 00    	mov    0x0(%eax),%eax
  cc:	8b 55 0c             	mov    0xc(%ebp),%edx
  cf:	8b 04 90             	mov    (%eax,%edx,4),%eax
  d2:	31 45 08             	xor    %eax,0x8(%ebp)
  d5:	eb 28                	jmp    ff <.L6+0x4>

000000d7 <.L9>:
  d7:	8b 80 00 00 00 00    	mov    0x0(%eax),%eax
  dd:	8b 55 0c             	mov    0xc(%ebp),%edx
  e0:	8b 04 90             	mov    (%eax,%edx,4),%eax
  e3:	f7 d0                	not    %eax
  e5:	09 45 08             	or     %eax,0x8(%ebp)
  e8:	eb 15                	jmp    ff <.L6+0x4>

000000ea <.L7>:
  ea:	8b 80 00 00 00 00    	mov    0x0(%eax),%eax
  f0:	8b 55 0c             	mov    0xc(%ebp),%edx
  f3:	8b 04 90             	mov    (%eax,%edx,4),%eax
  f6:	01 45 08             	add    %eax,0x8(%ebp)
  f9:	eb 04                	jmp    ff <.L6+0x4>

000000fb <.L6>:
  fb:	f7 5d 08             	negl   0x8(%ebp)
  fe:	90                   	nop
  ff:	8b 45 08             	mov    0x8(%ebp),%eax
 102:	5d                   	pop    %ebp
 103:	c3                   	ret    

00000104 <generate_code>:
 104:	55                   	push   %ebp
 105:	89 e5                	mov    %esp,%ebp
 107:	53                   	push   %ebx
 108:	83 ec 14             	sub    $0x14,%esp
 10b:	e8 fc ff ff ff       	call   10c <generate_code+0x8>
 110:	81 c3 02 00 00 00    	add    $0x2,%ebx
 116:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 11c:	8b 55 08             	mov    0x8(%ebp),%edx
 11f:	89 10                	mov    %edx,(%eax)
 121:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 128:	eb 25                	jmp    14f <generate_code+0x4b>
 12a:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 130:	8b 00                	mov    (%eax),%eax
 132:	83 ec 08             	sub    $0x8,%esp
 135:	ff 75 f4             	pushl  -0xc(%ebp)
 138:	50                   	push   %eax
 139:	e8 fc ff ff ff       	call   13a <generate_code+0x36>
 13e:	83 c4 10             	add    $0x10,%esp
 141:	89 c2                	mov    %eax,%edx
 143:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 149:	89 10                	mov    %edx,(%eax)
 14b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 14f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 152:	83 f8 0e             	cmp    $0xe,%eax
 155:	76 d3                	jbe    12a <generate_code+0x26>
 157:	90                   	nop
 158:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 15b:	c9                   	leave  
 15c:	c3                   	ret    

0000015d <encode_1>:
 15d:	55                   	push   %ebp
 15e:	89 e5                	mov    %esp,%ebp
 160:	53                   	push   %ebx
 161:	83 ec 14             	sub    $0x14,%esp
 164:	e8 fc ff ff ff       	call   165 <encode_1+0x8>
 169:	81 c3 02 00 00 00    	add    $0x2,%ebx
 16f:	83 ec 0c             	sub    $0xc,%esp
 172:	ff 75 08             	pushl  0x8(%ebp)
 175:	e8 fc ff ff ff       	call   176 <encode_1+0x19>
 17a:	83 c4 10             	add    $0x10,%esp
 17d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 180:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 187:	eb 60                	jmp    1e9 <encode_1+0x8c>
 189:	8b 55 f4             	mov    -0xc(%ebp),%edx
 18c:	8b 45 08             	mov    0x8(%ebp),%eax
 18f:	01 d0                	add    %edx,%eax
 191:	0f b6 00             	movzbl (%eax),%eax
 194:	0f be c0             	movsbl %al,%eax
 197:	8b 93 00 00 00 00    	mov    0x0(%ebx),%edx
 19d:	0f b6 14 02          	movzbl (%edx,%eax,1),%edx
 1a1:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 1a7:	8b 00                	mov    (%eax),%eax
 1a9:	89 d1                	mov    %edx,%ecx
 1ab:	31 c1                	xor    %eax,%ecx
 1ad:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1b0:	8b 45 08             	mov    0x8(%ebp),%eax
 1b3:	01 d0                	add    %edx,%eax
 1b5:	83 e1 7f             	and    $0x7f,%ecx
 1b8:	89 ca                	mov    %ecx,%edx
 1ba:	88 10                	mov    %dl,(%eax)
 1bc:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1bf:	8b 45 08             	mov    0x8(%ebp),%eax
 1c2:	01 d0                	add    %edx,%eax
 1c4:	0f b6 00             	movzbl (%eax),%eax
 1c7:	3c 1f                	cmp    $0x1f,%al
 1c9:	7e 0f                	jle    1da <encode_1+0x7d>
 1cb:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1ce:	8b 45 08             	mov    0x8(%ebp),%eax
 1d1:	01 d0                	add    %edx,%eax
 1d3:	0f b6 00             	movzbl (%eax),%eax
 1d6:	3c 7f                	cmp    $0x7f,%al
 1d8:	75 0b                	jne    1e5 <encode_1+0x88>
 1da:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1dd:	8b 45 08             	mov    0x8(%ebp),%eax
 1e0:	01 d0                	add    %edx,%eax
 1e2:	c6 00 3f             	movb   $0x3f,(%eax)
 1e5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 1e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1ec:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 1ef:	7c 98                	jl     189 <encode_1+0x2c>
 1f1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1f7:	c9                   	leave  
 1f8:	c3                   	ret    

000001f9 <encode_2>:
 1f9:	55                   	push   %ebp
 1fa:	89 e5                	mov    %esp,%ebp
 1fc:	53                   	push   %ebx
 1fd:	83 ec 14             	sub    $0x14,%esp
 200:	e8 fc ff ff ff       	call   201 <encode_2+0x8>
 205:	81 c3 02 00 00 00    	add    $0x2,%ebx
 20b:	83 ec 0c             	sub    $0xc,%esp
 20e:	ff 75 08             	pushl  0x8(%ebp)
 211:	e8 fc ff ff ff       	call   212 <encode_2+0x19>
 216:	83 c4 10             	add    $0x10,%esp
 219:	89 45 f0             	mov    %eax,-0x10(%ebp)
 21c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 223:	eb 5f                	jmp    284 <encode_2+0x8b>
 225:	8b 55 f4             	mov    -0xc(%ebp),%edx
 228:	8b 45 08             	mov    0x8(%ebp),%eax
 22b:	01 d0                	add    %edx,%eax
 22d:	0f b6 00             	movzbl (%eax),%eax
 230:	0f be c0             	movsbl %al,%eax
 233:	8b 93 00 00 00 00    	mov    0x0(%ebx),%edx
 239:	0f b6 14 02          	movzbl (%edx,%eax,1),%edx
 23d:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 243:	8b 00                	mov    (%eax),%eax
 245:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 248:	8b 55 f4             	mov    -0xc(%ebp),%edx
 24b:	8b 45 08             	mov    0x8(%ebp),%eax
 24e:	01 d0                	add    %edx,%eax
 250:	83 e1 7f             	and    $0x7f,%ecx
 253:	89 ca                	mov    %ecx,%edx
 255:	88 10                	mov    %dl,(%eax)
 257:	8b 55 f4             	mov    -0xc(%ebp),%edx
 25a:	8b 45 08             	mov    0x8(%ebp),%eax
 25d:	01 d0                	add    %edx,%eax
 25f:	0f b6 00             	movzbl (%eax),%eax
 262:	3c 1f                	cmp    $0x1f,%al
 264:	7e 0f                	jle    275 <encode_2+0x7c>
 266:	8b 55 f4             	mov    -0xc(%ebp),%edx
 269:	8b 45 08             	mov    0x8(%ebp),%eax
 26c:	01 d0                	add    %edx,%eax
 26e:	0f b6 00             	movzbl (%eax),%eax
 271:	3c 7f                	cmp    $0x7f,%al
 273:	75 0b                	jne    280 <encode_2+0x87>
 275:	8b 55 f4             	mov    -0xc(%ebp),%edx
 278:	8b 45 08             	mov    0x8(%ebp),%eax
 27b:	01 d0                	add    %edx,%eax
 27d:	c6 00 2a             	movb   $0x2a,(%eax)
 280:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 284:	8b 45 f4             	mov    -0xc(%ebp),%eax
 287:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 28a:	7c 99                	jl     225 <encode_2+0x2c>
 28c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 28f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 292:	c9                   	leave  
 293:	c3                   	ret    

00000294 <do_phase>:
 294:	55                   	push   %ebp
 295:	89 e5                	mov    %esp,%ebp
 297:	53                   	push   %ebx
 298:	83 ec 04             	sub    $0x4,%esp
 29b:	e8 fc ff ff ff       	call   29c <do_phase+0x8>
 2a0:	81 c3 02 00 00 00    	add    $0x2,%ebx
 2a6:	83 ec 0c             	sub    $0xc,%esp
 2a9:	68 da 00 00 00       	push   $0xda
 2ae:	e8 fc ff ff ff       	call   2af <do_phase+0x1b>
 2b3:	83 c4 10             	add    $0x10,%esp
 2b6:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 2bc:	8b 40 04             	mov    0x4(%eax),%eax
 2bf:	83 ec 0c             	sub    $0xc,%esp
 2c2:	8b 93 00 00 00 00    	mov    0x0(%ebx),%edx
 2c8:	52                   	push   %edx
 2c9:	ff d0                	call   *%eax
 2cb:	83 c4 10             	add    $0x10,%esp
 2ce:	83 ec 0c             	sub    $0xc,%esp
 2d1:	8b 83 00 00 00 00    	mov    0x0(%ebx),%eax
 2d7:	50                   	push   %eax
 2d8:	e8 fc ff ff ff       	call   2d9 <do_phase+0x45>
 2dd:	83 c4 10             	add    $0x10,%esp
 2e0:	90                   	nop
 2e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2e4:	c9                   	leave  
 2e5:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	90                   	nop
   1:	90                   	nop
   2:	90                   	nop
   3:	90                   	nop

Disassembly of section .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	90                   	nop
   1:	90                   	nop
   2:	90                   	nop
   3:	90                   	nop
