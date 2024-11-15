
matmul_avx2_O1:     file format elf64-x86-64


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
  401098:	48 c7 c7 23 13 40 00 	mov    $0x401323,%rdi
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

0000000000401166 <matrix_multiply_avx2>:
  401166:	55                   	push   %rbp
  401167:	48 89 e5             	mov    %rsp,%rbp
  40116a:	41 57                	push   %r15
  40116c:	41 56                	push   %r14
  40116e:	41 55                	push   %r13
  401170:	41 54                	push   %r12
  401172:	53                   	push   %rbx
  401173:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  401177:	48 89 74 24 c8       	mov    %rsi,-0x38(%rsp)
  40117c:	85 c9                	test   %ecx,%ecx
  40117e:	0f 8e f4 00 00 00    	jle    401278 <matrix_multiply_avx2+0x112>
  401184:	48 89 f8             	mov    %rdi,%rax
  401187:	48 89 d3             	mov    %rdx,%rbx
  40118a:	41 89 cb             	mov    %ecx,%r11d
  40118d:	4c 63 f9             	movslq %ecx,%r15
  401190:	4e 8d 34 bd 00 00 00 	lea    0x0(,%r15,4),%r14
  401197:	00 
  401198:	8d 0c cd 00 00 00 00 	lea    0x0(,%rcx,8),%ecx
  40119f:	48 63 c9             	movslq %ecx,%rcx
  4011a2:	48 c1 e1 02          	shl    $0x2,%rcx
  4011a6:	41 8d 53 ff          	lea    -0x1(%r11),%edx
  4011aa:	c1 ea 03             	shr    $0x3,%edx
  4011ad:	8d 34 d5 00 00 00 00 	lea    0x0(,%rdx,8),%esi
  4011b4:	48 89 74 24 d0       	mov    %rsi,-0x30(%rsp)
  4011b9:	49 89 fa             	mov    %rdi,%r10
  4011bc:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  4011c2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011c8:	48 83 c0 20          	add    $0x20,%rax
  4011cc:	48 89 44 24 c0       	mov    %rax,-0x40(%rsp)
  4011d1:	48 89 e6             	mov    %rsp,%rsi
  4011d4:	eb 79                	jmp    40124f <matrix_multiply_avx2+0xe9>
  4011d6:	c4 c1 7a 11 45 00    	vmovss %xmm0,0x0(%r13)
  4011dc:	41 8d 41 01          	lea    0x1(%r9),%eax
  4011e0:	48 83 c7 04          	add    $0x4,%rdi
  4011e4:	49 83 c0 04          	add    $0x4,%r8
  4011e8:	41 39 c3             	cmp    %eax,%r11d
  4011eb:	74 48                	je     401235 <matrix_multiply_avx2+0xcf>
  4011ed:	41 89 c1             	mov    %eax,%r9d
  4011f0:	4d 89 c5             	mov    %r8,%r13
  4011f3:	4c 89 d0             	mov    %r10,%rax
  4011f6:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4011fa:	c5 fc 10 10          	vmovups (%rax),%ymm2
  4011fe:	c4 c1 6c 59 45 00    	vmulps 0x0(%r13),%ymm2,%ymm0
  401204:	c5 f4 58 c8          	vaddps %ymm0,%ymm1,%ymm1
  401208:	48 83 c0 20          	add    $0x20,%rax
  40120c:	49 01 cd             	add    %rcx,%r13
  40120f:	48 39 d0             	cmp    %rdx,%rax
  401212:	75 e6                	jne    4011fa <matrix_multiply_avx2+0x94>
  401214:	49 89 fd             	mov    %rdi,%r13
  401217:	c5 fc 29 4c 24 e0    	vmovaps %ymm1,-0x20(%rsp)
  40121d:	48 8d 44 24 e0       	lea    -0x20(%rsp),%rax
  401222:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401226:	c5 fa 58 00          	vaddss (%rax),%xmm0,%xmm0
  40122a:	48 83 c0 04          	add    $0x4,%rax
  40122e:	48 39 f0             	cmp    %rsi,%rax
  401231:	75 f3                	jne    401226 <matrix_multiply_avx2+0xc0>
  401233:	eb a1                	jmp    4011d6 <matrix_multiply_avx2+0x70>
  401235:	44 8b 6c 24 dc       	mov    -0x24(%rsp),%r13d
  40123a:	41 8d 45 01          	lea    0x1(%r13),%eax
  40123e:	4d 01 f2             	add    %r14,%r10
  401241:	4c 01 f3             	add    %r14,%rbx
  401244:	4d 01 fc             	add    %r15,%r12
  401247:	45 39 cd             	cmp    %r9d,%r13d
  40124a:	74 2c                	je     401278 <matrix_multiply_avx2+0x112>
  40124c:	41 89 c5             	mov    %eax,%r13d
  40124f:	4c 8b 44 24 c8       	mov    -0x38(%rsp),%r8
  401254:	48 8b 44 24 d0       	mov    -0x30(%rsp),%rax
  401259:	4c 01 e0             	add    %r12,%rax
  40125c:	48 8b 7c 24 c0       	mov    -0x40(%rsp),%rdi
  401261:	48 8d 14 87          	lea    (%rdi,%rax,4),%rdx
  401265:	48 89 df             	mov    %rbx,%rdi
  401268:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40126e:	44 89 6c 24 dc       	mov    %r13d,-0x24(%rsp)
  401273:	e9 78 ff ff ff       	jmpq   4011f0 <matrix_multiply_avx2+0x8a>
  401278:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40127c:	5b                   	pop    %rbx
  40127d:	41 5c                	pop    %r12
  40127f:	41 5d                	pop    %r13
  401281:	41 5e                	pop    %r14
  401283:	41 5f                	pop    %r15
  401285:	5d                   	pop    %rbp
  401286:	c3                   	retq   

