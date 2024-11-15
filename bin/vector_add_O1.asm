
vector_add_O1:     file format elf64-x86-64


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
  401098:	48 c7 c7 5c 13 40 00 	mov    $0x40135c,%rdi
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

0000000000401166 <vector_add_plain>:
  401166:	85 c9                	test   %ecx,%ecx
  401168:	7e 24                	jle    40118e <vector_add_plain+0x28>
  40116a:	48 63 c9             	movslq %ecx,%rcx
  40116d:	48 c1 e1 02          	shl    $0x2,%rcx
  401171:	b8 00 00 00 00       	mov    $0x0,%eax
  401176:	f3 0f 10 04 07       	movss  (%rdi,%rax,1),%xmm0
  40117b:	f3 0f 58 04 06       	addss  (%rsi,%rax,1),%xmm0
  401180:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
  401185:	48 83 c0 04          	add    $0x4,%rax
  401189:	48 39 c8             	cmp    %rcx,%rax
  40118c:	75 e8                	jne    401176 <vector_add_plain+0x10>
  40118e:	c3                   	retq   

000000000040118f <vector_add_plain_double>:
  40118f:	85 c9                	test   %ecx,%ecx
  401191:	7e 24                	jle    4011b7 <vector_add_plain_double+0x28>
  401193:	48 63 c9             	movslq %ecx,%rcx
  401196:	48 c1 e1 03          	shl    $0x3,%rcx
  40119a:	b8 00 00 00 00       	mov    $0x0,%eax
  40119f:	f2 0f 10 04 07       	movsd  (%rdi,%rax,1),%xmm0
  4011a4:	f2 0f 58 04 06       	addsd  (%rsi,%rax,1),%xmm0
  4011a9:	f2 0f 11 04 02       	movsd  %xmm0,(%rdx,%rax,1)
  4011ae:	48 83 c0 08          	add    $0x8,%rax
  4011b2:	48 39 c8             	cmp    %rcx,%rax
  4011b5:	75 e8                	jne    40119f <vector_add_plain_double+0x10>
  4011b7:	c3                   	retq   

