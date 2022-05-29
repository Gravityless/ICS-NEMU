
./bomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 67 01 00 00       	call   8049170 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 2f 00 00    	add    $0x2ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 c0 04 08    	pushl  0x804c004
 8049026:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <printf@plt>:
 8049030:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <fflush@plt>:
 8049040:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <fgets@plt>:
 8049050:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <signal@plt>:
 8049060:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <sleep@plt>:
 8049070:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <getenv@plt>:
 8049080:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <puts@plt>:
 8049090:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <exit@plt>:
 80490a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <strlen@plt>:
 80490b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <__libc_start_main@plt>:
 80490c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <__isoc99_sscanf@plt>:
 80490d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fopen@plt>:
 80490e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strtok@plt>:
 80490f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <atoi@plt>:
 8049100:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <__ctype_b_loc@plt>:
 8049110:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049120 <_start>:
 8049120:	31 ed                	xor    %ebp,%ebp
 8049122:	5e                   	pop    %esi
 8049123:	89 e1                	mov    %esp,%ecx
 8049125:	83 e4 f0             	and    $0xfffffff0,%esp
 8049128:	50                   	push   %eax
 8049129:	54                   	push   %esp
 804912a:	52                   	push   %edx
 804912b:	e8 23 00 00 00       	call   8049153 <_start+0x33>
 8049130:	81 c3 d0 2e 00 00    	add    $0x2ed0,%ebx
 8049136:	8d 83 60 df ff ff    	lea    -0x20a0(%ebx),%eax
 804913c:	50                   	push   %eax
 804913d:	8d 83 00 df ff ff    	lea    -0x2100(%ebx),%eax
 8049143:	50                   	push   %eax
 8049144:	51                   	push   %ecx
 8049145:	56                   	push   %esi
 8049146:	c7 c0 32 92 04 08    	mov    $0x8049232,%eax
 804914c:	50                   	push   %eax
 804914d:	e8 6e ff ff ff       	call   80490c0 <__libc_start_main@plt>
 8049152:	f4                   	hlt    
 8049153:	8b 1c 24             	mov    (%esp),%ebx
 8049156:	c3                   	ret    
 8049157:	66 90                	xchg   %ax,%ax
 8049159:	66 90                	xchg   %ax,%ax
 804915b:	66 90                	xchg   %ax,%ax
 804915d:	66 90                	xchg   %ax,%ax
 804915f:	90                   	nop

08049160 <_dl_relocate_static_pie>:
 8049160:	c3                   	ret    
 8049161:	66 90                	xchg   %ax,%ax
 8049163:	66 90                	xchg   %ax,%ax
 8049165:	66 90                	xchg   %ax,%ax
 8049167:	66 90                	xchg   %ax,%ax
 8049169:	66 90                	xchg   %ax,%ax
 804916b:	66 90                	xchg   %ax,%ax
 804916d:	66 90                	xchg   %ax,%ax
 804916f:	90                   	nop

08049170 <__x86.get_pc_thunk.bx>:
 8049170:	8b 1c 24             	mov    (%esp),%ebx
 8049173:	c3                   	ret    
 8049174:	66 90                	xchg   %ax,%ax
 8049176:	66 90                	xchg   %ax,%ax
 8049178:	66 90                	xchg   %ax,%ax
 804917a:	66 90                	xchg   %ax,%ax
 804917c:	66 90                	xchg   %ax,%ax
 804917e:	66 90                	xchg   %ax,%ax

08049180 <deregister_tm_clones>:
 8049180:	b8 f4 c1 04 08       	mov    $0x804c1f4,%eax
 8049185:	3d f4 c1 04 08       	cmp    $0x804c1f4,%eax
 804918a:	74 24                	je     80491b0 <deregister_tm_clones+0x30>
 804918c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049191:	85 c0                	test   %eax,%eax
 8049193:	74 1b                	je     80491b0 <deregister_tm_clones+0x30>
 8049195:	55                   	push   %ebp
 8049196:	89 e5                	mov    %esp,%ebp
 8049198:	83 ec 14             	sub    $0x14,%esp
 804919b:	68 f4 c1 04 08       	push   $0x804c1f4
 80491a0:	ff d0                	call   *%eax
 80491a2:	83 c4 10             	add    $0x10,%esp
 80491a5:	c9                   	leave  
 80491a6:	c3                   	ret    
 80491a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491ae:	66 90                	xchg   %ax,%ax
 80491b0:	c3                   	ret    
 80491b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491bf:	90                   	nop

080491c0 <register_tm_clones>:
 80491c0:	b8 f4 c1 04 08       	mov    $0x804c1f4,%eax
 80491c5:	2d f4 c1 04 08       	sub    $0x804c1f4,%eax
 80491ca:	c1 f8 02             	sar    $0x2,%eax
 80491cd:	89 c2                	mov    %eax,%edx
 80491cf:	c1 ea 1f             	shr    $0x1f,%edx
 80491d2:	01 d0                	add    %edx,%eax
 80491d4:	d1 f8                	sar    %eax
 80491d6:	74 20                	je     80491f8 <register_tm_clones+0x38>
 80491d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80491dd:	85 d2                	test   %edx,%edx
 80491df:	74 17                	je     80491f8 <register_tm_clones+0x38>
 80491e1:	55                   	push   %ebp
 80491e2:	89 e5                	mov    %esp,%ebp
 80491e4:	83 ec 10             	sub    $0x10,%esp
 80491e7:	50                   	push   %eax
 80491e8:	68 f4 c1 04 08       	push   $0x804c1f4
 80491ed:	ff d2                	call   *%edx
 80491ef:	83 c4 10             	add    $0x10,%esp
 80491f2:	c9                   	leave  
 80491f3:	c3                   	ret    
 80491f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80491f8:	c3                   	ret    
 80491f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049200 <__do_global_dtors_aux>:
 8049200:	80 3d 08 c2 04 08 00 	cmpb   $0x0,0x804c208
 8049207:	75 17                	jne    8049220 <__do_global_dtors_aux+0x20>
 8049209:	55                   	push   %ebp
 804920a:	89 e5                	mov    %esp,%ebp
 804920c:	83 ec 08             	sub    $0x8,%esp
 804920f:	e8 6c ff ff ff       	call   8049180 <deregister_tm_clones>
 8049214:	c6 05 08 c2 04 08 01 	movb   $0x1,0x804c208
 804921b:	c9                   	leave  
 804921c:	c3                   	ret    
 804921d:	8d 76 00             	lea    0x0(%esi),%esi
 8049220:	c3                   	ret    
 8049221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804922f:	90                   	nop

08049230 <frame_dummy>:
 8049230:	eb 8e                	jmp    80491c0 <register_tm_clones>

