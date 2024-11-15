
matmul_O1:     file format elf64-x86-64


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
  401098:	48 c7 c7 9e 12 40 00 	mov    $0x40129e,%rdi
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

0000000000401166 <matrix_multiply_plain>:
  401166:	85 c9                	test   %ecx,%ecx
  401168:	0f 8e 93 00 00 00    	jle    401201 <matrix_multiply_plain+0x9b>
  40116e:	41 56                	push   %r14
  401170:	41 55                	push   %r13
  401172:	41 54                	push   %r12
  401174:	55                   	push   %rbp
  401175:	53                   	push   %rbx
  401176:	49 89 f4             	mov    %rsi,%r12
  401179:	48 89 d5             	mov    %rdx,%rbp
  40117c:	89 cb                	mov    %ecx,%ebx
  40117e:	48 63 f1             	movslq %ecx,%rsi
  401181:	48 c1 e6 02          	shl    $0x2,%rsi
  401185:	49 89 fb             	mov    %rdi,%r11
  401188:	48 01 f7             	add    %rsi,%rdi
  40118b:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401191:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401197:	eb 54                	jmp    4011ed <matrix_multiply_plain+0x87>
  401199:	41 89 c2             	mov    %eax,%r10d
  40119c:	4c 89 c1             	mov    %r8,%rcx
  40119f:	41 c7 00 00 00 00 00 	movl   $0x0,(%r8)
  4011a6:	4c 89 ca             	mov    %r9,%rdx
  4011a9:	4c 89 d8             	mov    %r11,%rax
  4011ac:	f3 0f 10 00          	movss  (%rax),%xmm0
  4011b0:	f3 0f 59 02          	mulss  (%rdx),%xmm0
  4011b4:	f3 0f 58 01          	addss  (%rcx),%xmm0
  4011b8:	f3 0f 11 01          	movss  %xmm0,(%rcx)
  4011bc:	48 83 c0 04          	add    $0x4,%rax
  4011c0:	48 01 f2             	add    %rsi,%rdx
  4011c3:	48 39 f8             	cmp    %rdi,%rax
  4011c6:	75 e4                	jne    4011ac <matrix_multiply_plain+0x46>
  4011c8:	41 8d 42 01          	lea    0x1(%r10),%eax
  4011cc:	49 83 c0 04          	add    $0x4,%r8
  4011d0:	49 83 c1 04          	add    $0x4,%r9
  4011d4:	39 c3                	cmp    %eax,%ebx
  4011d6:	75 c1                	jne    401199 <matrix_multiply_plain+0x33>
  4011d8:	41 8d 45 01          	lea    0x1(%r13),%eax
  4011dc:	49 01 f3             	add    %rsi,%r11
  4011df:	48 01 f7             	add    %rsi,%rdi
  4011e2:	48 01 f5             	add    %rsi,%rbp
  4011e5:	45 39 d5             	cmp    %r10d,%r13d
  4011e8:	74 0e                	je     4011f8 <matrix_multiply_plain+0x92>
  4011ea:	41 89 c5             	mov    %eax,%r13d
  4011ed:	4d 89 e1             	mov    %r12,%r9
  4011f0:	49 89 e8             	mov    %rbp,%r8
  4011f3:	45 89 f2             	mov    %r14d,%r10d
  4011f6:	eb a4                	jmp    40119c <matrix_multiply_plain+0x36>
  4011f8:	5b                   	pop    %rbx
  4011f9:	5d                   	pop    %rbp
  4011fa:	41 5c                	pop    %r12
  4011fc:	41 5d                	pop    %r13
  4011fe:	41 5e                	pop    %r14
  401200:	c3                   	retq   
  401201:	c3                   	retq   