00000000004011b8 <initialize_arrays>:
  4011b8:	85 c9                	test   %ecx,%ecx
  4011ba:	7e 72                	jle    40122e <initialize_arrays+0x76>
  4011bc:	41 56                	push   %r14
  4011be:	41 55                	push   %r13
  4011c0:	41 54                	push   %r12
  4011c2:	55                   	push   %rbp
  4011c3:	53                   	push   %rbx
  4011c4:	49 89 fc             	mov    %rdi,%r12
  4011c7:	49 89 f5             	mov    %rsi,%r13
  4011ca:	49 89 d6             	mov    %rdx,%r14
  4011cd:	48 63 c9             	movslq %ecx,%rcx
  4011d0:	48 8d 2c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbp
  4011d7:	00 
  4011d8:	bb 00 00 00 00       	mov    $0x0,%ebx
  4011dd:	e8 8e fe ff ff       	callq  401070 <rand@plt>
  4011e2:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4011e6:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4011ea:	f3 0f 59 05 86 0e 00 	mulss  0xe86(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  4011f1:	00 
  4011f2:	f3 41 0f 11 04 1c    	movss  %xmm0,(%r12,%rbx,1)
  4011f8:	e8 73 fe ff ff       	callq  401070 <rand@plt>
  4011fd:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401201:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401205:	f3 0f 59 05 6b 0e 00 	mulss  0xe6b(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  40120c:	00 
  40120d:	f3 41 0f 11 44 1d 00 	movss  %xmm0,0x0(%r13,%rbx,1)
  401214:	41 c7 04 1e 00 00 00 	movl   $0x0,(%r14,%rbx,1)
  40121b:	00 
  40121c:	48 83 c3 04          	add    $0x4,%rbx
  401220:	48 39 eb             	cmp    %rbp,%rbx
  401223:	75 b8                	jne    4011dd <initialize_arrays+0x25>
  401225:	5b                   	pop    %rbx
  401226:	5d                   	pop    %rbp
  401227:	41 5c                	pop    %r12
  401229:	41 5d                	pop    %r13
  40122b:	41 5e                	pop    %r14
  40122d:	c3                   	retq   
  40122e:	c3                   	retq   

000000000040122f <initialize_arrays_double>:
  40122f:	85 c9                	test   %ecx,%ecx
  401231:	7e 72                	jle    4012a5 <initialize_arrays_double+0x76>
  401233:	41 56                	push   %r14
  401235:	41 55                	push   %r13
  401237:	41 54                	push   %r12
  401239:	55                   	push   %rbp
  40123a:	53                   	push   %rbx
  40123b:	49 89 fc             	mov    %rdi,%r12
  40123e:	49 89 f5             	mov    %rsi,%r13
  401241:	49 89 d6             	mov    %rdx,%r14
  401244:	48 63 c9             	movslq %ecx,%rcx
  401247:	48 8d 2c cd 00 00 00 	lea    0x0(,%rcx,8),%rbp
  40124e:	00 
  40124f:	bb 00 00 00 00       	mov    $0x0,%ebx
  401254:	e8 17 fe ff ff       	callq  401070 <rand@plt>
  401259:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40125d:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  401261:	f2 0f 5e 05 17 0e 00 	divsd  0xe17(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  401268:	00 
  401269:	f2 41 0f 11 04 1c    	movsd  %xmm0,(%r12,%rbx,1)
  40126f:	e8 fc fd ff ff       	callq  401070 <rand@plt>
  401274:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401278:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40127c:	f2 0f 5e 05 fc 0d 00 	divsd  0xdfc(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  401283:	00 
  401284:	f2 41 0f 11 44 1d 00 	movsd  %xmm0,0x0(%r13,%rbx,1)
  40128b:	49 c7 04 1e 00 00 00 	movq   $0x0,(%r14,%rbx,1)
  401292:	00 
  401293:	48 83 c3 08          	add    $0x8,%rbx
  401297:	48 39 eb             	cmp    %rbp,%rbx
  40129a:	75 b8                	jne    401254 <initialize_arrays_double+0x25>
  40129c:	5b                   	pop    %rbx
  40129d:	5d                   	pop    %rbp
  40129e:	41 5c                	pop    %r12
  4012a0:	41 5d                	pop    %r13
  4012a2:	41 5e                	pop    %r14
  4012a4:	c3                   	retq   
  4012a5:	c3                   	retq   

00000000004012a6 <measure_execution_time>:
  4012a6:	41 57                	push   %r15
  4012a8:	41 56                	push   %r14
  4012aa:	41 55                	push   %r13
  4012ac:	41 54                	push   %r12
  4012ae:	55                   	push   %rbp
  4012af:	53                   	push   %rbx
  4012b0:	48 83 ec 08          	sub    $0x8,%rsp
  4012b4:	48 89 fd             	mov    %rdi,%rbp
  4012b7:	49 89 f4             	mov    %rsi,%r12
  4012ba:	49 89 d5             	mov    %rdx,%r13
  4012bd:	49 89 ce             	mov    %rcx,%r14
  4012c0:	45 89 c7             	mov    %r8d,%r15d
  4012c3:	e8 78 fd ff ff       	callq  401040 <clock@plt>
  4012c8:	48 89 c3             	mov    %rax,%rbx
  4012cb:	44 89 f9             	mov    %r15d,%ecx
  4012ce:	4c 89 f2             	mov    %r14,%rdx
  4012d1:	4c 89 ee             	mov    %r13,%rsi
  4012d4:	4c 89 e7             	mov    %r12,%rdi
  4012d7:	ff d5                	callq  *%rbp
  4012d9:	e8 62 fd ff ff       	callq  401040 <clock@plt>
  4012de:	48 29 d8             	sub    %rbx,%rax
  4012e1:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4012e5:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  4012ea:	f2 0f 5e 05 96 0d 00 	divsd  0xd96(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  4012f1:	00 
  4012f2:	48 83 c4 08          	add    $0x8,%rsp
  4012f6:	5b                   	pop    %rbx
  4012f7:	5d                   	pop    %rbp
  4012f8:	41 5c                	pop    %r12
  4012fa:	41 5d                	pop    %r13
  4012fc:	41 5e                	pop    %r14
  4012fe:	41 5f                	pop    %r15
  401300:	c3                   	retq   

0000000000401301 <measure_execution_time_double>:
  401301:	41 57                	push   %r15
  401303:	41 56                	push   %r14
  401305:	41 55                	push   %r13
  401307:	41 54                	push   %r12
  401309:	55                   	push   %rbp
  40130a:	53                   	push   %rbx
  40130b:	48 83 ec 08          	sub    $0x8,%rsp
  40130f:	48 89 fd             	mov    %rdi,%rbp
  401312:	49 89 f4             	mov    %rsi,%r12
  401315:	49 89 d5             	mov    %rdx,%r13
  401318:	49 89 ce             	mov    %rcx,%r14
  40131b:	45 89 c7             	mov    %r8d,%r15d
  40131e:	e8 1d fd ff ff       	callq  401040 <clock@plt>
  401323:	48 89 c3             	mov    %rax,%rbx
  401326:	44 89 f9             	mov    %r15d,%ecx
  401329:	4c 89 f2             	mov    %r14,%rdx
  40132c:	4c 89 ee             	mov    %r13,%rsi
  40132f:	4c 89 e7             	mov    %r12,%rdi
  401332:	ff d5                	callq  *%rbp
  401334:	e8 07 fd ff ff       	callq  401040 <clock@plt>
  401339:	48 29 d8             	sub    %rbx,%rax
  40133c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401340:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401345:	f2 0f 5e 05 3b 0d 00 	divsd  0xd3b(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  40134c:	00 
  40134d:	48 83 c4 08          	add    $0x8,%rsp
  401351:	5b                   	pop    %rbx
  401352:	5d                   	pop    %rbp
  401353:	41 5c                	pop    %r12
  401355:	41 5d                	pop    %r13
  401357:	41 5e                	pop    %r14
  401359:	41 5f                	pop    %r15
  40135b:	c3                   	retq   

000000000040135c <main>:
  40135c:	41 57                	push   %r15
  40135e:	41 56                	push   %r14
  401360:	41 55                	push   %r13
  401362:	41 54                	push   %r12
  401364:	55                   	push   %rbp
  401365:	53                   	push   %rbx
  401366:	48 83 ec 28          	sub    $0x28,%rsp
  40136a:	41 b8 04 20 40 00    	mov    $0x402004,%r8d
  401370:	b9 1d 20 40 00       	mov    $0x40201d,%ecx
  401375:	ba 35 20 40 00       	mov    $0x402035,%edx
  40137a:	be 3a 20 40 00       	mov    $0x40203a,%esi
  40137f:	bf 45 20 40 00       	mov    $0x402045,%edi
  401384:	b8 00 00 00 00       	mov    $0x0,%eax
  401389:	e8 c2 fc ff ff       	callq  401050 <printf@plt>
  40138e:	c7 44 24 1c 0b 00 00 	movl   $0xb,0x1c(%rsp)
  401395:	00 
  401396:	41 bf 01 00 00 00    	mov    $0x1,%r15d
  40139c:	41 69 df 40 42 0f 00 	imul   $0xf4240,%r15d,%ebx
  4013a3:	48 63 eb             	movslq %ebx,%rbp
  4013a6:	4c 8d 24 ad 00 00 00 	lea    0x0(,%rbp,4),%r12
  4013ad:	00 
  4013ae:	4c 89 e7             	mov    %r12,%rdi
  4013b1:	e8 aa fc ff ff       	callq  401060 <malloc@plt>
  4013b6:	49 89 c6             	mov    %rax,%r14
  4013b9:	4c 89 e7             	mov    %r12,%rdi
  4013bc:	e8 9f fc ff ff       	callq  401060 <malloc@plt>
  4013c1:	49 89 c5             	mov    %rax,%r13
  4013c4:	4c 89 e7             	mov    %r12,%rdi
  4013c7:	e8 94 fc ff ff       	callq  401060 <malloc@plt>
  4013cc:	49 89 c4             	mov    %rax,%r12
  4013cf:	48 c1 e5 03          	shl    $0x3,%rbp
  4013d3:	48 89 ef             	mov    %rbp,%rdi
  4013d6:	e8 85 fc ff ff       	callq  401060 <malloc@plt>
  4013db:	48 89 04 24          	mov    %rax,(%rsp)
  4013df:	48 89 ef             	mov    %rbp,%rdi
  4013e2:	e8 79 fc ff ff       	callq  401060 <malloc@plt>
  4013e7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4013ec:	48 89 ef             	mov    %rbp,%rdi
  4013ef:	e8 6c fc ff ff       	callq  401060 <malloc@plt>
  4013f4:	48 89 c5             	mov    %rax,%rbp
  4013f7:	89 d9                	mov    %ebx,%ecx
  4013f9:	4c 89 e2             	mov    %r12,%rdx
  4013fc:	4c 89 ee             	mov    %r13,%rsi
  4013ff:	4c 89 f7             	mov    %r14,%rdi
  401402:	e8 b1 fd ff ff       	callq  4011b8 <initialize_arrays>
  401407:	89 d9                	mov    %ebx,%ecx
  401409:	48 89 ea             	mov    %rbp,%rdx
  40140c:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  401411:	48 8b 3c 24          	mov    (%rsp),%rdi
  401415:	e8 15 fe ff ff       	callq  40122f <initialize_arrays_double>
  40141a:	41 89 d8             	mov    %ebx,%r8d
  40141d:	4c 89 e1             	mov    %r12,%rcx
  401420:	4c 89 ea             	mov    %r13,%rdx
  401423:	4c 89 f6             	mov    %r14,%rsi
  401426:	bf 66 11 40 00       	mov    $0x401166,%edi
  40142b:	e8 76 fe ff ff       	callq  4012a6 <measure_execution_time>
  401430:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  401436:	41 89 d8             	mov    %ebx,%r8d
  401439:	48 89 e9             	mov    %rbp,%rcx
  40143c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  401441:	48 8b 34 24          	mov    (%rsp),%rsi
  401445:	bf 8f 11 40 00       	mov    $0x40118f,%edi
  40144a:	e8 b2 fe ff ff       	callq  401301 <measure_execution_time_double>
  40144f:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401453:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
  401459:	89 da                	mov    %ebx,%edx
  40145b:	44 89 fe             	mov    %r15d,%esi
  40145e:	bf 5e 20 40 00       	mov    $0x40205e,%edi
  401463:	b8 02 00 00 00       	mov    $0x2,%eax
  401468:	e8 e3 fb ff ff       	callq  401050 <printf@plt>
  40146d:	4c 89 f7             	mov    %r14,%rdi
  401470:	e8 bb fb ff ff       	callq  401030 <free@plt>
  401475:	4c 89 ef             	mov    %r13,%rdi
  401478:	e8 b3 fb ff ff       	callq  401030 <free@plt>
  40147d:	4c 89 e7             	mov    %r12,%rdi
  401480:	e8 ab fb ff ff       	callq  401030 <free@plt>
  401485:	48 8b 3c 24          	mov    (%rsp),%rdi
  401489:	e8 a2 fb ff ff       	callq  401030 <free@plt>
  40148e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401493:	e8 98 fb ff ff       	callq  401030 <free@plt>
  401498:	48 89 ef             	mov    %rbp,%rdi
  40149b:	e8 90 fb ff ff       	callq  401030 <free@plt>
  4014a0:	45 01 ff             	add    %r15d,%r15d
  4014a3:	83 6c 24 1c 01       	subl   $0x1,0x1c(%rsp)
  4014a8:	0f 85 ee fe ff ff    	jne    40139c <main+0x40>
  4014ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4014b3:	48 83 c4 28          	add    $0x28,%rsp
  4014b7:	5b                   	pop    %rbx
  4014b8:	5d                   	pop    %rbp
  4014b9:	41 5c                	pop    %r12
  4014bb:	41 5d                	pop    %r13
  4014bd:	41 5e                	pop    %r14
  4014bf:	41 5f                	pop    %r15
  4014c1:	c3                   	retq   

Disassembly of section .fini:

00000000004014c4 <_fini>:
  4014c4:	f3 0f 1e fa          	endbr64 
  4014c8:	48 83 ec 08          	sub    $0x8,%rsp
  4014cc:	48 83 c4 08          	add    $0x8,%rsp
  4014d0:	c3                   	retq   
