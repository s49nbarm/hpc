
vector_add_O0:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <free@plt>:
  401030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 404018 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <clock@plt>:
  401040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 404020 <clock@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <printf@plt>:
  401050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 404028 <printf@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <malloc@plt>:
  401060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 404030 <malloc@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <rand@plt>:
  401070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 404038 <rand@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401080 <_start>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	31 ed                	xor    %ebp,%ebp
  401086:	49 89 d1             	mov    %rdx,%r9
  401089:	5e                   	pop    %rsi
  40108a:	48 89 e2             	mov    %rsp,%rdx
  40108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401091:	50                   	push   %rax
  401092:	54                   	push   %rsp
  401093:	45 31 c0             	xor    %r8d,%r8d
  401096:	31 c9                	xor    %ecx,%ecx
  401098:	48 c7 c7 a0 14 40 00 	mov    $0x4014a0,%rdi
  40109f:	ff 15 4b 2f 00 00    	callq  *0x2f4b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4010a5:	f4                   	hlt    
  4010a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010ad:	00 00 00 

00000000004010b0 <_dl_relocate_static_pie>:
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	c3                   	retq   
  4010b5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010bc:	00 00 00 
  4010bf:	90                   	nop

00000000004010c0 <deregister_tm_clones>:
  4010c0:	b8 50 40 40 00       	mov    $0x404050,%eax
  4010c5:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  4010cb:	74 13                	je     4010e0 <deregister_tm_clones+0x20>
  4010cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4010d2:	48 85 c0             	test   %rax,%rax
  4010d5:	74 09                	je     4010e0 <deregister_tm_clones+0x20>
  4010d7:	bf 50 40 40 00       	mov    $0x404050,%edi
  4010dc:	ff e0                	jmpq   *%rax
  4010de:	66 90                	xchg   %ax,%ax
  4010e0:	c3                   	retq   
  4010e1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010e8:	00 00 00 00 
  4010ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010f0 <register_tm_clones>:
  4010f0:	be 50 40 40 00       	mov    $0x404050,%esi
  4010f5:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  4010fc:	48 89 f0             	mov    %rsi,%rax
  4010ff:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401103:	48 c1 f8 03          	sar    $0x3,%rax
  401107:	48 01 c6             	add    %rax,%rsi
  40110a:	48 d1 fe             	sar    %rsi
  40110d:	74 11                	je     401120 <register_tm_clones+0x30>
  40110f:	b8 00 00 00 00       	mov    $0x0,%eax
  401114:	48 85 c0             	test   %rax,%rax
  401117:	74 07                	je     401120 <register_tm_clones+0x30>
  401119:	bf 50 40 40 00       	mov    $0x404050,%edi
  40111e:	ff e0                	jmpq   *%rax
  401120:	c3                   	retq   
  401121:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401130 <__do_global_dtors_aux>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	80 3d 15 2f 00 00 00 	cmpb   $0x0,0x2f15(%rip)        # 404050 <__TMC_END__>
  40113b:	75 13                	jne    401150 <__do_global_dtors_aux+0x20>
  40113d:	55                   	push   %rbp
  40113e:	48 89 e5             	mov    %rsp,%rbp
  401141:	e8 7a ff ff ff       	callq  4010c0 <deregister_tm_clones>
  401146:	c6 05 03 2f 00 00 01 	movb   $0x1,0x2f03(%rip)        # 404050 <__TMC_END__>
  40114d:	5d                   	pop    %rbp
  40114e:	c3                   	retq   
  40114f:	90                   	nop
  401150:	c3                   	retq   
  401151:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401158:	00 00 00 00 
  40115c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401160 <frame_dummy>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	eb 8a                	jmp    4010f0 <register_tm_clones>

