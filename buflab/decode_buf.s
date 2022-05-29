
bufbomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 c7 02 00 00       	call   80492d0 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 3f 00 00    	add    $0x3ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 d0 04 08    	pushl  0x804d004
 8049026:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <strcmp@plt>:
 8049030:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <read@plt>:
 8049040:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <srandom@plt>:
 8049050:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <printf@plt>:
 8049060:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <memmove@plt>:
 8049070:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <strdup@plt>:
 8049080:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <memcpy@plt>:
 8049090:	ff 25 24 d0 04 08    	jmp    *0x804d024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <signal@plt>:
 80490a0:	ff 25 28 d0 04 08    	jmp    *0x804d028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <memcmp@plt>:
 80490b0:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <alarm@plt>:
 80490c0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <htons@plt>:
 80490d0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fwrite@plt>:
 80490e0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strcpy@plt>:
 80490f0:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <getpid@plt>:
 8049100:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <gethostname@plt>:
 8049110:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <.plt>

08049120 <puts@plt>:
 8049120:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8049126:	68 78 00 00 00       	push   $0x78
 804912b:	e9 f0 fe ff ff       	jmp    8049020 <.plt>

08049130 <exit@plt>:
 8049130:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 8049136:	68 80 00 00 00       	push   $0x80
 804913b:	e9 e0 fe ff ff       	jmp    8049020 <.plt>

08049140 <srand@plt>:
 8049140:	ff 25 50 d0 04 08    	jmp    *0x804d050
 8049146:	68 88 00 00 00       	push   $0x88
 804914b:	e9 d0 fe ff ff       	jmp    8049020 <.plt>

08049150 <mmap@plt>:
 8049150:	ff 25 54 d0 04 08    	jmp    *0x804d054
 8049156:	68 90 00 00 00       	push   $0x90
 804915b:	e9 c0 fe ff ff       	jmp    8049020 <.plt>

08049160 <strlen@plt>:
 8049160:	ff 25 58 d0 04 08    	jmp    *0x804d058
 8049166:	68 98 00 00 00       	push   $0x98
 804916b:	e9 b0 fe ff ff       	jmp    8049020 <.plt>

08049170 <__libc_start_main@plt>:
 8049170:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 8049176:	68 a0 00 00 00       	push   $0xa0
 804917b:	e9 a0 fe ff ff       	jmp    8049020 <.plt>

08049180 <write@plt>:
 8049180:	ff 25 60 d0 04 08    	jmp    *0x804d060
 8049186:	68 a8 00 00 00       	push   $0xa8
 804918b:	e9 90 fe ff ff       	jmp    8049020 <.plt>

08049190 <getopt@plt>:
 8049190:	ff 25 64 d0 04 08    	jmp    *0x804d064
 8049196:	68 b0 00 00 00       	push   $0xb0
 804919b:	e9 80 fe ff ff       	jmp    8049020 <.plt>

080491a0 <strcasecmp@plt>:
 80491a0:	ff 25 68 d0 04 08    	jmp    *0x804d068
 80491a6:	68 b8 00 00 00       	push   $0xb8
 80491ab:	e9 70 fe ff ff       	jmp    8049020 <.plt>

080491b0 <__isoc99_sscanf@plt>:
 80491b0:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 80491b6:	68 c0 00 00 00       	push   $0xc0
 80491bb:	e9 60 fe ff ff       	jmp    8049020 <.plt>

080491c0 <memset@plt>:
 80491c0:	ff 25 70 d0 04 08    	jmp    *0x804d070
 80491c6:	68 c8 00 00 00       	push   $0xc8
 80491cb:	e9 50 fe ff ff       	jmp    8049020 <.plt>

080491d0 <__errno_location@plt>:
 80491d0:	ff 25 74 d0 04 08    	jmp    *0x804d074
 80491d6:	68 d0 00 00 00       	push   $0xd0
 80491db:	e9 40 fe ff ff       	jmp    8049020 <.plt>

080491e0 <rand@plt>:
 80491e0:	ff 25 78 d0 04 08    	jmp    *0x804d078
 80491e6:	68 d8 00 00 00       	push   $0xd8
 80491eb:	e9 30 fe ff ff       	jmp    8049020 <.plt>

080491f0 <munmap@plt>:
 80491f0:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 80491f6:	68 e0 00 00 00       	push   $0xe0
 80491fb:	e9 20 fe ff ff       	jmp    8049020 <.plt>

08049200 <sprintf@plt>:
 8049200:	ff 25 80 d0 04 08    	jmp    *0x804d080
 8049206:	68 e8 00 00 00       	push   $0xe8
 804920b:	e9 10 fe ff ff       	jmp    8049020 <.plt>

08049210 <socket@plt>:
 8049210:	ff 25 84 d0 04 08    	jmp    *0x804d084
 8049216:	68 f0 00 00 00       	push   $0xf0
 804921b:	e9 00 fe ff ff       	jmp    8049020 <.plt>

08049220 <getc@plt>:
 8049220:	ff 25 88 d0 04 08    	jmp    *0x804d088
 8049226:	68 f8 00 00 00       	push   $0xf8
 804922b:	e9 f0 fd ff ff       	jmp    8049020 <.plt>

08049230 <random@plt>:
 8049230:	ff 25 8c d0 04 08    	jmp    *0x804d08c
 8049236:	68 00 01 00 00       	push   $0x100
 804923b:	e9 e0 fd ff ff       	jmp    8049020 <.plt>

08049240 <gethostbyname@plt>:
 8049240:	ff 25 90 d0 04 08    	jmp    *0x804d090
 8049246:	68 08 01 00 00       	push   $0x108
 804924b:	e9 d0 fd ff ff       	jmp    8049020 <.plt>

08049250 <connect@plt>:
 8049250:	ff 25 94 d0 04 08    	jmp    *0x804d094
 8049256:	68 10 01 00 00       	push   $0x110
 804925b:	e9 c0 fd ff ff       	jmp    8049020 <.plt>

08049260 <close@plt>:
 8049260:	ff 25 98 d0 04 08    	jmp    *0x804d098
 8049266:	68 18 01 00 00       	push   $0x118
 804926b:	e9 b0 fd ff ff       	jmp    8049020 <.plt>

08049270 <calloc@plt>:
 8049270:	ff 25 9c d0 04 08    	jmp    *0x804d09c
 8049276:	68 20 01 00 00       	push   $0x120
 804927b:	e9 a0 fd ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049280 <_start>:
 8049280:	31 ed                	xor    %ebp,%ebp
 8049282:	5e                   	pop    %esi
 8049283:	89 e1                	mov    %esp,%ecx
 8049285:	83 e4 f0             	and    $0xfffffff0,%esp
 8049288:	50                   	push   %eax
 8049289:	54                   	push   %esp
 804928a:	52                   	push   %edx
 804928b:	e8 23 00 00 00       	call   80492b3 <_start+0x33>
 8049290:	81 c3 70 3d 00 00    	add    $0x3d70,%ebx
 8049296:	8d 83 20 dc ff ff    	lea    -0x23e0(%ebx),%eax
 804929c:	50                   	push   %eax
 804929d:	8d 83 c0 db ff ff    	lea    -0x2440(%ebx),%eax
 80492a3:	50                   	push   %eax
 80492a4:	51                   	push   %ecx
 80492a5:	56                   	push   %esi
 80492a6:	c7 c0 df 99 04 08    	mov    $0x80499df,%eax
 80492ac:	50                   	push   %eax
 80492ad:	e8 be fe ff ff       	call   8049170 <__libc_start_main@plt>
 80492b2:	f4                   	hlt    
 80492b3:	8b 1c 24             	mov    (%esp),%ebx
 80492b6:	c3                   	ret    
 80492b7:	66 90                	xchg   %ax,%ax
 80492b9:	66 90                	xchg   %ax,%ax
 80492bb:	66 90                	xchg   %ax,%ax
 80492bd:	66 90                	xchg   %ax,%ax
 80492bf:	90                   	nop

080492c0 <_dl_relocate_static_pie>:
 80492c0:	c3                   	ret    
 80492c1:	66 90                	xchg   %ax,%ax
 80492c3:	66 90                	xchg   %ax,%ax
 80492c5:	66 90                	xchg   %ax,%ax
 80492c7:	66 90                	xchg   %ax,%ax
 80492c9:	66 90                	xchg   %ax,%ax
 80492cb:	66 90                	xchg   %ax,%ax
 80492cd:	66 90                	xchg   %ax,%ax
 80492cf:	90                   	nop

080492d0 <__x86.get_pc_thunk.bx>:
 80492d0:	8b 1c 24             	mov    (%esp),%ebx
 80492d3:	c3                   	ret    
 80492d4:	66 90                	xchg   %ax,%ax
 80492d6:	66 90                	xchg   %ax,%ax
 80492d8:	66 90                	xchg   %ax,%ax
 80492da:	66 90                	xchg   %ax,%ax
 80492dc:	66 90                	xchg   %ax,%ax
 80492de:	66 90                	xchg   %ax,%ax

080492e0 <deregister_tm_clones>:
 80492e0:	b8 90 d1 04 08       	mov    $0x804d190,%eax
 80492e5:	3d 90 d1 04 08       	cmp    $0x804d190,%eax
 80492ea:	74 24                	je     8049310 <deregister_tm_clones+0x30>
 80492ec:	b8 00 00 00 00       	mov    $0x0,%eax
 80492f1:	85 c0                	test   %eax,%eax
 80492f3:	74 1b                	je     8049310 <deregister_tm_clones+0x30>
 80492f5:	55                   	push   %ebp
 80492f6:	89 e5                	mov    %esp,%ebp
 80492f8:	83 ec 14             	sub    $0x14,%esp
 80492fb:	68 90 d1 04 08       	push   $0x804d190
 8049300:	ff d0                	call   *%eax
 8049302:	83 c4 10             	add    $0x10,%esp
 8049305:	c9                   	leave  
 8049306:	c3                   	ret    
 8049307:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804930e:	66 90                	xchg   %ax,%ax
 8049310:	c3                   	ret    
 8049311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049318:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804931f:	90                   	nop

08049320 <register_tm_clones>:
 8049320:	b8 90 d1 04 08       	mov    $0x804d190,%eax
 8049325:	2d 90 d1 04 08       	sub    $0x804d190,%eax
 804932a:	c1 f8 02             	sar    $0x2,%eax
 804932d:	89 c2                	mov    %eax,%edx
 804932f:	c1 ea 1f             	shr    $0x1f,%edx
 8049332:	01 d0                	add    %edx,%eax
 8049334:	d1 f8                	sar    %eax
 8049336:	74 20                	je     8049358 <register_tm_clones+0x38>
 8049338:	ba 00 00 00 00       	mov    $0x0,%edx
 804933d:	85 d2                	test   %edx,%edx
 804933f:	74 17                	je     8049358 <register_tm_clones+0x38>
 8049341:	55                   	push   %ebp
 8049342:	89 e5                	mov    %esp,%ebp
 8049344:	83 ec 10             	sub    $0x10,%esp
 8049347:	50                   	push   %eax
 8049348:	68 90 d1 04 08       	push   $0x804d190
 804934d:	ff d2                	call   *%edx
 804934f:	83 c4 10             	add    $0x10,%esp
 8049352:	c9                   	leave  
 8049353:	c3                   	ret    
 8049354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049358:	c3                   	ret    
 8049359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049360 <__do_global_dtors_aux>:
 8049360:	80 3d cc d1 04 08 00 	cmpb   $0x0,0x804d1cc
 8049367:	75 17                	jne    8049380 <__do_global_dtors_aux+0x20>
 8049369:	55                   	push   %ebp
 804936a:	89 e5                	mov    %esp,%ebp
 804936c:	83 ec 08             	sub    $0x8,%esp
 804936f:	e8 6c ff ff ff       	call   80492e0 <deregister_tm_clones>
 8049374:	c6 05 cc d1 04 08 01 	movb   $0x1,0x804d1cc
 804937b:	c9                   	leave  
 804937c:	c3                   	ret    
 804937d:	8d 76 00             	lea    0x0(%esi),%esi
 8049380:	c3                   	ret    
 8049381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049388:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804938f:	90                   	nop

08049390 <frame_dummy>:
 8049390:	eb 8e                	jmp    8049320 <register_tm_clones>

08049392 <EqDqAgFeQB>:
 8049392:	55                   	push   %ebp
 8049393:	89 e5                	mov    %esp,%ebp
 8049395:	83 ec 04             	sub    $0x4,%esp
 8049398:	90                   	nop
 8049399:	90                   	nop
 804939a:	90                   	nop
 804939b:	90                   	nop
 804939c:	90                   	nop
 804939d:	90                   	nop
 804939e:	90                   	nop
 804939f:	90                   	nop
 80493a0:	90                   	nop
 80493a1:	90                   	nop
 80493a2:	90                   	nop
 80493a3:	90                   	nop
 80493a4:	90                   	nop
 80493a5:	90                   	nop
 80493a6:	90                   	nop
 80493a7:	90                   	nop
 80493a8:	90                   	nop
 80493a9:	90                   	nop
 80493aa:	90                   	nop
 80493ab:	90                   	nop
 80493ac:	db 45 08             	fildl  0x8(%ebp)
 80493af:	db 45 0c             	fildl  0xc(%ebp)
 80493b2:	de c9                	fmulp  %st,%st(1)
 80493b4:	8b 45 08             	mov    0x8(%ebp),%eax
 80493b7:	99                   	cltd   
 80493b8:	f7 7d 0c             	idivl  0xc(%ebp)
 80493bb:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80493be:	db 45 fc             	fildl  -0x4(%ebp)
 80493c1:	de e9                	fsubrp %st,%st(1)
 80493c3:	c9                   	leave  
 80493c4:	c3                   	ret    

080493c5 <smoke>:
 80493c5:	55                   	push   %ebp
 80493c6:	89 e5                	mov    %esp,%ebp
 80493c8:	83 ec 08             	sub    $0x8,%esp
 80493cb:	83 ec 0c             	sub    $0xc,%esp
 80493ce:	68 54 b0 04 08       	push   $0x804b054
 80493d3:	e8 48 fd ff ff       	call   8049120 <puts@plt>
 80493d8:	83 c4 10             	add    $0x10,%esp
 80493db:	83 ec 0c             	sub    $0xc,%esp
 80493de:	6a 00                	push   $0x0
 80493e0:	e8 cf 09 00 00       	call   8049db4 <validate>
 80493e5:	83 c4 10             	add    $0x10,%esp
 80493e8:	83 ec 0c             	sub    $0xc,%esp
 80493eb:	6a 00                	push   $0x0
 80493ed:	e8 3e fd ff ff       	call   8049130 <exit@plt>