08049232 <main>:
 8049232:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8049236:	83 e4 f0             	and    $0xfffffff0,%esp
 8049239:	ff 71 fc             	pushl  -0x4(%ecx)
 804923c:	55                   	push   %ebp
 804923d:	89 e5                	mov    %esp,%ebp
 804923f:	53                   	push   %ebx
 8049240:	51                   	push   %ecx
 8049241:	83 ec 10             	sub    $0x10,%esp
 8049244:	89 cb                	mov    %ecx,%ebx
 8049246:	83 3b 01             	cmpl   $0x1,(%ebx)
 8049249:	75 0c                	jne    8049257 <main+0x25>
 804924b:	a1 00 c2 04 08       	mov    0x804c200,%eax
 8049250:	a3 10 c2 04 08       	mov    %eax,0x804c210
 8049255:	eb 75                	jmp    80492cc <main+0x9a>
 8049257:	83 3b 02             	cmpl   $0x2,(%ebx)
 804925a:	75 50                	jne    80492ac <main+0x7a>
 804925c:	8b 43 04             	mov    0x4(%ebx),%eax
 804925f:	83 c0 04             	add    $0x4,%eax
 8049262:	8b 00                	mov    (%eax),%eax
 8049264:	83 ec 08             	sub    $0x8,%esp
 8049267:	68 08 a0 04 08       	push   $0x804a008
 804926c:	50                   	push   %eax
 804926d:	e8 6e fe ff ff       	call   80490e0 <fopen@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	a3 10 c2 04 08       	mov    %eax,0x804c210
 804927a:	a1 10 c2 04 08       	mov    0x804c210,%eax
 804927f:	85 c0                	test   %eax,%eax
 8049281:	75 49                	jne    80492cc <main+0x9a>
 8049283:	8b 43 04             	mov    0x4(%ebx),%eax
 8049286:	83 c0 04             	add    $0x4,%eax
 8049289:	8b 10                	mov    (%eax),%edx
 804928b:	8b 43 04             	mov    0x4(%ebx),%eax
 804928e:	8b 00                	mov    (%eax),%eax
 8049290:	83 ec 04             	sub    $0x4,%esp
 8049293:	52                   	push   %edx
 8049294:	50                   	push   %eax
 8049295:	68 0a a0 04 08       	push   $0x804a00a
 804929a:	e8 91 fd ff ff       	call   8049030 <printf@plt>
 804929f:	83 c4 10             	add    $0x10,%esp
 80492a2:	83 ec 0c             	sub    $0xc,%esp
 80492a5:	6a 08                	push   $0x8
 80492a7:	e8 f4 fd ff ff       	call   80490a0 <exit@plt>
 80492ac:	8b 43 04             	mov    0x4(%ebx),%eax
 80492af:	8b 00                	mov    (%eax),%eax
 80492b1:	83 ec 08             	sub    $0x8,%esp
 80492b4:	50                   	push   %eax
 80492b5:	68 27 a0 04 08       	push   $0x804a027
 80492ba:	e8 71 fd ff ff       	call   8049030 <printf@plt>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	6a 08                	push   $0x8
 80492c7:	e8 d4 fd ff ff       	call   80490a0 <exit@plt>
 80492cc:	e8 79 09 00 00       	call   8049c4a <initialize_bomb>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 44 a0 04 08       	push   $0x804a044
 80492d9:	e8 b2 fd ff ff       	call   8049090 <puts@plt>
 80492de:	83 c4 10             	add    $0x10,%esp
 80492e1:	83 ec 0c             	sub    $0xc,%esp
 80492e4:	68 80 a0 04 08       	push   $0x804a080
 80492e9:	e8 a2 fd ff ff       	call   8049090 <puts@plt>
 80492ee:	83 c4 10             	add    $0x10,%esp
 80492f1:	e8 0e 0a 00 00       	call   8049d04 <read_line>
 80492f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f9:	83 ec 0c             	sub    $0xc,%esp
 80492fc:	ff 75 f4             	pushl  -0xc(%ebp)
 80492ff:	e8 73 01 00 00       	call   8049477 <phase_0>
 8049304:	83 c4 10             	add    $0x10,%esp
 8049307:	85 c0                	test   %eax,%eax
 8049309:	74 15                	je     8049320 <main+0xee>
 804930b:	e8 60 0b 00 00       	call   8049e70 <phase_defused>
 8049310:	83 ec 0c             	sub    $0xc,%esp
 8049313:	68 ac a0 04 08       	push   $0x804a0ac
 8049318:	e8 73 fd ff ff       	call   8049090 <puts@plt>
 804931d:	83 c4 10             	add    $0x10,%esp
 8049320:	e8 df 09 00 00       	call   8049d04 <read_line>
 8049325:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049328:	83 ec 0c             	sub    $0xc,%esp
 804932b:	ff 75 f4             	pushl  -0xc(%ebp)
 804932e:	e8 74 01 00 00       	call   80494a7 <phase_1>
 8049333:	83 c4 10             	add    $0x10,%esp
 8049336:	85 c0                	test   %eax,%eax
 8049338:	74 15                	je     804934f <main+0x11d>
 804933a:	e8 31 0b 00 00       	call   8049e70 <phase_defused>
 804933f:	83 ec 0c             	sub    $0xc,%esp
 8049342:	68 d4 a0 04 08       	push   $0x804a0d4
 8049347:	e8 44 fd ff ff       	call   8049090 <puts@plt>
 804934c:	83 c4 10             	add    $0x10,%esp
 804934f:	e8 b0 09 00 00       	call   8049d04 <read_line>
 8049354:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049357:	83 ec 0c             	sub    $0xc,%esp
 804935a:	ff 75 f4             	pushl  -0xc(%ebp)
 804935d:	e8 af 01 00 00       	call   8049511 <phase_2>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 15                	je     804937e <main+0x14c>
 8049369:	e8 02 0b 00 00       	call   8049e70 <phase_defused>
 804936e:	83 ec 0c             	sub    $0xc,%esp
 8049371:	68 fd a0 04 08       	push   $0x804a0fd
 8049376:	e8 15 fd ff ff       	call   8049090 <puts@plt>
 804937b:	83 c4 10             	add    $0x10,%esp
 804937e:	e8 81 09 00 00       	call   8049d04 <read_line>
 8049383:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049386:	83 ec 0c             	sub    $0xc,%esp
 8049389:	ff 75 f4             	pushl  -0xc(%ebp)
 804938c:	e8 0c 02 00 00       	call   804959d <phase_3>
 8049391:	83 c4 10             	add    $0x10,%esp
 8049394:	85 c0                	test   %eax,%eax
 8049396:	74 15                	je     80493ad <main+0x17b>
 8049398:	e8 d3 0a 00 00       	call   8049e70 <phase_defused>
 804939d:	83 ec 0c             	sub    $0xc,%esp
 80493a0:	68 1b a1 04 08       	push   $0x804a11b
 80493a5:	e8 e6 fc ff ff       	call   8049090 <puts@plt>
 80493aa:	83 c4 10             	add    $0x10,%esp
 80493ad:	e8 52 09 00 00       	call   8049d04 <read_line>
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	83 ec 0c             	sub    $0xc,%esp
 80493b8:	ff 75 f4             	pushl  -0xc(%ebp)
 80493bb:	e8 30 03 00 00       	call   80496f0 <phase_4>
 80493c0:	83 c4 10             	add    $0x10,%esp
 80493c3:	85 c0                	test   %eax,%eax
 80493c5:	74 15                	je     80493dc <main+0x1aa>
 80493c7:	e8 a4 0a 00 00       	call   8049e70 <phase_defused>
 80493cc:	83 ec 0c             	sub    $0xc,%esp
 80493cf:	68 2c a1 04 08       	push   $0x804a12c
 80493d4:	e8 b7 fc ff ff       	call   8049090 <puts@plt>
 80493d9:	83 c4 10             	add    $0x10,%esp
 80493dc:	e8 23 09 00 00       	call   8049d04 <read_line>
 80493e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493e4:	83 ec 0c             	sub    $0xc,%esp
 80493e7:	ff 75 f4             	pushl  -0xc(%ebp)
 80493ea:	e8 75 03 00 00       	call   8049764 <phase_5>
 80493ef:	83 c4 10             	add    $0x10,%esp
 80493f2:	85 c0                	test   %eax,%eax
 80493f4:	74 15                	je     804940b <main+0x1d9>
 80493f6:	e8 75 0a 00 00       	call   8049e70 <phase_defused>
 80493fb:	83 ec 0c             	sub    $0xc,%esp
 80493fe:	68 50 a1 04 08       	push   $0x804a150
 8049403:	e8 88 fc ff ff       	call   8049090 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	e8 f4 08 00 00       	call   8049d04 <read_line>
 8049410:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049413:	83 ec 0c             	sub    $0xc,%esp
 8049416:	ff 75 f4             	pushl  -0xc(%ebp)
 8049419:	e8 d3 03 00 00       	call   80497f1 <phase_6>
 804941e:	83 c4 10             	add    $0x10,%esp
 8049421:	85 c0                	test   %eax,%eax
 8049423:	74 05                	je     804942a <main+0x1f8>
 8049425:	e8 46 0a 00 00       	call   8049e70 <phase_defused>
 804942a:	b8 00 00 00 00       	mov    $0x0,%eax
 804942f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049432:	59                   	pop    %ecx
 8049433:	5b                   	pop    %ebx
 8049434:	5d                   	pop    %ebp
 8049435:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049438:	c3                   	ret    

08049439 <FJkrnWWA>:
 8049439:	55                   	push   %ebp
 804943a:	89 e5                	mov    %esp,%ebp
 804943c:	83 ec 08             	sub    $0x8,%esp
 804943f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049442:	0f af 45 0c          	imul   0xc(%ebp),%eax
 8049446:	89 c2                	mov    %eax,%edx
 8049448:	d9 45 10             	flds   0x10(%ebp)
 804944b:	d9 7d fe             	fnstcw -0x2(%ebp)
 804944e:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
 8049452:	80 cc 0c             	or     $0xc,%ah
 8049455:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
 8049459:	d9 6d fc             	fldcw  -0x4(%ebp)
 804945c:	db 5d f8             	fistpl -0x8(%ebp)
 804945f:	d9 6d fe             	fldcw  -0x2(%ebp)
 8049462:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 8049465:	89 c8                	mov    %ecx,%eax
 8049467:	01 c0                	add    %eax,%eax
 8049469:	01 c8                	add    %ecx,%eax
 804946b:	01 c2                	add    %eax,%edx
 804946d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049470:	c1 f8 03             	sar    $0x3,%eax
 8049473:	01 d0                	add    %edx,%eax
 8049475:	c9                   	leave  
 8049476:	c3                   	ret    

08049477 <phase_0>:
 8049477:	55                   	push   %ebp
 8049478:	89 e5                	mov    %esp,%ebp
 804947a:	83 ec 08             	sub    $0x8,%esp
 804947d:	83 ec 08             	sub    $0x8,%esp
 8049480:	68 d8 a1 04 08       	push   $0x804a1d8
 8049485:	ff 75 08             	pushl  0x8(%ebp)
 8049488:	e8 52 07 00 00       	call   8049bdf <strings_not_equal>
 804948d:	83 c4 10             	add    $0x10,%esp
 8049490:	85 c0                	test   %eax,%eax
 8049492:	74 0c                	je     80494a0 <phase_0+0x29>
 8049494:	e8 ae 09 00 00       	call   8049e47 <explode_bomb>
 8049499:	b8 00 00 00 00       	mov    $0x0,%eax
 804949e:	eb 05                	jmp    80494a5 <phase_0+0x2e>
 80494a0:	b8 01 00 00 00       	mov    $0x1,%eax
 80494a5:	c9                   	leave  
 80494a6:	c3                   	ret    

