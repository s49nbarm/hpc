
vector_add_avx2_O1:     file format elf64-x86-64


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
  401098:	48 c7 c7 ba 13 40 00 	mov    $0x4013ba,%rdi
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

0000000000401166 <vector_add_avx2>:
  401166:	44 8d 41 f9          	lea    -0x7(%rcx),%r8d
  40116a:	83 f9 07             	cmp    $0x7,%ecx
  40116d:	7e 48                	jle    4011b7 <vector_add_avx2+0x51>
  40116f:	b8 00 00 00 00       	mov    $0x0,%eax
  401174:	c5 fc 10 0c 87       	vmovups (%rdi,%rax,4),%ymm1
  401179:	c5 f4 58 04 86       	vaddps (%rsi,%rax,4),%ymm1,%ymm0
  40117e:	c5 fc 11 04 82       	vmovups %ymm0,(%rdx,%rax,4)
  401183:	48 83 c0 08          	add    $0x8,%rax
  401187:	41 39 c0             	cmp    %eax,%r8d
  40118a:	7f e8                	jg     401174 <vector_add_avx2+0xe>
  40118c:	8d 41 f8             	lea    -0x8(%rcx),%eax
  40118f:	c1 e8 03             	shr    $0x3,%eax
  401192:	8d 04 c5 08 00 00 00 	lea    0x8(,%rax,8),%eax
  401199:	39 c1                	cmp    %eax,%ecx
  40119b:	7e 19                	jle    4011b6 <vector_add_avx2+0x50>
  40119d:	48 98                	cltq   
  40119f:	c5 fa 10 04 87       	vmovss (%rdi,%rax,4),%xmm0
  4011a4:	c5 fa 58 04 86       	vaddss (%rsi,%rax,4),%xmm0,%xmm0
  4011a9:	c5 fa 11 04 82       	vmovss %xmm0,(%rdx,%rax,4)
  4011ae:	48 83 c0 01          	add    $0x1,%rax
  4011b2:	39 c1                	cmp    %eax,%ecx
  4011b4:	7f e9                	jg     40119f <vector_add_avx2+0x39>
  4011b6:	c3                   	retq   
  4011b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4011bc:	eb db                	jmp    401199 <vector_add_avx2+0x33>

00000000004011be <vector_add_avx2_double>:
  4011be:	44 8d 41 fd          	lea    -0x3(%rcx),%r8d
  4011c2:	83 f9 03             	cmp    $0x3,%ecx
  4011c5:	7e 48                	jle    40120f <vector_add_avx2_double+0x51>
  4011c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4011cc:	c5 fd 10 0c c7       	vmovupd (%rdi,%rax,8),%ymm1
  4011d1:	c5 f5 58 04 c6       	vaddpd (%rsi,%rax,8),%ymm1,%ymm0
  4011d6:	c5 fd 11 04 c2       	vmovupd %ymm0,(%rdx,%rax,8)
  4011db:	48 83 c0 04          	add    $0x4,%rax
  4011df:	41 39 c0             	cmp    %eax,%r8d
  4011e2:	7f e8                	jg     4011cc <vector_add_avx2_double+0xe>
  4011e4:	8d 41 fc             	lea    -0x4(%rcx),%eax
  4011e7:	c1 e8 02             	shr    $0x2,%eax
  4011ea:	8d 04 85 04 00 00 00 	lea    0x4(,%rax,4),%eax
  4011f1:	39 c1                	cmp    %eax,%ecx
  4011f3:	7e 19                	jle    40120e <vector_add_avx2_double+0x50>
  4011f5:	48 98                	cltq   
  4011f7:	c5 fb 10 04 c7       	vmovsd (%rdi,%rax,8),%xmm0
  4011fc:	c5 fb 58 04 c6       	vaddsd (%rsi,%rax,8),%xmm0,%xmm0
  401201:	c5 fb 11 04 c2       	vmovsd %xmm0,(%rdx,%rax,8)
  401206:	48 83 c0 01          	add    $0x1,%rax
  40120a:	39 c1                	cmp    %eax,%ecx
  40120c:	7f e9                	jg     4011f7 <vector_add_avx2_double+0x39>
  40120e:	c3                   	retq   
  40120f:	b8 00 00 00 00       	mov    $0x0,%eax
  401214:	eb db                	jmp    4011f1 <vector_add_avx2_double+0x33>