080493f2 <fizz>:
 80493f2:	55                   	push   %ebp
 80493f3:	89 e5                	mov    %esp,%ebp
 80493f5:	83 ec 08             	sub    $0x8,%esp
 80493f8:	8b 55 08             	mov    0x8(%ebp),%edx
 80493fb:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049400:	39 c2                	cmp    %eax,%edx
 8049402:	75 22                	jne    8049426 <fizz+0x34>
 8049404:	83 ec 08             	sub    $0x8,%esp
 8049407:	ff 75 08             	pushl  0x8(%ebp)
 804940a:	68 6f b0 04 08       	push   $0x804b06f
 804940f:	e8 4c fc ff ff       	call   8049060 <printf@plt>
 8049414:	83 c4 10             	add    $0x10,%esp
 8049417:	83 ec 0c             	sub    $0xc,%esp
 804941a:	6a 01                	push   $0x1
 804941c:	e8 93 09 00 00       	call   8049db4 <validate>
 8049421:	83 c4 10             	add    $0x10,%esp
 8049424:	eb 13                	jmp    8049439 <fizz+0x47>
 8049426:	83 ec 08             	sub    $0x8,%esp
 8049429:	ff 75 08             	pushl  0x8(%ebp)
 804942c:	68 90 b0 04 08       	push   $0x804b090
 8049431:	e8 2a fc ff ff       	call   8049060 <printf@plt>
 8049436:	83 c4 10             	add    $0x10,%esp
 8049439:	83 ec 0c             	sub    $0xc,%esp
 804943c:	6a 00                	push   $0x0
 804943e:	e8 ed fc ff ff       	call   8049130 <exit@plt>

08049443 <bang>:
 8049443:	55                   	push   %ebp
 8049444:	89 e5                	mov    %esp,%ebp
 8049446:	83 ec 08             	sub    $0x8,%esp
 8049449:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 804944e:	89 c2                	mov    %eax,%edx
 8049450:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049455:	39 c2                	cmp    %eax,%edx
 8049457:	75 25                	jne    804947e <bang+0x3b>
 8049459:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 804945e:	83 ec 08             	sub    $0x8,%esp
 8049461:	50                   	push   %eax
 8049462:	68 b0 b0 04 08       	push   $0x804b0b0
 8049467:	e8 f4 fb ff ff       	call   8049060 <printf@plt>
 804946c:	83 c4 10             	add    $0x10,%esp
 804946f:	83 ec 0c             	sub    $0xc,%esp
 8049472:	6a 02                	push   $0x2
 8049474:	e8 3b 09 00 00       	call   8049db4 <validate>
 8049479:	83 c4 10             	add    $0x10,%esp
 804947c:	eb 16                	jmp    8049494 <bang+0x51>
 804947e:	a1 e8 d1 04 08       	mov    0x804d1e8,%eax
 8049483:	83 ec 08             	sub    $0x8,%esp
 8049486:	50                   	push   %eax
 8049487:	68 d5 b0 04 08       	push   $0x804b0d5
 804948c:	e8 cf fb ff ff       	call   8049060 <printf@plt>
 8049491:	83 c4 10             	add    $0x10,%esp
 8049494:	83 ec 0c             	sub    $0xc,%esp
 8049497:	6a 00                	push   $0x0
 8049499:	e8 92 fc ff ff       	call   8049130 <exit@plt>

0804949e <eval2equal>:
 804949e:	55                   	push   %ebp
 804949f:	89 e5                	mov    %esp,%ebp
 80494a1:	81 ec a8 00 00 00    	sub    $0xa8,%esp
 80494a7:	e8 84 fd ff ff       	call   8049230 <random@plt>
 80494ac:	89 c1                	mov    %eax,%ecx
 80494ae:	ba b9 75 79 07       	mov    $0x77975b9,%edx
 80494b3:	89 c8                	mov    %ecx,%eax
 80494b5:	f7 ea                	imul   %edx
 80494b7:	c1 fa 02             	sar    $0x2,%edx
 80494ba:	89 c8                	mov    %ecx,%eax
 80494bc:	c1 f8 1f             	sar    $0x1f,%eax
 80494bf:	29 c2                	sub    %eax,%edx
 80494c1:	89 d0                	mov    %edx,%eax
 80494c3:	69 c0 89 00 00 00    	imul   $0x89,%eax,%eax
 80494c9:	29 c1                	sub    %eax,%ecx
 80494cb:	89 c8                	mov    %ecx,%eax
 80494cd:	89 c2                	mov    %eax,%edx
 80494cf:	8d 85 61 ff ff ff    	lea    -0x9f(%ebp),%eax
 80494d5:	01 d0                	add    %edx,%eax
 80494d7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80494da:	83 ec 04             	sub    $0x4,%esp
 80494dd:	ff 75 0c             	pushl  0xc(%ebp)
 80494e0:	68 f3 b0 04 08       	push   $0x804b0f3
 80494e5:	ff 75 f4             	pushl  -0xc(%ebp)
 80494e8:	e8 13 fd ff ff       	call   8049200 <sprintf@plt>
 80494ed:	83 c4 10             	add    $0x10,%esp
 80494f0:	83 ec 04             	sub    $0x4,%esp
 80494f3:	6a 09                	push   $0x9
 80494f5:	ff 75 f4             	pushl  -0xc(%ebp)
 80494f8:	ff 75 08             	pushl  0x8(%ebp)
 80494fb:	e8 b0 fb ff ff       	call   80490b0 <memcmp@plt>
 8049500:	83 c4 10             	add    $0x10,%esp
 8049503:	85 c0                	test   %eax,%eax
 8049505:	0f 94 c0             	sete   %al
 8049508:	0f b6 c0             	movzbl %al,%eax
 804950b:	c9                   	leave  
 804950c:	c3                   	ret    

0804950d <rumble>:
 804950d:	55                   	push   %ebp
 804950e:	89 e5                	mov    %esp,%ebp
 8049510:	83 ec 08             	sub    $0x8,%esp
 8049513:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049518:	83 ec 08             	sub    $0x8,%esp
 804951b:	50                   	push   %eax
 804951c:	ff 75 08             	pushl  0x8(%ebp)
 804951f:	e8 7a ff ff ff       	call   804949e <eval2equal>
 8049524:	83 c4 10             	add    $0x10,%esp
 8049527:	85 c0                	test   %eax,%eax
 8049529:	74 22                	je     804954d <rumble+0x40>
 804952b:	83 ec 08             	sub    $0x8,%esp
 804952e:	ff 75 08             	pushl  0x8(%ebp)
 8049531:	68 f8 b0 04 08       	push   $0x804b0f8
 8049536:	e8 25 fb ff ff       	call   8049060 <printf@plt>
 804953b:	83 c4 10             	add    $0x10,%esp
 804953e:	83 ec 0c             	sub    $0xc,%esp
 8049541:	6a 03                	push   $0x3
 8049543:	e8 6c 08 00 00       	call   8049db4 <validate>
 8049548:	83 c4 10             	add    $0x10,%esp
 804954b:	eb 13                	jmp    8049560 <rumble+0x53>
 804954d:	83 ec 08             	sub    $0x8,%esp
 8049550:	ff 75 08             	pushl  0x8(%ebp)
 8049553:	68 1c b1 04 08       	push   $0x804b11c
 8049558:	e8 03 fb ff ff       	call   8049060 <printf@plt>
 804955d:	83 c4 10             	add    $0x10,%esp
 8049560:	83 ec 0c             	sub    $0xc,%esp
 8049563:	6a 00                	push   $0x0
 8049565:	e8 c6 fb ff ff       	call   8049130 <exit@plt>

0804956a <test>:
 804956a:	55                   	push   %ebp
 804956b:	89 e5                	mov    %esp,%ebp
 804956d:	83 ec 18             	sub    $0x18,%esp
 8049570:	e8 4c 04 00 00       	call   80499c1 <uniqueval>
 8049575:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049578:	e8 ba 06 00 00       	call   8049c37 <getbuf>
 804957d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049580:	e8 3c 04 00 00       	call   80499c1 <uniqueval>
 8049585:	89 c2                	mov    %eax,%edx
 8049587:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804958a:	39 c2                	cmp    %eax,%edx
 804958c:	74 12                	je     80495a0 <test+0x36>
 804958e:	83 ec 0c             	sub    $0xc,%esp
 8049591:	68 40 b1 04 08       	push   $0x804b140
 8049596:	e8 85 fb ff ff       	call   8049120 <puts@plt>
 804959b:	83 c4 10             	add    $0x10,%esp
 804959e:	eb 41                	jmp    80495e1 <test+0x77>
 80495a0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80495a3:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 80495a8:	39 c2                	cmp    %eax,%edx
 80495aa:	75 22                	jne    80495ce <test+0x64>
 80495ac:	83 ec 08             	sub    $0x8,%esp
 80495af:	ff 75 f4             	pushl  -0xc(%ebp)
 80495b2:	68 69 b1 04 08       	push   $0x804b169
 80495b7:	e8 a4 fa ff ff       	call   8049060 <printf@plt>
 80495bc:	83 c4 10             	add    $0x10,%esp
 80495bf:	83 ec 0c             	sub    $0xc,%esp
 80495c2:	6a 04                	push   $0x4
 80495c4:	e8 eb 07 00 00       	call   8049db4 <validate>
 80495c9:	83 c4 10             	add    $0x10,%esp
 80495cc:	eb 13                	jmp    80495e1 <test+0x77>
 80495ce:	83 ec 08             	sub    $0x8,%esp
 80495d1:	ff 75 f4             	pushl  -0xc(%ebp)
 80495d4:	68 86 b1 04 08       	push   $0x804b186
 80495d9:	e8 82 fa ff ff       	call   8049060 <printf@plt>
 80495de:	83 c4 10             	add    $0x10,%esp
 80495e1:	90                   	nop
 80495e2:	c9                   	leave  
 80495e3:	c3                   	ret    

080495e4 <testn>:
 80495e4:	55                   	push   %ebp
 80495e5:	89 e5                	mov    %esp,%ebp
 80495e7:	83 ec 38             	sub    $0x38,%esp
 80495ea:	e8 d2 03 00 00       	call   80499c1 <uniqueval>
 80495ef:	89 45 cc             	mov    %eax,-0x34(%ebp)
 80495f2:	e8 5c 06 00 00       	call   8049c53 <getbufn>
 80495f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80495fa:	e8 c2 03 00 00       	call   80499c1 <uniqueval>
 80495ff:	89 c2                	mov    %eax,%edx
 8049601:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8049604:	39 c2                	cmp    %eax,%edx
 8049606:	74 12                	je     804961a <testn+0x36>
 8049608:	83 ec 0c             	sub    $0xc,%esp
 804960b:	68 40 b1 04 08       	push   $0x804b140
 8049610:	e8 0b fb ff ff       	call   8049120 <puts@plt>
 8049615:	83 c4 10             	add    $0x10,%esp
 8049618:	eb 41                	jmp    804965b <testn+0x77>
 804961a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804961d:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049622:	39 c2                	cmp    %eax,%edx
 8049624:	75 22                	jne    8049648 <testn+0x64>
 8049626:	83 ec 08             	sub    $0x8,%esp
 8049629:	ff 75 f4             	pushl  -0xc(%ebp)
 804962c:	68 a4 b1 04 08       	push   $0x804b1a4
 8049631:	e8 2a fa ff ff       	call   8049060 <printf@plt>
 8049636:	83 c4 10             	add    $0x10,%esp
 8049639:	83 ec 0c             	sub    $0xc,%esp
 804963c:	6a 05                	push   $0x5
 804963e:	e8 71 07 00 00       	call   8049db4 <validate>
 8049643:	83 c4 10             	add    $0x10,%esp
 8049646:	eb 13                	jmp    804965b <testn+0x77>
 8049648:	83 ec 08             	sub    $0x8,%esp
 804964b:	ff 75 f4             	pushl  -0xc(%ebp)
 804964e:	68 c4 b1 04 08       	push   $0x804b1c4
 8049653:	e8 08 fa ff ff       	call   8049060 <printf@plt>
 8049658:	83 c4 10             	add    $0x10,%esp
 804965b:	90                   	nop
 804965c:	c9                   	leave  
 804965d:	c3                   	ret    

0804965e <save_char>:
 804965e:	55                   	push   %ebp
 804965f:	89 e5                	mov    %esp,%ebp
 8049661:	83 ec 04             	sub    $0x4,%esp
 8049664:	8b 45 08             	mov    0x8(%ebp),%eax
 8049667:	88 45 fc             	mov    %al,-0x4(%ebp)
 804966a:	a1 ec d1 04 08       	mov    0x804d1ec,%eax
 804966f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 8049674:	7f 70                	jg     80496e6 <save_char+0x88>
 8049676:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804967a:	c0 f8 04             	sar    $0x4,%al
 804967d:	0f be c0             	movsbl %al,%eax
 8049680:	83 e0 0f             	and    $0xf,%eax
 8049683:	89 c1                	mov    %eax,%ecx
 8049685:	8b 15 ec d1 04 08    	mov    0x804d1ec,%edx
 804968b:	89 d0                	mov    %edx,%eax
 804968d:	01 c0                	add    %eax,%eax
 804968f:	01 c2                	add    %eax,%edx
 8049691:	0f b6 81 68 d1 04 08 	movzbl 0x804d168(%ecx),%eax
 8049698:	88 82 20 e2 04 08    	mov    %al,0x804e220(%edx)
 804969e:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 80496a2:	83 e0 0f             	and    $0xf,%eax
 80496a5:	89 c1                	mov    %eax,%ecx
 80496a7:	8b 15 ec d1 04 08    	mov    0x804d1ec,%edx
 80496ad:	89 d0                	mov    %edx,%eax
 80496af:	01 c0                	add    %eax,%eax
 80496b1:	01 d0                	add    %edx,%eax
 80496b3:	8d 50 01             	lea    0x1(%eax),%edx
 80496b6:	0f b6 81 68 d1 04 08 	movzbl 0x804d168(%ecx),%eax
 80496bd:	88 82 20 e2 04 08    	mov    %al,0x804e220(%edx)
 80496c3:	8b 15 ec d1 04 08    	mov    0x804d1ec,%edx
 80496c9:	89 d0                	mov    %edx,%eax
 80496cb:	01 c0                	add    %eax,%eax
 80496cd:	01 d0                	add    %edx,%eax
 80496cf:	83 c0 02             	add    $0x2,%eax
 80496d2:	c6 80 20 e2 04 08 20 	movb   $0x20,0x804e220(%eax)
 80496d9:	a1 ec d1 04 08       	mov    0x804d1ec,%eax
 80496de:	83 c0 01             	add    $0x1,%eax
 80496e1:	a3 ec d1 04 08       	mov    %eax,0x804d1ec
 80496e6:	90                   	nop
 80496e7:	c9                   	leave  
 80496e8:	c3                   	ret    

080496e9 <save_term>:
 80496e9:	55                   	push   %ebp
 80496ea:	89 e5                	mov    %esp,%ebp
 80496ec:	8b 15 ec d1 04 08    	mov    0x804d1ec,%edx
 80496f2:	89 d0                	mov    %edx,%eax
 80496f4:	01 c0                	add    %eax,%eax
 80496f6:	01 d0                	add    %edx,%eax
 80496f8:	c6 80 20 e2 04 08 00 	movb   $0x0,0x804e220(%eax)
 80496ff:	90                   	nop
 8049700:	5d                   	pop    %ebp
 8049701:	c3                   	ret    

