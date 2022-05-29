
phase5.o:     file format elf32-i386


Disassembly of section .text:

00000000 <HCAyPyqudL>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 20             	sub    $0x20,%esp
   6:	c7 45 e7 6d 77 6d 79 	movl   $0x796d776d,-0x19(%ebp)
   d:	c7 45 eb 61 76 4c 4b 	movl   $0x4b4c7661,-0x15(%ebp)
  14:	c7 45 ef 6c 79 44 6f 	movl   $0x6f44796c,-0x11(%ebp)
  1b:	c7 45 f3 7a 55 4b 67 	movl   $0x674b557a,-0xd(%ebp)
  22:	c7 45 f7 4c 64 58 4f 	movl   $0x4f58644c,-0x9(%ebp)
  29:	c6 45 fb 00          	movb   $0x0,-0x5(%ebp)
  2d:	c7 45 fc 15 00 00 00 	movl   $0x15,-0x4(%ebp)
  34:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  38:	78 15                	js     4f <HCAyPyqudL+0x4f>
  3a:	8b 45 08             	mov    0x8(%ebp),%eax
  3d:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  40:	7d 0d                	jge    4f <HCAyPyqudL+0x4f>
  42:	8d 55 e7             	lea    -0x19(%ebp),%edx
  45:	8b 45 08             	mov    0x8(%ebp),%eax
  48:	01 d0                	add    %edx,%eax
  4a:	0f b6 00             	movzbl (%eax),%eax
  4d:	eb 05                	jmp    54 <HCAyPyqudL+0x54>
  4f:	b8 00 00 00 00       	mov    $0x0,%eax
  54:	c9                   	leave  
  55:	c3                   	ret    

00000056 <transform_code>:
  56:	55                   	push   %ebp
  57:	89 e5                	mov    %esp,%ebp
  59:	8b 45 0c             	mov    0xc(%ebp),%eax
  5c:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  63:	83 e0 07             	and    $0x7,%eax
  66:	83 f8 07             	cmp    $0x7,%eax
  69:	77 74                	ja     df <transform_code+0x89>
  6b:	8b 04 85 5c 00 00 00 	mov    0x5c(,%eax,4),%eax
  72:	ff e0                	jmp    *%eax
  74:	f7 55 08             	notl   0x8(%ebp)
  77:	eb 6a                	jmp    e3 <transform_code+0x8d>
  79:	8b 45 0c             	mov    0xc(%ebp),%eax
  7c:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  83:	83 e0 03             	and    $0x3,%eax
  86:	89 c1                	mov    %eax,%ecx
  88:	d3 7d 08             	sarl   %cl,0x8(%ebp)
  8b:	eb 56                	jmp    e3 <transform_code+0x8d>
  8d:	8b 45 0c             	mov    0xc(%ebp),%eax
  90:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  97:	f7 d0                	not    %eax
  99:	21 45 08             	and    %eax,0x8(%ebp)
  9c:	eb 45                	jmp    e3 <transform_code+0x8d>
  9e:	8b 45 0c             	mov    0xc(%ebp),%eax
  a1:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  a8:	c1 e0 08             	shl    $0x8,%eax
  ab:	09 45 08             	or     %eax,0x8(%ebp)
  ae:	eb 33                	jmp    e3 <transform_code+0x8d>
  b0:	8b 45 0c             	mov    0xc(%ebp),%eax
  b3:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  ba:	31 45 08             	xor    %eax,0x8(%ebp)
  bd:	eb 24                	jmp    e3 <transform_code+0x8d>
  bf:	8b 45 0c             	mov    0xc(%ebp),%eax
  c2:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  c9:	f7 d0                	not    %eax
  cb:	09 45 08             	or     %eax,0x8(%ebp)
  ce:	eb 13                	jmp    e3 <transform_code+0x8d>
  d0:	8b 45 0c             	mov    0xc(%ebp),%eax
  d3:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  da:	01 45 08             	add    %eax,0x8(%ebp)
  dd:	eb 04                	jmp    e3 <transform_code+0x8d>
  df:	f7 5d 08             	negl   0x8(%ebp)
  e2:	90                   	nop
  e3:	8b 45 08             	mov    0x8(%ebp),%eax
  e6:	5d                   	pop    %ebp
  e7:	c3                   	ret    