0000000000401216 <initialize_arrays>:
  401216:	85 c9                	test   %ecx,%ecx
  401218:	7e 72                	jle    40128c <initialize_arrays+0x76>
  40121a:	41 56                	push   %r14
  40121c:	41 55                	push   %r13
  40121e:	41 54                	push   %r12
  401220:	55                   	push   %rbp
  401221:	53                   	push   %rbx
  401222:	49 89 fc             	mov    %rdi,%r12
  401225:	49 89 f5             	mov    %rsi,%r13
  401228:	49 89 d6             	mov    %rdx,%r14
  40122b:	48 63 c9             	movslq %ecx,%rcx
  40122e:	48 8d 2c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbp
  401235:	00 
  401236:	bb 00 00 00 00       	mov    $0x0,%ebx
  40123b:	e8 30 fe ff ff       	callq  401070 <rand@plt>
  401240:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  401244:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  401248:	c5 fa 59 05 1c 0e 00 	vmulss 0xe1c(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  40124f:	00 
  401250:	c4 c1 7a 11 04 1c    	vmovss %xmm0,(%r12,%rbx,1)
  401256:	e8 15 fe ff ff       	callq  401070 <rand@plt>
  40125b:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40125f:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  401263:	c5 fa 59 05 01 0e 00 	vmulss 0xe01(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  40126a:	00 
  40126b:	c4 c1 7a 11 44 1d 00 	vmovss %xmm0,0x0(%r13,%rbx,1)
  401272:	41 c7 04 1e 00 00 00 	movl   $0x0,(%r14,%rbx,1)
  401279:	00 
  40127a:	48 83 c3 04          	add    $0x4,%rbx
  40127e:	48 39 eb             	cmp    %rbp,%rbx
  401281:	75 b8                	jne    40123b <initialize_arrays+0x25>
  401283:	5b                   	pop    %rbx
  401284:	5d                   	pop    %rbp
  401285:	41 5c                	pop    %r12
  401287:	41 5d                	pop    %r13
  401289:	41 5e                	pop    %r14
  40128b:	c3                   	retq   
  40128c:	c3                   	retq   

000000000040128d <initialize_arrays_double>:
  40128d:	85 c9                	test   %ecx,%ecx
  40128f:	7e 72                	jle    401303 <initialize_arrays_double+0x76>
  401291:	41 56                	push   %r14
  401293:	41 55                	push   %r13
  401295:	41 54                	push   %r12
  401297:	55                   	push   %rbp
  401298:	53                   	push   %rbx
  401299:	49 89 fc             	mov    %rdi,%r12
  40129c:	49 89 f5             	mov    %rsi,%r13
  40129f:	49 89 d6             	mov    %rdx,%r14
  4012a2:	48 63 c9             	movslq %ecx,%rcx
  4012a5:	48 8d 2c cd 00 00 00 	lea    0x0(,%rcx,8),%rbp
  4012ac:	00 
  4012ad:	bb 00 00 00 00       	mov    $0x0,%ebx
  4012b2:	e8 b9 fd ff ff       	callq  401070 <rand@plt>
  4012b7:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  4012bb:	c5 f3 2a c0          	vcvtsi2sd %eax,%xmm1,%xmm0
  4012bf:	c5 fb 5e 05 a9 0d 00 	vdivsd 0xda9(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  4012c6:	00 
  4012c7:	c4 c1 7b 11 04 1c    	vmovsd %xmm0,(%r12,%rbx,1)
  4012cd:	e8 9e fd ff ff       	callq  401070 <rand@plt>
  4012d2:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  4012d6:	c5 f3 2a c0          	vcvtsi2sd %eax,%xmm1,%xmm0
  4012da:	c5 fb 5e 05 8e 0d 00 	vdivsd 0xd8e(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  4012e1:	00 
  4012e2:	c4 c1 7b 11 44 1d 00 	vmovsd %xmm0,0x0(%r13,%rbx,1)
  4012e9:	49 c7 04 1e 00 00 00 	movq   $0x0,(%r14,%rbx,1)
  4012f0:	00 
  4012f1:	48 83 c3 08          	add    $0x8,%rbx
  4012f5:	48 39 eb             	cmp    %rbp,%rbx
  4012f8:	75 b8                	jne    4012b2 <initialize_arrays_double+0x25>
  4012fa:	5b                   	pop    %rbx
  4012fb:	5d                   	pop    %rbp
  4012fc:	41 5c                	pop    %r12
  4012fe:	41 5d                	pop    %r13
  401300:	41 5e                	pop    %r14
  401302:	c3                   	retq   
  401303:	c3                   	retq   

0000000000401304 <measure_execution_time>:
  401304:	41 57                	push   %r15
  401306:	41 56                	push   %r14
  401308:	41 55                	push   %r13
  40130a:	41 54                	push   %r12
  40130c:	55                   	push   %rbp
  40130d:	53                   	push   %rbx
  40130e:	48 83 ec 08          	sub    $0x8,%rsp
  401312:	48 89 fd             	mov    %rdi,%rbp
  401315:	49 89 f4             	mov    %rsi,%r12
  401318:	49 89 d5             	mov    %rdx,%r13
  40131b:	49 89 ce             	mov    %rcx,%r14
  40131e:	45 89 c7             	mov    %r8d,%r15d
  401321:	e8 1a fd ff ff       	callq  401040 <clock@plt>
  401326:	48 89 c3             	mov    %rax,%rbx
  401329:	44 89 f9             	mov    %r15d,%ecx
  40132c:	4c 89 f2             	mov    %r14,%rdx
  40132f:	4c 89 ee             	mov    %r13,%rsi
  401332:	4c 89 e7             	mov    %r12,%rdi
  401335:	ff d5                	callq  *%rbp
  401337:	e8 04 fd ff ff       	callq  401040 <clock@plt>
  40133c:	48 29 d8             	sub    %rbx,%rax
  40133f:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401343:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401348:	c5 fb 5e 05 28 0d 00 	vdivsd 0xd28(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  40134f:	00 
  401350:	48 83 c4 08          	add    $0x8,%rsp
  401354:	5b                   	pop    %rbx
  401355:	5d                   	pop    %rbp
  401356:	41 5c                	pop    %r12
  401358:	41 5d                	pop    %r13
  40135a:	41 5e                	pop    %r14
  40135c:	41 5f                	pop    %r15
  40135e:	c3                   	retq   

000000000040135f <measure_execution_time_double>:
  40135f:	41 57                	push   %r15
  401361:	41 56                	push   %r14
  401363:	41 55                	push   %r13
  401365:	41 54                	push   %r12
  401367:	55                   	push   %rbp
  401368:	53                   	push   %rbx
  401369:	48 83 ec 08          	sub    $0x8,%rsp
  40136d:	48 89 fd             	mov    %rdi,%rbp
  401370:	49 89 f4             	mov    %rsi,%r12
  401373:	49 89 d5             	mov    %rdx,%r13
  401376:	49 89 ce             	mov    %rcx,%r14
  401379:	45 89 c7             	mov    %r8d,%r15d
  40137c:	e8 bf fc ff ff       	callq  401040 <clock@plt>
  401381:	48 89 c3             	mov    %rax,%rbx
  401384:	44 89 f9             	mov    %r15d,%ecx
  401387:	4c 89 f2             	mov    %r14,%rdx
  40138a:	4c 89 ee             	mov    %r13,%rsi
  40138d:	4c 89 e7             	mov    %r12,%rdi
  401390:	ff d5                	callq  *%rbp
  401392:	e8 a9 fc ff ff       	callq  401040 <clock@plt>
  401397:	48 29 d8             	sub    %rbx,%rax
  40139a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40139e:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  4013a3:	c5 fb 5e 05 cd 0c 00 	vdivsd 0xccd(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  4013aa:	00 
  4013ab:	48 83 c4 08          	add    $0x8,%rsp
  4013af:	5b                   	pop    %rbx
  4013b0:	5d                   	pop    %rbp
  4013b1:	41 5c                	pop    %r12
  4013b3:	41 5d                	pop    %r13
  4013b5:	41 5e                	pop    %r14
  4013b7:	41 5f                	pop    %r15
  4013b9:	c3                   	retq   

00000000004013ba <main>:
  4013ba:	41 57                	push   %r15
  4013bc:	41 56                	push   %r14
  4013be:	41 55                	push   %r13
  4013c0:	41 54                	push   %r12
  4013c2:	55                   	push   %rbp
  4013c3:	53                   	push   %rbx
  4013c4:	48 83 ec 28          	sub    $0x28,%rsp
  4013c8:	41 b8 04 20 40 00    	mov    $0x402004,%r8d
  4013ce:	b9 17 20 40 00       	mov    $0x402017,%ecx
  4013d3:	ba 29 20 40 00       	mov    $0x402029,%edx
  4013d8:	be 2e 20 40 00       	mov    $0x40202e,%esi
  4013dd:	bf 39 20 40 00       	mov    $0x402039,%edi
  4013e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4013e7:	e8 64 fc ff ff       	callq  401050 <printf@plt>
  4013ec:	c7 44 24 1c 0b 00 00 	movl   $0xb,0x1c(%rsp)
  4013f3:	00 
  4013f4:	41 bf 01 00 00 00    	mov    $0x1,%r15d
  4013fa:	41 69 df 40 42 0f 00 	imul   $0xf4240,%r15d,%ebx
  401401:	48 63 eb             	movslq %ebx,%rbp
  401404:	4c 8d 24 ad 00 00 00 	lea    0x0(,%rbp,4),%r12
  40140b:	00 
  40140c:	4c 89 e7             	mov    %r12,%rdi
  40140f:	e8 4c fc ff ff       	callq  401060 <malloc@plt>
  401414:	49 89 c6             	mov    %rax,%r14
  401417:	4c 89 e7             	mov    %r12,%rdi
  40141a:	e8 41 fc ff ff       	callq  401060 <malloc@plt>
  40141f:	49 89 c5             	mov    %rax,%r13
  401422:	4c 89 e7             	mov    %r12,%rdi
  401425:	e8 36 fc ff ff       	callq  401060 <malloc@plt>
  40142a:	49 89 c4             	mov    %rax,%r12
  40142d:	48 c1 e5 03          	shl    $0x3,%rbp
  401431:	48 89 ef             	mov    %rbp,%rdi
  401434:	e8 27 fc ff ff       	callq  401060 <malloc@plt>
  401439:	48 89 04 24          	mov    %rax,(%rsp)
  40143d:	48 89 ef             	mov    %rbp,%rdi
  401440:	e8 1b fc ff ff       	callq  401060 <malloc@plt>
  401445:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40144a:	48 89 ef             	mov    %rbp,%rdi
  40144d:	e8 0e fc ff ff       	callq  401060 <malloc@plt>
  401452:	48 89 c5             	mov    %rax,%rbp
  401455:	89 d9                	mov    %ebx,%ecx
  401457:	4c 89 e2             	mov    %r12,%rdx
  40145a:	4c 89 ee             	mov    %r13,%rsi
  40145d:	4c 89 f7             	mov    %r14,%rdi
  401460:	e8 b1 fd ff ff       	callq  401216 <initialize_arrays>
  401465:	89 d9                	mov    %ebx,%ecx
  401467:	48 89 ea             	mov    %rbp,%rdx
  40146a:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40146f:	48 8b 3c 24          	mov    (%rsp),%rdi
  401473:	e8 15 fe ff ff       	callq  40128d <initialize_arrays_double>
  401478:	41 89 d8             	mov    %ebx,%r8d
  40147b:	4c 89 e1             	mov    %r12,%rcx
  40147e:	4c 89 ea             	mov    %r13,%rdx
  401481:	4c 89 f6             	mov    %r14,%rsi
  401484:	bf 66 11 40 00       	mov    $0x401166,%edi
  401489:	e8 76 fe ff ff       	callq  401304 <measure_execution_time>
  40148e:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
  401494:	41 89 d8             	mov    %ebx,%r8d
  401497:	48 89 e9             	mov    %rbp,%rcx
  40149a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40149f:	48 8b 34 24          	mov    (%rsp),%rsi
  4014a3:	bf be 11 40 00       	mov    $0x4011be,%edi
  4014a8:	e8 b2 fe ff ff       	callq  40135f <measure_execution_time_double>
  4014ad:	c5 fb 10 c8          	vmovsd %xmm0,%xmm0,%xmm1
  4014b1:	c5 fb 10 44 24 10    	vmovsd 0x10(%rsp),%xmm0
  4014b7:	89 da                	mov    %ebx,%edx
  4014b9:	44 89 fe             	mov    %r15d,%esi
  4014bc:	bf 52 20 40 00       	mov    $0x402052,%edi
  4014c1:	b8 02 00 00 00       	mov    $0x2,%eax
  4014c6:	e8 85 fb ff ff       	callq  401050 <printf@plt>
  4014cb:	4c 89 f7             	mov    %r14,%rdi
  4014ce:	e8 5d fb ff ff       	callq  401030 <free@plt>
  4014d3:	4c 89 ef             	mov    %r13,%rdi
  4014d6:	e8 55 fb ff ff       	callq  401030 <free@plt>
  4014db:	4c 89 e7             	mov    %r12,%rdi
  4014de:	e8 4d fb ff ff       	callq  401030 <free@plt>
  4014e3:	48 8b 3c 24          	mov    (%rsp),%rdi
  4014e7:	e8 44 fb ff ff       	callq  401030 <free@plt>
  4014ec:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4014f1:	e8 3a fb ff ff       	callq  401030 <free@plt>
  4014f6:	48 89 ef             	mov    %rbp,%rdi
  4014f9:	e8 32 fb ff ff       	callq  401030 <free@plt>
  4014fe:	45 01 ff             	add    %r15d,%r15d
  401501:	83 6c 24 1c 01       	subl   $0x1,0x1c(%rsp)
  401506:	0f 85 ee fe ff ff    	jne    4013fa <main+0x40>
  40150c:	b8 00 00 00 00       	mov    $0x0,%eax
  401511:	48 83 c4 28          	add    $0x28,%rsp
  401515:	5b                   	pop    %rbx
  401516:	5d                   	pop    %rbp
  401517:	41 5c                	pop    %r12
  401519:	41 5d                	pop    %r13
  40151b:	41 5e                	pop    %r14
  40151d:	41 5f                	pop    %r15
  40151f:	c3                   	retq   

Disassembly of section .fini:

0000000000401520 <_fini>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	48 83 ec 08          	sub    $0x8,%rsp
  401528:	48 83 c4 08          	add    $0x8,%rsp
  40152c:	c3                   	retq   