08049702 <Gets>:
 8049702:	55                   	push   %ebp
 8049703:	89 e5                	mov    %esp,%ebp
 8049705:	83 ec 18             	sub    $0x18,%esp
 8049708:	8b 45 08             	mov    0x8(%ebp),%eax
 804970b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804970e:	c7 05 ec d1 04 08 00 	movl   $0x0,0x804d1ec
 8049715:	00 00 00 
 8049718:	eb 1d                	jmp    8049737 <Gets+0x35>
 804971a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804971d:	8d 50 01             	lea    0x1(%eax),%edx
 8049720:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8049723:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049726:	88 10                	mov    %dl,(%eax)
 8049728:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804972b:	0f be c0             	movsbl %al,%eax
 804972e:	50                   	push   %eax
 804972f:	e8 2a ff ff ff       	call   804965e <save_char>
 8049734:	83 c4 04             	add    $0x4,%esp
 8049737:	a1 dc d1 04 08       	mov    0x804d1dc,%eax
 804973c:	83 ec 0c             	sub    $0xc,%esp
 804973f:	50                   	push   %eax
 8049740:	e8 db fa ff ff       	call   8049220 <getc@plt>
 8049745:	83 c4 10             	add    $0x10,%esp
 8049748:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804974b:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 804974f:	74 06                	je     8049757 <Gets+0x55>
 8049751:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
 8049755:	75 c3                	jne    804971a <Gets+0x18>
 8049757:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804975a:	8d 50 01             	lea    0x1(%eax),%edx
 804975d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8049760:	c6 00 00             	movb   $0x0,(%eax)
 8049763:	e8 81 ff ff ff       	call   80496e9 <save_term>
 8049768:	8b 45 08             	mov    0x8(%ebp),%eax
 804976b:	c9                   	leave  
 804976c:	c3                   	ret    

0804976d <usage>:
 804976d:	55                   	push   %ebp
 804976e:	89 e5                	mov    %esp,%ebp
 8049770:	83 ec 08             	sub    $0x8,%esp
 8049773:	83 ec 08             	sub    $0x8,%esp
 8049776:	ff 75 08             	pushl  0x8(%ebp)
 8049779:	68 e0 b1 04 08       	push   $0x804b1e0
 804977e:	e8 dd f8 ff ff       	call   8049060 <printf@plt>
 8049783:	83 c4 10             	add    $0x10,%esp
 8049786:	83 ec 0c             	sub    $0xc,%esp
 8049789:	68 fe b1 04 08       	push   $0x804b1fe
 804978e:	e8 8d f9 ff ff       	call   8049120 <puts@plt>
 8049793:	83 c4 10             	add    $0x10,%esp
 8049796:	83 ec 0c             	sub    $0xc,%esp
 8049799:	68 14 b2 04 08       	push   $0x804b214
 804979e:	e8 7d f9 ff ff       	call   8049120 <puts@plt>
 80497a3:	83 c4 10             	add    $0x10,%esp
 80497a6:	83 ec 0c             	sub    $0xc,%esp
 80497a9:	68 30 b2 04 08       	push   $0x804b230
 80497ae:	e8 6d f9 ff ff       	call   8049120 <puts@plt>
 80497b3:	83 c4 10             	add    $0x10,%esp
 80497b6:	83 ec 0c             	sub    $0xc,%esp
 80497b9:	68 6c b2 04 08       	push   $0x804b26c
 80497be:	e8 5d f9 ff ff       	call   8049120 <puts@plt>
 80497c3:	83 c4 10             	add    $0x10,%esp
 80497c6:	83 ec 0c             	sub    $0xc,%esp
 80497c9:	6a 00                	push   $0x0
 80497cb:	e8 60 f9 ff ff       	call   8049130 <exit@plt>

080497d0 <bushandler>:
 80497d0:	55                   	push   %ebp
 80497d1:	89 e5                	mov    %esp,%ebp
 80497d3:	83 ec 08             	sub    $0x8,%esp
 80497d6:	83 ec 0c             	sub    $0xc,%esp
 80497d9:	68 94 b2 04 08       	push   $0x804b294
 80497de:	e8 3d f9 ff ff       	call   8049120 <puts@plt>
 80497e3:	83 c4 10             	add    $0x10,%esp
 80497e6:	83 ec 0c             	sub    $0xc,%esp
 80497e9:	68 b4 b2 04 08       	push   $0x804b2b4
 80497ee:	e8 2d f9 ff ff       	call   8049120 <puts@plt>
 80497f3:	83 c4 10             	add    $0x10,%esp
 80497f6:	83 ec 0c             	sub    $0xc,%esp
 80497f9:	6a 00                	push   $0x0
 80497fb:	e8 30 f9 ff ff       	call   8049130 <exit@plt>

08049800 <seghandler>:
 8049800:	55                   	push   %ebp
 8049801:	89 e5                	mov    %esp,%ebp
 8049803:	83 ec 08             	sub    $0x8,%esp
 8049806:	83 ec 0c             	sub    $0xc,%esp
 8049809:	68 cc b2 04 08       	push   $0x804b2cc
 804980e:	e8 0d f9 ff ff       	call   8049120 <puts@plt>
 8049813:	83 c4 10             	add    $0x10,%esp
 8049816:	83 ec 0c             	sub    $0xc,%esp
 8049819:	68 b4 b2 04 08       	push   $0x804b2b4
 804981e:	e8 fd f8 ff ff       	call   8049120 <puts@plt>
 8049823:	83 c4 10             	add    $0x10,%esp
 8049826:	83 ec 0c             	sub    $0xc,%esp
 8049829:	6a 00                	push   $0x0
 804982b:	e8 00 f9 ff ff       	call   8049130 <exit@plt>

08049830 <illegalhandler>:
 8049830:	55                   	push   %ebp
 8049831:	89 e5                	mov    %esp,%ebp
 8049833:	83 ec 08             	sub    $0x8,%esp
 8049836:	83 ec 0c             	sub    $0xc,%esp
 8049839:	68 f4 b2 04 08       	push   $0x804b2f4
 804983e:	e8 dd f8 ff ff       	call   8049120 <puts@plt>
 8049843:	83 c4 10             	add    $0x10,%esp
 8049846:	83 ec 0c             	sub    $0xc,%esp
 8049849:	68 b4 b2 04 08       	push   $0x804b2b4
 804984e:	e8 cd f8 ff ff       	call   8049120 <puts@plt>
 8049853:	83 c4 10             	add    $0x10,%esp
 8049856:	83 ec 0c             	sub    $0xc,%esp
 8049859:	6a 00                	push   $0x0
 804985b:	e8 d0 f8 ff ff       	call   8049130 <exit@plt>

08049860 <launch>:
 8049860:	55                   	push   %ebp
 8049861:	89 e5                	mov    %esp,%ebp
 8049863:	83 ec 58             	sub    $0x58,%esp
 8049866:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804986d:	8d 45 b0             	lea    -0x50(%ebp),%eax
 8049870:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 8049875:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049878:	8b 55 0c             	mov    0xc(%ebp),%edx
 804987b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804987e:	01 d0                	add    %edx,%eax
 8049880:	8d 50 0c             	lea    0xc(%eax),%edx
 8049883:	b8 10 00 00 00       	mov    $0x10,%eax
 8049888:	83 e8 01             	sub    $0x1,%eax
 804988b:	01 d0                	add    %edx,%eax
 804988d:	b9 10 00 00 00       	mov    $0x10,%ecx
 8049892:	ba 00 00 00 00       	mov    $0x0,%edx
 8049897:	f7 f1                	div    %ecx
 8049899:	6b c0 10             	imul   $0x10,%eax,%eax
 804989c:	29 c4                	sub    %eax,%esp
 804989e:	89 e0                	mov    %esp,%eax
 80498a0:	83 c0 0f             	add    $0xf,%eax
 80498a3:	c1 e8 04             	shr    $0x4,%eax
 80498a6:	c1 e0 04             	shl    $0x4,%eax
 80498a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80498ac:	83 ec 04             	sub    $0x4,%esp
 80498af:	ff 75 f4             	pushl  -0xc(%ebp)
 80498b2:	68 f4 00 00 00       	push   $0xf4
 80498b7:	ff 75 f0             	pushl  -0x10(%ebp)
 80498ba:	e8 01 f9 ff ff       	call   80491c0 <memset@plt>
 80498bf:	83 c4 10             	add    $0x10,%esp
 80498c2:	83 ec 0c             	sub    $0xc,%esp
 80498c5:	68 1f b3 04 08       	push   $0x804b31f
 80498ca:	e8 91 f7 ff ff       	call   8049060 <printf@plt>
 80498cf:	83 c4 10             	add    $0x10,%esp
 80498d2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80498d6:	74 07                	je     80498df <launch+0x7f>
 80498d8:	e8 07 fd ff ff       	call   80495e4 <testn>
 80498dd:	eb 05                	jmp    80498e4 <launch+0x84>
 80498df:	e8 86 fc ff ff       	call   804956a <test>
 80498e4:	a1 e4 d1 04 08       	mov    0x804d1e4,%eax
 80498e9:	85 c0                	test   %eax,%eax
 80498eb:	75 1a                	jne    8049907 <launch+0xa7>
 80498ed:	83 ec 0c             	sub    $0xc,%esp
 80498f0:	68 b4 b2 04 08       	push   $0x804b2b4
 80498f5:	e8 26 f8 ff ff       	call   8049120 <puts@plt>
 80498fa:	83 c4 10             	add    $0x10,%esp
 80498fd:	c7 05 e4 d1 04 08 00 	movl   $0x0,0x804d1e4
 8049904:	00 00 00 
 8049907:	90                   	nop
 8049908:	c9                   	leave  
 8049909:	c3                   	ret    

0804990a <launcher>:
 804990a:	55                   	push   %ebp
 804990b:	89 e5                	mov    %esp,%ebp
 804990d:	83 ec 18             	sub    $0x18,%esp
 8049910:	8b 45 08             	mov    0x8(%ebp),%eax
 8049913:	a3 f0 d1 04 08       	mov    %eax,0x804d1f0
 8049918:	8b 45 0c             	mov    0xc(%ebp),%eax
 804991b:	a3 f4 d1 04 08       	mov    %eax,0x804d1f4
 8049920:	83 ec 08             	sub    $0x8,%esp
 8049923:	6a 00                	push   $0x0
 8049925:	6a 00                	push   $0x0
 8049927:	68 32 01 00 00       	push   $0x132
 804992c:	6a 07                	push   $0x7
 804992e:	68 00 00 10 00       	push   $0x100000
 8049933:	68 00 60 58 55       	push   $0x55586000
 8049938:	e8 13 f8 ff ff       	call   8049150 <mmap@plt>
 804993d:	83 c4 20             	add    $0x20,%esp
 8049940:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049943:	81 7d f4 00 60 58 55 	cmpl   $0x55586000,-0xc(%ebp)
 804994a:	74 21                	je     804996d <launcher+0x63>
 804994c:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049951:	50                   	push   %eax
 8049952:	6a 47                	push   $0x47
 8049954:	6a 01                	push   $0x1
 8049956:	68 2c b3 04 08       	push   $0x804b32c
 804995b:	e8 80 f7 ff ff       	call   80490e0 <fwrite@plt>
 8049960:	83 c4 10             	add    $0x10,%esp
 8049963:	83 ec 0c             	sub    $0xc,%esp
 8049966:	6a 01                	push   $0x1
 8049968:	e8 c3 f7 ff ff       	call   8049130 <exit@plt>
 804996d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049970:	05 f8 ff 0f 00       	add    $0xffff8,%eax
 8049975:	a3 00 e2 04 08       	mov    %eax,0x804e200
 804997a:	8b 15 00 e2 04 08    	mov    0x804e200,%edx
 8049980:	89 e0                	mov    %esp,%eax
 8049982:	89 d4                	mov    %edx,%esp
 8049984:	89 c2                	mov    %eax,%edx
 8049986:	89 15 f8 d1 04 08    	mov    %edx,0x804d1f8
 804998c:	8b 15 f4 d1 04 08    	mov    0x804d1f4,%edx
 8049992:	a1 f0 d1 04 08       	mov    0x804d1f0,%eax
 8049997:	83 ec 08             	sub    $0x8,%esp
 804999a:	52                   	push   %edx
 804999b:	50                   	push   %eax
 804999c:	e8 bf fe ff ff       	call   8049860 <launch>
 80499a1:	83 c4 10             	add    $0x10,%esp
 80499a4:	a1 f8 d1 04 08       	mov    0x804d1f8,%eax
 80499a9:	89 c4                	mov    %eax,%esp
 80499ab:	83 ec 08             	sub    $0x8,%esp
 80499ae:	68 00 00 10 00       	push   $0x100000
 80499b3:	ff 75 f4             	pushl  -0xc(%ebp)
 80499b6:	e8 35 f8 ff ff       	call   80491f0 <munmap@plt>
 80499bb:	83 c4 10             	add    $0x10,%esp
 80499be:	90                   	nop
 80499bf:	c9                   	leave  
 80499c0:	c3                   	ret    

080499c1 <uniqueval>:
 80499c1:	55                   	push   %ebp
 80499c2:	89 e5                	mov    %esp,%ebp
 80499c4:	83 ec 08             	sub    $0x8,%esp
 80499c7:	e8 34 f7 ff ff       	call   8049100 <getpid@plt>
 80499cc:	83 ec 0c             	sub    $0xc,%esp
 80499cf:	50                   	push   %eax
 80499d0:	e8 7b f6 ff ff       	call   8049050 <srandom@plt>
 80499d5:	83 c4 10             	add    $0x10,%esp
 80499d8:	e8 53 f8 ff ff       	call   8049230 <random@plt>
 80499dd:	c9                   	leave  
 80499de:	c3                   	ret    