080494a7 <phase_1>:
 80494a7:	55                   	push   %ebp
 80494a8:	89 e5                	mov    %esp,%ebp
 80494aa:	83 ec 28             	sub    $0x28,%esp
 80494ad:	c7 45 f4 8c 2e fd 20 	movl   $0x20fd2e8c,-0xc(%ebp)
 80494b4:	db 45 f4             	fildl  -0xc(%ebp)
 80494b7:	dd 5d e8             	fstpl  -0x18(%ebp)
 80494ba:	8d 45 e0             	lea    -0x20(%ebp),%eax
 80494bd:	50                   	push   %eax
 80494be:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 80494c1:	50                   	push   %eax
 80494c2:	68 f8 a1 04 08       	push   $0x804a1f8
 80494c7:	ff 75 08             	pushl  0x8(%ebp)
 80494ca:	e8 01 fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80494cf:	83 c4 10             	add    $0x10,%esp
 80494d2:	83 f8 02             	cmp    $0x2,%eax
 80494d5:	74 0c                	je     80494e3 <phase_1+0x3c>
 80494d7:	e8 6b 09 00 00       	call   8049e47 <explode_bomb>
 80494dc:	b8 00 00 00 00       	mov    $0x0,%eax
 80494e1:	eb 2c                	jmp    804950f <phase_1+0x68>
 80494e3:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494e6:	83 c0 04             	add    $0x4,%eax
 80494e9:	8b 10                	mov    (%eax),%edx
 80494eb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80494ee:	39 c2                	cmp    %eax,%edx
 80494f0:	75 0c                	jne    80494fe <phase_1+0x57>
 80494f2:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494f5:	8b 10                	mov    (%eax),%edx
 80494f7:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80494fa:	39 c2                	cmp    %eax,%edx
 80494fc:	74 0c                	je     804950a <phase_1+0x63>
 80494fe:	e8 44 09 00 00       	call   8049e47 <explode_bomb>
 8049503:	b8 00 00 00 00       	mov    $0x0,%eax
 8049508:	eb 05                	jmp    804950f <phase_1+0x68>
 804950a:	b8 01 00 00 00       	mov    $0x1,%eax
 804950f:	c9                   	leave  
 8049510:	c3                   	ret    

08049511 <phase_2>:
 8049511:	55                   	push   %ebp
 8049512:	89 e5                	mov    %esp,%ebp
 8049514:	83 ec 38             	sub    $0x38,%esp
 8049517:	83 ec 04             	sub    $0x4,%esp
 804951a:	6a 08                	push   $0x8
 804951c:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 804951f:	50                   	push   %eax
 8049520:	ff 75 08             	pushl  0x8(%ebp)
 8049523:	e8 fd 05 00 00       	call   8049b25 <read_n_numbers>
 8049528:	83 c4 10             	add    $0x10,%esp
 804952b:	85 c0                	test   %eax,%eax				# 检查eax是否为0
 804952d:	75 07                	jne    8049536 <phase_2+0x25>	# eax为0跳转到leave
 804952f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049534:	eb 65                	jmp    804959b <phase_2+0x8a>
 8049536:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049539:	83 f8 14             	cmp    $0x14,%eax				# eax和立即数0x14比较
 804953c:	75 08                	jne    8049546 <phase_2+0x35>
 804953e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049541:	83 f8 29             	cmp    $0x29,%eax				# 和立即数0x29比较
 8049544:	74 0c                	je     8049552 <phase_2+0x41>
 8049546:	e8 fc 08 00 00       	call   8049e47 <explode_bomb>
 804954b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049550:	eb 49                	jmp    804959b <phase_2+0x8a>
 8049552:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
 8049559:	eb 35                	jmp    8049590 <phase_2+0x7f>
 804955b:	8b 45 f4             	mov    -0xc(%ebp),%eax			# 循环次数放到eax
 804955e:	8b 44 85 d4          	mov    -0x2c(%ebp,%eax,4),%eax	# 根据偏移访问eax
 8049562:	8b 55 f4             	mov    -0xc(%ebp),%edx			# 循环次数放到edx
 8049565:	83 ea 02             	sub    $0x2,%edx				# edx - 2
 8049568:	8b 54 95 d4          	mov    -0x2c(%ebp,%edx,4),%edx	# 根据edx访问栈
 804956c:	89 d1                	mov    %edx,%ecx				# 将edx赋给ecx
 804956e:	d1 f9                	sar    %ecx						# ecx算术右移
 8049570:	8b 55 f4             	mov    -0xc(%ebp),%edx			# 循环次数放到edx
 8049573:	83 ea 01             	sub    $0x1,%edx				# edx - 1
 8049576:	8b 54 95 d4          	mov    -0x2c(%ebp,%edx,4),%edx	# 赋给edx
 804957a:	01 ca                	add    %ecx,%edx				# ecx + edx
 804957c:	39 d0                	cmp    %edx,%eax				# 比较edx和eax
 804957e:	74 0c                	je     804958c <phase_2+0x7b>
 8049580:	e8 c2 08 00 00       	call   8049e47 <explode_bomb>
 8049585:	b8 00 00 00 00       	mov    $0x0,%eax
 804958a:	eb 0f                	jmp    804959b <phase_2+0x8a>
 804958c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)			# 加1，然后和7比较
 8049590:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)			# 0x2 - 0x7
 8049594:	7e c5                	jle    804955b <phase_2+0x4a>
 8049596:	b8 01 00 00 00       	mov    $0x1,%eax
 804959b:	c9                   	leave  
 804959c:	c3                   	ret    

0804959d <phase_3>:
 804959d:	55                   	push   %ebp
 804959e:	89 e5                	mov    %esp,%ebp
 80495a0:	83 ec 18             	sub    $0x18,%esp
 80495a3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80495aa:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80495b1:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80495b4:	50                   	push   %eax
 80495b5:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80495b8:	50                   	push   %eax
 80495b9:	68 f8 a1 04 08       	push   $0x804a1f8
 80495be:	ff 75 08             	pushl  0x8(%ebp)
 80495c1:	e8 0a fb ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80495c6:	83 c4 10             	add    $0x10,%esp
 80495c9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495cc:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)			# 小于等于1则失败
 80495d0:	7f 0f                	jg     80495e1 <phase_3+0x44>
 80495d2:	e8 70 08 00 00       	call   8049e47 <explode_bomb>
 80495d7:	b8 00 00 00 00       	mov    $0x0,%eax
 80495dc:	e9 93 00 00 00       	jmp    8049674 <phase_3+0xd7>
 80495e1:	8b 45 ec             	mov    -0x14(%ebp),%eax			# 取值给eax
 80495e4:	83 e8 49             	sub    $0x49,%eax				# eax - 49
 80495e7:	83 f8 09             	cmp    $0x9,%eax				# eax和9比较
 80495ea:	77 63                	ja     804964f <phase_3+0xb2>	# eax > 9 失败
 80495ec:	8b 04 85 00 a2 04 08 	mov    0x804a200(,%eax,4),%eax	# 根据eax选取地址
 80495f3:	ff e0                	jmp    *%eax					# 跳转到地址
 80495f5:	c7 45 f4 cb 00 00 00 	movl   $0xcb,-0xc(%ebp)			# 将立即数赋给栈
 80495fc:	eb 5d                	jmp    804965b <phase_3+0xbe>	# 跳转到比较
 80495fe:	c7 45 f4 cb 00 00 00 	movl   $0xcb,-0xc(%ebp)
 8049605:	eb 54                	jmp    804965b <phase_3+0xbe>
 8049607:	c7 45 f4 8d 00 00 00 	movl   $0x8d,-0xc(%ebp)
 804960e:	eb 4b                	jmp    804965b <phase_3+0xbe>
 8049610:	c7 45 f4 cb 00 00 00 	movl   $0xcb,-0xc(%ebp)
 8049617:	eb 42                	jmp    804965b <phase_3+0xbe>
 8049619:	c7 45 f4 8d 00 00 00 	movl   $0x8d,-0xc(%ebp)
 8049620:	eb 39                	jmp    804965b <phase_3+0xbe>
 8049622:	c7 45 f4 cb 00 00 00 	movl   $0xcb,-0xc(%ebp)
 8049629:	eb 30                	jmp    804965b <phase_3+0xbe>
 804962b:	c7 45 f4 8d 00 00 00 	movl   $0x8d,-0xc(%ebp)
 8049632:	eb 27                	jmp    804965b <phase_3+0xbe>
 8049634:	c7 45 f4 8d 00 00 00 	movl   $0x8d,-0xc(%ebp)
 804963b:	eb 1e                	jmp    804965b <phase_3+0xbe>
 804963d:	c7 45 f4 cb 00 00 00 	movl   $0xcb,-0xc(%ebp)
 8049644:	eb 15                	jmp    804965b <phase_3+0xbe>
 8049646:	c7 45 f4 8d 00 00 00 	movl   $0x8d,-0xc(%ebp)
 804964d:	eb 0c                	jmp    804965b <phase_3+0xbe>
 804964f:	e8 f3 07 00 00       	call   8049e47 <explode_bomb>
 8049654:	b8 00 00 00 00       	mov    $0x0,%eax
 8049659:	eb 19                	jmp    8049674 <phase_3+0xd7>
 804965b:	8b 45 e8             	mov    -0x18(%ebp),%eax			# 取出值赋给eax
 804965e:	39 45 f4             	cmp    %eax,-0xc(%ebp)			# 立即数与eax比较
 8049661:	74 0c                	je     804966f <phase_3+0xd2>	# 不相等爆炸
 8049663:	e8 df 07 00 00       	call   8049e47 <explode_bomb>
 8049668:	b8 00 00 00 00       	mov    $0x0,%eax
 804966d:	eb 05                	jmp    8049674 <phase_3+0xd7>
 804966f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049674:	c9                   	leave  
 8049675:	c3                   	ret    

