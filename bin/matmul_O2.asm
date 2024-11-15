
matmul_O2:     file format elf64-x86-64


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
  401082:	ba 04 20 40 00       	mov    $0x402004,%edx
  401087:	be 1e 20 40 00       	mov    $0x40201e,%esi
  40108c:	31 c0                	xor    %eax,%eax
  40108e:	41 56                	push   %r14
  401090:	bf 23 20 40 00       	mov    $0x402023,%edi
  401095:	41 55                	push   %r13
  401097:	41 54                	push   %r12
  401099:	55                   	push   %rbp
  40109a:	53                   	push   %rbx
  40109b:	48 83 ec 28          	sub    $0x28,%rsp
  40109f:	66 0f 6f 05 a9 0f 00 	movdqa 0xfa9(%rip),%xmm0        # 402050 <_IO_stdin_used+0x50>
  4010a6:	00 
  4010a7:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  4010ac:	e8 9f ff ff ff       	callq  401050 <printf@plt>
  4010b1:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  4010b6:	48 89 04 24          	mov    %rax,(%rsp)
  4010ba:	48 8b 04 24          	mov    (%rsp),%rax
  4010be:	44 8b 30             	mov    (%rax),%r14d
  4010c1:	44 89 f5             	mov    %r14d,%ebp
  4010c4:	41 0f af ee          	imul   %r14d,%ebp
  4010c8:	48 63 dd             	movslq %ebp,%rbx
  4010cb:	48 c1 e3 02          	shl    $0x2,%rbx
  4010cf:	48 89 df             	mov    %rbx,%rdi
  4010d2:	e8 89 ff ff ff       	callq  401060 <malloc@plt>
  4010d7:	48 89 df             	mov    %rbx,%rdi
  4010da:	49 89 c5             	mov    %rax,%r13
  4010dd:	e8 7e ff ff ff       	callq  401060 <malloc@plt>
  4010e2:	48 89 df             	mov    %rbx,%rdi
  4010e5:	49 89 c4             	mov    %rax,%r12
  4010e8:	e8 73 ff ff ff       	callq  401060 <malloc@plt>
  4010ed:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4010f2:	85 ed                	test   %ebp,%ebp
  4010f4:	74 5d                	je     401153 <main+0xd3>
  4010f6:	4d 89 ef             	mov    %r13,%r15
  4010f9:	4a 8d 2c 2b          	lea    (%rbx,%r13,1),%rbp
  4010fd:	0f 1f 00             	nopl   (%rax)
  401100:	e8 6b ff ff ff       	callq  401070 <rand@plt>
  401105:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401109:	49 83 c7 04          	add    $0x4,%r15
  40110d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401111:	f3 0f 59 05 27 0f 00 	mulss  0xf27(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  401118:	00 
  401119:	f3 41 0f 11 47 fc    	movss  %xmm0,-0x4(%r15)
  40111f:	49 39 ef             	cmp    %rbp,%r15
  401122:	75 dc                	jne    401100 <main+0x80>
  401124:	4c 89 e5             	mov    %r12,%rbp
  401127:	4c 01 e3             	add    %r12,%rbx
  40112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401130:	e8 3b ff ff ff       	callq  401070 <rand@plt>
  401135:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401139:	48 83 c5 04          	add    $0x4,%rbp
  40113d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401141:	f3 0f 59 05 f7 0e 00 	mulss  0xef7(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  401148:	00 
  401149:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
  40114e:	48 39 dd             	cmp    %rbx,%rbp
  401151:	75 dd                	jne    401130 <main+0xb0>
  401153:	e8 e8 fe ff ff       	callq  401040 <clock@plt>
  401158:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
  40115d:	44 89 f1             	mov    %r14d,%ecx
  401160:	4c 89 e6             	mov    %r12,%rsi
  401163:	4c 89 ef             	mov    %r13,%rdi
  401166:	48 89 c3             	mov    %rax,%rbx
  401169:	4c 89 fa             	mov    %r15,%rdx
  40116c:	e8 bf 01 00 00       	callq  401330 <matrix_multiply_plain>
  401171:	e8 ca fe ff ff       	callq  401040 <clock@plt>
  401176:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40117a:	44 89 f6             	mov    %r14d,%esi
  40117d:	bf 30 20 40 00       	mov    $0x402030,%edi
  401182:	48 29 d8             	sub    %rbx,%rax
  401185:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  40118a:	b8 01 00 00 00       	mov    $0x1,%eax
  40118f:	f2 0f 5e 05 b1 0e 00 	divsd  0xeb1(%rip),%xmm0        # 402048 <_IO_stdin_used+0x48>
  401196:	00 
  401197:	e8 b4 fe ff ff       	callq  401050 <printf@plt>
  40119c:	4c 89 ef             	mov    %r13,%rdi
  40119f:	e8 8c fe ff ff       	callq  401030 <free@plt>
  4011a4:	4c 89 e7             	mov    %r12,%rdi
  4011a7:	e8 84 fe ff ff       	callq  401030 <free@plt>
  4011ac:	4c 89 ff             	mov    %r15,%rdi
  4011af:	e8 7c fe ff ff       	callq  401030 <free@plt>
  4011b4:	48 83 04 24 04       	addq   $0x4,(%rsp)
  4011b9:	48 8b 04 24          	mov    (%rsp),%rax
  4011bd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4011c2:	48 39 c8             	cmp    %rcx,%rax
  4011c5:	0f 85 ef fe ff ff    	jne    4010ba <main+0x3a>
  4011cb:	48 83 c4 28          	add    $0x28,%rsp
  4011cf:	31 c0                	xor    %eax,%eax
  4011d1:	5b                   	pop    %rbx
  4011d2:	5d                   	pop    %rbp
  4011d3:	41 5c                	pop    %r12
  4011d5:	41 5d                	pop    %r13
  4011d7:	41 5e                	pop    %r14
  4011d9:	41 5f                	pop    %r15
  4011db:	c3                   	retq   
  4011dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011e0 <_start>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	31 ed                	xor    %ebp,%ebp
  4011e6:	49 89 d1             	mov    %rdx,%r9
  4011e9:	5e                   	pop    %rsi
  4011ea:	48 89 e2             	mov    %rsp,%rdx
  4011ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011f1:	50                   	push   %rax
  4011f2:	54                   	push   %rsp
  4011f3:	45 31 c0             	xor    %r8d,%r8d
  4011f6:	31 c9                	xor    %ecx,%ecx
  4011f8:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  4011ff:	ff 15 eb 2d 00 00    	callq  *0x2deb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401205:	f4                   	hlt    
  401206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40120d:	00 00 00 

0000000000401210 <_dl_relocate_static_pie>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	c3                   	retq   
  401215:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40121c:	00 00 00 
  40121f:	90                   	nop

0000000000401220 <deregister_tm_clones>:
  401220:	b8 50 40 40 00       	mov    $0x404050,%eax
  401225:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  40122b:	74 13                	je     401240 <deregister_tm_clones+0x20>
  40122d:	b8 00 00 00 00       	mov    $0x0,%eax
  401232:	48 85 c0             	test   %rax,%rax
  401235:	74 09                	je     401240 <deregister_tm_clones+0x20>
  401237:	bf 50 40 40 00       	mov    $0x404050,%edi
  40123c:	ff e0                	jmpq   *%rax
  40123e:	66 90                	xchg   %ax,%ax
  401240:	c3                   	retq   
  401241:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401248:	00 00 00 00 
  40124c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401250 <register_tm_clones>:
  401250:	be 50 40 40 00       	mov    $0x404050,%esi
  401255:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  40125c:	48 89 f0             	mov    %rsi,%rax
  40125f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401263:	48 c1 f8 03          	sar    $0x3,%rax
  401267:	48 01 c6             	add    %rax,%rsi
  40126a:	48 d1 fe             	sar    %rsi
  40126d:	74 11                	je     401280 <register_tm_clones+0x30>
  40126f:	b8 00 00 00 00       	mov    $0x0,%eax
  401274:	48 85 c0             	test   %rax,%rax
  401277:	74 07                	je     401280 <register_tm_clones+0x30>
  401279:	bf 50 40 40 00       	mov    $0x404050,%edi
  40127e:	ff e0                	jmpq   *%rax
  401280:	c3                   	retq   
  401281:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401288:	00 00 00 00 
  40128c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401290 <__do_global_dtors_aux>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	80 3d b5 2d 00 00 00 	cmpb   $0x0,0x2db5(%rip)        # 404050 <__TMC_END__>
  40129b:	75 13                	jne    4012b0 <__do_global_dtors_aux+0x20>
  40129d:	55                   	push   %rbp
  40129e:	48 89 e5             	mov    %rsp,%rbp
  4012a1:	e8 7a ff ff ff       	callq  401220 <deregister_tm_clones>
  4012a6:	c6 05 a3 2d 00 00 01 	movb   $0x1,0x2da3(%rip)        # 404050 <__TMC_END__>
  4012ad:	5d                   	pop    %rbp
  4012ae:	c3                   	retq   
  4012af:	90                   	nop
  4012b0:	c3                   	retq   
  4012b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012b8:	00 00 00 00 
  4012bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012c0 <frame_dummy>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	eb 8a                	jmp    401250 <register_tm_clones>
  4012c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012cd:	00 00 00 

00000000004012d0 <initialize_matrix>:
  4012d0:	0f af f6             	imul   %esi,%esi
  4012d3:	85 f6                	test   %esi,%esi
  4012d5:	74 49                	je     401320 <initialize_matrix+0x50>
  4012d7:	55                   	push   %rbp
  4012d8:	48 63 f6             	movslq %esi,%rsi
  4012db:	53                   	push   %rbx
  4012dc:	48 8d 2c b7          	lea    (%rdi,%rsi,4),%rbp
  4012e0:	48 89 fb             	mov    %rdi,%rbx
  4012e3:	48 83 ec 08          	sub    $0x8,%rsp
  4012e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4012ee:	00 00 
  4012f0:	e8 7b fd ff ff       	callq  401070 <rand@plt>
  4012f5:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4012f9:	48 83 c3 04          	add    $0x4,%rbx
  4012fd:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401301:	f3 0f 59 05 37 0d 00 	mulss  0xd37(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  401308:	00 
  401309:	f3 0f 11 43 fc       	movss  %xmm0,-0x4(%rbx)
  40130e:	48 39 eb             	cmp    %rbp,%rbx
  401311:	75 dd                	jne    4012f0 <initialize_matrix+0x20>
  401313:	48 83 c4 08          	add    $0x8,%rsp
  401317:	5b                   	pop    %rbx
  401318:	5d                   	pop    %rbp
  401319:	c3                   	retq   
  40131a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401320:	c3                   	retq   
  401321:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401328:	00 00 00 00 
  40132c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401330 <matrix_multiply_plain>:
  401330:	85 c9                	test   %ecx,%ecx
  401332:	0f 8e 98 00 00 00    	jle    4013d0 <matrix_multiply_plain+0xa0>
  401338:	41 56                	push   %r14
  40133a:	4c 63 f1             	movslq %ecx,%r14
  40133d:	49 89 fa             	mov    %rdi,%r10
  401340:	41 89 cb             	mov    %ecx,%r11d
  401343:	41 55                	push   %r13
  401345:	49 89 d5             	mov    %rdx,%r13
  401348:	41 54                	push   %r12
  40134a:	49 89 f4             	mov    %rsi,%r12
  40134d:	4a 8d 34 b5 00 00 00 	lea    0x0(,%r14,4),%rsi
  401354:	00 
  401355:	55                   	push   %rbp
  401356:	48 8d 3c 37          	lea    (%rdi,%rsi,1),%rdi
  40135a:	31 ed                	xor    %ebp,%ebp
  40135c:	53                   	push   %rbx
  40135d:	31 db                	xor    %ebx,%ebx
  40135f:	90                   	nop
  401360:	49 8d 4c 9d 00       	lea    0x0(%r13,%rbx,4),%rcx
  401365:	4d 89 e0             	mov    %r12,%r8
  401368:	45 31 c9             	xor    %r9d,%r9d
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401370:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
  401376:	4c 89 c2             	mov    %r8,%rdx
  401379:	4c 89 d0             	mov    %r10,%rax
  40137c:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401380:	f3 0f 10 00          	movss  (%rax),%xmm0
  401384:	f3 0f 59 02          	mulss  (%rdx),%xmm0
  401388:	48 83 c0 04          	add    $0x4,%rax
  40138c:	48 01 f2             	add    %rsi,%rdx
  40138f:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  401393:	f3 0f 11 09          	movss  %xmm1,(%rcx)
  401397:	48 39 f8             	cmp    %rdi,%rax
  40139a:	75 e4                	jne    401380 <matrix_multiply_plain+0x50>
  40139c:	41 8d 41 01          	lea    0x1(%r9),%eax
  4013a0:	48 83 c1 04          	add    $0x4,%rcx
  4013a4:	49 83 c0 04          	add    $0x4,%r8
  4013a8:	41 39 c3             	cmp    %eax,%r11d
  4013ab:	74 05                	je     4013b2 <matrix_multiply_plain+0x82>
  4013ad:	41 89 c1             	mov    %eax,%r9d
  4013b0:	eb be                	jmp    401370 <matrix_multiply_plain+0x40>
  4013b2:	8d 45 01             	lea    0x1(%rbp),%eax
  4013b5:	49 01 f2             	add    %rsi,%r10
  4013b8:	48 01 f7             	add    %rsi,%rdi
  4013bb:	4c 01 f3             	add    %r14,%rbx
  4013be:	44 39 cd             	cmp    %r9d,%ebp
  4013c1:	74 04                	je     4013c7 <matrix_multiply_plain+0x97>
  4013c3:	89 c5                	mov    %eax,%ebp
  4013c5:	eb 99                	jmp    401360 <matrix_multiply_plain+0x30>
  4013c7:	5b                   	pop    %rbx
  4013c8:	5d                   	pop    %rbp
  4013c9:	41 5c                	pop    %r12
  4013cb:	41 5d                	pop    %r13
  4013cd:	41 5e                	pop    %r14
  4013cf:	c3                   	retq   
  4013d0:	c3                   	retq   
  4013d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4013d8:	00 00 00 00 
  4013dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013e0 <measure_execution_time>:
  4013e0:	41 57                	push   %r15
  4013e2:	45 89 c7             	mov    %r8d,%r15d
  4013e5:	41 56                	push   %r14
  4013e7:	49 89 ce             	mov    %rcx,%r14
  4013ea:	41 55                	push   %r13
  4013ec:	49 89 d5             	mov    %rdx,%r13
  4013ef:	41 54                	push   %r12
  4013f1:	49 89 f4             	mov    %rsi,%r12
  4013f4:	55                   	push   %rbp
  4013f5:	48 89 fd             	mov    %rdi,%rbp
  4013f8:	53                   	push   %rbx
  4013f9:	48 83 ec 08          	sub    $0x8,%rsp
  4013fd:	e8 3e fc ff ff       	callq  401040 <clock@plt>
  401402:	44 89 f9             	mov    %r15d,%ecx
  401405:	4c 89 f2             	mov    %r14,%rdx
  401408:	4c 89 ee             	mov    %r13,%rsi
  40140b:	48 89 c3             	mov    %rax,%rbx
  40140e:	4c 89 e7             	mov    %r12,%rdi
  401411:	ff d5                	callq  *%rbp
  401413:	e8 28 fc ff ff       	callq  401040 <clock@plt>
  401418:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40141c:	48 29 d8             	sub    %rbx,%rax
  40141f:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401424:	f2 0f 5e 05 1c 0c 00 	divsd  0xc1c(%rip),%xmm0        # 402048 <_IO_stdin_used+0x48>
  40142b:	00 
  40142c:	48 83 c4 08          	add    $0x8,%rsp
  401430:	5b                   	pop    %rbx
  401431:	5d                   	pop    %rbp
  401432:	41 5c                	pop    %r12
  401434:	41 5d                	pop    %r13
  401436:	41 5e                	pop    %r14
  401438:	41 5f                	pop    %r15
  40143a:	c3                   	retq   

Disassembly of section .fini:

000000000040143c <_fini>:
  40143c:	f3 0f 1e fa          	endbr64 
  401440:	48 83 ec 08          	sub    $0x8,%rsp
  401444:	48 83 c4 08          	add    $0x8,%rsp
  401448:	c3                   	retq   