080499df <main>:
 80499df:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80499e3:	83 e4 f0             	and    $0xfffffff0,%esp
 80499e6:	ff 71 fc             	pushl  -0x4(%ecx)
 80499e9:	55                   	push   %ebp
 80499ea:	89 e5                	mov    %esp,%ebp
 80499ec:	53                   	push   %ebx
 80499ed:	51                   	push   %ecx
 80499ee:	83 ec 20             	sub    $0x20,%esp
 80499f1:	89 cb                	mov    %ecx,%ebx
 80499f3:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 80499fa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049a01:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 8049a08:	83 ec 08             	sub    $0x8,%esp
 8049a0b:	68 00 98 04 08       	push   $0x8049800
 8049a10:	6a 0b                	push   $0xb
 8049a12:	e8 89 f6 ff ff       	call   80490a0 <signal@plt>
 8049a17:	83 c4 10             	add    $0x10,%esp
 8049a1a:	83 ec 08             	sub    $0x8,%esp
 8049a1d:	68 d0 97 04 08       	push   $0x80497d0
 8049a22:	6a 07                	push   $0x7
 8049a24:	e8 77 f6 ff ff       	call   80490a0 <signal@plt>
 8049a29:	83 c4 10             	add    $0x10,%esp
 8049a2c:	83 ec 08             	sub    $0x8,%esp
 8049a2f:	68 30 98 04 08       	push   $0x8049830
 8049a34:	6a 04                	push   $0x4
 8049a36:	e8 65 f6 ff ff       	call   80490a0 <signal@plt>
 8049a3b:	83 c4 10             	add    $0x10,%esp
 8049a3e:	a1 c0 d1 04 08       	mov    0x804d1c0,%eax
 8049a43:	a3 dc d1 04 08       	mov    %eax,0x804d1dc
 8049a48:	e9 a3 00 00 00       	jmp    8049af0 <main+0x111>
 8049a4d:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
 8049a51:	83 e8 67             	sub    $0x67,%eax
 8049a54:	83 f8 0e             	cmp    $0xe,%eax
 8049a57:	0f 87 82 00 00 00    	ja     8049adf <main+0x100>
 8049a5d:	8b 04 85 ec b3 04 08 	mov    0x804b3ec(,%eax,4),%eax
 8049a64:	ff e0                	jmp    *%eax
 8049a66:	8b 43 04             	mov    0x4(%ebx),%eax
 8049a69:	8b 00                	mov    (%eax),%eax
 8049a6b:	83 ec 0c             	sub    $0xc,%esp
 8049a6e:	50                   	push   %eax
 8049a6f:	e8 f9 fc ff ff       	call   804976d <usage>
 8049a74:	83 c4 10             	add    $0x10,%esp
 8049a77:	eb 77                	jmp    8049af0 <main+0x111>
 8049a79:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049a80:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%ebp)
 8049a87:	eb 67                	jmp    8049af0 <main+0x111>
 8049a89:	a1 c8 d1 04 08       	mov    0x804d1c8,%eax
 8049a8e:	83 ec 0c             	sub    $0xc,%esp
 8049a91:	50                   	push   %eax
 8049a92:	e8 e9 f5 ff ff       	call   8049080 <strdup@plt>
 8049a97:	83 c4 10             	add    $0x10,%esp
 8049a9a:	a3 d0 d1 04 08       	mov    %eax,0x804d1d0
 8049a9f:	a1 d0 d1 04 08       	mov    0x804d1d0,%eax
 8049aa4:	83 ec 0c             	sub    $0xc,%esp
 8049aa7:	50                   	push   %eax
 8049aa8:	e8 d3 10 00 00       	call   804ab80 <gencookie>
 8049aad:	83 c4 10             	add    $0x10,%esp
 8049ab0:	a3 e0 d1 04 08       	mov    %eax,0x804d1e0
 8049ab5:	eb 39                	jmp    8049af0 <main+0x111>
 8049ab7:	83 ec 0c             	sub    $0xc,%esp
 8049aba:	68 74 b3 04 08       	push   $0x804b374
 8049abf:	e8 5c f6 ff ff       	call   8049120 <puts@plt>
 8049ac4:	83 c4 10             	add    $0x10,%esp
 8049ac7:	c7 05 d4 d1 04 08 00 	movl   $0x0,0x804d1d4
 8049ace:	00 00 00 
 8049ad1:	eb 1d                	jmp    8049af0 <main+0x111>
 8049ad3:	c7 05 d8 d1 04 08 01 	movl   $0x1,0x804d1d8
 8049ada:	00 00 00 
 8049add:	eb 11                	jmp    8049af0 <main+0x111>
 8049adf:	8b 43 04             	mov    0x4(%ebx),%eax
 8049ae2:	8b 00                	mov    (%eax),%eax
 8049ae4:	83 ec 0c             	sub    $0xc,%esp
 8049ae7:	50                   	push   %eax
 8049ae8:	e8 80 fc ff ff       	call   804976d <usage>
 8049aed:	83 c4 10             	add    $0x10,%esp
 8049af0:	83 ec 04             	sub    $0x4,%esp
 8049af3:	68 9c b3 04 08       	push   $0x804b39c
 8049af8:	ff 73 04             	pushl  0x4(%ebx)
 8049afb:	ff 33                	pushl  (%ebx)
 8049afd:	e8 8e f6 ff ff       	call   8049190 <getopt@plt>
 8049b02:	83 c4 10             	add    $0x10,%esp
 8049b05:	88 45 e7             	mov    %al,-0x19(%ebp)
 8049b08:	80 7d e7 ff          	cmpb   $0xff,-0x19(%ebp)
 8049b0c:	0f 85 3b ff ff ff    	jne    8049a4d <main+0x6e>
 8049b12:	a1 d0 d1 04 08       	mov    0x804d1d0,%eax
 8049b17:	85 c0                	test   %eax,%eax
 8049b19:	75 27                	jne    8049b42 <main+0x163>
 8049b1b:	8b 43 04             	mov    0x4(%ebx),%eax
 8049b1e:	8b 00                	mov    (%eax),%eax
 8049b20:	83 ec 08             	sub    $0x8,%esp
 8049b23:	50                   	push   %eax
 8049b24:	68 a4 b3 04 08       	push   $0x804b3a4
 8049b29:	e8 32 f5 ff ff       	call   8049060 <printf@plt>
 8049b2e:	83 c4 10             	add    $0x10,%esp
 8049b31:	8b 43 04             	mov    0x4(%ebx),%eax
 8049b34:	8b 00                	mov    (%eax),%eax
 8049b36:	83 ec 0c             	sub    $0xc,%esp
 8049b39:	50                   	push   %eax
 8049b3a:	e8 2e fc ff ff       	call   804976d <usage>
 8049b3f:	83 c4 10             	add    $0x10,%esp
 8049b42:	e8 2e 01 00 00       	call   8049c75 <initialize_bomb>
 8049b47:	a1 d0 d1 04 08       	mov    0x804d1d0,%eax
 8049b4c:	83 ec 08             	sub    $0x8,%esp
 8049b4f:	50                   	push   %eax
 8049b50:	68 d0 b3 04 08       	push   $0x804b3d0
 8049b55:	e8 06 f5 ff ff       	call   8049060 <printf@plt>
 8049b5a:	83 c4 10             	add    $0x10,%esp
 8049b5d:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049b62:	83 ec 08             	sub    $0x8,%esp
 8049b65:	50                   	push   %eax
 8049b66:	68 dc b3 04 08       	push   $0x804b3dc
 8049b6b:	e8 f0 f4 ff ff       	call   8049060 <printf@plt>
 8049b70:	83 c4 10             	add    $0x10,%esp
 8049b73:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049b78:	83 ec 0c             	sub    $0xc,%esp
 8049b7b:	50                   	push   %eax
 8049b7c:	e8 cf f4 ff ff       	call   8049050 <srandom@plt>
 8049b81:	83 c4 10             	add    $0x10,%esp
 8049b84:	e8 a7 f6 ff ff       	call   8049230 <random@plt>
 8049b89:	25 f0 0f 00 00       	and    $0xff0,%eax
 8049b8e:	05 00 01 00 00       	add    $0x100,%eax
 8049b93:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049b96:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049b99:	83 ec 08             	sub    $0x8,%esp
 8049b9c:	6a 04                	push   $0x4
 8049b9e:	50                   	push   %eax
 8049b9f:	e8 cc f6 ff ff       	call   8049270 <calloc@plt>
 8049ba4:	83 c4 10             	add    $0x10,%esp
 8049ba7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049baa:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049bad:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049bb3:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049bba:	eb 2a                	jmp    8049be6 <main+0x207>
 8049bbc:	e8 6f f6 ff ff       	call   8049230 <random@plt>
 8049bc1:	25 f0 00 00 00       	and    $0xf0,%eax
 8049bc6:	89 c2                	mov    %eax,%edx
 8049bc8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049bcb:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 8049bd2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049bd5:	01 c8                	add    %ecx,%eax
 8049bd7:	b9 80 00 00 00       	mov    $0x80,%ecx
 8049bdc:	29 d1                	sub    %edx,%ecx
 8049bde:	89 ca                	mov    %ecx,%edx
 8049be0:	89 10                	mov    %edx,(%eax)
 8049be2:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049be6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049be9:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049bec:	7c ce                	jl     8049bbc <main+0x1dd>
 8049bee:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049bf5:	eb 29                	jmp    8049c20 <main+0x241>
 8049bf7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049bfa:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049c01:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049c04:	01 d0                	add    %edx,%eax
 8049c06:	8b 10                	mov    (%eax),%edx
 8049c08:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049c0b:	01 d0                	add    %edx,%eax
 8049c0d:	83 ec 08             	sub    $0x8,%esp
 8049c10:	50                   	push   %eax
 8049c11:	ff 75 f4             	pushl  -0xc(%ebp)
 8049c14:	e8 f1 fc ff ff       	call   804990a <launcher>
 8049c19:	83 c4 10             	add    $0x10,%esp
 8049c1c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049c20:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049c23:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049c26:	7c cf                	jl     8049bf7 <main+0x218>
 8049c28:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c2d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049c30:	59                   	pop    %ecx
 8049c31:	5b                   	pop    %ebx
 8049c32:	5d                   	pop    %ebp
 8049c33:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049c36:	c3                   	ret    

08049c37 <getbuf>:
 8049c37:	55                   	push   %ebp
 8049c38:	89 e5                	mov    %esp,%ebp
 8049c3a:	83 ec 48             	sub    $0x48,%esp
 8049c3d:	83 ec 0c             	sub    $0xc,%esp
 8049c40:	8d 45 bf             	lea    -0x41(%ebp),%eax
 8049c43:	50                   	push   %eax
 8049c44:	e8 b9 fa ff ff       	call   8049702 <Gets>
 8049c49:	83 c4 10             	add    $0x10,%esp
 8049c4c:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c51:	c9                   	leave  
 8049c52:	c3                   	ret    

08049c53 <getbufn>:
 8049c53:	55                   	push   %ebp
 8049c54:	89 e5                	mov    %esp,%ebp
 8049c56:	81 ec f8 02 00 00    	sub    $0x2f8,%esp
 8049c5c:	83 ec 0c             	sub    $0xc,%esp
 8049c5f:	8d 85 0a fd ff ff    	lea    -0x2f6(%ebp),%eax
 8049c65:	50                   	push   %eax
 8049c66:	e8 97 fa ff ff       	call   8049702 <Gets>
 8049c6b:	83 c4 10             	add    $0x10,%esp
 8049c6e:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c73:	c9                   	leave  
 8049c74:	c3                   	ret    

08049c75 <initialize_bomb>:
 8049c75:	55                   	push   %ebp
 8049c76:	89 e5                	mov    %esp,%ebp
 8049c78:	81 ec 18 24 00 00    	sub    $0x2418,%esp
 8049c7e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049c85:	a1 d8 d1 04 08       	mov    0x804d1d8,%eax
 8049c8a:	85 c0                	test   %eax,%eax
 8049c8c:	74 0d                	je     8049c9b <initialize_bomb+0x26>
 8049c8e:	83 ec 0c             	sub    $0xc,%esp
 8049c91:	6a ff                	push   $0xffffffff
 8049c93:	e8 ea 0b 00 00       	call   804a882 <init_timeout>
 8049c98:	83 c4 10             	add    $0x10,%esp
 8049c9b:	a1 d4 d1 04 08       	mov    0x804d1d4,%eax
 8049ca0:	85 c0                	test   %eax,%eax
 8049ca2:	0f 84 09 01 00 00    	je     8049db1 <initialize_bomb+0x13c>
 8049ca8:	83 ec 08             	sub    $0x8,%esp
 8049cab:	68 00 04 00 00       	push   $0x400
 8049cb0:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
 8049cb6:	50                   	push   %eax
 8049cb7:	e8 54 f4 ff ff       	call   8049110 <gethostname@plt>
 8049cbc:	83 c4 10             	add    $0x10,%esp
 8049cbf:	85 c0                	test   %eax,%eax
 8049cc1:	74 1a                	je     8049cdd <initialize_bomb+0x68>
 8049cc3:	83 ec 0c             	sub    $0xc,%esp
 8049cc6:	68 28 b4 04 08       	push   $0x804b428
 8049ccb:	e8 50 f4 ff ff       	call   8049120 <puts@plt>
 8049cd0:	83 c4 10             	add    $0x10,%esp
 8049cd3:	83 ec 0c             	sub    $0xc,%esp
 8049cd6:	6a 08                	push   $0x8
 8049cd8:	e8 53 f4 ff ff       	call   8049130 <exit@plt>
 8049cdd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049ce4:	eb 2e                	jmp    8049d14 <initialize_bomb+0x9f>
 8049ce6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049ce9:	8b 04 85 00 d2 04 08 	mov    0x804d200(,%eax,4),%eax
 8049cf0:	83 ec 08             	sub    $0x8,%esp
 8049cf3:	8d 95 f0 fb ff ff    	lea    -0x410(%ebp),%edx
 8049cf9:	52                   	push   %edx
 8049cfa:	50                   	push   %eax
 8049cfb:	e8 a0 f4 ff ff       	call   80491a0 <strcasecmp@plt>
 8049d00:	83 c4 10             	add    $0x10,%esp
 8049d03:	85 c0                	test   %eax,%eax
 8049d05:	75 09                	jne    8049d10 <initialize_bomb+0x9b>
 8049d07:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049d0e:	eb 12                	jmp    8049d22 <initialize_bomb+0xad>
 8049d10:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049d14:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d17:	8b 04 85 00 d2 04 08 	mov    0x804d200(,%eax,4),%eax
 8049d1e:	85 c0                	test   %eax,%eax
 8049d20:	75 c4                	jne    8049ce6 <initialize_bomb+0x71>
 8049d22:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049d26:	75 52                	jne    8049d7a <initialize_bomb+0x105>
 8049d28:	83 ec 08             	sub    $0x8,%esp
 8049d2b:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
 8049d31:	50                   	push   %eax
 8049d32:	68 60 b4 04 08       	push   $0x804b460
 8049d37:	e8 24 f3 ff ff       	call   8049060 <printf@plt>
 8049d3c:	83 c4 10             	add    $0x10,%esp
 8049d3f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049d46:	eb 1a                	jmp    8049d62 <initialize_bomb+0xed>
 8049d48:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d4b:	8b 04 85 00 d2 04 08 	mov    0x804d200(,%eax,4),%eax
 8049d52:	83 ec 0c             	sub    $0xc,%esp
 8049d55:	50                   	push   %eax
 8049d56:	e8 c5 f3 ff ff       	call   8049120 <puts@plt>
 8049d5b:	83 c4 10             	add    $0x10,%esp
 8049d5e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049d62:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d65:	8b 04 85 00 d2 04 08 	mov    0x804d200(,%eax,4),%eax
 8049d6c:	85 c0                	test   %eax,%eax
 8049d6e:	75 d8                	jne    8049d48 <initialize_bomb+0xd3>
 8049d70:	83 ec 0c             	sub    $0xc,%esp
 8049d73:	6a 08                	push   $0x8
 8049d75:	e8 b6 f3 ff ff       	call   8049130 <exit@plt>
 8049d7a:	83 ec 0c             	sub    $0xc,%esp
 8049d7d:	8d 85 f0 db ff ff    	lea    -0x2410(%ebp),%eax
 8049d83:	50                   	push   %eax
 8049d84:	e8 38 0b 00 00       	call   804a8c1 <init_driver>
 8049d89:	83 c4 10             	add    $0x10,%esp
 8049d8c:	85 c0                	test   %eax,%eax
 8049d8e:	79 21                	jns    8049db1 <initialize_bomb+0x13c>
 8049d90:	83 ec 08             	sub    $0x8,%esp
 8049d93:	8d 85 f0 db ff ff    	lea    -0x2410(%ebp),%eax
 8049d99:	50                   	push   %eax
 8049d9a:	68 9b b4 04 08       	push   $0x804b49b
 8049d9f:	e8 bc f2 ff ff       	call   8049060 <printf@plt>
 8049da4:	83 c4 10             	add    $0x10,%esp
 8049da7:	83 ec 0c             	sub    $0xc,%esp
 8049daa:	6a 08                	push   $0x8
 8049dac:	e8 7f f3 ff ff       	call   8049130 <exit@plt>
 8049db1:	90                   	nop
 8049db2:	c9                   	leave  
 8049db3:	c3                   	ret    