08049676 <func4>:
 8049676:	55                   	push   %ebp
 8049677:	89 e5                	mov    %esp,%ebp
 8049679:	83 ec 18             	sub    $0x18,%esp
 804967c:	8b 45 10             	mov    0x10(%ebp),%eax
 804967f:	2b 45 0c             	sub    0xc(%ebp),%eax			# eax = 0x20
 8049682:	89 c2                	mov    %eax,%edx				# edx = 0x20
 8049684:	c1 ea 1f             	shr    $0x1f,%edx				# edx逻辑右移31位
 8049687:	01 d0                	add    %edx,%eax				
 8049689:	d1 f8                	sar    %eax						# eax算术右移1位
 804968b:	89 c2                	mov    %eax,%edx				
 804968d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049690:	01 d0                	add    %edx,%eax
 8049692:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049695:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049698:	3b 45 08             	cmp    0x8(%ebp),%eax
 804969b:	7e 23                	jle    80496c0 <func4+0x4a>
 804969d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496a0:	83 e8 01             	sub    $0x1,%eax
 80496a3:	83 ec 04             	sub    $0x4,%esp
 80496a6:	50                   	push   %eax
 80496a7:	ff 75 0c             	pushl  0xc(%ebp)
 80496aa:	ff 75 08             	pushl  0x8(%ebp)
 80496ad:	e8 c4 ff ff ff       	call   8049676 <func4>
 80496b2:	83 c4 10             	add    $0x10,%esp
 80496b5:	89 c2                	mov    %eax,%edx
 80496b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496ba:	d1 f8                	sar    %eax
 80496bc:	01 d0                	add    %edx,%eax
 80496be:	eb 2e                	jmp    80496ee <func4+0x78>
 80496c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496c3:	3b 45 08             	cmp    0x8(%ebp),%eax
 80496c6:	7d 23                	jge    80496eb <func4+0x75>
 80496c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496cb:	83 c0 01             	add    $0x1,%eax
 80496ce:	83 ec 04             	sub    $0x4,%esp
 80496d1:	ff 75 10             	pushl  0x10(%ebp)
 80496d4:	50                   	push   %eax
 80496d5:	ff 75 08             	pushl  0x8(%ebp)
 80496d8:	e8 99 ff ff ff       	call   8049676 <func4>
 80496dd:	83 c4 10             	add    $0x10,%esp
 80496e0:	89 c2                	mov    %eax,%edx
 80496e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496e5:	01 c0                	add    %eax,%eax
 80496e7:	01 d0                	add    %edx,%eax
 80496e9:	eb 03                	jmp    80496ee <func4+0x78>
 80496eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496ee:	c9                   	leave  
 80496ef:	c3                   	ret    

080496f0 <phase_4>:
 80496f0:	55                   	push   %ebp
 80496f1:	89 e5                	mov    %esp,%ebp
 80496f3:	83 ec 18             	sub    $0x18,%esp
 80496f6:	8d 45 e8             	lea    -0x18(%ebp),%eax			# -0x18地址给eax
 80496f9:	50                   	push   %eax						# 地址入栈 -0x0
 80496fa:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80496fd:	50                   	push   %eax						# -0x4
 80496fe:	68 f8 a1 04 08       	push   $0x804a1f8				# -0x8
 8049703:	ff 75 08             	pushl  0x8(%ebp)				# -0xc
 8049706:	e8 c5 f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 804970b:	83 c4 10             	add    $0x10,%esp
 804970e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049711:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)			# 参数个数不是2，失败
 8049715:	75 10                	jne    8049727 <phase_4+0x37>
 8049717:	8b 45 ec             	mov    -0x14(%ebp),%eax			# -0x14赋值给eax(第一参数)
 804971a:	83 f8 08             	cmp    $0x8,%eax				# eax > 8
 804971d:	7e 08                	jle    8049727 <phase_4+0x37>
 804971f:	8b 45 ec             	mov    -0x14(%ebp),%eax			# -0x14赋值给eax
 8049722:	83 f8 29             	cmp    $0x29,%eax				# eax <= 29
 8049725:	7e 0c                	jle    8049733 <phase_4+0x43>
 8049727:	e8 1b 07 00 00       	call   8049e47 <explode_bomb>
 804972c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049731:	eb 2f                	jmp    8049762 <phase_4+0x72>
 8049733:	8b 45 ec             	mov    -0x14(%ebp),%eax			# -0x14赋值给eax
 8049736:	83 ec 04             	sub    $0x4,%esp
 8049739:	6a 29                	push   $0x29					# -0x10 func4: 0x10
 804973b:	6a 09                	push   $0x9						# -0x14 func4: 0xc
 804973d:	50                   	push   %eax						# -0x18 func4: 0x8
 804973e:	e8 33 ff ff ff       	call   8049676 <func4>
 8049743:	83 c4 10             	add    $0x10,%esp
 8049746:	89 45 f0             	mov    %eax,-0x10(%ebp)			# 返回值放到-0x10
 8049749:	8b 45 e8             	mov    -0x18(%ebp),%eax			# (-0x18) = eax = 第二参数
 804974c:	39 45 f0             	cmp    %eax,-0x10(%ebp)			# 比较返回值和-0x18
 804974f:	74 0c                	je     804975d <phase_4+0x6d>	# 不相等，失败
 8049751:	e8 f1 06 00 00       	call   8049e47 <explode_bomb>
 8049756:	b8 00 00 00 00       	mov    $0x0,%eax
 804975b:	eb 05                	jmp    8049762 <phase_4+0x72>
 804975d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049762:	c9                   	leave  
 8049763:	c3                   	ret    

08049764 <phase_5>:
 8049764:	55                   	push   %ebp
 8049765:	89 e5                	mov    %esp,%ebp
 8049767:	83 ec 28             	sub    $0x28,%esp
 804976a:	83 ec 0c             	sub    $0xc,%esp
 804976d:	ff 75 08             	pushl  0x8(%ebp)
 8049770:	e8 3e 04 00 00       	call   8049bb3 <string_length>
 8049775:	83 c4 10             	add    $0x10,%esp
 8049778:	89 45 f0             	mov    %eax,-0x10(%ebp)			# 字符串长度为8
 804977b:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
 804977f:	74 0c                	je     804978d <phase_5+0x29>
 8049781:	e8 c1 06 00 00       	call   8049e47 <explode_bomb>
 8049786:	b8 00 00 00 00       	mov    $0x0,%eax
 804978b:	eb 62                	jmp    80497ef <phase_5+0x8b>
 804978d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)			# -0xc处为0
 8049794:	eb 26                	jmp    80497bc <phase_5+0x58>
 8049796:	8b 55 f4             	mov    -0xc(%ebp),%edx			# -0xc赋值edx
 8049799:	8b 45 08             	mov    0x8(%ebp),%eax			# 字符串地址eax
 804979c:	01 d0                	add    %edx,%eax				# eax加上偏移edx
 804979e:	0f b6 00             	movzbl (%eax),%eax				# eax地址取值赋给eax
 80497a1:	0f be c0             	movsbl %al,%eax					# 符号扩展ax
 80497a4:	83 e0 0f             	and    $0xf,%eax				# 保留低四位
 80497a7:	0f b6 80 e4 c1 04 08 	movzbl 0x804c1e4(%eax),%eax		# eax地址取值赋给eax
 80497ae:	8d 4d e7             	lea    -0x19(%ebp),%ecx			# 取地址给ecx
 80497b1:	8b 55 f4             	mov    -0xc(%ebp),%edx			
 80497b4:	01 ca                	add    %ecx,%edx				# ecx加上偏移edx
 80497b6:	88 02                	mov    %al,(%edx)				# al赋值给edx地址
 80497b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)			# 计数器加1
 80497bc:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)			# -0xc与7比较
 80497c0:	7e d4                	jle    8049796 <phase_5+0x32>	# 小于等于7
 80497c2:	c6 45 ef 00          	movb   $0x0,-0x11(%ebp)			# -0x11处为0
 80497c6:	83 ec 08             	sub    $0x8,%esp				
 80497c9:	68 28 a2 04 08       	push   $0x804a228				# 字符串地址
 80497ce:	8d 45 e7             	lea    -0x19(%ebp),%eax			# -0x19地址给eax
 80497d1:	50                   	push   %eax
 80497d2:	e8 08 04 00 00       	call   8049bdf <strings_not_equal>
 80497d7:	83 c4 10             	add    $0x10,%esp
 80497da:	85 c0                	test   %eax,%eax				# 相等返回0，成功
 80497dc:	74 0c                	je     80497ea <phase_5+0x86>
 80497de:	e8 64 06 00 00       	call   8049e47 <explode_bomb>
 80497e3:	b8 00 00 00 00       	mov    $0x0,%eax
 80497e8:	eb 05                	jmp    80497ef <phase_5+0x8b>
 80497ea:	b8 01 00 00 00       	mov    $0x1,%eax
 80497ef:	c9                   	leave  
 80497f0:	c3                   	ret    