000000e8 <generate_code>:
  e8:	55                   	push   %ebp
  e9:	89 e5                	mov    %esp,%ebp
  eb:	83 ec 10             	sub    $0x10,%esp
  ee:	8b 45 08             	mov    0x8(%ebp),%eax
  f1:	a3 00 00 00 00       	mov    %eax,0x0
  f6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  fd:	eb 1a                	jmp    119 <generate_code+0x31>
  ff:	a1 00 00 00 00       	mov    0x0,%eax
 104:	ff 75 fc             	pushl  -0x4(%ebp)
 107:	50                   	push   %eax
 108:	e8 fc ff ff ff       	call   109 <generate_code+0x21>
 10d:	83 c4 08             	add    $0x8,%esp
 110:	a3 00 00 00 00       	mov    %eax,0x0
 115:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 119:	8b 45 fc             	mov    -0x4(%ebp),%eax
 11c:	83 f8 0e             	cmp    $0xe,%eax
 11f:	76 de                	jbe    ff <generate_code+0x17>
 121:	90                   	nop
 122:	c9                   	leave  
 123:	c3                   	ret    

00000124 <encode_1>:
 124:	55                   	push   %ebp
 125:	89 e5                	mov    %esp,%ebp
 127:	83 ec 18             	sub    $0x18,%esp
 12a:	83 ec 0c             	sub    $0xc,%esp
 12d:	ff 75 08             	pushl  0x8(%ebp)
 130:	e8 fc ff ff ff       	call   131 <encode_1+0xd>
 135:	83 c4 10             	add    $0x10,%esp
 138:	89 45 f0             	mov    %eax,-0x10(%ebp)
 13b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 142:	eb 5b                	jmp    19f <encode_1+0x7b>
 144:	8b 55 f4             	mov    -0xc(%ebp),%edx
 147:	8b 45 08             	mov    0x8(%ebp),%eax
 14a:	01 d0                	add    %edx,%eax
 14c:	0f b6 00             	movzbl (%eax),%eax
 14f:	0f be c0             	movsbl %al,%eax
 152:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
 159:	8b 15 00 00 00 00    	mov    0x0,%edx
 15f:	31 d0                	xor    %edx,%eax
 161:	89 c1                	mov    %eax,%ecx
 163:	8b 55 f4             	mov    -0xc(%ebp),%edx
 166:	8b 45 08             	mov    0x8(%ebp),%eax
 169:	01 d0                	add    %edx,%eax
 16b:	83 e1 7f             	and    $0x7f,%ecx
 16e:	89 ca                	mov    %ecx,%edx
 170:	88 10                	mov    %dl,(%eax)
 172:	8b 55 f4             	mov    -0xc(%ebp),%edx
 175:	8b 45 08             	mov    0x8(%ebp),%eax
 178:	01 d0                	add    %edx,%eax
 17a:	0f b6 00             	movzbl (%eax),%eax
 17d:	3c 1f                	cmp    $0x1f,%al
 17f:	7e 0f                	jle    190 <encode_1+0x6c>
 181:	8b 55 f4             	mov    -0xc(%ebp),%edx
 184:	8b 45 08             	mov    0x8(%ebp),%eax
 187:	01 d0                	add    %edx,%eax
 189:	0f b6 00             	movzbl (%eax),%eax
 18c:	3c 7f                	cmp    $0x7f,%al
 18e:	75 0b                	jne    19b <encode_1+0x77>
 190:	8b 55 f4             	mov    -0xc(%ebp),%edx
 193:	8b 45 08             	mov    0x8(%ebp),%eax
 196:	01 d0                	add    %edx,%eax
 198:	c6 00 3f             	movb   $0x3f,(%eax)
 19b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 19f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1a2:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 1a5:	7c 9d                	jl     144 <encode_1+0x20>
 1a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1aa:	c9                   	leave  
 1ab:	c3                   	ret    