0000000000401166 <initialize_arrays>:
  401166:	55                   	push   %rbp
  401167:	48 89 e5             	mov    %rsp,%rbp
  40116a:	48 83 ec 30          	sub    $0x30,%rsp
  40116e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401172:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401176:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40117a:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  40117d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401184:	e9 82 00 00 00       	jmpq   40120b <initialize_arrays+0xa5>
  401189:	e8 e2 fe ff ff       	callq  401070 <rand@plt>
  40118e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401192:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401196:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401199:	48 98                	cltq   
  40119b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4011a2:	00 
  4011a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4011a7:	48 01 d0             	add    %rdx,%rax
  4011aa:	f3 0f 10 0d ca 0e 00 	movss  0xeca(%rip),%xmm1        # 40207c <_IO_stdin_used+0x7c>
  4011b1:	00 
  4011b2:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  4011b6:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4011ba:	e8 b1 fe ff ff       	callq  401070 <rand@plt>
  4011bf:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4011c3:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4011c7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4011ca:	48 98                	cltq   
  4011cc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4011d3:	00 
  4011d4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4011d8:	48 01 d0             	add    %rdx,%rax
  4011db:	f3 0f 10 0d 99 0e 00 	movss  0xe99(%rip),%xmm1        # 40207c <_IO_stdin_used+0x7c>
  4011e2:	00 
  4011e3:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  4011e7:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4011eb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4011ee:	48 98                	cltq   
  4011f0:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4011f7:	00 
  4011f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011fc:	48 01 d0             	add    %rdx,%rax
  4011ff:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401203:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401207:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40120b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40120e:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  401211:	0f 8c 72 ff ff ff    	jl     401189 <initialize_arrays+0x23>
  401217:	90                   	nop
  401218:	90                   	nop
  401219:	c9                   	leaveq 
  40121a:	c3                   	retq   

000000000040121b <initialize_arrays_double>:
  40121b:	55                   	push   %rbp
  40121c:	48 89 e5             	mov    %rsp,%rbp
  40121f:	48 83 ec 30          	sub    $0x30,%rsp
  401223:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401227:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40122b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40122f:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  401232:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401239:	e9 82 00 00 00       	jmpq   4012c0 <initialize_arrays_double+0xa5>
  40123e:	e8 2d fe ff ff       	callq  401070 <rand@plt>
  401243:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401247:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40124b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40124e:	48 98                	cltq   
  401250:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401257:	00 
  401258:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40125c:	48 01 d0             	add    %rdx,%rax
  40125f:	f2 0f 10 0d 19 0e 00 	movsd  0xe19(%rip),%xmm1        # 402080 <_IO_stdin_used+0x80>
  401266:	00 
  401267:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  40126b:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  40126f:	e8 fc fd ff ff       	callq  401070 <rand@plt>
  401274:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401278:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40127c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40127f:	48 98                	cltq   
  401281:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401288:	00 
  401289:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40128d:	48 01 d0             	add    %rdx,%rax
  401290:	f2 0f 10 0d e8 0d 00 	movsd  0xde8(%rip),%xmm1        # 402080 <_IO_stdin_used+0x80>
  401297:	00 
  401298:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  40129c:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4012a0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012a3:	48 98                	cltq   
  4012a5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4012ac:	00 
  4012ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012b1:	48 01 d0             	add    %rdx,%rax
  4012b4:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4012b8:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4012bc:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4012c0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012c3:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4012c6:	0f 8c 72 ff ff ff    	jl     40123e <initialize_arrays_double+0x23>
  4012cc:	90                   	nop
  4012cd:	90                   	nop
  4012ce:	c9                   	leaveq 
  4012cf:	c3                   	retq   

00000000004012d0 <vector_add_plain>:
  4012d0:	55                   	push   %rbp
  4012d1:	48 89 e5             	mov    %rsp,%rbp
  4012d4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4012d8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4012dc:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4012e0:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  4012e3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4012ea:	eb 50                	jmp    40133c <vector_add_plain+0x6c>
  4012ec:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012ef:	48 98                	cltq   
  4012f1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4012f8:	00 
  4012f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4012fd:	48 01 d0             	add    %rdx,%rax
  401300:	f3 0f 10 08          	movss  (%rax),%xmm1
  401304:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401307:	48 98                	cltq   
  401309:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401310:	00 
  401311:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401315:	48 01 d0             	add    %rdx,%rax
  401318:	f3 0f 10 00          	movss  (%rax),%xmm0
  40131c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40131f:	48 98                	cltq   
  401321:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401328:	00 
  401329:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40132d:	48 01 d0             	add    %rdx,%rax
  401330:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  401334:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401338:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40133c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40133f:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  401342:	7c a8                	jl     4012ec <vector_add_plain+0x1c>
  401344:	90                   	nop
  401345:	90                   	nop
  401346:	5d                   	pop    %rbp
  401347:	c3                   	retq   