080497f1 <phase_6>:
 80497f1:	55                   	push   %ebp
 80497f2:	89 e5                	mov    %esp,%ebp
 80497f4:	83 ec 48             	sub    $0x48,%esp
 80497f7:	c7 45 e8 24 c1 04 08 	movl   $0x804c124,-0x18(%ebp)	# -0x18赋值一个地址
 80497fe:	83 ec 08             	sub    $0x8,%esp
 8049801:	8d 45 d0             	lea    -0x30(%ebp),%eax			# -0x30入栈
 8049804:	50                   	push   %eax
 8049805:	ff 75 08             	pushl  0x8(%ebp)				# 0x8入栈
 8049808:	e8 b9 02 00 00       	call   8049ac6 <read_six_numbers>
 804980d:	83 c4 10             	add    $0x10,%esp
 8049810:	85 c0                	test   %eax,%eax
 8049812:	75 0a                	jne    804981e <phase_6+0x2d>	# eax != 0
 8049814:	b8 00 00 00 00       	mov    $0x0,%eax
 8049819:	e9 37 01 00 00       	jmp    8049955 <phase_6+0x164>
 804981e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)			# -0x10 = 0
 8049825:	eb 60                	jmp    8049887 <phase_6+0x96>
 8049827:	8b 45 f0             	mov    -0x10(%ebp),%eax			# 循环次数赋给eax
 804982a:	8b 44 85 d0          	mov    -0x30(%ebp,%eax,4),%eax	# -0x30取值赋给eax
 804982e:	85 c0                	test   %eax,%eax
 8049830:	7e 0c                	jle    804983e <phase_6+0x4d>	# eax = 0失败
 8049832:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049835:	8b 44 85 d0          	mov    -0x30(%ebp,%eax,4),%eax
 8049839:	83 f8 06             	cmp    $0x6,%eax				# eax > 6失败
 804983c:	7e 0f                	jle    804984d <phase_6+0x5c>
 804983e:	e8 04 06 00 00       	call   8049e47 <explode_bomb>
 8049843:	b8 00 00 00 00       	mov    $0x0,%eax
 8049848:	e9 08 01 00 00       	jmp    8049955 <phase_6+0x164>
 804984d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049850:	83 c0 01             	add    $0x1,%eax				# TODO：6个数，每个在0到6之间
 8049853:	89 45 ec             	mov    %eax,-0x14(%ebp)			# 计数加1，赋给-0x14
 8049856:	eb 25                	jmp    804987d <phase_6+0x8c>
 8049858:	8b 45 f0             	mov    -0x10(%ebp),%eax			# 计数赋给eax
 804985b:	8b 54 85 d0          	mov    -0x30(%ebp,%eax,4),%edx	# -0x30取值给edx
 804985f:	8b 45 ec             	mov    -0x14(%ebp),%eax			# -0x14赋给eax
 8049862:	8b 44 85 d0          	mov    -0x30(%ebp,%eax,4),%eax	# -0x30取值给eax
 8049866:	39 c2                	cmp    %eax,%edx				# 比较eax和edx
 8049868:	75 0f                	jne    8049879 <phase_6+0x88>	# TODO：6个数各不相同
 804986a:	e8 d8 05 00 00       	call   8049e47 <explode_bomb>	# 相等则爆炸
 804986f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049874:	e9 dc 00 00 00       	jmp    8049955 <phase_6+0x164>
 8049879:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)			# -0x14加1
 804987d:	83 7d ec 05          	cmpl   $0x5,-0x14(%ebp)			# -0x14判断小于等于5
 8049881:	7e d5                	jle    8049858 <phase_6+0x67>
 8049883:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)			# 计数器加1
 8049887:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)			# -0x10判断小于等于5
 804988b:	7e 9a                	jle    8049827 <phase_6+0x36>
 804988d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)			# 计数器清零
 8049894:	eb 36                	jmp    80498cc <phase_6+0xdb>
 8049896:	8b 45 e8             	mov    -0x18(%ebp),%eax			# -0x18赋值给eax
 8049899:	89 45 f4             	mov    %eax,-0xc(%ebp)			# -0xc = 0x804c124
 804989c:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)			# -0x14 = 1
 80498a3:	eb 0d                	jmp    80498b2 <phase_6+0xc1>
 80498a5:	8b 45 f4             	mov    -0xc(%ebp),%eax			# -0xc赋值给eax
 80498a8:	8b 40 08             	mov    0x8(%eax),%eax			# 取地址+8的值赋给eax
 80498ab:	89 45 f4             	mov    %eax,-0xc(%ebp)			# -0xc指向下一个节点的地址
 80498ae:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)			# -0x14加1
 80498b2:	8b 45 f0             	mov    -0x10(%ebp),%eax			# 计数器赋给eax
 80498b5:	8b 44 85 d0          	mov    -0x30(%ebp,%eax,4),%eax	# -0x30取值赋给eax
 80498b9:	39 45 ec             	cmp    %eax,-0x14(%ebp)			# eax和-0x14比较
 80498bc:	7c e7                	jl     80498a5 <phase_6+0xb4>	# (-0x14) != (-0x30)
 80498be:	8b 45 f0             	mov    -0x10(%ebp),%eax			# TODO：eax是序号
 80498c1:	8b 55 f4             	mov    -0xc(%ebp),%edx			# -0xc是某个节点地址
 80498c4:	89 54 85 b8          	mov    %edx,-0x48(%ebp,%eax,4)	# -0x48存放某个节点地址
 80498c8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80498cc:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)			# 计数器判断小于等于5
 80498d0:	7e c4                	jle    8049896 <phase_6+0xa5>	# TODO：-0x48存放了按-0x30输入数字的节点序号，节点从0开始计数
 80498d2:	8b 45 b8             	mov    -0x48(%ebp),%eax			# -0x48赋值给eax
 80498d5:	89 45 e8             	mov    %eax,-0x18(%ebp)			# -0x18 = -0x48
 80498d8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80498db:	89 45 f4             	mov    %eax,-0xc(%ebp)			# -0xc = -0x48
 80498de:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)			# 计数器 = 1
 80498e5:	eb 1a                	jmp    8049901 <phase_6+0x110>
 80498e7:	8b 45 f0             	mov    -0x10(%ebp),%eax			# 计数器赋值给eax
 80498ea:	8b 54 85 b8          	mov    -0x48(%ebp,%eax,4),%edx	# -0x48取计数器序号节点地址给edx
 80498ee:	8b 45 f4             	mov    -0xc(%ebp),%eax			# 某个节点地址赋值给eax
 80498f1:	89 50 08             	mov    %edx,0x8(%eax)			# 把计数器序号节点地址给节点a
 80498f4:	8b 45 f4             	mov    -0xc(%ebp),%eax			
 80498f7:	8b 40 08             	mov    0x8(%eax),%eax			# 取下一个节点地址给eax
 80498fa:	89 45 f4             	mov    %eax,-0xc(%ebp)			# 下一个节点地址给-0xc
 80498fd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)			# 计数器加1
 8049901:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)			# 判断计数器小于等于5
 8049905:	7e e0                	jle    80498e7 <phase_6+0xf6>	# TODO：按输入顺序重排节点
 8049907:	8b 45 f4             	mov    -0xc(%ebp),%eax			# -0xc赋值给eax
 804990a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)			# 0x8 + eax = 0
 8049911:	8b 45 e8             	mov    -0x18(%ebp),%eax			# -0x18赋值给eax
 8049914:	89 45 f4             	mov    %eax,-0xc(%ebp)			# -0xc链表地址
 8049917:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)			# 计数器清零
 804991e:	eb 2a                	jmp    804994a <phase_6+0x159>
 8049920:	8b 45 f4             	mov    -0xc(%ebp),%eax			# -0xc赋值给eax	
 8049923:	8b 10                	mov    (%eax),%edx				# eax取值赋给edx
 8049925:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049928:	8b 40 08             	mov    0x8(%eax),%eax			# 下一个节点地址给eax
 804992b:	8b 00                	mov    (%eax),%eax				# 下一个节点取值赋给eax
 804992d:	39 c2                	cmp    %eax,%edx				# 前一个和后一个节点
 804992f:	7d 0c                	jge    804993d <phase_6+0x14c>	# 后一个节点小，失败
 8049931:	e8 11 05 00 00       	call   8049e47 <explode_bomb>
 8049936:	b8 00 00 00 00       	mov    $0x0,%eax
 804993b:	eb 18                	jmp    8049955 <phase_6+0x164>
 804993d:	8b 45 f4             	mov    -0xc(%ebp),%eax			# -0xc赋值给eax	
 8049940:	8b 40 08             	mov    0x8(%eax),%eax			# 0x8 + eax取值赋给eax
 8049943:	89 45 f4             	mov    %eax,-0xc(%ebp)			# eax赋值给-0xc
 8049946:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)			# 计数器加1
 804994a:	83 7d f0 04          	cmpl   $0x4,-0x10(%ebp)			# 判断计数器小于等于4
 804994e:	7e d0                	jle    8049920 <phase_6+0x12f>
 8049950:	b8 01 00 00 00       	mov    $0x1,%eax
 8049955:	c9                   	leave  
 8049956:	c3                   	ret    

08049957 <fun7>:
 8049957:	55                   	push   %ebp
 8049958:	89 e5                	mov    %esp,%ebp
 804995a:	83 ec 08             	sub    $0x8,%esp
 804995d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049961:	75 07                	jne    804996a <fun7+0x13>
 8049963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049968:	eb 4e                	jmp    80499b8 <fun7+0x61>
 804996a:	8b 45 08             	mov    0x8(%ebp),%eax
 804996d:	8b 00                	mov    (%eax),%eax
 804996f:	39 45 0c             	cmp    %eax,0xc(%ebp)
 8049972:	7d 19                	jge    804998d <fun7+0x36>
 8049974:	8b 45 08             	mov    0x8(%ebp),%eax
 8049977:	8b 40 04             	mov    0x4(%eax),%eax
 804997a:	83 ec 08             	sub    $0x8,%esp
 804997d:	ff 75 0c             	pushl  0xc(%ebp)
 8049980:	50                   	push   %eax
 8049981:	e8 d1 ff ff ff       	call   8049957 <fun7>
 8049986:	83 c4 10             	add    $0x10,%esp
 8049989:	01 c0                	add    %eax,%eax
 804998b:	eb 2b                	jmp    80499b8 <fun7+0x61>
 804998d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049990:	8b 00                	mov    (%eax),%eax
 8049992:	39 45 0c             	cmp    %eax,0xc(%ebp)
 8049995:	75 07                	jne    804999e <fun7+0x47>
 8049997:	b8 00 00 00 00       	mov    $0x0,%eax
 804999c:	eb 1a                	jmp    80499b8 <fun7+0x61>
 804999e:	8b 45 08             	mov    0x8(%ebp),%eax
 80499a1:	8b 40 08             	mov    0x8(%eax),%eax
 80499a4:	83 ec 08             	sub    $0x8,%esp
 80499a7:	ff 75 0c             	pushl  0xc(%ebp)
 80499aa:	50                   	push   %eax
 80499ab:	e8 a7 ff ff ff       	call   8049957 <fun7>
 80499b0:	83 c4 10             	add    $0x10,%esp
 80499b3:	01 c0                	add    %eax,%eax
 80499b5:	83 c0 01             	add    $0x1,%eax
 80499b8:	c9                   	leave  
 80499b9:	c3                   	ret    

