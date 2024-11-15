
vector_add_avx2_O2:     file format elf64-x86-64


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
  401088:	b9 17 20 40 00       	mov    $0x402017,%ecx
  40108d:	31 c0                	xor    %eax,%eax
  40108f:	41 56                	push   %r14
  401091:	ba 29 20 40 00       	mov    $0x402029,%edx
  401096:	be 2e 20 40 00       	mov    $0x40202e,%esi
  40109b:	bf 39 20 40 00       	mov    $0x402039,%edi
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
  4010de:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  4010e3:	e8 78 ff ff ff       	callq  401060 <malloc@plt>
  4010e8:	48 89 ef             	mov    %rbp,%rdi
  4010eb:	49 89 c7             	mov    %rax,%r15
  4010ee:	e8 6d ff ff ff       	callq  401060 <malloc@plt>
  4010f3:	48 89 ef             	mov    %rbp,%rdi
  4010f6:	49 89 c6             	mov    %rax,%r14
  4010f9:	e8 62 ff ff ff       	callq  401060 <malloc@plt>
  4010fe:	48 89 df             	mov    %rbx,%rdi
  401101:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  401106:	49 89 c5             	mov    %rax,%r13
  401109:	e8 52 ff ff ff       	callq  401060 <malloc@plt>
  40110e:	48 89 df             	mov    %rbx,%rdi
  401111:	49 89 c4             	mov    %rax,%r12
  401114:	e8 47 ff ff ff       	callq  401060 <malloc@plt>
  401119:	48 89 df             	mov    %rbx,%rdi
  40111c:	31 db                	xor    %ebx,%ebx
  40111e:	48 89 c5             	mov    %rax,%rbp
  401121:	e8 3a ff ff ff       	callq  401060 <malloc@plt>
  401126:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401130:	e8 3b ff ff ff       	callq  401070 <rand@plt>
  401135:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  401139:	c5 ea 2a c0          	vcvtsi2ss %eax,%xmm2,%xmm0
  40113d:	c5 fa 59 05 27 0f 00 	vmulss 0xf27(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  401144:	00 
  401145:	c4 c1 7a 11 04 1f    	vmovss %xmm0,(%r15,%rbx,1)
  40114b:	e8 20 ff ff ff       	callq  401070 <rand@plt>
  401150:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  401154:	41 c7 44 1d 00 00 00 	movl   $0x0,0x0(%r13,%rbx,1)
  40115b:	00 00 
  40115d:	c5 ea 2a c0          	vcvtsi2ss %eax,%xmm2,%xmm0
  401161:	c5 fa 59 05 03 0f 00 	vmulss 0xf03(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  401168:	00 
  401169:	c4 c1 7a 11 04 1e    	vmovss %xmm0,(%r14,%rbx,1)
  40116f:	48 83 c3 04          	add    $0x4,%rbx
  401173:	48 39 5c 24 10       	cmp    %rbx,0x10(%rsp)
  401178:	75 b6                	jne    401130 <main+0xb0>
  40117a:	31 db                	xor    %ebx,%ebx
  40117c:	0f 1f 40 00          	nopl   0x0(%rax)
  401180:	e8 eb fe ff ff       	callq  401070 <rand@plt>
  401185:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  401189:	c5 e3 2a c0          	vcvtsi2sd %eax,%xmm3,%xmm0
  40118d:	c5 fb 5e 05 db 0e 00 	vdivsd 0xedb(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  401194:	00 
  401195:	c4 c1 7b 11 04 1c    	vmovsd %xmm0,(%r12,%rbx,1)
  40119b:	e8 d0 fe ff ff       	callq  401070 <rand@plt>
  4011a0:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  4011a4:	c5 e3 2a c0          	vcvtsi2sd %eax,%xmm3,%xmm0
  4011a8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011ad:	c5 fb 5e 05 bb 0e 00 	vdivsd 0xebb(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  4011b4:	00 
  4011b5:	c5 fb 11 44 1d 00    	vmovsd %xmm0,0x0(%rbp,%rbx,1)
  4011bb:	48 c7 04 18 00 00 00 	movq   $0x0,(%rax,%rbx,1)
  4011c2:	00 
  4011c3:	48 83 c3 08          	add    $0x8,%rbx
  4011c7:	48 39 5c 24 18       	cmp    %rbx,0x18(%rsp)
  4011cc:	75 b2                	jne    401180 <main+0x100>
  4011ce:	e8 6d fe ff ff       	callq  401040 <clock@plt>
  4011d3:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
  4011d7:	4c 89 ea             	mov    %r13,%rdx
  4011da:	4c 89 f6             	mov    %r14,%rsi
  4011dd:	4c 89 ff             	mov    %r15,%rdi
  4011e0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4011e5:	89 d9                	mov    %ebx,%ecx
  4011e7:	e8 e4 02 00 00       	callq  4014d0 <vector_add_avx2>
  4011ec:	e8 4f fe ff ff       	callq  401040 <clock@plt>
  4011f1:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  4011f6:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  4011fa:	4c 29 c0             	sub    %r8,%rax
  4011fd:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  401202:	c5 fb 5e 05 6e 0e 00 	vdivsd 0xe6e(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  401209:	00 
  40120a:	c5 fb 11 44 24 18    	vmovsd %xmm0,0x18(%rsp)
  401210:	e8 2b fe ff ff       	callq  401040 <clock@plt>
  401215:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40121a:	89 d9                	mov    %ebx,%ecx
  40121c:	48 89 ee             	mov    %rbp,%rsi
  40121f:	4c 89 e7             	mov    %r12,%rdi
  401222:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  401227:	e8 14 03 00 00       	callq  401540 <vector_add_avx2_double>
  40122c:	e8 0f fe ff ff       	callq  401040 <clock@plt>
  401231:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  401236:	89 da                	mov    %ebx,%edx
  401238:	8b 5c 24 24          	mov    0x24(%rsp),%ebx
  40123c:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  401240:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
  401246:	bf 52 20 40 00       	mov    $0x402052,%edi
  40124b:	4c 29 c0             	sub    %r8,%rax
  40124e:	89 de                	mov    %ebx,%esi
  401250:	c4 e1 db 2a c8       	vcvtsi2sd %rax,%xmm4,%xmm1
  401255:	b8 02 00 00 00       	mov    $0x2,%eax
  40125a:	c5 f3 5e 0d 16 0e 00 	vdivsd 0xe16(%rip),%xmm1,%xmm1        # 402078 <_IO_stdin_used+0x78>
  401261:	00 
  401262:	e8 e9 fd ff ff       	callq  401050 <printf@plt>
  401267:	4c 89 ff             	mov    %r15,%rdi
  40126a:	e8 c1 fd ff ff       	callq  401030 <free@plt>
  40126f:	4c 89 f7             	mov    %r14,%rdi
  401272:	e8 b9 fd ff ff       	callq  401030 <free@plt>
  401277:	4c 89 ef             	mov    %r13,%rdi
  40127a:	e8 b1 fd ff ff       	callq  401030 <free@plt>
  40127f:	4c 89 e7             	mov    %r12,%rdi
  401282:	e8 a9 fd ff ff       	callq  401030 <free@plt>
  401287:	48 89 ef             	mov    %rbp,%rdi
  40128a:	e8 a1 fd ff ff       	callq  401030 <free@plt>
  40128f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401294:	e8 97 fd ff ff       	callq  401030 <free@plt>
  401299:	89 d8                	mov    %ebx,%eax
  40129b:	01 c0                	add    %eax,%eax
  40129d:	83 6c 24 2c 01       	subl   $0x1,0x2c(%rsp)
  4012a2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4012a6:	0f 85 14 fe ff ff    	jne    4010c0 <main+0x40>
  4012ac:	48 83 c4 38          	add    $0x38,%rsp
  4012b0:	31 c0                	xor    %eax,%eax
  4012b2:	5b                   	pop    %rbx
  4012b3:	5d                   	pop    %rbp
  4012b4:	41 5c                	pop    %r12
  4012b6:	41 5d                	pop    %r13
  4012b8:	41 5e                	pop    %r14
  4012ba:	41 5f                	pop    %r15
  4012bc:	c3                   	retq   
  4012bd:	0f 1f 00             	nopl   (%rax)

00000000004012c0 <_start>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	31 ed                	xor    %ebp,%ebp
  4012c6:	49 89 d1             	mov    %rdx,%r9
  4012c9:	5e                   	pop    %rsi
  4012ca:	48 89 e2             	mov    %rsp,%rdx
  4012cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4012d1:	50                   	push   %rax
  4012d2:	54                   	push   %rsp
  4012d3:	45 31 c0             	xor    %r8d,%r8d
  4012d6:	31 c9                	xor    %ecx,%ecx
  4012d8:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  4012df:	ff 15 0b 2d 00 00    	callq  *0x2d0b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4012e5:	f4                   	hlt    
  4012e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012ed:	00 00 00 

00000000004012f0 <_dl_relocate_static_pie>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	c3                   	retq   
  4012f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012fc:	00 00 00 
  4012ff:	90                   	nop

0000000000401300 <deregister_tm_clones>:
  401300:	b8 50 40 40 00       	mov    $0x404050,%eax
  401305:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  40130b:	74 13                	je     401320 <deregister_tm_clones+0x20>
  40130d:	b8 00 00 00 00       	mov    $0x0,%eax
  401312:	48 85 c0             	test   %rax,%rax
  401315:	74 09                	je     401320 <deregister_tm_clones+0x20>
  401317:	bf 50 40 40 00       	mov    $0x404050,%edi
  40131c:	ff e0                	jmpq   *%rax
  40131e:	66 90                	xchg   %ax,%ax
  401320:	c3                   	retq   
  401321:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401328:	00 00 00 00 
  40132c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401330 <register_tm_clones>:
  401330:	be 50 40 40 00       	mov    $0x404050,%esi
  401335:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  40133c:	48 89 f0             	mov    %rsi,%rax
  40133f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401343:	48 c1 f8 03          	sar    $0x3,%rax
  401347:	48 01 c6             	add    %rax,%rsi
  40134a:	48 d1 fe             	sar    %rsi
  40134d:	74 11                	je     401360 <register_tm_clones+0x30>
  40134f:	b8 00 00 00 00       	mov    $0x0,%eax
  401354:	48 85 c0             	test   %rax,%rax
  401357:	74 07                	je     401360 <register_tm_clones+0x30>
  401359:	bf 50 40 40 00       	mov    $0x404050,%edi
  40135e:	ff e0                	jmpq   *%rax
  401360:	c3                   	retq   
  401361:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401368:	00 00 00 00 
  40136c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401370 <__do_global_dtors_aux>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	80 3d d5 2c 00 00 00 	cmpb   $0x0,0x2cd5(%rip)        # 404050 <__TMC_END__>
  40137b:	75 13                	jne    401390 <__do_global_dtors_aux+0x20>
  40137d:	55                   	push   %rbp
  40137e:	48 89 e5             	mov    %rsp,%rbp
  401381:	e8 7a ff ff ff       	callq  401300 <deregister_tm_clones>
  401386:	c6 05 c3 2c 00 00 01 	movb   $0x1,0x2cc3(%rip)        # 404050 <__TMC_END__>
  40138d:	5d                   	pop    %rbp
  40138e:	c3                   	retq   
  40138f:	90                   	nop
  401390:	c3                   	retq   
  401391:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401398:	00 00 00 00 
  40139c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013a0 <frame_dummy>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	eb 8a                	jmp    401330 <register_tm_clones>
  4013a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013ad:	00 00 00 

00000000004013b0 <initialize_arrays>:
  4013b0:	85 c9                	test   %ecx,%ecx
  4013b2:	7e 7c                	jle    401430 <initialize_arrays+0x80>
  4013b4:	48 63 c9             	movslq %ecx,%rcx
  4013b7:	41 56                	push   %r14
  4013b9:	49 89 d6             	mov    %rdx,%r14
  4013bc:	41 55                	push   %r13
  4013be:	49 89 f5             	mov    %rsi,%r13
  4013c1:	41 54                	push   %r12
  4013c3:	49 89 fc             	mov    %rdi,%r12
  4013c6:	55                   	push   %rbp
  4013c7:	48 8d 2c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbp
  4013ce:	00 
  4013cf:	53                   	push   %rbx
  4013d0:	31 db                	xor    %ebx,%ebx
  4013d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4013d8:	e8 93 fc ff ff       	callq  401070 <rand@plt>
  4013dd:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4013e1:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  4013e5:	c5 fa 59 05 7f 0c 00 	vmulss 0xc7f(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  4013ec:	00 
  4013ed:	c4 c1 7a 11 04 1c    	vmovss %xmm0,(%r12,%rbx,1)
  4013f3:	e8 78 fc ff ff       	callq  401070 <rand@plt>
  4013f8:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4013fc:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  401400:	c5 fa 59 05 64 0c 00 	vmulss 0xc64(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  401407:	00 
  401408:	c4 c1 7a 11 44 1d 00 	vmovss %xmm0,0x0(%r13,%rbx,1)
  40140f:	41 c7 04 1e 00 00 00 	movl   $0x0,(%r14,%rbx,1)
  401416:	00 
  401417:	48 83 c3 04          	add    $0x4,%rbx
  40141b:	48 39 eb             	cmp    %rbp,%rbx
  40141e:	75 b8                	jne    4013d8 <initialize_arrays+0x28>
  401420:	5b                   	pop    %rbx
  401421:	5d                   	pop    %rbp
  401422:	41 5c                	pop    %r12
  401424:	41 5d                	pop    %r13
  401426:	41 5e                	pop    %r14
  401428:	c3                   	retq   
  401429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401430:	c3                   	retq   
  401431:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401438:	00 00 00 00 
  40143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401440 <initialize_arrays_double>:
  401440:	85 c9                	test   %ecx,%ecx
  401442:	7e 7c                	jle    4014c0 <initialize_arrays_double+0x80>
  401444:	48 63 c9             	movslq %ecx,%rcx
  401447:	41 56                	push   %r14
  401449:	49 89 d6             	mov    %rdx,%r14
  40144c:	41 55                	push   %r13
  40144e:	49 89 f5             	mov    %rsi,%r13
  401451:	41 54                	push   %r12
  401453:	49 89 fc             	mov    %rdi,%r12
  401456:	55                   	push   %rbp
  401457:	48 8d 2c cd 00 00 00 	lea    0x0(,%rcx,8),%rbp
  40145e:	00 
  40145f:	53                   	push   %rbx
  401460:	31 db                	xor    %ebx,%ebx
  401462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401468:	e8 03 fc ff ff       	callq  401070 <rand@plt>
  40146d:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  401471:	c5 f3 2a c0          	vcvtsi2sd %eax,%xmm1,%xmm0
  401475:	c5 fb 5e 05 f3 0b 00 	vdivsd 0xbf3(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  40147c:	00 
  40147d:	c4 c1 7b 11 04 1c    	vmovsd %xmm0,(%r12,%rbx,1)
  401483:	e8 e8 fb ff ff       	callq  401070 <rand@plt>
  401488:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40148c:	c5 f3 2a c0          	vcvtsi2sd %eax,%xmm1,%xmm0
  401490:	c5 fb 5e 05 d8 0b 00 	vdivsd 0xbd8(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  401497:	00 
  401498:	c4 c1 7b 11 44 1d 00 	vmovsd %xmm0,0x0(%r13,%rbx,1)
  40149f:	49 c7 04 1e 00 00 00 	movq   $0x0,(%r14,%rbx,1)
  4014a6:	00 
  4014a7:	48 83 c3 08          	add    $0x8,%rbx
  4014ab:	48 39 eb             	cmp    %rbp,%rbx
  4014ae:	75 b8                	jne    401468 <initialize_arrays_double+0x28>
  4014b0:	5b                   	pop    %rbx
  4014b1:	5d                   	pop    %rbp
  4014b2:	41 5c                	pop    %r12
  4014b4:	41 5d                	pop    %r13
  4014b6:	41 5e                	pop    %r14
  4014b8:	c3                   	retq   
  4014b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4014c0:	c3                   	retq   
  4014c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014c8:	00 00 00 00 
  4014cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014d0 <vector_add_avx2>:
  4014d0:	44 8d 41 f9          	lea    -0x7(%rcx),%r8d
  4014d4:	83 f9 07             	cmp    $0x7,%ecx
  4014d7:	7e 57                	jle    401530 <vector_add_avx2+0x60>
  4014d9:	31 c0                	xor    %eax,%eax
  4014db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4014e0:	c5 fc 10 0c 87       	vmovups (%rdi,%rax,4),%ymm1
  4014e5:	c5 f4 58 04 86       	vaddps (%rsi,%rax,4),%ymm1,%ymm0
  4014ea:	c5 fc 11 04 82       	vmovups %ymm0,(%rdx,%rax,4)
  4014ef:	48 83 c0 08          	add    $0x8,%rax
  4014f3:	41 39 c0             	cmp    %eax,%r8d
  4014f6:	7f e8                	jg     4014e0 <vector_add_avx2+0x10>
  4014f8:	8d 41 f8             	lea    -0x8(%rcx),%eax
  4014fb:	c1 e8 03             	shr    $0x3,%eax
  4014fe:	8d 04 c5 08 00 00 00 	lea    0x8(,%rax,8),%eax
  401505:	c5 f8 77             	vzeroupper 
  401508:	39 c1                	cmp    %eax,%ecx
  40150a:	7e 1b                	jle    401527 <vector_add_avx2+0x57>
  40150c:	48 98                	cltq   
  40150e:	66 90                	xchg   %ax,%ax
  401510:	c5 fa 10 04 87       	vmovss (%rdi,%rax,4),%xmm0
  401515:	c5 fa 58 04 86       	vaddss (%rsi,%rax,4),%xmm0,%xmm0
  40151a:	c5 fa 11 04 82       	vmovss %xmm0,(%rdx,%rax,4)
  40151f:	48 83 c0 01          	add    $0x1,%rax
  401523:	39 c1                	cmp    %eax,%ecx
  401525:	7f e9                	jg     401510 <vector_add_avx2+0x40>
  401527:	c3                   	retq   
  401528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40152f:	00 
  401530:	31 c0                	xor    %eax,%eax
  401532:	eb d4                	jmp    401508 <vector_add_avx2+0x38>
  401534:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40153b:	00 00 00 00 
  40153f:	90                   	nop

0000000000401540 <vector_add_avx2_double>:
  401540:	44 8d 41 fd          	lea    -0x3(%rcx),%r8d
  401544:	83 f9 03             	cmp    $0x3,%ecx
  401547:	7e 57                	jle    4015a0 <vector_add_avx2_double+0x60>
  401549:	31 c0                	xor    %eax,%eax
  40154b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401550:	c5 fd 10 0c c7       	vmovupd (%rdi,%rax,8),%ymm1
  401555:	c5 f5 58 04 c6       	vaddpd (%rsi,%rax,8),%ymm1,%ymm0
  40155a:	c5 fd 11 04 c2       	vmovupd %ymm0,(%rdx,%rax,8)
  40155f:	48 83 c0 04          	add    $0x4,%rax
  401563:	41 39 c0             	cmp    %eax,%r8d
  401566:	7f e8                	jg     401550 <vector_add_avx2_double+0x10>
  401568:	8d 41 fc             	lea    -0x4(%rcx),%eax
  40156b:	c1 e8 02             	shr    $0x2,%eax
  40156e:	8d 04 85 04 00 00 00 	lea    0x4(,%rax,4),%eax
  401575:	c5 f8 77             	vzeroupper 
  401578:	39 c1                	cmp    %eax,%ecx
  40157a:	7e 19                	jle    401595 <vector_add_avx2_double+0x55>
  40157c:	48 98                	cltq   
  40157e:	c5 fb 10 04 c7       	vmovsd (%rdi,%rax,8),%xmm0
  401583:	c5 fb 58 04 c6       	vaddsd (%rsi,%rax,8),%xmm0,%xmm0
  401588:	c5 fb 11 04 c2       	vmovsd %xmm0,(%rdx,%rax,8)
  40158d:	48 83 c0 01          	add    $0x1,%rax
  401591:	39 c1                	cmp    %eax,%ecx
  401593:	7f e9                	jg     40157e <vector_add_avx2_double+0x3e>
  401595:	c3                   	retq   
  401596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40159d:	00 00 00 
  4015a0:	31 c0                	xor    %eax,%eax
  4015a2:	eb d4                	jmp    401578 <vector_add_avx2_double+0x38>
  4015a4:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4015ab:	00 00 00 00 
  4015af:	90                   	nop

00000000004015b0 <measure_execution_time>:
  4015b0:	41 57                	push   %r15
  4015b2:	45 89 c7             	mov    %r8d,%r15d
  4015b5:	41 56                	push   %r14
  4015b7:	49 89 ce             	mov    %rcx,%r14
  4015ba:	41 55                	push   %r13
  4015bc:	49 89 d5             	mov    %rdx,%r13
  4015bf:	41 54                	push   %r12
  4015c1:	49 89 f4             	mov    %rsi,%r12
  4015c4:	55                   	push   %rbp
  4015c5:	48 89 fd             	mov    %rdi,%rbp
  4015c8:	53                   	push   %rbx
  4015c9:	48 83 ec 08          	sub    $0x8,%rsp
  4015cd:	e8 6e fa ff ff       	callq  401040 <clock@plt>
  4015d2:	44 89 f9             	mov    %r15d,%ecx
  4015d5:	4c 89 f2             	mov    %r14,%rdx
  4015d8:	4c 89 ee             	mov    %r13,%rsi
  4015db:	48 89 c3             	mov    %rax,%rbx
  4015de:	4c 89 e7             	mov    %r12,%rdi
  4015e1:	ff d5                	callq  *%rbp
  4015e3:	e8 58 fa ff ff       	callq  401040 <clock@plt>
  4015e8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4015ec:	48 29 d8             	sub    %rbx,%rax
  4015ef:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  4015f4:	c5 fb 5e 05 7c 0a 00 	vdivsd 0xa7c(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  4015fb:	00 
  4015fc:	48 83 c4 08          	add    $0x8,%rsp
  401600:	5b                   	pop    %rbx
  401601:	5d                   	pop    %rbp
  401602:	41 5c                	pop    %r12
  401604:	41 5d                	pop    %r13
  401606:	41 5e                	pop    %r14
  401608:	41 5f                	pop    %r15
  40160a:	c3                   	retq   
  40160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401610 <measure_execution_time_double>:
  401610:	41 57                	push   %r15
  401612:	45 89 c7             	mov    %r8d,%r15d
  401615:	41 56                	push   %r14
  401617:	49 89 ce             	mov    %rcx,%r14
  40161a:	41 55                	push   %r13
  40161c:	49 89 d5             	mov    %rdx,%r13
  40161f:	41 54                	push   %r12
  401621:	49 89 f4             	mov    %rsi,%r12
  401624:	55                   	push   %rbp
  401625:	48 89 fd             	mov    %rdi,%rbp
  401628:	53                   	push   %rbx
  401629:	48 83 ec 08          	sub    $0x8,%rsp
  40162d:	e8 0e fa ff ff       	callq  401040 <clock@plt>
  401632:	44 89 f9             	mov    %r15d,%ecx
  401635:	4c 89 f2             	mov    %r14,%rdx
  401638:	4c 89 ee             	mov    %r13,%rsi
  40163b:	48 89 c3             	mov    %rax,%rbx
  40163e:	4c 89 e7             	mov    %r12,%rdi
  401641:	ff d5                	callq  *%rbp
  401643:	e8 f8 f9 ff ff       	callq  401040 <clock@plt>
  401648:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40164c:	48 29 d8             	sub    %rbx,%rax
  40164f:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401654:	c5 fb 5e 05 1c 0a 00 	vdivsd 0xa1c(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  40165b:	00 
  40165c:	48 83 c4 08          	add    $0x8,%rsp
  401660:	5b                   	pop    %rbx
  401661:	5d                   	pop    %rbp
  401662:	41 5c                	pop    %r12
  401664:	41 5d                	pop    %r13
  401666:	41 5e                	pop    %r14
  401668:	41 5f                	pop    %r15
  40166a:	c3                   	retq   

Disassembly of section .fini:

000000000040166c <_fini>:
  40166c:	f3 0f 1e fa          	endbr64 
  401670:	48 83 ec 08          	sub    $0x8,%rsp
  401674:	48 83 c4 08          	add    $0x8,%rsp
  401678:	c3                   	retq   