0000000000401348 <vector_add_plain_double>:
  401348:	55                   	push   %rbp
  401349:	48 89 e5             	mov    %rsp,%rbp
  40134c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401350:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401354:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401358:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  40135b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401362:	eb 50                	jmp    4013b4 <vector_add_plain_double+0x6c>
  401364:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401367:	48 98                	cltq   
  401369:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401370:	00 
  401371:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401375:	48 01 d0             	add    %rdx,%rax
  401378:	f2 0f 10 08          	movsd  (%rax),%xmm1
  40137c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40137f:	48 98                	cltq   
  401381:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401388:	00 
  401389:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40138d:	48 01 d0             	add    %rdx,%rax
  401390:	f2 0f 10 00          	movsd  (%rax),%xmm0
  401394:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401397:	48 98                	cltq   
  401399:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4013a0:	00 
  4013a1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013a5:	48 01 d0             	add    %rdx,%rax
  4013a8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4013ac:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4013b0:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4013b4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013b7:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4013ba:	7c a8                	jl     401364 <vector_add_plain_double+0x1c>
  4013bc:	90                   	nop
  4013bd:	90                   	nop
  4013be:	5d                   	pop    %rbp
  4013bf:	c3                   	retq   

00000000004013c0 <measure_execution_time>:
  4013c0:	55                   	push   %rbp
  4013c1:	48 89 e5             	mov    %rsp,%rbp
  4013c4:	48 83 ec 40          	sub    $0x40,%rsp
  4013c8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4013cc:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4013d0:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4013d4:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4013d8:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  4013dc:	e8 5f fc ff ff       	callq  401040 <clock@plt>
  4013e1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4013e5:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  4013e8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4013ec:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  4013f0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4013f4:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4013f8:	48 89 c7             	mov    %rax,%rdi
  4013fb:	41 ff d0             	callq  *%r8
  4013fe:	e8 3d fc ff ff       	callq  401040 <clock@plt>
  401403:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401407:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40140b:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  40140f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401413:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401418:	f2 0f 10 0d 68 0c 00 	movsd  0xc68(%rip),%xmm1        # 402088 <_IO_stdin_used+0x88>
  40141f:	00 
  401420:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401424:	66 48 0f 7e c0       	movq   %xmm0,%rax
  401429:	66 48 0f 6e c0       	movq   %rax,%xmm0
  40142e:	c9                   	leaveq 
  40142f:	c3                   	retq   

0000000000401430 <measure_execution_time_double>:
  401430:	55                   	push   %rbp
  401431:	48 89 e5             	mov    %rsp,%rbp
  401434:	48 83 ec 40          	sub    $0x40,%rsp
  401438:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40143c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401440:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401444:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  401448:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  40144c:	e8 ef fb ff ff       	callq  401040 <clock@plt>
  401451:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401455:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  401458:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40145c:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  401460:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401464:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  401468:	48 89 c7             	mov    %rax,%rdi
  40146b:	41 ff d0             	callq  *%r8
  40146e:	e8 cd fb ff ff       	callq  401040 <clock@plt>
  401473:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401477:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40147b:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  40147f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401483:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401488:	f2 0f 10 0d f8 0b 00 	movsd  0xbf8(%rip),%xmm1        # 402088 <_IO_stdin_used+0x88>
  40148f:	00 
  401490:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401494:	66 48 0f 7e c0       	movq   %xmm0,%rax
  401499:	66 48 0f 6e c0       	movq   %rax,%xmm0
  40149e:	c9                   	leaveq 
  40149f:	c3                   	retq   