080499ba <secret_phase>:
 80499ba:	55                   	push   %ebp
 80499bb:	89 e5                	mov    %esp,%ebp
 80499bd:	83 ec 18             	sub    $0x18,%esp
 80499c0:	e8 3f 03 00 00       	call   8049d04 <read_line>
 80499c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80499c8:	83 ec 0c             	sub    $0xc,%esp
 80499cb:	ff 75 f4             	pushl  -0xc(%ebp)
 80499ce:	e8 2d f7 ff ff       	call   8049100 <atoi@plt>
 80499d3:	83 c4 10             	add    $0x10,%esp
 80499d6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80499d9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80499dd:	7e 09                	jle    80499e8 <secret_phase+0x2e>
 80499df:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp)
 80499e6:	7e 0c                	jle    80499f4 <secret_phase+0x3a>
 80499e8:	e8 5a 04 00 00       	call   8049e47 <explode_bomb>
 80499ed:	b8 00 00 00 00       	mov    $0x0,%eax
 80499f2:	eb 42                	jmp    8049a36 <secret_phase+0x7c>
 80499f4:	83 ec 08             	sub    $0x8,%esp
 80499f7:	ff 75 f0             	pushl  -0x10(%ebp)
 80499fa:	68 d8 c1 04 08       	push   $0x804c1d8
 80499ff:	e8 53 ff ff ff       	call   8049957 <fun7>
 8049a04:	83 c4 10             	add    $0x10,%esp
 8049a07:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049a0a:	83 7d ec 03          	cmpl   $0x3,-0x14(%ebp)
 8049a0e:	74 0c                	je     8049a1c <secret_phase+0x62>
 8049a10:	e8 32 04 00 00       	call   8049e47 <explode_bomb>
 8049a15:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a1a:	eb 1a                	jmp    8049a36 <secret_phase+0x7c>
 8049a1c:	83 ec 0c             	sub    $0xc,%esp
 8049a1f:	68 34 a2 04 08       	push   $0x804a234
 8049a24:	e8 67 f6 ff ff       	call   8049090 <puts@plt>
 8049a29:	83 c4 10             	add    $0x10,%esp
 8049a2c:	e8 3f 04 00 00       	call   8049e70 <phase_defused>
 8049a31:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a36:	c9                   	leave  
 8049a37:	c3                   	ret    

08049a38 <sig_handler>:
 8049a38:	55                   	push   %ebp
 8049a39:	89 e5                	mov    %esp,%ebp
 8049a3b:	83 ec 08             	sub    $0x8,%esp
 8049a3e:	83 ec 0c             	sub    $0xc,%esp
 8049a41:	68 5c a2 04 08       	push   $0x804a25c
 8049a46:	e8 45 f6 ff ff       	call   8049090 <puts@plt>
 8049a4b:	83 c4 10             	add    $0x10,%esp
 8049a4e:	83 ec 0c             	sub    $0xc,%esp
 8049a51:	6a 03                	push   $0x3
 8049a53:	e8 18 f6 ff ff       	call   8049070 <sleep@plt>
 8049a58:	83 c4 10             	add    $0x10,%esp
 8049a5b:	83 ec 0c             	sub    $0xc,%esp
 8049a5e:	68 94 a2 04 08       	push   $0x804a294
 8049a63:	e8 c8 f5 ff ff       	call   8049030 <printf@plt>
 8049a68:	83 c4 10             	add    $0x10,%esp
 8049a6b:	a1 04 c2 04 08       	mov    0x804c204,%eax
 8049a70:	83 ec 0c             	sub    $0xc,%esp
 8049a73:	50                   	push   %eax
 8049a74:	e8 c7 f5 ff ff       	call   8049040 <fflush@plt>
 8049a79:	83 c4 10             	add    $0x10,%esp
 8049a7c:	83 ec 0c             	sub    $0xc,%esp
 8049a7f:	6a 01                	push   $0x1
 8049a81:	e8 ea f5 ff ff       	call   8049070 <sleep@plt>
 8049a86:	83 c4 10             	add    $0x10,%esp
 8049a89:	83 ec 0c             	sub    $0xc,%esp
 8049a8c:	68 9c a2 04 08       	push   $0x804a29c
 8049a91:	e8 fa f5 ff ff       	call   8049090 <puts@plt>
 8049a96:	83 c4 10             	add    $0x10,%esp
 8049a99:	83 ec 0c             	sub    $0xc,%esp
 8049a9c:	6a 10                	push   $0x10
 8049a9e:	e8 fd f5 ff ff       	call   80490a0 <exit@plt>

08049aa3 <invalid_phase>:
 8049aa3:	55                   	push   %ebp
 8049aa4:	89 e5                	mov    %esp,%ebp
 8049aa6:	83 ec 08             	sub    $0x8,%esp
 8049aa9:	83 ec 08             	sub    $0x8,%esp
 8049aac:	ff 75 08             	pushl  0x8(%ebp)
 8049aaf:	68 a4 a2 04 08       	push   $0x804a2a4
 8049ab4:	e8 77 f5 ff ff       	call   8049030 <printf@plt>
 8049ab9:	83 c4 10             	add    $0x10,%esp
 8049abc:	83 ec 0c             	sub    $0xc,%esp
 8049abf:	6a 08                	push   $0x8
 8049ac1:	e8 da f5 ff ff       	call   80490a0 <exit@plt>

08049ac6 <read_six_numbers>:
 8049ac6:	55                   	push   %ebp
 8049ac7:	89 e5                	mov    %esp,%ebp
 8049ac9:	56                   	push   %esi
 8049aca:	53                   	push   %ebx
 8049acb:	83 ec 10             	sub    $0x10,%esp
 8049ace:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ad1:	8d 70 14             	lea    0x14(%eax),%esi
 8049ad4:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ad7:	8d 58 10             	lea    0x10(%eax),%ebx
 8049ada:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049add:	8d 48 0c             	lea    0xc(%eax),%ecx
 8049ae0:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ae3:	8d 50 08             	lea    0x8(%eax),%edx
 8049ae6:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ae9:	83 c0 04             	add    $0x4,%eax
 8049aec:	56                   	push   %esi
 8049aed:	53                   	push   %ebx
 8049aee:	51                   	push   %ecx
 8049aef:	52                   	push   %edx
 8049af0:	50                   	push   %eax
 8049af1:	ff 75 0c             	pushl  0xc(%ebp)
 8049af4:	68 b5 a2 04 08       	push   $0x804a2b5
 8049af9:	ff 75 08             	pushl  0x8(%ebp)
 8049afc:	e8 cf f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049b01:	83 c4 20             	add    $0x20,%esp
 8049b04:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b07:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049b0b:	7f 0c                	jg     8049b19 <read_six_numbers+0x53>
 8049b0d:	e8 35 03 00 00       	call   8049e47 <explode_bomb>
 8049b12:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b17:	eb 05                	jmp    8049b1e <read_six_numbers+0x58>
 8049b19:	b8 01 00 00 00       	mov    $0x1,%eax
 8049b1e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049b21:	5b                   	pop    %ebx
 8049b22:	5e                   	pop    %esi
 8049b23:	5d                   	pop    %ebp
 8049b24:	c3                   	ret    

08049b25 <read_n_numbers>:
 8049b25:	55                   	push   %ebp
 8049b26:	89 e5                	mov    %esp,%ebp
 8049b28:	83 ec 18             	sub    $0x18,%esp
 8049b2b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049b32:	eb 70                	jmp    8049ba4 <read_n_numbers+0x7f>
 8049b34:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049b38:	75 18                	jne    8049b52 <read_n_numbers+0x2d>
 8049b3a:	83 ec 08             	sub    $0x8,%esp
 8049b3d:	68 c7 a2 04 08       	push   $0x804a2c7
 8049b42:	ff 75 08             	pushl  0x8(%ebp)
 8049b45:	e8 a6 f5 ff ff       	call   80490f0 <strtok@plt>
 8049b4a:	83 c4 10             	add    $0x10,%esp
 8049b4d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b50:	eb 15                	jmp    8049b67 <read_n_numbers+0x42>
 8049b52:	83 ec 08             	sub    $0x8,%esp
 8049b55:	68 c7 a2 04 08       	push   $0x804a2c7
 8049b5a:	6a 00                	push   $0x0
 8049b5c:	e8 8f f5 ff ff       	call   80490f0 <strtok@plt>
 8049b61:	83 c4 10             	add    $0x10,%esp
 8049b64:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b67:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049b6b:	74 27                	je     8049b94 <read_n_numbers+0x6f>
 8049b6d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049b70:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049b77:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b7a:	01 d0                	add    %edx,%eax
 8049b7c:	83 ec 04             	sub    $0x4,%esp
 8049b7f:	50                   	push   %eax
 8049b80:	68 cb a2 04 08       	push   $0x804a2cb
 8049b85:	ff 75 f4             	pushl  -0xc(%ebp)
 8049b88:	e8 43 f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049b8d:	83 c4 10             	add    $0x10,%esp
 8049b90:	85 c0                	test   %eax,%eax
 8049b92:	7f 0c                	jg     8049ba0 <read_n_numbers+0x7b>
 8049b94:	e8 ae 02 00 00       	call   8049e47 <explode_bomb>
 8049b99:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b9e:	eb 11                	jmp    8049bb1 <read_n_numbers+0x8c>
 8049ba0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049ba4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049ba7:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049baa:	7c 88                	jl     8049b34 <read_n_numbers+0xf>
 8049bac:	b8 01 00 00 00       	mov    $0x1,%eax
 8049bb1:	c9                   	leave  
 8049bb2:	c3                   	ret    

