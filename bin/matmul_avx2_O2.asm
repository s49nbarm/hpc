
matmul_avx2_O2:     file format elf64-x86-64


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
  401087:	be 18 20 40 00       	mov    $0x402018,%esi
  40108c:	31 c0                	xor    %eax,%eax
  40108e:	41 56                	push   %r14
  401090:	bf 1d 20 40 00       	mov    $0x40201d,%edi
  401095:	41 55                	push   %r13
  401097:	41 54                	push   %r12
  401099:	55                   	push   %rbp
  40109a:	53                   	push   %rbx
  40109b:	48 83 ec 28          	sub    $0x28,%rsp
  40109f:	c5 f9 6f 05 a9 0f 00 	vmovdqa 0xfa9(%rip),%xmm0        # 402050 <_IO_stdin_used+0x50>
  4010a6:	00 
  4010a7:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  4010ad:	e8 9e ff ff ff       	callq  401050 <printf@plt>
  4010b2:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  4010b7:	48 89 04 24          	mov    %rax,(%rsp)
  4010bb:	48 8b 04 24          	mov    (%rsp),%rax
  4010bf:	44 8b 30             	mov    (%rax),%r14d
  4010c2:	44 89 f5             	mov    %r14d,%ebp
  4010c5:	41 0f af ee          	imul   %r14d,%ebp
  4010c9:	48 63 dd             	movslq %ebp,%rbx
  4010cc:	48 c1 e3 02          	shl    $0x2,%rbx
  4010d0:	48 89 df             	mov    %rbx,%rdi
  4010d3:	e8 88 ff ff ff       	callq  401060 <malloc@plt>
  4010d8:	48 89 df             	mov    %rbx,%rdi
  4010db:	49 89 c5             	mov    %rax,%r13
  4010de:	e8 7d ff ff ff       	callq  401060 <malloc@plt>
  4010e3:	48 89 df             	mov    %rbx,%rdi
  4010e6:	49 89 c4             	mov    %rax,%r12
  4010e9:	e8 72 ff ff ff       	callq  401060 <malloc@plt>
  4010ee:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4010f3:	85 ed                	test   %ebp,%ebp
  4010f5:	74 5c                	je     401153 <main+0xd3>
  4010f7:	4d 89 ef             	mov    %r13,%r15
  4010fa:	4a 8d 2c 2b          	lea    (%rbx,%r13,1),%rbp
  4010fe:	66 90                	xchg   %ax,%ax
  401100:	e8 6b ff ff ff       	callq  401070 <rand@plt>
  401105:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  401109:	49 83 c7 04          	add    $0x4,%r15
  40110d:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  401111:	c5 fa 59 05 1f 0f 00 	vmulss 0xf1f(%rip),%xmm0,%xmm0        # 402038 <_IO_stdin_used+0x38>
  401118:	00 
  401119:	c4 c1 7a 11 47 fc    	vmovss %xmm0,-0x4(%r15)
  40111f:	49 39 ef             	cmp    %rbp,%r15
  401122:	75 dc                	jne    401100 <main+0x80>
  401124:	4c 89 e5             	mov    %r12,%rbp
  401127:	4c 01 e3             	add    %r12,%rbx
  40112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401130:	e8 3b ff ff ff       	callq  401070 <rand@plt>
  401135:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  401139:	48 83 c5 04          	add    $0x4,%rbp
  40113d:	c5 ea 2a c0          	vcvtsi2ss %eax,%xmm2,%xmm0
  401141:	c5 fa 59 05 ef 0e 00 	vmulss 0xeef(%rip),%xmm0,%xmm0        # 402038 <_IO_stdin_used+0x38>
  401148:	00 
  401149:	c5 fa 11 45 fc       	vmovss %xmm0,-0x4(%rbp)
  40114e:	48 39 dd             	cmp    %rbx,%rbp
  401151:	75 dd                	jne    401130 <main+0xb0>
  401153:	e8 e8 fe ff ff       	callq  401040 <clock@plt>
  401158:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
  40115d:	44 89 f1             	mov    %r14d,%ecx
  401160:	4c 89 e6             	mov    %r12,%rsi
  401163:	4c 89 ef             	mov    %r13,%rdi
  401166:	48 89 c3             	mov    %rax,%rbx
  401169:	4c 89 fa             	mov    %r15,%rdx
  40116c:	e8 bf 01 00 00       	callq  401330 <matrix_multiply_avx2>
  401171:	e8 ca fe ff ff       	callq  401040 <clock@plt>
  401176:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  40117a:	44 89 f6             	mov    %r14d,%esi
  40117d:	bf 2a 20 40 00       	mov    $0x40202a,%edi
  401182:	48 29 d8             	sub    %rbx,%rax
  401185:	c4 e1 e3 2a c0       	vcvtsi2sd %rax,%xmm3,%xmm0
  40118a:	b8 01 00 00 00       	mov    $0x1,%eax
  40118f:	c5 fb 5e 05 a9 0e 00 	vdivsd 0xea9(%rip),%xmm0,%xmm0        # 402040 <_IO_stdin_used+0x40>
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
  4011c5:	0f 85 f0 fe ff ff    	jne    4010bb <main+0x3b>
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
  4012f5:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4012f9:	48 83 c3 04          	add    $0x4,%rbx
  4012fd:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  401301:	c5 fa 59 05 2f 0d 00 	vmulss 0xd2f(%rip),%xmm0,%xmm0        # 402038 <_IO_stdin_used+0x38>
  401308:	00 
  401309:	c5 fa 11 43 fc       	vmovss %xmm0,-0x4(%rbx)
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