00000000004014a0 <main>:
  4014a0:	55                   	push   %rbp
  4014a1:	48 89 e5             	mov    %rsp,%rbp
  4014a4:	48 83 ec 50          	sub    $0x50,%rsp
  4014a8:	c7 45 f8 40 42 0f 00 	movl   $0xf4240,-0x8(%rbp)
  4014af:	41 b8 08 20 40 00    	mov    $0x402008,%r8d
  4014b5:	b9 21 20 40 00       	mov    $0x402021,%ecx
  4014ba:	ba 39 20 40 00       	mov    $0x402039,%edx
  4014bf:	be 3e 20 40 00       	mov    $0x40203e,%esi
  4014c4:	bf 49 20 40 00       	mov    $0x402049,%edi
  4014c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ce:	e8 7d fb ff ff       	callq  401050 <printf@plt>
  4014d3:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4014da:	e9 7a 01 00 00       	jmpq   401659 <main+0x1b9>
  4014df:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4014e2:	0f af 45 fc          	imul   -0x4(%rbp),%eax
  4014e6:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4014e9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4014ec:	48 98                	cltq   
  4014ee:	48 c1 e0 02          	shl    $0x2,%rax
  4014f2:	48 89 c7             	mov    %rax,%rdi
  4014f5:	e8 66 fb ff ff       	callq  401060 <malloc@plt>
  4014fa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4014fe:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401501:	48 98                	cltq   
  401503:	48 c1 e0 02          	shl    $0x2,%rax
  401507:	48 89 c7             	mov    %rax,%rdi
  40150a:	e8 51 fb ff ff       	callq  401060 <malloc@plt>
  40150f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401513:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401516:	48 98                	cltq   
  401518:	48 c1 e0 02          	shl    $0x2,%rax
  40151c:	48 89 c7             	mov    %rax,%rdi
  40151f:	e8 3c fb ff ff       	callq  401060 <malloc@plt>
  401524:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401528:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40152b:	48 98                	cltq   
  40152d:	48 c1 e0 03          	shl    $0x3,%rax
  401531:	48 89 c7             	mov    %rax,%rdi
  401534:	e8 27 fb ff ff       	callq  401060 <malloc@plt>
  401539:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40153d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401540:	48 98                	cltq   
  401542:	48 c1 e0 03          	shl    $0x3,%rax
  401546:	48 89 c7             	mov    %rax,%rdi
  401549:	e8 12 fb ff ff       	callq  401060 <malloc@plt>
  40154e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401552:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401555:	48 98                	cltq   
  401557:	48 c1 e0 03          	shl    $0x3,%rax
  40155b:	48 89 c7             	mov    %rax,%rdi
  40155e:	e8 fd fa ff ff       	callq  401060 <malloc@plt>
  401563:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401567:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  40156a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40156e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  401572:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401576:	48 89 c7             	mov    %rax,%rdi
  401579:	e8 e8 fb ff ff       	callq  401166 <initialize_arrays>
  40157e:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  401581:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401585:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  401589:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40158d:	48 89 c7             	mov    %rax,%rdi
  401590:	e8 86 fc ff ff       	callq  40121b <initialize_arrays_double>
  401595:	8b 75 f4             	mov    -0xc(%rbp),%esi
  401598:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40159c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4015a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015a4:	41 89 f0             	mov    %esi,%r8d
  4015a7:	48 89 c6             	mov    %rax,%rsi
  4015aa:	bf d0 12 40 00       	mov    $0x4012d0,%edi
  4015af:	e8 0c fe ff ff       	callq  4013c0 <measure_execution_time>
  4015b4:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4015b9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4015bd:	8b 75 f4             	mov    -0xc(%rbp),%esi
  4015c0:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  4015c4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4015c8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4015cc:	41 89 f0             	mov    %esi,%r8d
  4015cf:	48 89 c6             	mov    %rax,%rsi
  4015d2:	bf 48 13 40 00       	mov    $0x401348,%edi
  4015d7:	e8 54 fe ff ff       	callq  401430 <measure_execution_time_double>
  4015dc:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4015e1:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4015e5:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
  4015ea:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  4015ee:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4015f1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015f4:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4015f8:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  4015fd:	89 c6                	mov    %eax,%esi
  4015ff:	bf 62 20 40 00       	mov    $0x402062,%edi
  401604:	b8 02 00 00 00       	mov    $0x2,%eax
  401609:	e8 42 fa ff ff       	callq  401050 <printf@plt>
  40160e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401612:	48 89 c7             	mov    %rax,%rdi
  401615:	e8 16 fa ff ff       	callq  401030 <free@plt>
  40161a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40161e:	48 89 c7             	mov    %rax,%rdi
  401621:	e8 0a fa ff ff       	callq  401030 <free@plt>
  401626:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40162a:	48 89 c7             	mov    %rax,%rdi
  40162d:	e8 fe f9 ff ff       	callq  401030 <free@plt>
  401632:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401636:	48 89 c7             	mov    %rax,%rdi
  401639:	e8 f2 f9 ff ff       	callq  401030 <free@plt>
  40163e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401642:	48 89 c7             	mov    %rax,%rdi
  401645:	e8 e6 f9 ff ff       	callq  401030 <free@plt>
  40164a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40164e:	48 89 c7             	mov    %rax,%rdi
  401651:	e8 da f9 ff ff       	callq  401030 <free@plt>
  401656:	d1 65 fc             	shll   -0x4(%rbp)
  401659:	81 7d fc 00 04 00 00 	cmpl   $0x400,-0x4(%rbp)
  401660:	0f 8e 79 fe ff ff    	jle    4014df <main+0x3f>
  401666:	b8 00 00 00 00       	mov    $0x0,%eax
  40166b:	c9                   	leaveq 
  40166c:	c3                   	retq   

Disassembly of section .fini:

0000000000401670 <_fini>:
  401670:	f3 0f 1e fa          	endbr64 
  401674:	48 83 ec 08          	sub    $0x8,%rsp
  401678:	48 83 c4 08          	add    $0x8,%rsp
  40167c:	c3                   	retq   