000001ac <encode_2>:
 1ac:	55                   	push   %ebp
 1ad:	89 e5                	mov    %esp,%ebp
 1af:	83 ec 18             	sub    $0x18,%esp
 1b2:	83 ec 0c             	sub    $0xc,%esp
 1b5:	ff 75 08             	pushl  0x8(%ebp)
 1b8:	e8 fc ff ff ff       	call   1b9 <encode_2+0xd>
 1bd:	83 c4 10             	add    $0x10,%esp
 1c0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1c3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 1ca:	eb 5a                	jmp    226 <encode_2+0x7a>
 1cc:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1cf:	8b 45 08             	mov    0x8(%ebp),%eax
 1d2:	01 d0                	add    %edx,%eax
 1d4:	0f b6 00             	movzbl (%eax),%eax
 1d7:	0f be c0             	movsbl %al,%eax
 1da:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
 1e1:	8b 15 00 00 00 00    	mov    0x0,%edx
 1e7:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 1ea:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1ed:	8b 45 08             	mov    0x8(%ebp),%eax
 1f0:	01 d0                	add    %edx,%eax
 1f2:	83 e1 7f             	and    $0x7f,%ecx
 1f5:	89 ca                	mov    %ecx,%edx
 1f7:	88 10                	mov    %dl,(%eax)
 1f9:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1fc:	8b 45 08             	mov    0x8(%ebp),%eax
 1ff:	01 d0                	add    %edx,%eax
 201:	0f b6 00             	movzbl (%eax),%eax
 204:	3c 1f                	cmp    $0x1f,%al
 206:	7e 0f                	jle    217 <encode_2+0x6b>
 208:	8b 55 f4             	mov    -0xc(%ebp),%edx
 20b:	8b 45 08             	mov    0x8(%ebp),%eax
 20e:	01 d0                	add    %edx,%eax
 210:	0f b6 00             	movzbl (%eax),%eax
 213:	3c 7f                	cmp    $0x7f,%al
 215:	75 0b                	jne    222 <encode_2+0x76>
 217:	8b 55 f4             	mov    -0xc(%ebp),%edx
 21a:	8b 45 08             	mov    0x8(%ebp),%eax
 21d:	01 d0                	add    %edx,%eax
 21f:	c6 00 2a             	movb   $0x2a,(%eax)
 222:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 226:	8b 45 f4             	mov    -0xc(%ebp),%eax
 229:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 22c:	7c 9e                	jl     1cc <encode_2+0x20>
 22e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 231:	c9                   	leave  
 232:	c3                   	ret    

00000233 <do_phase>:
 233:	55                   	push   %ebp
 234:	89 e5                	mov    %esp,%ebp
 236:	83 ec 08             	sub    $0x8,%esp
 239:	68 d6 00 00 00       	push   $0xd6
 23e:	e8 fc ff ff ff       	call   23f <do_phase+0xc>
 243:	83 c4 04             	add    $0x4,%esp
 246:	a1 04 00 00 00       	mov    0x4,%eax
 24b:	83 ec 0c             	sub    $0xc,%esp
 24e:	68 00 00 00 00       	push   $0x0
 253:	ff d0                	call   *%eax
 255:	83 c4 10             	add    $0x10,%esp
 258:	83 ec 0c             	sub    $0xc,%esp
 25b:	68 00 00 00 00       	push   $0x0
 260:	e8 fc ff ff ff       	call   261 <do_phase+0x2e>
 265:	83 c4 10             	add    $0x10,%esp
 268:	90                   	nop
 269:	c9                   	leave  
 26a:	c3                   	ret    