08049bb3 <string_length>:
 8049bb3:	55                   	push   %ebp
 8049bb4:	89 e5                	mov    %esp,%ebp
 8049bb6:	83 ec 10             	sub    $0x10,%esp
 8049bb9:	8b 45 08             	mov    0x8(%ebp),%eax
 8049bbc:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049bbf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049bc6:	eb 08                	jmp    8049bd0 <string_length+0x1d>
 8049bc8:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049bcc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8049bd0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049bd3:	0f b6 00             	movzbl (%eax),%eax
 8049bd6:	84 c0                	test   %al,%al
 8049bd8:	75 ee                	jne    8049bc8 <string_length+0x15>
 8049bda:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049bdd:	c9                   	leave  
 8049bde:	c3                   	ret    

08049bdf <strings_not_equal>:
 8049bdf:	55                   	push   %ebp
 8049be0:	89 e5                	mov    %esp,%ebp
 8049be2:	53                   	push   %ebx
 8049be3:	83 ec 10             	sub    $0x10,%esp
 8049be6:	ff 75 08             	pushl  0x8(%ebp)
 8049be9:	e8 c5 ff ff ff       	call   8049bb3 <string_length>
 8049bee:	83 c4 04             	add    $0x4,%esp
 8049bf1:	89 c3                	mov    %eax,%ebx
 8049bf3:	ff 75 0c             	pushl  0xc(%ebp)
 8049bf6:	e8 b8 ff ff ff       	call   8049bb3 <string_length>
 8049bfb:	83 c4 04             	add    $0x4,%esp
 8049bfe:	39 c3                	cmp    %eax,%ebx
 8049c00:	74 07                	je     8049c09 <strings_not_equal+0x2a>
 8049c02:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c07:	eb 3c                	jmp    8049c45 <strings_not_equal+0x66>
 8049c09:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c0c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c0f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c12:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c15:	eb 1f                	jmp    8049c36 <strings_not_equal+0x57>
 8049c17:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c1a:	0f b6 10             	movzbl (%eax),%edx
 8049c1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049c20:	0f b6 00             	movzbl (%eax),%eax
 8049c23:	38 c2                	cmp    %al,%dl
 8049c25:	74 07                	je     8049c2e <strings_not_equal+0x4f>
 8049c27:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c2c:	eb 17                	jmp    8049c45 <strings_not_equal+0x66>
 8049c2e:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049c32:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049c36:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c39:	0f b6 00             	movzbl (%eax),%eax
 8049c3c:	84 c0                	test   %al,%al
 8049c3e:	75 d7                	jne    8049c17 <strings_not_equal+0x38>
 8049c40:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c45:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049c48:	c9                   	leave  
 8049c49:	c3                   	ret    

08049c4a <initialize_bomb>:
 8049c4a:	55                   	push   %ebp
 8049c4b:	89 e5                	mov    %esp,%ebp
 8049c4d:	83 ec 08             	sub    $0x8,%esp
 8049c50:	83 ec 08             	sub    $0x8,%esp
 8049c53:	68 38 9a 04 08       	push   $0x8049a38
 8049c58:	6a 02                	push   $0x2
 8049c5a:	e8 01 f4 ff ff       	call   8049060 <signal@plt>
 8049c5f:	83 c4 10             	add    $0x10,%esp
 8049c62:	90                   	nop
 8049c63:	c9                   	leave  
 8049c64:	c3                   	ret    

08049c65 <initialize_bomb_solve>:
 8049c65:	55                   	push   %ebp
 8049c66:	89 e5                	mov    %esp,%ebp
 8049c68:	90                   	nop
 8049c69:	5d                   	pop    %ebp
 8049c6a:	c3                   	ret    

08049c6b <blank_line>:
 8049c6b:	55                   	push   %ebp
 8049c6c:	89 e5                	mov    %esp,%ebp
 8049c6e:	83 ec 08             	sub    $0x8,%esp
 8049c71:	eb 30                	jmp    8049ca3 <blank_line+0x38>
 8049c73:	e8 98 f4 ff ff       	call   8049110 <__ctype_b_loc@plt>
 8049c78:	8b 08                	mov    (%eax),%ecx
 8049c7a:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c7d:	8d 50 01             	lea    0x1(%eax),%edx
 8049c80:	89 55 08             	mov    %edx,0x8(%ebp)
 8049c83:	0f b6 00             	movzbl (%eax),%eax
 8049c86:	0f be c0             	movsbl %al,%eax
 8049c89:	01 c0                	add    %eax,%eax
 8049c8b:	01 c8                	add    %ecx,%eax
 8049c8d:	0f b7 00             	movzwl (%eax),%eax
 8049c90:	0f b7 c0             	movzwl %ax,%eax
 8049c93:	25 00 20 00 00       	and    $0x2000,%eax
 8049c98:	85 c0                	test   %eax,%eax
 8049c9a:	75 07                	jne    8049ca3 <blank_line+0x38>
 8049c9c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ca1:	eb 0f                	jmp    8049cb2 <blank_line+0x47>
 8049ca3:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ca6:	0f b6 00             	movzbl (%eax),%eax
 8049ca9:	84 c0                	test   %al,%al
 8049cab:	75 c6                	jne    8049c73 <blank_line+0x8>
 8049cad:	b8 01 00 00 00       	mov    $0x1,%eax
 8049cb2:	c9                   	leave  
 8049cb3:	c3                   	ret    

08049cb4 <skip>:
 8049cb4:	55                   	push   %ebp
 8049cb5:	89 e5                	mov    %esp,%ebp
 8049cb7:	83 ec 18             	sub    $0x18,%esp
 8049cba:	8b 0d 10 c2 04 08    	mov    0x804c210,%ecx
 8049cc0:	8b 15 0c c2 04 08    	mov    0x804c20c,%edx
 8049cc6:	89 d0                	mov    %edx,%eax
 8049cc8:	c1 e0 02             	shl    $0x2,%eax
 8049ccb:	01 d0                	add    %edx,%eax
 8049ccd:	c1 e0 04             	shl    $0x4,%eax
 8049cd0:	05 20 c2 04 08       	add    $0x804c220,%eax
 8049cd5:	83 ec 04             	sub    $0x4,%esp
 8049cd8:	51                   	push   %ecx
 8049cd9:	6a 50                	push   $0x50
 8049cdb:	50                   	push   %eax
 8049cdc:	e8 6f f3 ff ff       	call   8049050 <fgets@plt>
 8049ce1:	83 c4 10             	add    $0x10,%esp
 8049ce4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ce7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049ceb:	74 12                	je     8049cff <skip+0x4b>
 8049ced:	83 ec 0c             	sub    $0xc,%esp
 8049cf0:	ff 75 f4             	pushl  -0xc(%ebp)
 8049cf3:	e8 73 ff ff ff       	call   8049c6b <blank_line>
 8049cf8:	83 c4 10             	add    $0x10,%esp
 8049cfb:	85 c0                	test   %eax,%eax
 8049cfd:	75 bb                	jne    8049cba <skip+0x6>
 8049cff:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d02:	c9                   	leave  
 8049d03:	c3                   	ret    