0000000000401330 <matrix_multiply_avx2>:
  401330:	55                   	push   %rbp
  401331:	48 89 e5             	mov    %rsp,%rbp
  401334:	41 57                	push   %r15
  401336:	41 56                	push   %r14
  401338:	41 55                	push   %r13
  40133a:	41 54                	push   %r12
  40133c:	53                   	push   %rbx
  40133d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  401341:	48 89 74 24 f0       	mov    %rsi,-0x10(%rsp)
  401346:	85 c9                	test   %ecx,%ecx
  401348:	0f 8e f2 00 00 00    	jle    401440 <matrix_multiply_avx2+0x110>
  40134e:	8d 34 cd 00 00 00 00 	lea    0x0(,%rcx,8),%esi
  401355:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401358:	4c 63 d9             	movslq %ecx,%r11
  40135b:	49 89 d2             	mov    %rdx,%r10
  40135e:	48 63 f6             	movslq %esi,%rsi
  401361:	c1 e8 03             	shr    $0x3,%eax
  401364:	49 89 f9             	mov    %rdi,%r9
  401367:	31 d2                	xor    %edx,%edx
  401369:	48 c1 e6 02          	shl    $0x2,%rsi
  40136d:	4c 8d 7f 20          	lea    0x20(%rdi),%r15
  401371:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
  401375:	31 db                	xor    %ebx,%ebx
  401377:	4e 8d 24 9d 00 00 00 	lea    0x0(,%r11,4),%r12
  40137e:	00 
  40137f:	44 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14d
  401386:	00 
  401387:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40138e:	00 00 
  401390:	89 5c 24 fc          	mov    %ebx,-0x4(%rsp)
  401394:	49 8d 04 16          	lea    (%r14,%rdx,1),%rax
  401398:	4c 8b 6c 24 f0       	mov    -0x10(%rsp),%r13
  40139d:	45 31 c0             	xor    %r8d,%r8d
  4013a0:	49 8d 3c 87          	lea    (%r15,%rax,4),%rdi
  4013a4:	0f 1f 40 00          	nopl   0x0(%rax)
  4013a8:	4c 89 eb             	mov    %r13,%rbx
  4013ab:	4c 89 c8             	mov    %r9,%rax
  4013ae:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4013b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4013b8:	c5 fc 10 28          	vmovups (%rax),%ymm5
  4013bc:	c5 d4 59 03          	vmulps (%rbx),%ymm5,%ymm0
  4013c0:	48 83 c0 20          	add    $0x20,%rax
  4013c4:	48 01 f3             	add    %rsi,%rbx
  4013c7:	c5 f4 58 c8          	vaddps %ymm0,%ymm1,%ymm1
  4013cb:	48 39 c7             	cmp    %rax,%rdi
  4013ce:	75 e8                	jne    4013b8 <matrix_multiply_avx2+0x88>
  4013d0:	c5 f2 58 d3          	vaddss %xmm3,%xmm1,%xmm2
  4013d4:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  4013d9:	c5 f0 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm0
  4013de:	49 83 c5 04          	add    $0x4,%r13
  4013e2:	c5 da 58 e2          	vaddss %xmm2,%xmm4,%xmm4
  4013e6:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  4013ea:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4013f0:	c5 ea 58 d4          	vaddss %xmm4,%xmm2,%xmm2
  4013f4:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  4013f8:	c5 f0 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm2
  4013fd:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  401401:	c5 ea 58 d0          	vaddss %xmm0,%xmm2,%xmm2
  401405:	c5 f0 15 c1          	vunpckhps %xmm1,%xmm1,%xmm0
  401409:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40140e:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  401412:	c5 fa 58 c9          	vaddss %xmm1,%xmm0,%xmm1
  401416:	c4 81 7a 11 0c 82    	vmovss %xmm1,(%r10,%r8,4)
  40141c:	49 83 c0 01          	add    $0x1,%r8
  401420:	4d 39 d8             	cmp    %r11,%r8
  401423:	75 83                	jne    4013a8 <matrix_multiply_avx2+0x78>
  401425:	8b 5c 24 fc          	mov    -0x4(%rsp),%ebx
  401429:	4d 01 e2             	add    %r12,%r10
  40142c:	4d 01 e1             	add    %r12,%r9
  40142f:	4c 01 da             	add    %r11,%rdx
  401432:	83 c3 01             	add    $0x1,%ebx
  401435:	39 d9                	cmp    %ebx,%ecx
  401437:	0f 85 53 ff ff ff    	jne    401390 <matrix_multiply_avx2+0x60>
  40143d:	c5 f8 77             	vzeroupper 
  401440:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  401444:	5b                   	pop    %rbx
  401445:	41 5c                	pop    %r12
  401447:	41 5d                	pop    %r13
  401449:	41 5e                	pop    %r14
  40144b:	41 5f                	pop    %r15
  40144d:	5d                   	pop    %rbp
  40144e:	c3                   	retq   
  40144f:	90                   	nop

