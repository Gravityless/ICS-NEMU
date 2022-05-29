
phase4.o:     file format elf32-i386


Disassembly of section .text:

00000000 <EEQDXQcHOg>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	90                   	nop
   4:	90                   	nop
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  14:	5d                   	pop    %ebp
  15:	c3                   	ret    

00000016 <do_phase>:
  16:	55                   	push   %ebp
  17:	89 e5                	mov    %esp,%ebp
  19:	83 ec 28             	sub    $0x28,%esp
  1c:	c7 45 e6 59 50 44 57 	movl   $0x57445059,-0x1a(%ebp)
  23:	c7 45 ea 51 4b 58 48 	movl   $0x48584b51,-0x16(%ebp)
  2a:	66 c7 45 ee 4f 00    	movw   $0x4f,-0x12(%ebp)
  30:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  37:	e9 e0 00 00 00       	jmp    11c <do_phase+0x106>
  3c:	8d 55 e6             	lea    -0x1a(%ebp),%edx
  3f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  42:	01 d0                	add    %edx,%eax
  44:	0f b6 00             	movzbl (%eax),%eax
  47:	88 45 f7             	mov    %al,-0x9(%ebp)
  4a:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
  4e:	83 e8 41             	sub    $0x41,%eax
  51:	83 f8 19             	cmp    $0x19,%eax
  54:	0f 87 b0 00 00 00    	ja     10a <do_phase+0xf4>
  5a:	8b 04 85 04 00 00 00 	mov    0x4(,%eax,4),%eax
  61:	ff e0                	jmp    *%eax
  63:	c6 45 f7 54          	movb   $0x54,-0x9(%ebp)
  67:	e9 9e 00 00 00       	jmp    10a <do_phase+0xf4>
  6c:	c6 45 f7 31         1 	movb   $0x31,-0x9(%ebp)
  70:	e9 95 00 00 00       	jmp    10a <do_phase+0xf4>
  75:	c6 45 f7 62          	movb   $0x62,-0x9(%ebp)
  79:	e9 8c 00 00 00       	jmp    10a <do_phase+0xf4>
  7e:	c6 45 f7 30         0 	movb   $0x30,-0x9(%ebp)
  82:	e9 83 00 00 00       	jmp    10a <do_phase+0xf4>
  87:	c6 45 f7 44          	movb   $0x44,-0x9(%ebp)
  8b:	eb 7d                	jmp    10a <do_phase+0xf4>
  8d:	c6 45 f7 34         4 	movb   $0x34,-0x9(%ebp)
  91:	eb 77                	jmp    10a <do_phase+0xf4>
  93:	c6 45 f7 5b          	movb   $0x5b,-0x9(%ebp)
  97:	eb 71                	jmp    10a <do_phase+0xf4>
  99:	c6 45 f7 36         6 	movb   $0x36,-0x9(%ebp)
  9d:	eb 6b                	jmp    10a <do_phase+0xf4>
  9f:	c6 45 f7 49          	movb   $0x49,-0x9(%ebp)
  a3:	eb 65                	jmp    10a <do_phase+0xf4>
  a5:	c6 45 f7 4c          	movb   $0x4c,-0x9(%ebp)
  a9:	eb 5f                	jmp    10a <do_phase+0xf4>
  ab:	c6 45 f7 51          	movb   $0x51,-0x9(%ebp)
  af:	eb 59                	jmp    10a <do_phase+0xf4>
  b1:	c6 45 f7 35         5 	movb   $0x35,-0x9(%ebp)
  b5:	eb 53                	jmp    10a <do_phase+0xf4>
  b7:	c6 45 f7 3c          	movb   $0x3c,-0x9(%ebp)
  bb:	eb 4d                	jmp    10a <do_phase+0xf4>
  bd:	c6 45 f7 6e          	movb   $0x6e,-0x9(%ebp)
  c1:	eb 47                	jmp    10a <do_phase+0xf4>
  c3:	c6 45 f7 46          	movb   $0x46,-0x9(%ebp)
  c7:	eb 41                	jmp    10a <do_phase+0xf4>
  c9:	c6 45 f7 45          	movb   $0x45,-0x9(%ebp)
  cd:	eb 3b                	jmp    10a <do_phase+0xf4>
  cf:	c6 45 f7 3c          	movb   $0x3c,-0x9(%ebp)
  d3:	eb 35                	jmp    10a <do_phase+0xf4>
  d5:	c6 45 f7 4e          	movb   $0x4e,-0x9(%ebp)
  d9:	eb 2f                	jmp    10a <do_phase+0xf4>
  db:	c6 45 f7 37         7 	movb   $0x37,-0x9(%ebp)
  df:	eb 29                	jmp    10a <do_phase+0xf4>
  e1:	c6 45 f7 49          	movb   $0x49,-0x9(%ebp)
  e5:	eb 23                	jmp    10a <do_phase+0xf4>
  e7:	c6 45 f7 33         3 	movb   $0x33,-0x9(%ebp)
  eb:	eb 1d                	jmp    10a <do_phase+0xf4>
  ed:	c6 45 f7 39         9 	movb   $0x39,-0x9(%ebp)
  f1:	eb 17                	jmp    10a <do_phase+0xf4>
  f3:	c6 45 f7 32         2 	movb   $0x32,-0x9(%ebp)
  f7:	eb 11                	jmp    10a <do_phase+0xf4>
  f9:	c6 45 f7 59          	movb   $0x59,-0x9(%ebp)
  fd:	eb 0b                	jmp    10a <do_phase+0xf4>
  ff:	c6 45 f7 38         8 	movb   $0x38,-0x9(%ebp)
 103:	eb 05                	jmp    10a <do_phase+0xf4>
 105:	c6 45 f7 55          	movb   $0x55,-0x9(%ebp)
 109:	90                   	nop
 10a:	8d 55 dc             	lea    -0x24(%ebp),%edx
 10d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 110:	01 c2                	add    %eax,%edx
 112:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 116:	88 02                	mov    %al,(%edx)
 118:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 11c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 11f:	83 f8 08             	cmp    $0x8,%eax
 122:	0f 86 14 ff ff ff    	jbe    3c <do_phase+0x26>
 128:	8d 55 dc             	lea    -0x24(%ebp),%edx
 12b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 12e:	01 d0                	add    %edx,%eax
 130:	c6 00 00             	movb   $0x0,(%eax)
 133:	83 ec 0c             	sub    $0xc,%esp
 136:	8d 45 dc             	lea    -0x24(%ebp),%eax
 139:	50                   	push   %eax
 13a:	e8 fc ff ff ff       	call   13b <do_phase+0x125>
 13f:	83 c4 10             	add    $0x10,%esp
 142:	90                   	nop
 143:	c9                   	leave  
 144:	c3                   	ret    
