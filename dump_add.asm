
./testcase/bin/add:     file format elf32-i386


Disassembly of section .text:

00100000 <start>:
  100000:	e9 00 00 00 00       	jmp    100005 <main>

00100005 <main>:
  100005:	55                   	push   %ebp
  100006:	89 e5                	mov    %esp,%ebp
  100008:	53                   	push   %ebx
  100009:	83 ec 10             	sub    $0x10,%esp
  10000c:	e8 8f 00 00 00       	call   1000a0 <__x86.get_pc_thunk.dx>
  100011:	81 c2 ef 2f 00 00    	add    $0x2fef,%edx
  100017:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  10001e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100025:	eb 48                	jmp    10006f <main+0x6a>
  100027:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10002e:	eb 34                	jmp    100064 <main+0x5f>
  100030:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100033:	8b 8c 82 40 00 00 00 	mov    0x40(%edx,%eax,4),%ecx
  10003a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10003d:	8b 84 82 40 00 00 00 	mov    0x40(%edx,%eax,4),%eax
  100044:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
  100047:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10004a:	8d 48 01             	lea    0x1(%eax),%ecx
  10004d:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  100050:	8b 84 82 60 00 00 00 	mov    0x60(%edx,%eax,4),%eax
  100057:	39 c3                	cmp    %eax,%ebx
  100059:	74 06                	je     100061 <main+0x5c>
  10005b:	b8 01 00 00 00       	mov    $0x1,%eax
  100060:	82                   	nemu_trap 
  100061:	ff 45 f4             	incl   -0xc(%ebp)
  100064:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100067:	83 f8 07             	cmp    $0x7,%eax
  10006a:	76 c4                	jbe    100030 <main+0x2b>
  10006c:	ff 45 f8             	incl   -0x8(%ebp)
  10006f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100072:	83 f8 07             	cmp    $0x7,%eax
  100075:	76 b0                	jbe    100027 <main+0x22>
  100077:	83 7d f8 08          	cmpl   $0x8,-0x8(%ebp)
  10007b:	74 06                	je     100083 <main+0x7e>
  10007d:	b8 01 00 00 00       	mov    $0x1,%eax
  100082:	82                   	nemu_trap 
  100083:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  100087:	74 06                	je     10008f <main+0x8a>
  100089:	b8 01 00 00 00       	mov    $0x1,%eax
  10008e:	82                   	nemu_trap 
  10008f:	b8 00 00 00 00       	mov    $0x0,%eax
  100094:	82                   	nemu_trap 
  100095:	b8 00 00 00 00       	mov    $0x0,%eax
  10009a:	83 c4 10             	add    $0x10,%esp
  10009d:	5b                   	pop    %ebx
  10009e:	5d                   	pop    %ebp
  10009f:	c3                   	ret    

001000a0 <__x86.get_pc_thunk.dx>:
  1000a0:	8b 14 24             	mov    (%esp),%edx
  1000a3:	c3                   	ret    