0000000000401287 <initialize_matrix>:
  401287:	0f af f6             	imul   %esi,%esi
  40128a:	85 f6                	test   %esi,%esi
  40128c:	7e 39                	jle    4012c7 <initialize_matrix+0x40>
  40128e:	55                   	push   %rbp
  40128f:	53                   	push   %rbx
  401290:	48 83 ec 08          	sub    $0x8,%rsp
  401294:	48 89 fb             	mov    %rdi,%rbx
  401297:	48 63 f6             	movslq %esi,%rsi
  40129a:	48 8d 2c b7          	lea    (%rdi,%rsi,4),%rbp
  40129e:	e8 cd fd ff ff       	callq  401070 <rand@plt>
  4012a3:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4012a7:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  4012ab:	c5 fa 59 05 85 0d 00 	vmulss 0xd85(%rip),%xmm0,%xmm0        # 402038 <_IO_stdin_used+0x38>
  4012b2:	00 
  4012b3:	c5 fa 11 03          	vmovss %xmm0,(%rbx)
  4012b7:	48 83 c3 04          	add    $0x4,%rbx
  4012bb:	48 39 eb             	cmp    %rbp,%rbx
  4012be:	75 de                	jne    40129e <initialize_matrix+0x17>
  4012c0:	48 83 c4 08          	add    $0x8,%rsp
  4012c4:	5b                   	pop    %rbx
  4012c5:	5d                   	pop    %rbp
  4012c6:	c3                   	retq   
  4012c7:	c3                   	retq   

00000000004012c8 <measure_execution_time>:
  4012c8:	41 57                	push   %r15
  4012ca:	41 56                	push   %r14
  4012cc:	41 55                	push   %r13
  4012ce:	41 54                	push   %r12
  4012d0:	55                   	push   %rbp
  4012d1:	53                   	push   %rbx
  4012d2:	48 83 ec 08          	sub    $0x8,%rsp
  4012d6:	48 89 fd             	mov    %rdi,%rbp
  4012d9:	49 89 f4             	mov    %rsi,%r12
  4012dc:	49 89 d5             	mov    %rdx,%r13
  4012df:	49 89 ce             	mov    %rcx,%r14
  4012e2:	45 89 c7             	mov    %r8d,%r15d
  4012e5:	e8 56 fd ff ff       	callq  401040 <clock@plt>
  4012ea:	48 89 c3             	mov    %rax,%rbx
  4012ed:	44 89 f9             	mov    %r15d,%ecx
  4012f0:	4c 89 f2             	mov    %r14,%rdx
  4012f3:	4c 89 ee             	mov    %r13,%rsi
  4012f6:	4c 89 e7             	mov    %r12,%rdi
  4012f9:	ff d5                	callq  *%rbp
  4012fb:	e8 40 fd ff ff       	callq  401040 <clock@plt>
  401300:	48 29 d8             	sub    %rbx,%rax
  401303:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401307:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  40130c:	c5 fb 5e 05 2c 0d 00 	vdivsd 0xd2c(%rip),%xmm0,%xmm0        # 402040 <_IO_stdin_used+0x40>
  401313:	00 
  401314:	48 83 c4 08          	add    $0x8,%rsp
  401318:	5b                   	pop    %rbx
  401319:	5d                   	pop    %rbp
  40131a:	41 5c                	pop    %r12
  40131c:	41 5d                	pop    %r13
  40131e:	41 5e                	pop    %r14
  401320:	41 5f                	pop    %r15
  401322:	c3                   	retq   