08049d04 <read_line>:
 8049d04:	55                   	push   %ebp
 8049d05:	89 e5                	mov    %esp,%ebp
 8049d07:	83 ec 18             	sub    $0x18,%esp
 8049d0a:	e8 a5 ff ff ff       	call   8049cb4 <skip>
 8049d0f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d12:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d16:	75 79                	jne    8049d91 <read_line+0x8d>
 8049d18:	8b 15 10 c2 04 08    	mov    0x804c210,%edx
 8049d1e:	a1 00 c2 04 08       	mov    0x804c200,%eax
 8049d23:	39 c2                	cmp    %eax,%edx
 8049d25:	75 1a                	jne    8049d41 <read_line+0x3d>
 8049d27:	83 ec 0c             	sub    $0xc,%esp
 8049d2a:	68 ce a2 04 08       	push   $0x804a2ce
 8049d2f:	e8 5c f3 ff ff       	call   8049090 <puts@plt>
 8049d34:	83 c4 10             	add    $0x10,%esp
 8049d37:	83 ec 0c             	sub    $0xc,%esp
 8049d3a:	6a 08                	push   $0x8
 8049d3c:	e8 5f f3 ff ff       	call   80490a0 <exit@plt>
 8049d41:	83 ec 0c             	sub    $0xc,%esp
 8049d44:	68 ec a2 04 08       	push   $0x804a2ec
 8049d49:	e8 32 f3 ff ff       	call   8049080 <getenv@plt>
 8049d4e:	83 c4 10             	add    $0x10,%esp
 8049d51:	85 c0                	test   %eax,%eax
 8049d53:	74 0a                	je     8049d5f <read_line+0x5b>
 8049d55:	83 ec 0c             	sub    $0xc,%esp
 8049d58:	6a 00                	push   $0x0
 8049d5a:	e8 41 f3 ff ff       	call   80490a0 <exit@plt>
 8049d5f:	a1 00 c2 04 08       	mov    0x804c200,%eax
 8049d64:	a3 10 c2 04 08       	mov    %eax,0x804c210
 8049d69:	e8 46 ff ff ff       	call   8049cb4 <skip>
 8049d6e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d71:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d75:	75 1a                	jne    8049d91 <read_line+0x8d>
 8049d77:	83 ec 0c             	sub    $0xc,%esp
 8049d7a:	68 ce a2 04 08       	push   $0x804a2ce
 8049d7f:	e8 0c f3 ff ff       	call   8049090 <puts@plt>
 8049d84:	83 c4 10             	add    $0x10,%esp
 8049d87:	83 ec 0c             	sub    $0xc,%esp
 8049d8a:	6a 00                	push   $0x0
 8049d8c:	e8 0f f3 ff ff       	call   80490a0 <exit@plt>
 8049d91:	8b 15 0c c2 04 08    	mov    0x804c20c,%edx
 8049d97:	89 d0                	mov    %edx,%eax
 8049d99:	c1 e0 02             	shl    $0x2,%eax
 8049d9c:	01 d0                	add    %edx,%eax
 8049d9e:	c1 e0 04             	shl    $0x4,%eax
 8049da1:	05 20 c2 04 08       	add    $0x804c220,%eax
 8049da6:	83 ec 0c             	sub    $0xc,%esp
 8049da9:	50                   	push   %eax
 8049daa:	e8 01 f3 ff ff       	call   80490b0 <strlen@plt>
 8049daf:	83 c4 10             	add    $0x10,%esp
 8049db2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049db5:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
 8049db9:	7e 4d                	jle    8049e08 <read_line+0x104>
 8049dbb:	83 ec 0c             	sub    $0xc,%esp
 8049dbe:	68 f7 a2 04 08       	push   $0x804a2f7
 8049dc3:	e8 c8 f2 ff ff       	call   8049090 <puts@plt>
 8049dc8:	83 c4 10             	add    $0x10,%esp
 8049dcb:	8b 15 0c c2 04 08    	mov    0x804c20c,%edx
 8049dd1:	8d 42 01             	lea    0x1(%edx),%eax
 8049dd4:	a3 0c c2 04 08       	mov    %eax,0x804c20c
 8049dd9:	89 d0                	mov    %edx,%eax
 8049ddb:	c1 e0 02             	shl    $0x2,%eax
 8049dde:	01 d0                	add    %edx,%eax
 8049de0:	c1 e0 04             	shl    $0x4,%eax
 8049de3:	05 20 c2 04 08       	add    $0x804c220,%eax
 8049de8:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
 8049dee:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
 8049df5:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
 8049dfc:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
 8049e03:	e8 3f 00 00 00       	call   8049e47 <explode_bomb>
 8049e08:	8b 15 0c c2 04 08    	mov    0x804c20c,%edx
 8049e0e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049e11:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049e14:	89 d0                	mov    %edx,%eax
 8049e16:	c1 e0 02             	shl    $0x2,%eax
 8049e19:	01 d0                	add    %edx,%eax
 8049e1b:	c1 e0 04             	shl    $0x4,%eax
 8049e1e:	01 c8                	add    %ecx,%eax
 8049e20:	05 20 c2 04 08       	add    $0x804c220,%eax
 8049e25:	c6 00 00             	movb   $0x0,(%eax)
 8049e28:	8b 15 0c c2 04 08    	mov    0x804c20c,%edx
 8049e2e:	8d 42 01             	lea    0x1(%edx),%eax
 8049e31:	a3 0c c2 04 08       	mov    %eax,0x804c20c
 8049e36:	89 d0                	mov    %edx,%eax
 8049e38:	c1 e0 02             	shl    $0x2,%eax
 8049e3b:	01 d0                	add    %edx,%eax
 8049e3d:	c1 e0 04             	shl    $0x4,%eax
 8049e40:	05 20 c2 04 08       	add    $0x804c220,%eax
 8049e45:	c9                   	leave  
 8049e46:	c3                   	ret    

08049e47 <explode_bomb>:
 8049e47:	55                   	push   %ebp
 8049e48:	89 e5                	mov    %esp,%ebp
 8049e4a:	83 ec 08             	sub    $0x8,%esp
 8049e4d:	83 ec 0c             	sub    $0xc,%esp
 8049e50:	68 12 a3 04 08       	push   $0x804a312
 8049e55:	e8 36 f2 ff ff       	call   8049090 <puts@plt>
 8049e5a:	83 c4 10             	add    $0x10,%esp
 8049e5d:	83 ec 0c             	sub    $0xc,%esp
 8049e60:	68 1b a3 04 08       	push   $0x804a31b
 8049e65:	e8 26 f2 ff ff       	call   8049090 <puts@plt>
 8049e6a:	83 c4 10             	add    $0x10,%esp
 8049e6d:	90                   	nop
 8049e6e:	c9                   	leave  
 8049e6f:	c3                   	ret    

08049e70 <phase_defused>:
 8049e70:	55                   	push   %ebp
 8049e71:	89 e5                	mov    %esp,%ebp
 8049e73:	83 ec 68             	sub    $0x68,%esp
 8049e76:	a1 0c c2 04 08       	mov    0x804c20c,%eax
 8049e7b:	83 f8 07             	cmp    $0x7,%eax
 8049e7e:	75 77                	jne    8049ef7 <phase_defused+0x87>
 8049e80:	83 ec 0c             	sub    $0xc,%esp
 8049e83:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049e86:	50                   	push   %eax
 8049e87:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8049e8a:	50                   	push   %eax
 8049e8b:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049e8e:	50                   	push   %eax
 8049e8f:	68 32 a3 04 08       	push   $0x804a332
 8049e94:	68 60 c3 04 08       	push   $0x804c360
 8049e99:	e8 32 f2 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049e9e:	83 c4 20             	add    $0x20,%esp
 8049ea1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ea4:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8049ea8:	75 3d                	jne    8049ee7 <phase_defused+0x77>
 8049eaa:	83 ec 08             	sub    $0x8,%esp
 8049ead:	68 3b a3 04 08       	push   $0x804a33b
 8049eb2:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049eb5:	50                   	push   %eax
 8049eb6:	e8 24 fd ff ff       	call   8049bdf <strings_not_equal>
 8049ebb:	83 c4 10             	add    $0x10,%esp
 8049ebe:	85 c0                	test   %eax,%eax
 8049ec0:	75 25                	jne    8049ee7 <phase_defused+0x77>
 8049ec2:	83 ec 0c             	sub    $0xc,%esp
 8049ec5:	68 44 a3 04 08       	push   $0x804a344
 8049eca:	e8 c1 f1 ff ff       	call   8049090 <puts@plt>
 8049ecf:	83 c4 10             	add    $0x10,%esp
 8049ed2:	83 ec 0c             	sub    $0xc,%esp
 8049ed5:	68 6c a3 04 08       	push   $0x804a36c
 8049eda:	e8 b1 f1 ff ff       	call   8049090 <puts@plt>
 8049edf:	83 c4 10             	add    $0x10,%esp
 8049ee2:	e8 d3 fa ff ff       	call   80499ba <secret_phase>
 8049ee7:	83 ec 0c             	sub    $0xc,%esp
 8049eea:	68 a4 a3 04 08       	push   $0x804a3a4
 8049eef:	e8 9c f1 ff ff       	call   8049090 <puts@plt>
 8049ef4:	83 c4 10             	add    $0x10,%esp
 8049ef7:	90                   	nop
 8049ef8:	c9                   	leave  
 8049ef9:	c3                   	ret    
 8049efa:	66 90                	xchg   %ax,%ax
 8049efc:	66 90                	xchg   %ax,%ax
 8049efe:	66 90                	xchg   %ax,%ax

08049f00 <__libc_csu_init>:
 8049f00:	55                   	push   %ebp
 8049f01:	57                   	push   %edi
 8049f02:	56                   	push   %esi
 8049f03:	53                   	push   %ebx
 8049f04:	e8 67 f2 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f09:	81 c3 f7 20 00 00    	add    $0x20f7,%ebx
 8049f0f:	83 ec 0c             	sub    $0xc,%esp
 8049f12:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049f16:	e8 e5 f0 ff ff       	call   8049000 <_init>
 8049f1b:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 8049f21:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 8049f27:	29 c6                	sub    %eax,%esi
 8049f29:	c1 fe 02             	sar    $0x2,%esi
 8049f2c:	74 1f                	je     8049f4d <__libc_csu_init+0x4d>
 8049f2e:	31 ff                	xor    %edi,%edi
 8049f30:	83 ec 04             	sub    $0x4,%esp
 8049f33:	55                   	push   %ebp
 8049f34:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049f38:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049f3c:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 8049f43:	83 c7 01             	add    $0x1,%edi
 8049f46:	83 c4 10             	add    $0x10,%esp
 8049f49:	39 fe                	cmp    %edi,%esi
 8049f4b:	75 e3                	jne    8049f30 <__libc_csu_init+0x30>
 8049f4d:	83 c4 0c             	add    $0xc,%esp
 8049f50:	5b                   	pop    %ebx
 8049f51:	5e                   	pop    %esi
 8049f52:	5f                   	pop    %edi
 8049f53:	5d                   	pop    %ebp
 8049f54:	c3                   	ret    
 8049f55:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049f60 <__libc_csu_fini>:
 8049f60:	c3                   	ret    

Disassembly of section .fini:

08049f64 <_fini>:
 8049f64:	53                   	push   %ebx
 8049f65:	83 ec 08             	sub    $0x8,%esp
 8049f68:	e8 03 f2 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f6d:	81 c3 93 20 00 00    	add    $0x2093,%ebx
 8049f73:	83 c4 08             	add    $0x8,%esp
 8049f76:	5b                   	pop    %ebx
 8049f77:	c3                   	ret    