0000000000401202 <initialize_matrix>:
  401202:	0f af f6             	imul   %esi,%esi
  401205:	85 f6                	test   %esi,%esi
  401207:	7e 39                	jle    401242 <initialize_matrix+0x40>
  401209:	55                   	push   %rbp
  40120a:	53                   	push   %rbx
  40120b:	48 83 ec 08          	sub    $0x8,%rsp
  40120f:	48 89 fb             	mov    %rdi,%rbx
  401212:	48 63 f6             	movslq %esi,%rsi
  401215:	48 8d 2c b7          	lea    (%rdi,%rsi,4),%rbp
  401219:	e8 52 fe ff ff       	callq  401070 <rand@plt>
  40121e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401222:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401226:	f3 0f 59 05 12 0e 00 	mulss  0xe12(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  40122d:	00 
  40122e:	f3 0f 11 03          	movss  %xmm0,(%rbx)
  401232:	48 83 c3 04          	add    $0x4,%rbx
  401236:	48 39 eb             	cmp    %rbp,%rbx
  401239:	75 de                	jne    401219 <initialize_matrix+0x17>
  40123b:	48 83 c4 08          	add    $0x8,%rsp
  40123f:	5b                   	pop    %rbx
  401240:	5d                   	pop    %rbp
  401241:	c3                   	retq   
  401242:	c3                   	retq   

0000000000401243 <measure_execution_time>:
  401243:	41 57                	push   %r15
  401245:	41 56                	push   %r14
  401247:	41 55                	push   %r13
  401249:	41 54                	push   %r12
  40124b:	55                   	push   %rbp
  40124c:	53                   	push   %rbx
  40124d:	48 83 ec 08          	sub    $0x8,%rsp
  401251:	48 89 fd             	mov    %rdi,%rbp
  401254:	49 89 f4             	mov    %rsi,%r12
  401257:	49 89 d5             	mov    %rdx,%r13
  40125a:	49 89 ce             	mov    %rcx,%r14
  40125d:	45 89 c7             	mov    %r8d,%r15d
  401260:	e8 db fd ff ff       	callq  401040 <clock@plt>
  401265:	48 89 c3             	mov    %rax,%rbx
  401268:	44 89 f9             	mov    %r15d,%ecx
  40126b:	4c 89 f2             	mov    %r14,%rdx
  40126e:	4c 89 ee             	mov    %r13,%rsi
  401271:	4c 89 e7             	mov    %r12,%rdi
  401274:	ff d5                	callq  *%rbp
  401276:	e8 c5 fd ff ff       	callq  401040 <clock@plt>
  40127b:	48 29 d8             	sub    %rbx,%rax
  40127e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401282:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401287:	f2 0f 5e 05 b9 0d 00 	divsd  0xdb9(%rip),%xmm0        # 402048 <_IO_stdin_used+0x48>
  40128e:	00 
  40128f:	48 83 c4 08          	add    $0x8,%rsp
  401293:	5b                   	pop    %rbx
  401294:	5d                   	pop    %rbp
  401295:	41 5c                	pop    %r12
  401297:	41 5d                	pop    %r13
  401299:	41 5e                	pop    %r14
  40129b:	41 5f                	pop    %r15
  40129d:	c3                   	retq   

000000000040129e <main>:
  40129e:	41 57                	push   %r15
  4012a0:	41 56                	push   %r14
  4012a2:	41 55                	push   %r13
  4012a4:	41 54                	push   %r12
  4012a6:	55                   	push   %rbp
  4012a7:	53                   	push   %rbx
  4012a8:	48 83 ec 18          	sub    $0x18,%rsp
  4012ac:	c7 04 24 80 00 00 00 	movl   $0x80,(%rsp)
  4012b3:	c7 44 24 04 00 01 00 	movl   $0x100,0x4(%rsp)
  4012ba:	00 
  4012bb:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%rsp)
  4012c2:	00 
  4012c3:	c7 44 24 0c 00 04 00 	movl   $0x400,0xc(%rsp)
  4012ca:	00 
  4012cb:	ba 04 20 40 00       	mov    $0x402004,%edx
  4012d0:	be 1e 20 40 00       	mov    $0x40201e,%esi
  4012d5:	bf 23 20 40 00       	mov    $0x402023,%edi
  4012da:	b8 00 00 00 00       	mov    $0x0,%eax
  4012df:	e8 6c fd ff ff       	callq  401050 <printf@plt>
  4012e4:	49 89 e6             	mov    %rsp,%r14
  4012e7:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  4012ec:	41 8b 2e             	mov    (%r14),%ebp
  4012ef:	89 eb                	mov    %ebp,%ebx
  4012f1:	0f af dd             	imul   %ebp,%ebx
  4012f4:	48 63 db             	movslq %ebx,%rbx
  4012f7:	48 c1 e3 02          	shl    $0x2,%rbx
  4012fb:	48 89 df             	mov    %rbx,%rdi
  4012fe:	e8 5d fd ff ff       	callq  401060 <malloc@plt>
  401303:	49 89 c5             	mov    %rax,%r13
  401306:	48 89 df             	mov    %rbx,%rdi
  401309:	e8 52 fd ff ff       	callq  401060 <malloc@plt>
  40130e:	49 89 c4             	mov    %rax,%r12
  401311:	48 89 df             	mov    %rbx,%rdi
  401314:	e8 47 fd ff ff       	callq  401060 <malloc@plt>
  401319:	48 89 c3             	mov    %rax,%rbx
  40131c:	89 ee                	mov    %ebp,%esi
  40131e:	4c 89 ef             	mov    %r13,%rdi
  401321:	e8 dc fe ff ff       	callq  401202 <initialize_matrix>
  401326:	89 ee                	mov    %ebp,%esi
  401328:	4c 89 e7             	mov    %r12,%rdi
  40132b:	e8 d2 fe ff ff       	callq  401202 <initialize_matrix>
  401330:	41 89 e8             	mov    %ebp,%r8d
  401333:	48 89 d9             	mov    %rbx,%rcx
  401336:	4c 89 e2             	mov    %r12,%rdx
  401339:	4c 89 ee             	mov    %r13,%rsi
  40133c:	bf 66 11 40 00       	mov    $0x401166,%edi
  401341:	e8 fd fe ff ff       	callq  401243 <measure_execution_time>
  401346:	89 ee                	mov    %ebp,%esi
  401348:	bf 30 20 40 00       	mov    $0x402030,%edi
  40134d:	b8 01 00 00 00       	mov    $0x1,%eax
  401352:	e8 f9 fc ff ff       	callq  401050 <printf@plt>
  401357:	4c 89 ef             	mov    %r13,%rdi
  40135a:	e8 d1 fc ff ff       	callq  401030 <free@plt>
  40135f:	4c 89 e7             	mov    %r12,%rdi
  401362:	e8 c9 fc ff ff       	callq  401030 <free@plt>
  401367:	48 89 df             	mov    %rbx,%rdi
  40136a:	e8 c1 fc ff ff       	callq  401030 <free@plt>
  40136f:	49 83 c6 04          	add    $0x4,%r14
  401373:	4d 39 fe             	cmp    %r15,%r14
  401376:	0f 85 70 ff ff ff    	jne    4012ec <main+0x4e>
  40137c:	b8 00 00 00 00       	mov    $0x0,%eax
  401381:	48 83 c4 18          	add    $0x18,%rsp
  401385:	5b                   	pop    %rbx
  401386:	5d                   	pop    %rbp
  401387:	41 5c                	pop    %r12
  401389:	41 5d                	pop    %r13
  40138b:	41 5e                	pop    %r14
  40138d:	41 5f                	pop    %r15
  40138f:	c3                   	retq   

Disassembly of section .fini:

0000000000401390 <_fini>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	48 83 ec 08          	sub    $0x8,%rsp
  401398:	48 83 c4 08          	add    $0x8,%rsp
  40139c:	c3                   	retq   