08049db4 <validate>:
 8049db4:	55                   	push   %ebp
 8049db5:	89 e5                	mov    %esp,%ebp
 8049db7:	81 ec 18 40 00 00    	sub    $0x4018,%esp
 8049dbd:	a1 d0 d1 04 08       	mov    0x804d1d0,%eax
 8049dc2:	85 c0                	test   %eax,%eax
 8049dc4:	75 15                	jne    8049ddb <validate+0x27>
 8049dc6:	83 ec 0c             	sub    $0xc,%esp
 8049dc9:	68 b0 b4 04 08       	push   $0x804b4b0
 8049dce:	e8 4d f3 ff ff       	call   8049120 <puts@plt>
 8049dd3:	83 c4 10             	add    $0x10,%esp
 8049dd6:	e9 36 01 00 00       	jmp    8049f11 <validate+0x15d>
 8049ddb:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049ddf:	78 06                	js     8049de7 <validate+0x33>
 8049de1:	83 7d 08 05          	cmpl   $0x5,0x8(%ebp)
 8049de5:	7e 15                	jle    8049dfc <validate+0x48>
 8049de7:	83 ec 0c             	sub    $0xc,%esp
 8049dea:	68 dc b4 04 08       	push   $0x804b4dc
 8049def:	e8 2c f3 ff ff       	call   8049120 <puts@plt>
 8049df4:	83 c4 10             	add    $0x10,%esp
 8049df7:	e9 15 01 00 00       	jmp    8049f11 <validate+0x15d>
 8049dfc:	c7 05 e4 d1 04 08 01 	movl   $0x1,0x804d1e4
 8049e03:	00 00 00 
 8049e06:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e09:	8b 04 85 78 d1 04 08 	mov    0x804d178(,%eax,4),%eax
 8049e10:	8d 50 ff             	lea    -0x1(%eax),%edx
 8049e13:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e16:	89 14 85 78 d1 04 08 	mov    %edx,0x804d178(,%eax,4)
 8049e1d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e20:	8b 04 85 78 d1 04 08 	mov    0x804d178(,%eax,4),%eax
 8049e27:	85 c0                	test   %eax,%eax
 8049e29:	7e 15                	jle    8049e40 <validate+0x8c>
 8049e2b:	83 ec 0c             	sub    $0xc,%esp
 8049e2e:	68 02 b5 04 08       	push   $0x804b502
 8049e33:	e8 e8 f2 ff ff       	call   8049120 <puts@plt>
 8049e38:	83 c4 10             	add    $0x10,%esp
 8049e3b:	e9 d1 00 00 00       	jmp    8049f11 <validate+0x15d>
 8049e40:	83 ec 0c             	sub    $0xc,%esp
 8049e43:	68 0d b5 04 08       	push   $0x804b50d
 8049e48:	e8 d3 f2 ff ff       	call   8049120 <puts@plt>
 8049e4d:	83 c4 10             	add    $0x10,%esp
 8049e50:	a1 d4 d1 04 08       	mov    0x804d1d4,%eax
 8049e55:	85 c0                	test   %eax,%eax
 8049e57:	0f 84 a4 00 00 00    	je     8049f01 <validate+0x14d>
 8049e5d:	83 ec 0c             	sub    $0xc,%esp
 8049e60:	68 20 e2 04 08       	push   $0x804e220
 8049e65:	e8 f6 f2 ff ff       	call   8049160 <strlen@plt>
 8049e6a:	83 c4 10             	add    $0x10,%esp
 8049e6d:	83 c0 20             	add    $0x20,%eax
 8049e70:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049e75:	76 15                	jbe    8049e8c <validate+0xd8>
 8049e77:	83 ec 0c             	sub    $0xc,%esp
 8049e7a:	68 14 b5 04 08       	push   $0x804b514
 8049e7f:	e8 9c f2 ff ff       	call   8049120 <puts@plt>
 8049e84:	83 c4 10             	add    $0x10,%esp
 8049e87:	e9 85 00 00 00       	jmp    8049f11 <validate+0x15d>
 8049e8c:	a1 e0 d1 04 08       	mov    0x804d1e0,%eax
 8049e91:	83 ec 0c             	sub    $0xc,%esp
 8049e94:	68 20 e2 04 08       	push   $0x804e220
 8049e99:	50                   	push   %eax
 8049e9a:	ff 75 08             	pushl  0x8(%ebp)
 8049e9d:	68 4b b5 04 08       	push   $0x804b54b
 8049ea2:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049ea8:	50                   	push   %eax
 8049ea9:	e8 52 f3 ff ff       	call   8049200 <sprintf@plt>
 8049eae:	83 c4 20             	add    $0x20,%esp
 8049eb1:	a1 d0 d1 04 08       	mov    0x804d1d0,%eax
 8049eb6:	8d 95 f4 bf ff ff    	lea    -0x400c(%ebp),%edx
 8049ebc:	52                   	push   %edx
 8049ebd:	6a 00                	push   $0x0
 8049ebf:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049ec5:	52                   	push   %edx
 8049ec6:	50                   	push   %eax
 8049ec7:	e8 a8 0b 00 00       	call   804aa74 <driver_post>
 8049ecc:	83 c4 10             	add    $0x10,%esp
 8049ecf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ed2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049ed6:	75 12                	jne    8049eea <validate+0x136>
 8049ed8:	83 ec 0c             	sub    $0xc,%esp
 8049edb:	68 54 b5 04 08       	push   $0x804b554
 8049ee0:	e8 3b f2 ff ff       	call   8049120 <puts@plt>
 8049ee5:	83 c4 10             	add    $0x10,%esp
 8049ee8:	eb 17                	jmp    8049f01 <validate+0x14d>
 8049eea:	83 ec 08             	sub    $0x8,%esp
 8049eed:	8d 85 f4 bf ff ff    	lea    -0x400c(%ebp),%eax
 8049ef3:	50                   	push   %eax
 8049ef4:	68 84 b5 04 08       	push   $0x804b584
 8049ef9:	e8 62 f1 ff ff       	call   8049060 <printf@plt>
 8049efe:	83 c4 10             	add    $0x10,%esp
 8049f01:	83 ec 0c             	sub    $0xc,%esp
 8049f04:	68 c2 b5 04 08       	push   $0x804b5c2
 8049f09:	e8 12 f2 ff ff       	call   8049120 <puts@plt>
 8049f0e:	83 c4 10             	add    $0x10,%esp
 8049f11:	c9                   	leave  
 8049f12:	c3                   	ret    

08049f13 <sigalrm_handler>:
 8049f13:	55                   	push   %ebp
 8049f14:	89 e5                	mov    %esp,%ebp
 8049f16:	83 ec 08             	sub    $0x8,%esp
 8049f19:	83 ec 08             	sub    $0x8,%esp
 8049f1c:	6a 02                	push   $0x2
 8049f1e:	68 cc b5 04 08       	push   $0x804b5cc
 8049f23:	e8 38 f1 ff ff       	call   8049060 <printf@plt>
 8049f28:	83 c4 10             	add    $0x10,%esp
 8049f2b:	83 ec 0c             	sub    $0xc,%esp
 8049f2e:	6a 01                	push   $0x1
 8049f30:	e8 fb f1 ff ff       	call   8049130 <exit@plt>

08049f35 <rio_readinitb>:
 8049f35:	55                   	push   %ebp
 8049f36:	89 e5                	mov    %esp,%ebp
 8049f38:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f3b:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049f3e:	89 10                	mov    %edx,(%eax)
 8049f40:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f43:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049f4a:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f4d:	8d 50 0c             	lea    0xc(%eax),%edx
 8049f50:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f53:	89 50 08             	mov    %edx,0x8(%eax)
 8049f56:	90                   	nop
 8049f57:	5d                   	pop    %ebp
 8049f58:	c3                   	ret    

08049f59 <rio_read>:
 8049f59:	55                   	push   %ebp
 8049f5a:	89 e5                	mov    %esp,%ebp
 8049f5c:	83 ec 18             	sub    $0x18,%esp
 8049f5f:	eb 5f                	jmp    8049fc0 <rio_read+0x67>
 8049f61:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f64:	8d 50 0c             	lea    0xc(%eax),%edx
 8049f67:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f6a:	8b 00                	mov    (%eax),%eax
 8049f6c:	83 ec 04             	sub    $0x4,%esp
 8049f6f:	68 00 20 00 00       	push   $0x2000
 8049f74:	52                   	push   %edx
 8049f75:	50                   	push   %eax
 8049f76:	e8 c5 f0 ff ff       	call   8049040 <read@plt>
 8049f7b:	83 c4 10             	add    $0x10,%esp
 8049f7e:	89 c2                	mov    %eax,%edx
 8049f80:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f83:	89 50 04             	mov    %edx,0x4(%eax)
 8049f86:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f89:	8b 40 04             	mov    0x4(%eax),%eax
 8049f8c:	85 c0                	test   %eax,%eax
 8049f8e:	79 13                	jns    8049fa3 <rio_read+0x4a>
 8049f90:	e8 3b f2 ff ff       	call   80491d0 <__errno_location@plt>
 8049f95:	8b 00                	mov    (%eax),%eax
 8049f97:	83 f8 04             	cmp    $0x4,%eax
 8049f9a:	74 24                	je     8049fc0 <rio_read+0x67>
 8049f9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049fa1:	eb 7f                	jmp    804a022 <rio_read+0xc9>
 8049fa3:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fa6:	8b 40 04             	mov    0x4(%eax),%eax
 8049fa9:	85 c0                	test   %eax,%eax
 8049fab:	75 07                	jne    8049fb4 <rio_read+0x5b>
 8049fad:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fb2:	eb 6e                	jmp    804a022 <rio_read+0xc9>
 8049fb4:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fb7:	8d 50 0c             	lea    0xc(%eax),%edx
 8049fba:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fbd:	89 50 08             	mov    %edx,0x8(%eax)
 8049fc0:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fc3:	8b 40 04             	mov    0x4(%eax),%eax
 8049fc6:	85 c0                	test   %eax,%eax
 8049fc8:	7e 97                	jle    8049f61 <rio_read+0x8>
 8049fca:	8b 45 10             	mov    0x10(%ebp),%eax
 8049fcd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049fd0:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fd3:	8b 40 04             	mov    0x4(%eax),%eax
 8049fd6:	39 45 10             	cmp    %eax,0x10(%ebp)
 8049fd9:	76 09                	jbe    8049fe4 <rio_read+0x8b>
 8049fdb:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fde:	8b 40 04             	mov    0x4(%eax),%eax
 8049fe1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049fe4:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049fe7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fea:	8b 40 08             	mov    0x8(%eax),%eax
 8049fed:	83 ec 04             	sub    $0x4,%esp
 8049ff0:	52                   	push   %edx
 8049ff1:	50                   	push   %eax
 8049ff2:	ff 75 0c             	pushl  0xc(%ebp)
 8049ff5:	e8 96 f0 ff ff       	call   8049090 <memcpy@plt>
 8049ffa:	83 c4 10             	add    $0x10,%esp
 8049ffd:	8b 45 08             	mov    0x8(%ebp),%eax
 804a000:	8b 50 08             	mov    0x8(%eax),%edx
 804a003:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a006:	01 c2                	add    %eax,%edx
 804a008:	8b 45 08             	mov    0x8(%ebp),%eax
 804a00b:	89 50 08             	mov    %edx,0x8(%eax)
 804a00e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a011:	8b 40 04             	mov    0x4(%eax),%eax
 804a014:	2b 45 f4             	sub    -0xc(%ebp),%eax
 804a017:	89 c2                	mov    %eax,%edx
 804a019:	8b 45 08             	mov    0x8(%ebp),%eax
 804a01c:	89 50 04             	mov    %edx,0x4(%eax)
 804a01f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a022:	c9                   	leave  
 804a023:	c3                   	ret    

0804a024 <rio_readlineb>:
 804a024:	55                   	push   %ebp
 804a025:	89 e5                	mov    %esp,%ebp
 804a027:	83 ec 18             	sub    $0x18,%esp
 804a02a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a02d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a030:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804a037:	eb 54                	jmp    804a08d <rio_readlineb+0x69>
 804a039:	83 ec 04             	sub    $0x4,%esp
 804a03c:	6a 01                	push   $0x1
 804a03e:	8d 45 eb             	lea    -0x15(%ebp),%eax
 804a041:	50                   	push   %eax
 804a042:	ff 75 08             	pushl  0x8(%ebp)
 804a045:	e8 0f ff ff ff       	call   8049f59 <rio_read>
 804a04a:	83 c4 10             	add    $0x10,%esp
 804a04d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a050:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804a054:	75 19                	jne    804a06f <rio_readlineb+0x4b>
 804a056:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a059:	8d 50 01             	lea    0x1(%eax),%edx
 804a05c:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804a05f:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
 804a063:	88 10                	mov    %dl,(%eax)
 804a065:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
 804a069:	3c 0a                	cmp    $0xa,%al
 804a06b:	75 1c                	jne    804a089 <rio_readlineb+0x65>
 804a06d:	eb 29                	jmp    804a098 <rio_readlineb+0x74>
 804a06f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a073:	75 0d                	jne    804a082 <rio_readlineb+0x5e>
 804a075:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804a079:	75 1c                	jne    804a097 <rio_readlineb+0x73>
 804a07b:	b8 00 00 00 00       	mov    $0x0,%eax
 804a080:	eb 1f                	jmp    804a0a1 <rio_readlineb+0x7d>
 804a082:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a087:	eb 18                	jmp    804a0a1 <rio_readlineb+0x7d>
 804a089:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a08d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a090:	39 45 10             	cmp    %eax,0x10(%ebp)
 804a093:	77 a4                	ja     804a039 <rio_readlineb+0x15>
 804a095:	eb 01                	jmp    804a098 <rio_readlineb+0x74>
 804a097:	90                   	nop
 804a098:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a09b:	c6 00 00             	movb   $0x0,(%eax)
 804a09e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a0a1:	c9                   	leave  
 804a0a2:	c3                   	ret    

