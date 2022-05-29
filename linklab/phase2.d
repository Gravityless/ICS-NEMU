
phase2.o:     file format elf32-i386


Disassembly of section .text:

00000000 <HCAyPyqudL>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	c7 45 e5 51 78 45 53 	movl   $0x53457851,-0x1b(%ebp)
   d:	c7 45 e9 42 71 59 4d 	movl   $0x4d597142,-0x17(%ebp)
  14:	c7 45 ed 69 66 45 41 	movl   $0x41456669,-0x13(%ebp)
  1b:	66 c7 45 f1 46 49    	movw   $0x4946,-0xf(%ebp)
  21:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  25:	83 ec 0c             	sub    $0xc,%esp
  28:	8d 45 e5             	lea    -0x1b(%ebp),%eax
  2b:	50                   	push   %eax
  2c:	e8 fc ff ff ff       	call   2d <HCAyPyqudL+0x2d>
  31:	83 c4 10             	add    $0x10,%esp
  34:	89 45 f4             	mov    %eax,-0xc(%ebp)
  37:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  3b:	78 15                	js     52 <HCAyPyqudL+0x52>
  3d:	8b 45 08             	mov    0x8(%ebp),%eax
  40:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  43:	7d 0d                	jge    52 <HCAyPyqudL+0x52>
  45:	8d 55 e5             	lea    -0x1b(%ebp),%edx
  48:	8b 45 08             	mov    0x8(%ebp),%eax
  4b:	01 d0                	add    %edx,%eax
  4d:	0f b6 00             	movzbl (%eax),%eax
  50:	eb 05                	jmp    57 <HCAyPyqudL+0x57>
  52:	b8 00 00 00 00       	mov    $0x0,%eax
  57:	c9                   	leave  
  58:	c3                   	ret    

00000059 <BHoyDVop>:
  59:	55                   	push   %ebp
  5a:	89 e5                	mov    %esp,%ebp
  5c:	83 ec 08             	sub    $0x8,%esp
  5f:	83 ec 08             	sub    $0x8,%esp
  62:	68 02 00 00 00       	push   $0x2
  67:	ff 75 08             	pushl  0x8(%ebp)
  6a:	e8 fc ff ff ff       	call   6b <BHoyDVop+0x12>
  6f:	83 c4 10             	add    $0x10,%esp
  72:	85 c0                	test   %eax,%eax
  74:	75 10                	jne    86 <BHoyDVop+0x2d>
  76:	83 ec 0c             	sub    $0xc,%esp
  79:	ff 75 0c             	pushl  0xc(%ebp)
  7c:	e8 fc ff ff ff       	call   7d <BHoyDVop+0x24>
  81:	83 c4 10             	add    $0x10,%esp
  84:	eb 01                	jmp    87 <BHoyDVop+0x2e>
  86:	90                   	nop
  87:	c9                   	leave  
  88:	c3                   	ret    

00000089 <do_phase>:
  89:	55                   	push   %ebp
  8a:	89 e5                	mov    %esp,%ebp
  8c:	90                   	nop
  8d:	90                   	nop
  8e:	90                   	nop
  8f:	90                   	nop
  90:	83 ec 14             	sub    $0x14,%esp
  93:	c7 45 f4 31 39 31 38 	movl   $0x38313931,-0xc(%ebp)
  9a:	c7 45 f8 33 30 31 37 	movl   $0x37313033,-0x8(%ebp)
  a1:	c7 45 fc 33 00 00 00 	movl   $0x33,-0x4(%ebp)
  a8:	8d 45 f4             	lea    -0xc(%ebp),%eax
  ab:	c7 45 ec 76 4f 62 52 	movl   $0x52624f76,-0x14(%ebp)
  b2:	c7 45 f0 49 7a 63 00 	movl   $0x637a49,-0x10(%ebp)
  b9:	8d 5d ec             	lea    -0x14(%ebp),%ebx
  bc:	50                   	push   %eax
  bd:	53                   	push   %ebx
  be:	e8 96 ff ff ff       	call   59 <BHoyDVop>
  c3:	83 c4 1c             	add    $0x1c,%esp
  c6:	90                   	nop
  c7:	90                   	nop
  c8:	90                   	nop
  c9:	90                   	nop
  ca:	90                   	nop
  cb:	90                   	nop
  cc:	90                   	nop
  cd:	5d                   	pop    %ebp
  ce:	c3                   	ret    
