
vector_add_O2:     file format elf64-x86-64


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

0000000000401080 <main>:
  401080:	41 57                	push   %r15
  401082:	41 b8 04 20 40 00    	mov    $0x402004,%r8d
  401088:	b9 1d 20 40 00       	mov    $0x40201d,%ecx
  40108d:	31 c0                	xor    %eax,%eax
  40108f:	41 56                	push   %r14
  401091:	ba 35 20 40 00       	mov    $0x402035,%edx
  401096:	be 3a 20 40 00       	mov    $0x40203a,%esi
  40109b:	bf 45 20 40 00       	mov    $0x402045,%edi
  4010a0:	41 55                	push   %r13
  4010a2:	41 54                	push   %r12
  4010a4:	55                   	push   %rbp
  4010a5:	53                   	push   %rbx
  4010a6:	48 83 ec 38          	sub    $0x38,%rsp
  4010aa:	e8 a1 ff ff ff       	callq  401050 <printf@plt>
  4010af:	c7 44 24 2c 0b 00 00 	movl   $0xb,0x2c(%rsp)
  4010b6:	00 
  4010b7:	c7 44 24 24 01 00 00 	movl   $0x1,0x24(%rsp)
  4010be:	00 
  4010bf:	90                   	nop
  4010c0:	69 44 24 24 40 42 0f 	imul   $0xf4240,0x24(%rsp),%eax
  4010c7:	00 
  4010c8:	48 63 d8             	movslq %eax,%rbx
  4010cb:	89 44 24 28          	mov    %eax,0x28(%rsp)
  4010cf:	48 8d 2c 9d 00 00 00 	lea    0x0(,%rbx,4),%rbp
  4010d6:	00 
  4010d7:	48 c1 e3 03          	shl    $0x3,%rbx
  4010db:	48 89 ef             	mov    %rbp,%rdi
  4010de:	48 89 6c 24 18       	mov    %rbp,0x18(%rsp)
  4010e3:	e8 78 ff ff ff       	callq  401060 <malloc@plt>
  4010e8:	48 89 ef             	mov    %rbp,%rdi
  4010eb:	49 89 c7             	mov    %rax,%r15
  4010ee:	e8 6d ff ff ff       	callq  401060 <malloc@plt>
  4010f3:	48 89 ef             	mov    %rbp,%rdi
  4010f6:	49 89 c6             	mov    %rax,%r14
  4010f9:	e8 62 ff ff ff       	callq  401060 <malloc@plt>
  4010fe:	48 89 df             	mov    %rbx,%rdi
  401101:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  401106:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40110b:	e8 50 ff ff ff       	callq  401060 <malloc@plt>
  401110:	48 89 df             	mov    %rbx,%rdi
  401113:	49 89 c5             	mov    %rax,%r13
  401116:	e8 45 ff ff ff       	callq  401060 <malloc@plt>
  40111b:	48 89 df             	mov    %rbx,%rdi
  40111e:	31 db                	xor    %ebx,%ebx
  401120:	49 89 c4             	mov    %rax,%r12
  401123:	e8 38 ff ff ff       	callq  401060 <malloc@plt>
  401128:	48 89 c5             	mov    %rax,%rbp
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401130:	e8 3b ff ff ff       	callq  401070 <rand@plt>
  401135:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401139:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  40113d:	f3 0f 59 05 33 0f 00 	mulss  0xf33(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  401144:	00 
  401145:	f3 41 0f 11 04 1f    	movss  %xmm0,(%r15,%rbx,1)
  40114b:	e8 20 ff ff ff       	callq  401070 <rand@plt>
  401150:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401154:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401158:	f3 0f 59 05 18 0f 00 	mulss  0xf18(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  40115f:	00 
  401160:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  401165:	c7 04 18 00 00 00 00 	movl   $0x0,(%rax,%rbx,1)
  40116c:	f3 41 0f 11 04 1e    	movss  %xmm0,(%r14,%rbx,1)
  401172:	48 83 c3 04          	add    $0x4,%rbx
  401176:	48 39 5c 24 18       	cmp    %rbx,0x18(%rsp)
  40117b:	75 b3                	jne    401130 <main+0xb0>
  40117d:	31 db                	xor    %ebx,%ebx
  40117f:	90                   	nop
  401180:	e8 eb fe ff ff       	callq  401070 <rand@plt>
  401185:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401189:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40118d:	f2 0f 5e 05 eb 0e 00 	divsd  0xeeb(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  401194:	00 
  401195:	f2 41 0f 11 44 1d 00 	movsd  %xmm0,0x0(%r13,%rbx,1)
  40119c:	e8 cf fe ff ff       	callq  401070 <rand@plt>
  4011a1:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4011a5:	48 c7 44 1d 00 00 00 	movq   $0x0,0x0(%rbp,%rbx,1)
  4011ac:	00 00 
  4011ae:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4011b2:	f2 0f 5e 05 c6 0e 00 	divsd  0xec6(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  4011b9:	00 
  4011ba:	f2 41 0f 11 04 1c    	movsd  %xmm0,(%r12,%rbx,1)
  4011c0:	48 83 c3 08          	add    $0x8,%rbx
  4011c4:	48 39 5c 24 08       	cmp    %rbx,0x8(%rsp)
  4011c9:	75 b5                	jne    401180 <main+0x100>
  4011cb:	e8 70 fe ff ff       	callq  401040 <clock@plt>
  4011d0:	8b 4c 24 28          	mov    0x28(%rsp),%ecx
  4011d4:	31 d2                	xor    %edx,%edx
  4011d6:	48 89 c6             	mov    %rax,%rsi
  4011d9:	c1 e9 02             	shr    $0x2,%ecx
  4011dc:	48 c1 e1 04          	shl    $0x4,%rcx
  4011e0:	41 0f 10 04 16       	movups (%r14,%rdx,1),%xmm0
  4011e5:	41 0f 10 14 17       	movups (%r15,%rdx,1),%xmm2
  4011ea:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4011ef:	0f 58 c2             	addps  %xmm2,%xmm0
  4011f2:	0f 11 04 10          	movups %xmm0,(%rax,%rdx,1)
  4011f6:	48 83 c2 10          	add    $0x10,%rdx
  4011fa:	48 39 ca             	cmp    %rcx,%rdx
  4011fd:	75 e1                	jne    4011e0 <main+0x160>
  4011ff:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
  401204:	e8 37 fe ff ff       	callq  401040 <clock@plt>
  401209:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  40120e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401212:	48 29 f0             	sub    %rsi,%rax
  401215:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  40121a:	f2 0f 5e 05 66 0e 00 	divsd  0xe66(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  401221:	00 
  401222:	66 48 0f 7e c3       	movq   %xmm0,%rbx
  401227:	e8 14 fe ff ff       	callq  401040 <clock@plt>
  40122c:	31 d2                	xor    %edx,%edx
  40122e:	48 89 c1             	mov    %rax,%rcx
  401231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401238:	f2 41 0f 10 44 15 00 	movsd  0x0(%r13,%rdx,1),%xmm0
  40123f:	f2 41 0f 58 04 14    	addsd  (%r12,%rdx,1),%xmm0
  401245:	f2 0f 11 44 15 00    	movsd  %xmm0,0x0(%rbp,%rdx,1)
  40124b:	48 83 c2 08          	add    $0x8,%rdx
  40124f:	48 39 54 24 08       	cmp    %rdx,0x8(%rsp)
  401254:	75 e2                	jne    401238 <main+0x1b8>
  401256:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40125b:	e8 e0 fd ff ff       	callq  401040 <clock@plt>
  401260:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401265:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  40126a:	8b 5c 24 24          	mov    0x24(%rsp),%ebx
  40126e:	8b 54 24 28          	mov    0x28(%rsp),%edx
  401272:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401276:	bf 5e 20 40 00       	mov    $0x40205e,%edi
  40127b:	48 29 c8             	sub    %rcx,%rax
  40127e:	89 de                	mov    %ebx,%esi
  401280:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  401285:	b8 02 00 00 00       	mov    $0x2,%eax
  40128a:	f2 0f 5e 0d f6 0d 00 	divsd  0xdf6(%rip),%xmm1        # 402088 <_IO_stdin_used+0x88>
  401291:	00 
  401292:	e8 b9 fd ff ff       	callq  401050 <printf@plt>
  401297:	4c 89 ff             	mov    %r15,%rdi
  40129a:	e8 91 fd ff ff       	callq  401030 <free@plt>
  40129f:	4c 89 f7             	mov    %r14,%rdi
  4012a2:	e8 89 fd ff ff       	callq  401030 <free@plt>
  4012a7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4012ac:	e8 7f fd ff ff       	callq  401030 <free@plt>
  4012b1:	4c 89 ef             	mov    %r13,%rdi
  4012b4:	e8 77 fd ff ff       	callq  401030 <free@plt>
  4012b9:	4c 89 e7             	mov    %r12,%rdi
  4012bc:	e8 6f fd ff ff       	callq  401030 <free@plt>
  4012c1:	48 89 ef             	mov    %rbp,%rdi
  4012c4:	e8 67 fd ff ff       	callq  401030 <free@plt>
  4012c9:	89 d8                	mov    %ebx,%eax
  4012cb:	01 c0                	add    %eax,%eax
  4012cd:	83 6c 24 2c 01       	subl   $0x1,0x2c(%rsp)
  4012d2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4012d6:	0f 85 e4 fd ff ff    	jne    4010c0 <main+0x40>
  4012dc:	48 83 c4 38          	add    $0x38,%rsp
  4012e0:	31 c0                	xor    %eax,%eax
  4012e2:	5b                   	pop    %rbx
  4012e3:	5d                   	pop    %rbp
  4012e4:	41 5c                	pop    %r12
  4012e6:	41 5d                	pop    %r13
  4012e8:	41 5e                	pop    %r14
  4012ea:	41 5f                	pop    %r15
  4012ec:	c3                   	retq   
  4012ed:	0f 1f 00             	nopl   (%rax)

00000000004012f0 <_start>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	31 ed                	xor    %ebp,%ebp
  4012f6:	49 89 d1             	mov    %rdx,%r9
  4012f9:	5e                   	pop    %rsi
  4012fa:	48 89 e2             	mov    %rsp,%rdx
  4012fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401301:	50                   	push   %rax
  401302:	54                   	push   %rsp
  401303:	45 31 c0             	xor    %r8d,%r8d
  401306:	31 c9                	xor    %ecx,%ecx
  401308:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  40130f:	ff 15 db 2c 00 00    	callq  *0x2cdb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401315:	f4                   	hlt    
  401316:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40131d:	00 00 00 

0000000000401320 <_dl_relocate_static_pie>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	c3                   	retq   
  401325:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40132c:	00 00 00 
  40132f:	90                   	nop

0000000000401330 <deregister_tm_clones>:
  401330:	b8 50 40 40 00       	mov    $0x404050,%eax
  401335:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  40133b:	74 13                	je     401350 <deregister_tm_clones+0x20>
  40133d:	b8 00 00 00 00       	mov    $0x0,%eax
  401342:	48 85 c0             	test   %rax,%rax
  401345:	74 09                	je     401350 <deregister_tm_clones+0x20>
  401347:	bf 50 40 40 00       	mov    $0x404050,%edi
  40134c:	ff e0                	jmpq   *%rax
  40134e:	66 90                	xchg   %ax,%ax
  401350:	c3                   	retq   
  401351:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401358:	00 00 00 00 
  40135c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401360 <register_tm_clones>:
  401360:	be 50 40 40 00       	mov    $0x404050,%esi
  401365:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  40136c:	48 89 f0             	mov    %rsi,%rax
  40136f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401373:	48 c1 f8 03          	sar    $0x3,%rax
  401377:	48 01 c6             	add    %rax,%rsi
  40137a:	48 d1 fe             	sar    %rsi
  40137d:	74 11                	je     401390 <register_tm_clones+0x30>
  40137f:	b8 00 00 00 00       	mov    $0x0,%eax
  401384:	48 85 c0             	test   %rax,%rax
  401387:	74 07                	je     401390 <register_tm_clones+0x30>
  401389:	bf 50 40 40 00       	mov    $0x404050,%edi
  40138e:	ff e0                	jmpq   *%rax
  401390:	c3                   	retq   
  401391:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401398:	00 00 00 00 
  40139c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013a0 <__do_global_dtors_aux>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	80 3d a5 2c 00 00 00 	cmpb   $0x0,0x2ca5(%rip)        # 404050 <__TMC_END__>
  4013ab:	75 13                	jne    4013c0 <__do_global_dtors_aux+0x20>
  4013ad:	55                   	push   %rbp
  4013ae:	48 89 e5             	mov    %rsp,%rbp
  4013b1:	e8 7a ff ff ff       	callq  401330 <deregister_tm_clones>
  4013b6:	c6 05 93 2c 00 00 01 	movb   $0x1,0x2c93(%rip)        # 404050 <__TMC_END__>
  4013bd:	5d                   	pop    %rbp
  4013be:	c3                   	retq   
  4013bf:	90                   	nop
  4013c0:	c3                   	retq   
  4013c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4013c8:	00 00 00 00 
  4013cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013d0 <frame_dummy>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	eb 8a                	jmp    401360 <register_tm_clones>
  4013d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013dd:	00 00 00 

00000000004013e0 <initialize_arrays>:
  4013e0:	85 c9                	test   %ecx,%ecx
  4013e2:	7e 7c                	jle    401460 <initialize_arrays+0x80>
  4013e4:	48 63 c9             	movslq %ecx,%rcx
  4013e7:	41 56                	push   %r14
  4013e9:	49 89 d6             	mov    %rdx,%r14
  4013ec:	41 55                	push   %r13
  4013ee:	49 89 f5             	mov    %rsi,%r13
  4013f1:	41 54                	push   %r12
  4013f3:	49 89 fc             	mov    %rdi,%r12
  4013f6:	55                   	push   %rbp
  4013f7:	48 8d 2c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbp
  4013fe:	00 
  4013ff:	53                   	push   %rbx
  401400:	31 db                	xor    %ebx,%ebx
  401402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401408:	e8 63 fc ff ff       	callq  401070 <rand@plt>
  40140d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401411:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401415:	f3 0f 59 05 5b 0c 00 	mulss  0xc5b(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  40141c:	00 
  40141d:	f3 41 0f 11 04 1c    	movss  %xmm0,(%r12,%rbx,1)
  401423:	e8 48 fc ff ff       	callq  401070 <rand@plt>
  401428:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40142c:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401430:	f3 0f 59 05 40 0c 00 	mulss  0xc40(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  401437:	00 
  401438:	f3 41 0f 11 44 1d 00 	movss  %xmm0,0x0(%r13,%rbx,1)
  40143f:	41 c7 04 1e 00 00 00 	movl   $0x0,(%r14,%rbx,1)
  401446:	00 
  401447:	48 83 c3 04          	add    $0x4,%rbx
  40144b:	48 39 eb             	cmp    %rbp,%rbx
  40144e:	75 b8                	jne    401408 <initialize_arrays+0x28>
  401450:	5b                   	pop    %rbx
  401451:	5d                   	pop    %rbp
  401452:	41 5c                	pop    %r12
  401454:	41 5d                	pop    %r13
  401456:	41 5e                	pop    %r14
  401458:	c3                   	retq   
  401459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401460:	c3                   	retq   
  401461:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401468:	00 00 00 00 
  40146c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401470 <initialize_arrays_double>:
  401470:	85 c9                	test   %ecx,%ecx
  401472:	7e 7c                	jle    4014f0 <initialize_arrays_double+0x80>
  401474:	48 63 c9             	movslq %ecx,%rcx
  401477:	41 56                	push   %r14
  401479:	49 89 d6             	mov    %rdx,%r14
  40147c:	41 55                	push   %r13
  40147e:	49 89 f5             	mov    %rsi,%r13
  401481:	41 54                	push   %r12
  401483:	49 89 fc             	mov    %rdi,%r12
  401486:	55                   	push   %rbp
  401487:	48 8d 2c cd 00 00 00 	lea    0x0(,%rcx,8),%rbp
  40148e:	00 
  40148f:	53                   	push   %rbx
  401490:	31 db                	xor    %ebx,%ebx
  401492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401498:	e8 d3 fb ff ff       	callq  401070 <rand@plt>
  40149d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014a1:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4014a5:	f2 0f 5e 05 d3 0b 00 	divsd  0xbd3(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  4014ac:	00 
  4014ad:	f2 41 0f 11 04 1c    	movsd  %xmm0,(%r12,%rbx,1)
  4014b3:	e8 b8 fb ff ff       	callq  401070 <rand@plt>
  4014b8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014bc:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4014c0:	f2 0f 5e 05 b8 0b 00 	divsd  0xbb8(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  4014c7:	00 
  4014c8:	f2 41 0f 11 44 1d 00 	movsd  %xmm0,0x0(%r13,%rbx,1)
  4014cf:	49 c7 04 1e 00 00 00 	movq   $0x0,(%r14,%rbx,1)
  4014d6:	00 
  4014d7:	48 83 c3 08          	add    $0x8,%rbx
  4014db:	48 39 eb             	cmp    %rbp,%rbx
  4014de:	75 b8                	jne    401498 <initialize_arrays_double+0x28>
  4014e0:	5b                   	pop    %rbx
  4014e1:	5d                   	pop    %rbp
  4014e2:	41 5c                	pop    %r12
  4014e4:	41 5d                	pop    %r13
  4014e6:	41 5e                	pop    %r14
  4014e8:	c3                   	retq   
  4014e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4014f0:	c3                   	retq   
  4014f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014f8:	00 00 00 00 
  4014fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401500 <vector_add_plain>:
  401500:	85 c9                	test   %ecx,%ecx
  401502:	7e 24                	jle    401528 <vector_add_plain+0x28>
  401504:	48 63 c9             	movslq %ecx,%rcx
  401507:	31 c0                	xor    %eax,%eax
  401509:	48 c1 e1 02          	shl    $0x2,%rcx
  40150d:	0f 1f 00             	nopl   (%rax)
  401510:	f3 0f 10 04 07       	movss  (%rdi,%rax,1),%xmm0
  401515:	f3 0f 58 04 06       	addss  (%rsi,%rax,1),%xmm0
  40151a:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
  40151f:	48 83 c0 04          	add    $0x4,%rax
  401523:	48 39 c8             	cmp    %rcx,%rax
  401526:	75 e8                	jne    401510 <vector_add_plain+0x10>
  401528:	c3                   	retq   
  401529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401530 <vector_add_plain_double>:
  401530:	85 c9                	test   %ecx,%ecx
  401532:	7e 24                	jle    401558 <vector_add_plain_double+0x28>
  401534:	48 63 c9             	movslq %ecx,%rcx
  401537:	31 c0                	xor    %eax,%eax
  401539:	48 c1 e1 03          	shl    $0x3,%rcx
  40153d:	0f 1f 00             	nopl   (%rax)
  401540:	f2 0f 10 04 07       	movsd  (%rdi,%rax,1),%xmm0
  401545:	f2 0f 58 04 06       	addsd  (%rsi,%rax,1),%xmm0
  40154a:	f2 0f 11 04 02       	movsd  %xmm0,(%rdx,%rax,1)
  40154f:	48 83 c0 08          	add    $0x8,%rax
  401553:	48 39 c8             	cmp    %rcx,%rax
  401556:	75 e8                	jne    401540 <vector_add_plain_double+0x10>
  401558:	c3                   	retq   
  401559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401560 <measure_execution_time>:
  401560:	41 57                	push   %r15
  401562:	45 89 c7             	mov    %r8d,%r15d
  401565:	41 56                	push   %r14
  401567:	49 89 ce             	mov    %rcx,%r14
  40156a:	41 55                	push   %r13
  40156c:	49 89 d5             	mov    %rdx,%r13
  40156f:	41 54                	push   %r12
  401571:	49 89 f4             	mov    %rsi,%r12
  401574:	55                   	push   %rbp
  401575:	48 89 fd             	mov    %rdi,%rbp
  401578:	53                   	push   %rbx
  401579:	48 83 ec 08          	sub    $0x8,%rsp
  40157d:	e8 be fa ff ff       	callq  401040 <clock@plt>
  401582:	44 89 f9             	mov    %r15d,%ecx
  401585:	4c 89 f2             	mov    %r14,%rdx
  401588:	4c 89 ee             	mov    %r13,%rsi
  40158b:	48 89 c3             	mov    %rax,%rbx
  40158e:	4c 89 e7             	mov    %r12,%rdi
  401591:	ff d5                	callq  *%rbp
  401593:	e8 a8 fa ff ff       	callq  401040 <clock@plt>
  401598:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40159c:	48 29 d8             	sub    %rbx,%rax
  40159f:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  4015a4:	f2 0f 5e 05 dc 0a 00 	divsd  0xadc(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  4015ab:	00 
  4015ac:	48 83 c4 08          	add    $0x8,%rsp
  4015b0:	5b                   	pop    %rbx
  4015b1:	5d                   	pop    %rbp
  4015b2:	41 5c                	pop    %r12
  4015b4:	41 5d                	pop    %r13
  4015b6:	41 5e                	pop    %r14
  4015b8:	41 5f                	pop    %r15
  4015ba:	c3                   	retq   
  4015bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004015c0 <measure_execution_time_double>:
  4015c0:	41 57                	push   %r15
  4015c2:	45 89 c7             	mov    %r8d,%r15d
  4015c5:	41 56                	push   %r14
  4015c7:	49 89 ce             	mov    %rcx,%r14
  4015ca:	41 55                	push   %r13
  4015cc:	49 89 d5             	mov    %rdx,%r13
  4015cf:	41 54                	push   %r12
  4015d1:	49 89 f4             	mov    %rsi,%r12
  4015d4:	55                   	push   %rbp
  4015d5:	48 89 fd             	mov    %rdi,%rbp
  4015d8:	53                   	push   %rbx
  4015d9:	48 83 ec 08          	sub    $0x8,%rsp
  4015dd:	e8 5e fa ff ff       	callq  401040 <clock@plt>
  4015e2:	44 89 f9             	mov    %r15d,%ecx
  4015e5:	4c 89 f2             	mov    %r14,%rdx
  4015e8:	4c 89 ee             	mov    %r13,%rsi
  4015eb:	48 89 c3             	mov    %rax,%rbx
  4015ee:	4c 89 e7             	mov    %r12,%rdi
  4015f1:	ff d5                	callq  *%rbp
  4015f3:	e8 48 fa ff ff       	callq  401040 <clock@plt>
  4015f8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4015fc:	48 29 d8             	sub    %rbx,%rax
  4015ff:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401604:	f2 0f 5e 05 7c 0a 00 	divsd  0xa7c(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  40160b:	00 
  40160c:	48 83 c4 08          	add    $0x8,%rsp
  401610:	5b                   	pop    %rbx
  401611:	5d                   	pop    %rbp
  401612:	41 5c                	pop    %r12
  401614:	41 5d                	pop    %r13
  401616:	41 5e                	pop    %r14
  401618:	41 5f                	pop    %r15
  40161a:	c3                   	retq   

Disassembly of section .fini:

000000000040161c <_fini>:
  40161c:	f3 0f 1e fa          	endbr64 
  401620:	48 83 ec 08          	sub    $0x8,%rsp
  401624:	48 83 c4 08          	add    $0x8,%rsp
  401628:	c3                   	retq   