0804a0a3 <rio_writen>:
 804a0a3:	55                   	push   %ebp
 804a0a4:	89 e5                	mov    %esp,%ebp
 804a0a6:	83 ec 18             	sub    $0x18,%esp
 804a0a9:	8b 45 10             	mov    0x10(%ebp),%eax
 804a0ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a0af:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a0b2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a0b5:	eb 45                	jmp    804a0fc <rio_writen+0x59>
 804a0b7:	83 ec 04             	sub    $0x4,%esp
 804a0ba:	ff 75 f4             	pushl  -0xc(%ebp)
 804a0bd:	ff 75 ec             	pushl  -0x14(%ebp)
 804a0c0:	ff 75 08             	pushl  0x8(%ebp)
 804a0c3:	e8 b8 f0 ff ff       	call   8049180 <write@plt>
 804a0c8:	83 c4 10             	add    $0x10,%esp
 804a0cb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a0ce:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a0d2:	7f 1c                	jg     804a0f0 <rio_writen+0x4d>
 804a0d4:	e8 f7 f0 ff ff       	call   80491d0 <__errno_location@plt>
 804a0d9:	8b 00                	mov    (%eax),%eax
 804a0db:	83 f8 04             	cmp    $0x4,%eax
 804a0de:	75 09                	jne    804a0e9 <rio_writen+0x46>
 804a0e0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a0e7:	eb 07                	jmp    804a0f0 <rio_writen+0x4d>
 804a0e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0ee:	eb 15                	jmp    804a105 <rio_writen+0x62>
 804a0f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a0f3:	29 45 f4             	sub    %eax,-0xc(%ebp)
 804a0f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a0f9:	01 45 ec             	add    %eax,-0x14(%ebp)
 804a0fc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a100:	75 b5                	jne    804a0b7 <rio_writen+0x14>
 804a102:	8b 45 10             	mov    0x10(%ebp),%eax
 804a105:	c9                   	leave  
 804a106:	c3                   	ret    

0804a107 <urlencode>:
 804a107:	55                   	push   %ebp
 804a108:	89 e5                	mov    %esp,%ebp
 804a10a:	83 ec 18             	sub    $0x18,%esp
 804a10d:	83 ec 0c             	sub    $0xc,%esp
 804a110:	ff 75 08             	pushl  0x8(%ebp)
 804a113:	e8 48 f0 ff ff       	call   8049160 <strlen@plt>
 804a118:	83 c4 10             	add    $0x10,%esp
 804a11b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a11e:	e9 0e 01 00 00       	jmp    804a231 <urlencode+0x12a>
 804a123:	8b 45 08             	mov    0x8(%ebp),%eax
 804a126:	0f b6 00             	movzbl (%eax),%eax
 804a129:	3c 2a                	cmp    $0x2a,%al
 804a12b:	74 5a                	je     804a187 <urlencode+0x80>
 804a12d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a130:	0f b6 00             	movzbl (%eax),%eax
 804a133:	3c 2d                	cmp    $0x2d,%al
 804a135:	74 50                	je     804a187 <urlencode+0x80>
 804a137:	8b 45 08             	mov    0x8(%ebp),%eax
 804a13a:	0f b6 00             	movzbl (%eax),%eax
 804a13d:	3c 2e                	cmp    $0x2e,%al
 804a13f:	74 46                	je     804a187 <urlencode+0x80>
 804a141:	8b 45 08             	mov    0x8(%ebp),%eax
 804a144:	0f b6 00             	movzbl (%eax),%eax
 804a147:	3c 5f                	cmp    $0x5f,%al
 804a149:	74 3c                	je     804a187 <urlencode+0x80>
 804a14b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a14e:	0f b6 00             	movzbl (%eax),%eax
 804a151:	3c 2f                	cmp    $0x2f,%al
 804a153:	76 0a                	jbe    804a15f <urlencode+0x58>
 804a155:	8b 45 08             	mov    0x8(%ebp),%eax
 804a158:	0f b6 00             	movzbl (%eax),%eax
 804a15b:	3c 39                	cmp    $0x39,%al
 804a15d:	76 28                	jbe    804a187 <urlencode+0x80>
 804a15f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a162:	0f b6 00             	movzbl (%eax),%eax
 804a165:	3c 40                	cmp    $0x40,%al
 804a167:	76 0a                	jbe    804a173 <urlencode+0x6c>
 804a169:	8b 45 08             	mov    0x8(%ebp),%eax
 804a16c:	0f b6 00             	movzbl (%eax),%eax
 804a16f:	3c 5a                	cmp    $0x5a,%al
 804a171:	76 14                	jbe    804a187 <urlencode+0x80>
 804a173:	8b 45 08             	mov    0x8(%ebp),%eax
 804a176:	0f b6 00             	movzbl (%eax),%eax
 804a179:	3c 60                	cmp    $0x60,%al
 804a17b:	76 20                	jbe    804a19d <urlencode+0x96>
 804a17d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a180:	0f b6 00             	movzbl (%eax),%eax
 804a183:	3c 7a                	cmp    $0x7a,%al
 804a185:	77 16                	ja     804a19d <urlencode+0x96>
 804a187:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a18a:	8d 50 01             	lea    0x1(%eax),%edx
 804a18d:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a190:	8b 55 08             	mov    0x8(%ebp),%edx
 804a193:	0f b6 12             	movzbl (%edx),%edx
 804a196:	88 10                	mov    %dl,(%eax)
 804a198:	e9 90 00 00 00       	jmp    804a22d <urlencode+0x126>
 804a19d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1a0:	0f b6 00             	movzbl (%eax),%eax
 804a1a3:	3c 20                	cmp    $0x20,%al
 804a1a5:	75 0e                	jne    804a1b5 <urlencode+0xae>
 804a1a7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1aa:	8d 50 01             	lea    0x1(%eax),%edx
 804a1ad:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a1b0:	c6 00 2b             	movb   $0x2b,(%eax)
 804a1b3:	eb 78                	jmp    804a22d <urlencode+0x126>
 804a1b5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1b8:	0f b6 00             	movzbl (%eax),%eax
 804a1bb:	3c 1f                	cmp    $0x1f,%al
 804a1bd:	76 0a                	jbe    804a1c9 <urlencode+0xc2>
 804a1bf:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1c2:	0f b6 00             	movzbl (%eax),%eax
 804a1c5:	84 c0                	test   %al,%al
 804a1c7:	79 0a                	jns    804a1d3 <urlencode+0xcc>
 804a1c9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1cc:	0f b6 00             	movzbl (%eax),%eax
 804a1cf:	3c 09                	cmp    $0x9,%al
 804a1d1:	75 53                	jne    804a226 <urlencode+0x11f>
 804a1d3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1d6:	0f b6 00             	movzbl (%eax),%eax
 804a1d9:	0f b6 c0             	movzbl %al,%eax
 804a1dc:	83 ec 04             	sub    $0x4,%esp
 804a1df:	50                   	push   %eax
 804a1e0:	68 f0 b5 04 08       	push   $0x804b5f0
 804a1e5:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804a1e8:	50                   	push   %eax
 804a1e9:	e8 12 f0 ff ff       	call   8049200 <sprintf@plt>
 804a1ee:	83 c4 10             	add    $0x10,%esp
 804a1f1:	0f b6 4d ec          	movzbl -0x14(%ebp),%ecx
 804a1f5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1f8:	8d 50 01             	lea    0x1(%eax),%edx
 804a1fb:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a1fe:	89 ca                	mov    %ecx,%edx
 804a200:	88 10                	mov    %dl,(%eax)
 804a202:	0f b6 4d ed          	movzbl -0x13(%ebp),%ecx
 804a206:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a209:	8d 50 01             	lea    0x1(%eax),%edx
 804a20c:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a20f:	89 ca                	mov    %ecx,%edx
 804a211:	88 10                	mov    %dl,(%eax)
 804a213:	0f b6 4d ee          	movzbl -0x12(%ebp),%ecx
 804a217:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a21a:	8d 50 01             	lea    0x1(%eax),%edx
 804a21d:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a220:	89 ca                	mov    %ecx,%edx
 804a222:	88 10                	mov    %dl,(%eax)
 804a224:	eb 07                	jmp    804a22d <urlencode+0x126>
 804a226:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a22b:	eb 1a                	jmp    804a247 <urlencode+0x140>
 804a22d:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 804a231:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a234:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a237:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804a23a:	85 c0                	test   %eax,%eax
 804a23c:	0f 85 e1 fe ff ff    	jne    804a123 <urlencode+0x1c>
 804a242:	b8 00 00 00 00       	mov    $0x0,%eax
 804a247:	c9                   	leave  
 804a248:	c3                   	ret    