0000000000401323 <main>:
  401323:	41 57                	push   %r15
  401325:	41 56                	push   %r14
  401327:	41 55                	push   %r13
  401329:	41 54                	push   %r12
  40132b:	55                   	push   %rbp
  40132c:	53                   	push   %rbx
  40132d:	48 83 ec 18          	sub    $0x18,%rsp
  401331:	c7 04 24 80 00 00 00 	movl   $0x80,(%rsp)
  401338:	c7 44 24 04 00 01 00 	movl   $0x100,0x4(%rsp)
  40133f:	00 
  401340:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%rsp)
  401347:	00 
  401348:	c7 44 24 0c 00 04 00 	movl   $0x400,0xc(%rsp)
  40134f:	00 
  401350:	ba 04 20 40 00       	mov    $0x402004,%edx
  401355:	be 18 20 40 00       	mov    $0x402018,%esi
  40135a:	bf 1d 20 40 00       	mov    $0x40201d,%edi
  40135f:	b8 00 00 00 00       	mov    $0x0,%eax
  401364:	e8 e7 fc ff ff       	callq  401050 <printf@plt>
  401369:	49 89 e6             	mov    %rsp,%r14
  40136c:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  401371:	41 8b 2e             	mov    (%r14),%ebp
  401374:	89 eb                	mov    %ebp,%ebx
  401376:	0f af dd             	imul   %ebp,%ebx
  401379:	48 63 db             	movslq %ebx,%rbx
  40137c:	48 c1 e3 02          	shl    $0x2,%rbx
  401380:	48 89 df             	mov    %rbx,%rdi
  401383:	e8 d8 fc ff ff       	callq  401060 <malloc@plt>
  401388:	49 89 c5             	mov    %rax,%r13
  40138b:	48 89 df             	mov    %rbx,%rdi
  40138e:	e8 cd fc ff ff       	callq  401060 <malloc@plt>
  401393:	49 89 c4             	mov    %rax,%r12
  401396:	48 89 df             	mov    %rbx,%rdi
  401399:	e8 c2 fc ff ff       	callq  401060 <malloc@plt>
  40139e:	48 89 c3             	mov    %rax,%rbx
  4013a1:	89 ee                	mov    %ebp,%esi
  4013a3:	4c 89 ef             	mov    %r13,%rdi
  4013a6:	e8 dc fe ff ff       	callq  401287 <initialize_matrix>
  4013ab:	89 ee                	mov    %ebp,%esi
  4013ad:	4c 89 e7             	mov    %r12,%rdi
  4013b0:	e8 d2 fe ff ff       	callq  401287 <initialize_matrix>
  4013b5:	41 89 e8             	mov    %ebp,%r8d
  4013b8:	48 89 d9             	mov    %rbx,%rcx
  4013bb:	4c 89 e2             	mov    %r12,%rdx
  4013be:	4c 89 ee             	mov    %r13,%rsi
  4013c1:	bf 66 11 40 00       	mov    $0x401166,%edi
  4013c6:	e8 fd fe ff ff       	callq  4012c8 <measure_execution_time>
  4013cb:	89 ee                	mov    %ebp,%esi
  4013cd:	bf 2a 20 40 00       	mov    $0x40202a,%edi
  4013d2:	b8 01 00 00 00       	mov    $0x1,%eax
  4013d7:	e8 74 fc ff ff       	callq  401050 <printf@plt>
  4013dc:	4c 89 ef             	mov    %r13,%rdi
  4013df:	e8 4c fc ff ff       	callq  401030 <free@plt>
  4013e4:	4c 89 e7             	mov    %r12,%rdi
  4013e7:	e8 44 fc ff ff       	callq  401030 <free@plt>
  4013ec:	48 89 df             	mov    %rbx,%rdi
  4013ef:	e8 3c fc ff ff       	callq  401030 <free@plt>
  4013f4:	49 83 c6 04          	add    $0x4,%r14
  4013f8:	4d 39 fe             	cmp    %r15,%r14
  4013fb:	0f 85 70 ff ff ff    	jne    401371 <main+0x4e>
  401401:	b8 00 00 00 00       	mov    $0x0,%eax
  401406:	48 83 c4 18          	add    $0x18,%rsp
  40140a:	5b                   	pop    %rbx
  40140b:	5d                   	pop    %rbp
  40140c:	41 5c                	pop    %r12
  40140e:	41 5d                	pop    %r13
  401410:	41 5e                	pop    %r14
  401412:	41 5f                	pop    %r15
  401414:	c3                   	retq   

Disassembly of section .fini:

0000000000401418 <_fini>:
  401418:	f3 0f 1e fa          	endbr64 
  40141c:	48 83 ec 08          	sub    $0x8,%rsp
  401420:	48 83 c4 08          	add    $0x8,%rsp
  401424:	c3                   	retq   