0000000000401450 <measure_execution_time>:
  401450:	41 57                	push   %r15
  401452:	45 89 c7             	mov    %r8d,%r15d
  401455:	41 56                	push   %r14
  401457:	49 89 ce             	mov    %rcx,%r14
  40145a:	41 55                	push   %r13
  40145c:	49 89 d5             	mov    %rdx,%r13
  40145f:	41 54                	push   %r12
  401461:	49 89 f4             	mov    %rsi,%r12
  401464:	55                   	push   %rbp
  401465:	48 89 fd             	mov    %rdi,%rbp
  401468:	53                   	push   %rbx
  401469:	48 83 ec 08          	sub    $0x8,%rsp
  40146d:	e8 ce fb ff ff       	callq  401040 <clock@plt>
  401472:	44 89 f9             	mov    %r15d,%ecx
  401475:	4c 89 f2             	mov    %r14,%rdx
  401478:	4c 89 ee             	mov    %r13,%rsi
  40147b:	48 89 c3             	mov    %rax,%rbx
  40147e:	4c 89 e7             	mov    %r12,%rdi
  401481:	ff d5                	callq  *%rbp
  401483:	e8 b8 fb ff ff       	callq  401040 <clock@plt>
  401488:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40148c:	48 29 d8             	sub    %rbx,%rax
  40148f:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401494:	c5 fb 5e 05 a4 0b 00 	vdivsd 0xba4(%rip),%xmm0,%xmm0        # 402040 <_IO_stdin_used+0x40>
  40149b:	00 
  40149c:	48 83 c4 08          	add    $0x8,%rsp
  4014a0:	5b                   	pop    %rbx
  4014a1:	5d                   	pop    %rbp
  4014a2:	41 5c                	pop    %r12
  4014a4:	41 5d                	pop    %r13
  4014a6:	41 5e                	pop    %r14
  4014a8:	41 5f                	pop    %r15
  4014aa:	c3                   	retq   

Disassembly of section .fini:

00000000004014ac <_fini>:
  4014ac:	f3 0f 1e fa          	endbr64 
  4014b0:	48 83 ec 08          	sub    $0x8,%rsp
  4014b4:	48 83 c4 08          	add    $0x8,%rsp
  4014b8:	c3                   	retq   