0804a249 <submitr>:
 804a249:	55                   	push   %ebp
 804a24a:	89 e5                	mov    %esp,%ebp
 804a24c:	57                   	push   %edi
 804a24d:	56                   	push   %esi
 804a24e:	53                   	push   %ebx
 804a24f:	81 ec 3c a0 00 00    	sub    $0xa03c,%esp
 804a255:	c7 85 b8 7f ff ff 00 	movl   $0x0,-0x8048(%ebp)
 804a25c:	00 00 00 
 804a25f:	83 ec 04             	sub    $0x4,%esp
 804a262:	6a 00                	push   $0x0
 804a264:	6a 01                	push   $0x1
 804a266:	6a 02                	push   $0x2
 804a268:	e8 a3 ef ff ff       	call   8049210 <socket@plt>
 804a26d:	83 c4 10             	add    $0x10,%esp
 804a270:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a273:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804a277:	79 51                	jns    804a2ca <submitr+0x81>
 804a279:	8b 45 20             	mov    0x20(%ebp),%eax
 804a27c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a282:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a289:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a290:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a297:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a29e:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a2a5:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804a2ac:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804a2b3:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804a2ba:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804a2c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a2c5:	e9 b0 05 00 00       	jmp    804a87a <submitr+0x631>
 804a2ca:	83 ec 0c             	sub    $0xc,%esp
 804a2cd:	ff 75 08             	pushl  0x8(%ebp)
 804a2d0:	e8 6b ef ff ff       	call   8049240 <gethostbyname@plt>
 804a2d5:	83 c4 10             	add    $0x10,%esp
 804a2d8:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a2db:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804a2df:	75 2e                	jne    804a30f <submitr+0xc6>
 804a2e1:	83 ec 04             	sub    $0x4,%esp
 804a2e4:	ff 75 08             	pushl  0x8(%ebp)
 804a2e7:	68 f8 b5 04 08       	push   $0x804b5f8
 804a2ec:	ff 75 20             	pushl  0x20(%ebp)
 804a2ef:	e8 0c ef ff ff       	call   8049200 <sprintf@plt>
 804a2f4:	83 c4 10             	add    $0x10,%esp
 804a2f7:	83 ec 0c             	sub    $0xc,%esp
 804a2fa:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a2fd:	e8 5e ef ff ff       	call   8049260 <close@plt>
 804a302:	83 c4 10             	add    $0x10,%esp
 804a305:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a30a:	e9 6b 05 00 00       	jmp    804a87a <submitr+0x631>
 804a30f:	8d 45 c8             	lea    -0x38(%ebp),%eax
 804a312:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a318:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a31f:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a326:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a32d:	66 c7 45 c8 02 00    	movw   $0x2,-0x38(%ebp)
 804a333:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a336:	8b 40 0c             	mov    0xc(%eax),%eax
 804a339:	89 c2                	mov    %eax,%edx
 804a33b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a33e:	8b 40 10             	mov    0x10(%eax),%eax
 804a341:	8b 00                	mov    (%eax),%eax
 804a343:	83 ec 04             	sub    $0x4,%esp
 804a346:	52                   	push   %edx
 804a347:	50                   	push   %eax
 804a348:	8d 45 c8             	lea    -0x38(%ebp),%eax
 804a34b:	83 c0 04             	add    $0x4,%eax
 804a34e:	50                   	push   %eax
 804a34f:	e8 1c ed ff ff       	call   8049070 <memmove@plt>
 804a354:	83 c4 10             	add    $0x10,%esp
 804a357:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a35a:	0f b7 c0             	movzwl %ax,%eax
 804a35d:	83 ec 0c             	sub    $0xc,%esp
 804a360:	50                   	push   %eax
 804a361:	e8 6a ed ff ff       	call   80490d0 <htons@plt>
 804a366:	83 c4 10             	add    $0x10,%esp
 804a369:	66 89 45 ca          	mov    %ax,-0x36(%ebp)
 804a36d:	83 ec 04             	sub    $0x4,%esp
 804a370:	6a 10                	push   $0x10
 804a372:	8d 45 c8             	lea    -0x38(%ebp),%eax
 804a375:	50                   	push   %eax
 804a376:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a379:	e8 d2 ee ff ff       	call   8049250 <connect@plt>
 804a37e:	83 c4 10             	add    $0x10,%esp
 804a381:	85 c0                	test   %eax,%eax
 804a383:	79 2e                	jns    804a3b3 <submitr+0x16a>
 804a385:	83 ec 04             	sub    $0x4,%esp
 804a388:	ff 75 08             	pushl  0x8(%ebp)
 804a38b:	68 24 b6 04 08       	push   $0x804b624
 804a390:	ff 75 20             	pushl  0x20(%ebp)
 804a393:	e8 68 ee ff ff       	call   8049200 <sprintf@plt>
 804a398:	83 c4 10             	add    $0x10,%esp
 804a39b:	83 ec 0c             	sub    $0xc,%esp
 804a39e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a3a1:	e8 ba ee ff ff       	call   8049260 <close@plt>
 804a3a6:	83 c4 10             	add    $0x10,%esp
 804a3a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a3ae:	e9 c7 04 00 00       	jmp    804a87a <submitr+0x631>
 804a3b3:	83 ec 0c             	sub    $0xc,%esp
 804a3b6:	ff 75 1c             	pushl  0x1c(%ebp)
 804a3b9:	e8 a2 ed ff ff       	call   8049160 <strlen@plt>
 804a3be:	83 c4 10             	add    $0x10,%esp
 804a3c1:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a3c4:	83 ec 0c             	sub    $0xc,%esp
 804a3c7:	ff 75 10             	pushl  0x10(%ebp)
 804a3ca:	e8 91 ed ff ff       	call   8049160 <strlen@plt>
 804a3cf:	83 c4 10             	add    $0x10,%esp
 804a3d2:	89 c3                	mov    %eax,%ebx
 804a3d4:	83 ec 0c             	sub    $0xc,%esp
 804a3d7:	ff 75 14             	pushl  0x14(%ebp)
 804a3da:	e8 81 ed ff ff       	call   8049160 <strlen@plt>
 804a3df:	83 c4 10             	add    $0x10,%esp
 804a3e2:	01 c3                	add    %eax,%ebx
 804a3e4:	83 ec 0c             	sub    $0xc,%esp
 804a3e7:	ff 75 18             	pushl  0x18(%ebp)
 804a3ea:	e8 71 ed ff ff       	call   8049160 <strlen@plt>
 804a3ef:	83 c4 10             	add    $0x10,%esp
 804a3f2:	8d 0c 03             	lea    (%ebx,%eax,1),%ecx
 804a3f5:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804a3f8:	89 d0                	mov    %edx,%eax
 804a3fa:	01 c0                	add    %eax,%eax
 804a3fc:	01 d0                	add    %edx,%eax
 804a3fe:	01 c8                	add    %ecx,%eax
 804a400:	83 e8 80             	sub    $0xffffff80,%eax
 804a403:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804a406:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
 804a40d:	76 7c                	jbe    804a48b <submitr+0x242>
 804a40f:	8b 45 20             	mov    0x20(%ebp),%eax
 804a412:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a418:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804a41f:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 804a426:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804a42d:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804a434:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 804a43b:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804a442:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 804a449:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804a450:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 804a457:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804a45e:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804a465:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 804a46c:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804a473:	83 ec 0c             	sub    $0xc,%esp
 804a476:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a479:	e8 e2 ed ff ff       	call   8049260 <close@plt>
 804a47e:	83 c4 10             	add    $0x10,%esp
 804a481:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a486:	e9 ef 03 00 00       	jmp    804a87a <submitr+0x631>
 804a48b:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 804a491:	89 c3                	mov    %eax,%ebx
 804a493:	b8 00 00 00 00       	mov    $0x0,%eax
 804a498:	ba 00 08 00 00       	mov    $0x800,%edx
 804a49d:	89 df                	mov    %ebx,%edi
 804a49f:	89 d1                	mov    %edx,%ecx
 804a4a1:	f3 ab                	rep stos %eax,%es:(%edi)
 804a4a3:	83 ec 08             	sub    $0x8,%esp
 804a4a6:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 804a4ac:	50                   	push   %eax
 804a4ad:	ff 75 1c             	pushl  0x1c(%ebp)
 804a4b0:	e8 52 fc ff ff       	call   804a107 <urlencode>
 804a4b5:	83 c4 10             	add    $0x10,%esp
 804a4b8:	85 c0                	test   %eax,%eax
 804a4ba:	79 4b                	jns    804a507 <submitr+0x2be>
 804a4bc:	8b 45 20             	mov    0x20(%ebp),%eax
 804a4bf:	bb 4c b6 04 08       	mov    $0x804b64c,%ebx
 804a4c4:	ba 43 00 00 00       	mov    $0x43,%edx
 804a4c9:	8b 0b                	mov    (%ebx),%ecx
 804a4cb:	89 08                	mov    %ecx,(%eax)
 804a4cd:	8b 4c 13 fc          	mov    -0x4(%ebx,%edx,1),%ecx
 804a4d1:	89 4c 10 fc          	mov    %ecx,-0x4(%eax,%edx,1)
 804a4d5:	8d 78 04             	lea    0x4(%eax),%edi
 804a4d8:	83 e7 fc             	and    $0xfffffffc,%edi
 804a4db:	29 f8                	sub    %edi,%eax
 804a4dd:	29 c3                	sub    %eax,%ebx
 804a4df:	01 c2                	add    %eax,%edx
 804a4e1:	83 e2 fc             	and    $0xfffffffc,%edx
 804a4e4:	89 d0                	mov    %edx,%eax
 804a4e6:	c1 e8 02             	shr    $0x2,%eax
 804a4e9:	89 de                	mov    %ebx,%esi
 804a4eb:	89 c1                	mov    %eax,%ecx
 804a4ed:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804a4ef:	83 ec 0c             	sub    $0xc,%esp
 804a4f2:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a4f5:	e8 66 ed ff ff       	call   8049260 <close@plt>
 804a4fa:	83 c4 10             	add    $0x10,%esp
 804a4fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a502:	e9 73 03 00 00       	jmp    804a87a <submitr+0x631>
 804a507:	83 ec 08             	sub    $0x8,%esp
 804a50a:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 804a510:	50                   	push   %eax
 804a511:	ff 75 18             	pushl  0x18(%ebp)
 804a514:	ff 75 14             	pushl  0x14(%ebp)
 804a517:	ff 75 10             	pushl  0x10(%ebp)
 804a51a:	68 90 b6 04 08       	push   $0x804b690
 804a51f:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a525:	50                   	push   %eax
 804a526:	e8 d5 ec ff ff       	call   8049200 <sprintf@plt>
 804a52b:	83 c4 20             	add    $0x20,%esp
 804a52e:	83 ec 0c             	sub    $0xc,%esp
 804a531:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a537:	50                   	push   %eax
 804a538:	e8 23 ec ff ff       	call   8049160 <strlen@plt>
 804a53d:	83 c4 10             	add    $0x10,%esp
 804a540:	83 ec 04             	sub    $0x4,%esp
 804a543:	50                   	push   %eax
 804a544:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a54a:	50                   	push   %eax
 804a54b:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a54e:	e8 50 fb ff ff       	call   804a0a3 <rio_writen>
 804a553:	83 c4 10             	add    $0x10,%esp
 804a556:	85 c0                	test   %eax,%eax
 804a558:	79 67                	jns    804a5c1 <submitr+0x378>
 804a55a:	8b 45 20             	mov    0x20(%ebp),%eax
 804a55d:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a563:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a56a:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a571:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a578:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a57f:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a586:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 804a58d:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 804a594:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 804a59b:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 804a5a2:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 804a5a9:	83 ec 0c             	sub    $0xc,%esp
 804a5ac:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a5af:	e8 ac ec ff ff       	call   8049260 <close@plt>
 804a5b4:	83 c4 10             	add    $0x10,%esp
 804a5b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a5bc:	e9 b9 02 00 00       	jmp    804a87a <submitr+0x631>
 804a5c1:	83 ec 08             	sub    $0x8,%esp
 804a5c4:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a5c7:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a5cd:	50                   	push   %eax
 804a5ce:	e8 62 f9 ff ff       	call   8049f35 <rio_readinitb>
 804a5d3:	83 c4 10             	add    $0x10,%esp
 804a5d6:	83 ec 04             	sub    $0x4,%esp
 804a5d9:	68 00 20 00 00       	push   $0x2000
 804a5de:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a5e4:	50                   	push   %eax
 804a5e5:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a5eb:	50                   	push   %eax
 804a5ec:	e8 33 fa ff ff       	call   804a024 <rio_readlineb>
 804a5f1:	83 c4 10             	add    $0x10,%esp
 804a5f4:	85 c0                	test   %eax,%eax
 804a5f6:	7f 7b                	jg     804a673 <submitr+0x42a>
 804a5f8:	8b 45 20             	mov    0x20(%ebp),%eax
 804a5fb:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a601:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a608:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a60f:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a616:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a61d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a624:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a62b:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 804a632:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 804a639:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 804a640:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 804a647:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 804a64e:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 804a655:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 804a65b:	83 ec 0c             	sub    $0xc,%esp
 804a65e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a661:	e8 fa eb ff ff       	call   8049260 <close@plt>
 804a666:	83 c4 10             	add    $0x10,%esp
 804a669:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a66e:	e9 07 02 00 00       	jmp    804a87a <submitr+0x631>
 804a673:	83 ec 0c             	sub    $0xc,%esp
 804a676:	8d 85 b8 5f ff ff    	lea    -0xa048(%ebp),%eax
 804a67c:	50                   	push   %eax
 804a67d:	8d 85 b8 7f ff ff    	lea    -0x8048(%ebp),%eax
 804a683:	50                   	push   %eax
 804a684:	8d 85 bc 7f ff ff    	lea    -0x8044(%ebp),%eax
 804a68a:	50                   	push   %eax
 804a68b:	68 da b6 04 08       	push   $0x804b6da
 804a690:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a696:	50                   	push   %eax
 804a697:	e8 14 eb ff ff       	call   80491b0 <__isoc99_sscanf@plt>
 804a69c:	83 c4 20             	add    $0x20,%esp
 804a69f:	8b 85 b8 7f ff ff    	mov    -0x8048(%ebp),%eax
 804a6a5:	3d c8 00 00 00       	cmp    $0xc8,%eax
 804a6aa:	0f 84 ca 00 00 00    	je     804a77a <submitr+0x531>
 804a6b0:	8b 85 b8 7f ff ff    	mov    -0x8048(%ebp),%eax
 804a6b6:	8d 95 b8 5f ff ff    	lea    -0xa048(%ebp),%edx
 804a6bc:	52                   	push   %edx
 804a6bd:	50                   	push   %eax
 804a6be:	68 ec b6 04 08       	push   $0x804b6ec
 804a6c3:	ff 75 20             	pushl  0x20(%ebp)
 804a6c6:	e8 35 eb ff ff       	call   8049200 <sprintf@plt>
 804a6cb:	83 c4 10             	add    $0x10,%esp
 804a6ce:	83 ec 0c             	sub    $0xc,%esp
 804a6d1:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a6d4:	e8 87 eb ff ff       	call   8049260 <close@plt>
 804a6d9:	83 c4 10             	add    $0x10,%esp
 804a6dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a6e1:	e9 94 01 00 00       	jmp    804a87a <submitr+0x631>
 804a6e6:	83 ec 04             	sub    $0x4,%esp
 804a6e9:	68 00 20 00 00       	push   $0x2000
 804a6ee:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a6f4:	50                   	push   %eax
 804a6f5:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a6fb:	50                   	push   %eax
 804a6fc:	e8 23 f9 ff ff       	call   804a024 <rio_readlineb>
 804a701:	83 c4 10             	add    $0x10,%esp
 804a704:	85 c0                	test   %eax,%eax
 804a706:	7f 72                	jg     804a77a <submitr+0x531>
 804a708:	8b 45 20             	mov    0x20(%ebp),%eax
 804a70b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a711:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a718:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a71f:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a726:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a72d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a734:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a73b:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 804a742:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 804a749:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 804a750:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 804a757:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 804a75e:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 804a762:	83 ec 0c             	sub    $0xc,%esp
 804a765:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a768:	e8 f3 ea ff ff       	call   8049260 <close@plt>
 804a76d:	83 c4 10             	add    $0x10,%esp
 804a770:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a775:	e9 00 01 00 00       	jmp    804a87a <submitr+0x631>
 804a77a:	83 ec 08             	sub    $0x8,%esp
 804a77d:	68 19 b7 04 08       	push   $0x804b719
 804a782:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a788:	50                   	push   %eax
 804a789:	e8 a2 e8 ff ff       	call   8049030 <strcmp@plt>
 804a78e:	83 c4 10             	add    $0x10,%esp
 804a791:	85 c0                	test   %eax,%eax
 804a793:	0f 85 4d ff ff ff    	jne    804a6e6 <submitr+0x49d>
 804a799:	83 ec 04             	sub    $0x4,%esp
 804a79c:	68 00 20 00 00       	push   $0x2000
 804a7a1:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a7a7:	50                   	push   %eax
 804a7a8:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a7ae:	50                   	push   %eax
 804a7af:	e8 70 f8 ff ff       	call   804a024 <rio_readlineb>
 804a7b4:	83 c4 10             	add    $0x10,%esp
 804a7b7:	85 c0                	test   %eax,%eax
 804a7b9:	7f 79                	jg     804a834 <submitr+0x5eb>
 804a7bb:	8b 45 20             	mov    0x20(%ebp),%eax
 804a7be:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a7c4:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a7cb:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a7d2:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a7d9:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a7e0:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a7e7:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a7ee:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 804a7f5:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 804a7fc:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 804a803:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 804a80a:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 804a811:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 804a818:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 804a81f:	83 ec 0c             	sub    $0xc,%esp
 804a822:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a825:	e8 36 ea ff ff       	call   8049260 <close@plt>
 804a82a:	83 c4 10             	add    $0x10,%esp
 804a82d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a832:	eb 46                	jmp    804a87a <submitr+0x631>
 804a834:	83 ec 08             	sub    $0x8,%esp
 804a837:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a83d:	50                   	push   %eax
 804a83e:	ff 75 20             	pushl  0x20(%ebp)
 804a841:	e8 aa e8 ff ff       	call   80490f0 <strcpy@plt>
 804a846:	83 c4 10             	add    $0x10,%esp
 804a849:	83 ec 0c             	sub    $0xc,%esp
 804a84c:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a84f:	e8 0c ea ff ff       	call   8049260 <close@plt>
 804a854:	83 c4 10             	add    $0x10,%esp
 804a857:	83 ec 08             	sub    $0x8,%esp
 804a85a:	68 1c b7 04 08       	push   $0x804b71c
 804a85f:	ff 75 20             	pushl  0x20(%ebp)
 804a862:	e8 c9 e7 ff ff       	call   8049030 <strcmp@plt>
 804a867:	83 c4 10             	add    $0x10,%esp
 804a86a:	85 c0                	test   %eax,%eax
 804a86c:	75 07                	jne    804a875 <submitr+0x62c>
 804a86e:	b8 00 00 00 00       	mov    $0x0,%eax
 804a873:	eb 05                	jmp    804a87a <submitr+0x631>
 804a875:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a87a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a87d:	5b                   	pop    %ebx
 804a87e:	5e                   	pop    %esi
 804a87f:	5f                   	pop    %edi
 804a880:	5d                   	pop    %ebp
 804a881:	c3                   	ret    

0804a882 <init_timeout>:
 804a882:	55                   	push   %ebp
 804a883:	89 e5                	mov    %esp,%ebp
 804a885:	83 ec 08             	sub    $0x8,%esp
 804a888:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a88c:	74 30                	je     804a8be <init_timeout+0x3c>
 804a88e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a892:	79 07                	jns    804a89b <init_timeout+0x19>
 804a894:	c7 45 08 02 00 00 00 	movl   $0x2,0x8(%ebp)
 804a89b:	83 ec 08             	sub    $0x8,%esp
 804a89e:	68 13 9f 04 08       	push   $0x8049f13
 804a8a3:	6a 0e                	push   $0xe
 804a8a5:	e8 f6 e7 ff ff       	call   80490a0 <signal@plt>
 804a8aa:	83 c4 10             	add    $0x10,%esp
 804a8ad:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8b0:	83 ec 0c             	sub    $0xc,%esp
 804a8b3:	50                   	push   %eax
 804a8b4:	e8 07 e8 ff ff       	call   80490c0 <alarm@plt>
 804a8b9:	83 c4 10             	add    $0x10,%esp
 804a8bc:	eb 01                	jmp    804a8bf <init_timeout+0x3d>
 804a8be:	90                   	nop
 804a8bf:	c9                   	leave  
 804a8c0:	c3                   	ret    

0804a8c1 <init_driver>:
 804a8c1:	55                   	push   %ebp
 804a8c2:	89 e5                	mov    %esp,%ebp
 804a8c4:	83 ec 28             	sub    $0x28,%esp
 804a8c7:	c7 45 f4 1f b7 04 08 	movl   $0x804b71f,-0xc(%ebp)
 804a8ce:	c7 45 f0 03 d9 00 00 	movl   $0xd903,-0x10(%ebp)
 804a8d5:	83 ec 08             	sub    $0x8,%esp
 804a8d8:	6a 01                	push   $0x1
 804a8da:	6a 0d                	push   $0xd
 804a8dc:	e8 bf e7 ff ff       	call   80490a0 <signal@plt>
 804a8e1:	83 c4 10             	add    $0x10,%esp
 804a8e4:	83 ec 08             	sub    $0x8,%esp
 804a8e7:	6a 01                	push   $0x1
 804a8e9:	6a 1d                	push   $0x1d
 804a8eb:	e8 b0 e7 ff ff       	call   80490a0 <signal@plt>
 804a8f0:	83 c4 10             	add    $0x10,%esp
 804a8f3:	83 ec 08             	sub    $0x8,%esp
 804a8f6:	6a 01                	push   $0x1
 804a8f8:	6a 1d                	push   $0x1d
 804a8fa:	e8 a1 e7 ff ff       	call   80490a0 <signal@plt>
 804a8ff:	83 c4 10             	add    $0x10,%esp
 804a902:	83 ec 04             	sub    $0x4,%esp
 804a905:	6a 00                	push   $0x0
 804a907:	6a 01                	push   $0x1
 804a909:	6a 02                	push   $0x2
 804a90b:	e8 00 e9 ff ff       	call   8049210 <socket@plt>
 804a910:	83 c4 10             	add    $0x10,%esp
 804a913:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a916:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a91a:	79 51                	jns    804a96d <init_driver+0xac>
 804a91c:	8b 45 08             	mov    0x8(%ebp),%eax
 804a91f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a925:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a92c:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a933:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a93a:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a941:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a948:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804a94f:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804a956:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804a95d:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804a963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a968:	e9 05 01 00 00       	jmp    804aa72 <init_driver+0x1b1>
 804a96d:	83 ec 0c             	sub    $0xc,%esp
 804a970:	ff 75 f4             	pushl  -0xc(%ebp)
 804a973:	e8 c8 e8 ff ff       	call   8049240 <gethostbyname@plt>
 804a978:	83 c4 10             	add    $0x10,%esp
 804a97b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a97e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804a982:	75 2e                	jne    804a9b2 <init_driver+0xf1>
 804a984:	83 ec 04             	sub    $0x4,%esp
 804a987:	ff 75 f4             	pushl  -0xc(%ebp)
 804a98a:	68 f8 b5 04 08       	push   $0x804b5f8
 804a98f:	ff 75 08             	pushl  0x8(%ebp)
 804a992:	e8 69 e8 ff ff       	call   8049200 <sprintf@plt>
 804a997:	83 c4 10             	add    $0x10,%esp
 804a99a:	83 ec 0c             	sub    $0xc,%esp
 804a99d:	ff 75 ec             	pushl  -0x14(%ebp)
 804a9a0:	e8 bb e8 ff ff       	call   8049260 <close@plt>
 804a9a5:	83 c4 10             	add    $0x10,%esp
 804a9a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a9ad:	e9 c0 00 00 00       	jmp    804aa72 <init_driver+0x1b1>
 804a9b2:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a9b5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a9bb:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a9c2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a9c9:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a9d0:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 804a9d6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a9d9:	8b 40 0c             	mov    0xc(%eax),%eax
 804a9dc:	89 c2                	mov    %eax,%edx
 804a9de:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a9e1:	8b 40 10             	mov    0x10(%eax),%eax
 804a9e4:	8b 00                	mov    (%eax),%eax
 804a9e6:	83 ec 04             	sub    $0x4,%esp
 804a9e9:	52                   	push   %edx
 804a9ea:	50                   	push   %eax
 804a9eb:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a9ee:	83 c0 04             	add    $0x4,%eax
 804a9f1:	50                   	push   %eax
 804a9f2:	e8 79 e6 ff ff       	call   8049070 <memmove@plt>
 804a9f7:	83 c4 10             	add    $0x10,%esp
 804a9fa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9fd:	0f b7 c0             	movzwl %ax,%eax
 804aa00:	83 ec 0c             	sub    $0xc,%esp
 804aa03:	50                   	push   %eax
 804aa04:	e8 c7 e6 ff ff       	call   80490d0 <htons@plt>
 804aa09:	83 c4 10             	add    $0x10,%esp
 804aa0c:	66 89 45 da          	mov    %ax,-0x26(%ebp)
 804aa10:	83 ec 04             	sub    $0x4,%esp
 804aa13:	6a 10                	push   $0x10
 804aa15:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804aa18:	50                   	push   %eax
 804aa19:	ff 75 ec             	pushl  -0x14(%ebp)
 804aa1c:	e8 2f e8 ff ff       	call   8049250 <connect@plt>
 804aa21:	83 c4 10             	add    $0x10,%esp
 804aa24:	85 c0                	test   %eax,%eax
 804aa26:	79 2b                	jns    804aa53 <init_driver+0x192>
 804aa28:	ff 75 f0             	pushl  -0x10(%ebp)
 804aa2b:	ff 75 f4             	pushl  -0xc(%ebp)
 804aa2e:	68 30 b7 04 08       	push   $0x804b730
 804aa33:	ff 75 08             	pushl  0x8(%ebp)
 804aa36:	e8 c5 e7 ff ff       	call   8049200 <sprintf@plt>
 804aa3b:	83 c4 10             	add    $0x10,%esp
 804aa3e:	83 ec 0c             	sub    $0xc,%esp
 804aa41:	ff 75 ec             	pushl  -0x14(%ebp)
 804aa44:	e8 17 e8 ff ff       	call   8049260 <close@plt>
 804aa49:	83 c4 10             	add    $0x10,%esp
 804aa4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804aa51:	eb 1f                	jmp    804aa72 <init_driver+0x1b1>
 804aa53:	83 ec 0c             	sub    $0xc,%esp
 804aa56:	ff 75 ec             	pushl  -0x14(%ebp)
 804aa59:	e8 02 e8 ff ff       	call   8049260 <close@plt>
 804aa5e:	83 c4 10             	add    $0x10,%esp
 804aa61:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa64:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804aa69:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804aa6d:	b8 00 00 00 00       	mov    $0x0,%eax
 804aa72:	c9                   	leave  
 804aa73:	c3                   	ret    

0804aa74 <driver_post>:
 804aa74:	55                   	push   %ebp
 804aa75:	89 e5                	mov    %esp,%ebp
 804aa77:	83 ec 18             	sub    $0x18,%esp
 804aa7a:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804aa7e:	74 26                	je     804aaa6 <driver_post+0x32>
 804aa80:	83 ec 08             	sub    $0x8,%esp
 804aa83:	ff 75 0c             	pushl  0xc(%ebp)
 804aa86:	68 59 b7 04 08       	push   $0x804b759
 804aa8b:	e8 d0 e5 ff ff       	call   8049060 <printf@plt>
 804aa90:	83 c4 10             	add    $0x10,%esp
 804aa93:	8b 45 14             	mov    0x14(%ebp),%eax
 804aa96:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804aa9b:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804aa9f:	b8 00 00 00 00       	mov    $0x0,%eax
 804aaa4:	eb 54                	jmp    804aafa <driver_post+0x86>
 804aaa6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aaaa:	74 3d                	je     804aae9 <driver_post+0x75>
 804aaac:	8b 45 08             	mov    0x8(%ebp),%eax
 804aaaf:	0f b6 00             	movzbl (%eax),%eax
 804aab2:	0f b6 c0             	movzbl %al,%eax
 804aab5:	85 c0                	test   %eax,%eax
 804aab7:	74 30                	je     804aae9 <driver_post+0x75>
 804aab9:	83 ec 04             	sub    $0x4,%esp
 804aabc:	ff 75 14             	pushl  0x14(%ebp)
 804aabf:	ff 75 0c             	pushl  0xc(%ebp)
 804aac2:	68 70 b7 04 08       	push   $0x804b770
 804aac7:	ff 75 08             	pushl  0x8(%ebp)
 804aaca:	68 77 b7 04 08       	push   $0x804b777
 804aacf:	68 03 d9 00 00       	push   $0xd903
 804aad4:	68 1f b7 04 08       	push   $0x804b71f
 804aad9:	e8 6b f7 ff ff       	call   804a249 <submitr>
 804aade:	83 c4 20             	add    $0x20,%esp
 804aae1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aae4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aae7:	eb 11                	jmp    804aafa <driver_post+0x86>
 804aae9:	8b 45 14             	mov    0x14(%ebp),%eax
 804aaec:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804aaf1:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804aaf5:	b8 00 00 00 00       	mov    $0x0,%eax
 804aafa:	c9                   	leave  
 804aafb:	c3                   	ret    

0804aafc <hash>:
 804aafc:	55                   	push   %ebp
 804aafd:	89 e5                	mov    %esp,%ebp
 804aaff:	83 ec 10             	sub    $0x10,%esp
 804ab02:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ab09:	eb 1a                	jmp    804ab25 <hash+0x29>
 804ab0b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ab0e:	6b c8 67             	imul   $0x67,%eax,%ecx
 804ab11:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab14:	8d 50 01             	lea    0x1(%eax),%edx
 804ab17:	89 55 08             	mov    %edx,0x8(%ebp)
 804ab1a:	0f b6 00             	movzbl (%eax),%eax
 804ab1d:	0f be c0             	movsbl %al,%eax
 804ab20:	01 c8                	add    %ecx,%eax
 804ab22:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804ab25:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab28:	0f b6 00             	movzbl (%eax),%eax
 804ab2b:	84 c0                	test   %al,%al
 804ab2d:	75 dc                	jne    804ab0b <hash+0xf>
 804ab2f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ab32:	c9                   	leave  
 804ab33:	c3                   	ret    

0804ab34 <check>:
 804ab34:	55                   	push   %ebp
 804ab35:	89 e5                	mov    %esp,%ebp
 804ab37:	83 ec 10             	sub    $0x10,%esp
 804ab3a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab3d:	c1 e8 1c             	shr    $0x1c,%eax
 804ab40:	85 c0                	test   %eax,%eax
 804ab42:	75 07                	jne    804ab4b <check+0x17>
 804ab44:	b8 00 00 00 00       	mov    $0x0,%eax
 804ab49:	eb 33                	jmp    804ab7e <check+0x4a>
 804ab4b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ab52:	eb 1f                	jmp    804ab73 <check+0x3f>
 804ab54:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ab57:	8b 55 08             	mov    0x8(%ebp),%edx
 804ab5a:	89 c1                	mov    %eax,%ecx
 804ab5c:	d3 ea                	shr    %cl,%edx
 804ab5e:	89 d0                	mov    %edx,%eax
 804ab60:	0f b6 c0             	movzbl %al,%eax
 804ab63:	83 f8 0a             	cmp    $0xa,%eax
 804ab66:	75 07                	jne    804ab6f <check+0x3b>
 804ab68:	b8 00 00 00 00       	mov    $0x0,%eax
 804ab6d:	eb 0f                	jmp    804ab7e <check+0x4a>
 804ab6f:	83 45 fc 08          	addl   $0x8,-0x4(%ebp)
 804ab73:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%ebp)
 804ab77:	7e db                	jle    804ab54 <check+0x20>
 804ab79:	b8 01 00 00 00       	mov    $0x1,%eax
 804ab7e:	c9                   	leave  
 804ab7f:	c3                   	ret    

0804ab80 <gencookie>:
 804ab80:	55                   	push   %ebp
 804ab81:	89 e5                	mov    %esp,%ebp
 804ab83:	83 ec 18             	sub    $0x18,%esp
 804ab86:	ff 75 08             	pushl  0x8(%ebp)
 804ab89:	e8 6e ff ff ff       	call   804aafc <hash>
 804ab8e:	83 c4 04             	add    $0x4,%esp
 804ab91:	83 ec 0c             	sub    $0xc,%esp
 804ab94:	50                   	push   %eax
 804ab95:	e8 a6 e5 ff ff       	call   8049140 <srand@plt>
 804ab9a:	83 c4 10             	add    $0x10,%esp
 804ab9d:	e8 3e e6 ff ff       	call   80491e0 <rand@plt>
 804aba2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aba5:	83 ec 0c             	sub    $0xc,%esp
 804aba8:	ff 75 f4             	pushl  -0xc(%ebp)
 804abab:	e8 84 ff ff ff       	call   804ab34 <check>
 804abb0:	83 c4 10             	add    $0x10,%esp
 804abb3:	85 c0                	test   %eax,%eax
 804abb5:	74 e6                	je     804ab9d <gencookie+0x1d>
 804abb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804abba:	c9                   	leave  
 804abbb:	c3                   	ret    
 804abbc:	66 90                	xchg   %ax,%ax
 804abbe:	66 90                	xchg   %ax,%ax

0804abc0 <__libc_csu_init>:
 804abc0:	55                   	push   %ebp
 804abc1:	57                   	push   %edi
 804abc2:	56                   	push   %esi
 804abc3:	53                   	push   %ebx
 804abc4:	e8 07 e7 ff ff       	call   80492d0 <__x86.get_pc_thunk.bx>
 804abc9:	81 c3 37 24 00 00    	add    $0x2437,%ebx
 804abcf:	83 ec 0c             	sub    $0xc,%esp
 804abd2:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 804abd6:	e8 25 e4 ff ff       	call   8049000 <_init>
 804abdb:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 804abe1:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 804abe7:	29 c6                	sub    %eax,%esi
 804abe9:	c1 fe 02             	sar    $0x2,%esi
 804abec:	74 1f                	je     804ac0d <__libc_csu_init+0x4d>
 804abee:	31 ff                	xor    %edi,%edi
 804abf0:	83 ec 04             	sub    $0x4,%esp
 804abf3:	55                   	push   %ebp
 804abf4:	ff 74 24 2c          	pushl  0x2c(%esp)
 804abf8:	ff 74 24 2c          	pushl  0x2c(%esp)
 804abfc:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 804ac03:	83 c7 01             	add    $0x1,%edi
 804ac06:	83 c4 10             	add    $0x10,%esp
 804ac09:	39 fe                	cmp    %edi,%esi
 804ac0b:	75 e3                	jne    804abf0 <__libc_csu_init+0x30>
 804ac0d:	83 c4 0c             	add    $0xc,%esp
 804ac10:	5b                   	pop    %ebx
 804ac11:	5e                   	pop    %esi
 804ac12:	5f                   	pop    %edi
 804ac13:	5d                   	pop    %ebp
 804ac14:	c3                   	ret    
 804ac15:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ac1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0804ac20 <__libc_csu_fini>:
 804ac20:	c3                   	ret    

Disassembly of section .fini:

0804ac24 <_fini>:
 804ac24:	53                   	push   %ebx
 804ac25:	83 ec 08             	sub    $0x8,%esp
 804ac28:	e8 a3 e6 ff ff       	call   80492d0 <__x86.get_pc_thunk.bx>
 804ac2d:	81 c3 d3 23 00 00    	add    $0x23d3,%ebx
 804ac33:	83 c4 08             	add    $0x8,%esp
 804ac36:	5b                   	pop    %ebx
 804ac37:	c3                   	ret    
