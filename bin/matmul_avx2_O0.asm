
matmul_avx2_O0:     file format elf64-x86-64


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
  401098:	48 c7 c7 a2 14 40 00 	mov    $0x4014a2,%rdi
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

0000000000401166 <initialize_matrix>:
  401166:	55                   	push   %rbp
  401167:	48 89 e5             	mov    %rsp,%rbp
  40116a:	48 83 ec 20          	sub    $0x20,%rsp
  40116e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401172:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401175:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40117c:	eb 31                	jmp    4011af <initialize_matrix+0x49>
  40117e:	e8 ed fe ff ff       	callq  401070 <rand@plt>
  401183:	c5 fa 2a c0          	vcvtsi2ss %eax,%xmm0,%xmm0
  401187:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40118a:	48 98                	cltq   
  40118c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401193:	00 
  401194:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401198:	48 01 d0             	add    %rdx,%rax
  40119b:	c5 fa 10 0d 99 0e 00 	vmovss 0xe99(%rip),%xmm1        # 40203c <_IO_stdin_used+0x3c>
  4011a2:	00 
  4011a3:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
  4011a7:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  4011ab:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4011af:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4011b2:	0f af c0             	imul   %eax,%eax
  4011b5:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  4011b8:	7c c4                	jl     40117e <initialize_matrix+0x18>
  4011ba:	90                   	nop
  4011bb:	90                   	nop
  4011bc:	c9                   	leaveq 
  4011bd:	c3                   	retq   

00000000004011be <matrix_multiply_avx2>:
  4011be:	55                   	push   %rbp
  4011bf:	48 89 e5             	mov    %rsp,%rbp
  4011c2:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4011c6:	48 81 ec 48 01 00 00 	sub    $0x148,%rsp
  4011cd:	48 89 7c 24 a0       	mov    %rdi,-0x60(%rsp)
  4011d2:	48 89 74 24 98       	mov    %rsi,-0x68(%rsp)
  4011d7:	48 89 54 24 90       	mov    %rdx,-0x70(%rsp)
  4011dc:	89 4c 24 8c          	mov    %ecx,-0x74(%rsp)
  4011e0:	c7 84 24 44 01 00 00 	movl   $0x0,0x144(%rsp)
  4011e7:	00 00 00 00 
  4011eb:	e9 31 02 00 00       	jmpq   401421 <matrix_multiply_avx2+0x263>
  4011f0:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  4011f7:	00 00 00 00 
  4011fb:	e9 08 02 00 00       	jmpq   401408 <matrix_multiply_avx2+0x24a>
  401200:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401204:	c5 fc 29 84 24 08 01 	vmovaps %ymm0,0x108(%rsp)
  40120b:	00 00 
  40120d:	c7 84 24 04 01 00 00 	movl   $0x0,0x104(%rsp)
  401214:	00 00 00 00 
  401218:	e9 ec 00 00 00       	jmpq   401309 <matrix_multiply_avx2+0x14b>
  40121d:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
  401224:	0f af 44 24 8c       	imul   -0x74(%rsp),%eax
  401229:	89 c2                	mov    %eax,%edx
  40122b:	8b 84 24 04 01 00 00 	mov    0x104(%rsp),%eax
  401232:	01 d0                	add    %edx,%eax
  401234:	48 98                	cltq   
  401236:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40123d:	00 
  40123e:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
  401243:	48 01 d0             	add    %rdx,%rax
  401246:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
  40124b:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
  401250:	c5 fc 10 00          	vmovups (%rax),%ymm0
  401254:	c5 fc 29 84 24 c8 00 	vmovaps %ymm0,0xc8(%rsp)
  40125b:	00 00 
  40125d:	8b 84 24 04 01 00 00 	mov    0x104(%rsp),%eax
  401264:	0f af 44 24 8c       	imul   -0x74(%rsp),%eax
  401269:	89 c2                	mov    %eax,%edx
  40126b:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
  401272:	01 d0                	add    %edx,%eax
  401274:	48 98                	cltq   
  401276:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40127d:	00 
  40127e:	48 8b 44 24 98       	mov    -0x68(%rsp),%rax
  401283:	48 01 d0             	add    %rdx,%rax
  401286:	48 89 04 24          	mov    %rax,(%rsp)
  40128a:	48 8b 04 24          	mov    (%rsp),%rax
  40128e:	c5 fc 10 00          	vmovups (%rax),%ymm0
  401292:	c5 fc 29 84 24 a8 00 	vmovaps %ymm0,0xa8(%rsp)
  401299:	00 00 
  40129b:	c5 fc 28 84 24 c8 00 	vmovaps 0xc8(%rsp),%ymm0
  4012a2:	00 00 
  4012a4:	c5 fc 29 44 24 28    	vmovaps %ymm0,0x28(%rsp)
  4012aa:	c5 fc 28 84 24 a8 00 	vmovaps 0xa8(%rsp),%ymm0
  4012b1:	00 00 
  4012b3:	c5 fc 29 44 24 08    	vmovaps %ymm0,0x8(%rsp)
  4012b9:	c5 fc 28 44 24 28    	vmovaps 0x28(%rsp),%ymm0
  4012bf:	c5 fc 59 44 24 08    	vmulps 0x8(%rsp),%ymm0,%ymm0
  4012c5:	c5 fc 29 84 24 88 00 	vmovaps %ymm0,0x88(%rsp)
  4012cc:	00 00 
  4012ce:	c5 fc 28 84 24 08 01 	vmovaps 0x108(%rsp),%ymm0
  4012d5:	00 00 
  4012d7:	c5 fc 29 44 24 68    	vmovaps %ymm0,0x68(%rsp)
  4012dd:	c5 fc 28 84 24 88 00 	vmovaps 0x88(%rsp),%ymm0
  4012e4:	00 00 
  4012e6:	c5 fc 29 44 24 48    	vmovaps %ymm0,0x48(%rsp)
  4012ec:	c5 fc 28 44 24 68    	vmovaps 0x68(%rsp),%ymm0
  4012f2:	c5 fc 58 44 24 48    	vaddps 0x48(%rsp),%ymm0,%ymm0
  4012f8:	c5 fc 29 84 24 08 01 	vmovaps %ymm0,0x108(%rsp)
  4012ff:	00 00 
  401301:	83 84 24 04 01 00 00 	addl   $0x8,0x104(%rsp)
  401308:	08 
  401309:	8b 84 24 04 01 00 00 	mov    0x104(%rsp),%eax
  401310:	3b 44 24 8c          	cmp    -0x74(%rsp),%eax
  401314:	0f 8c 03 ff ff ff    	jl     40121d <matrix_multiply_avx2+0x5f>
  40131a:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
  401321:	0f af 44 24 8c       	imul   -0x74(%rsp),%eax
  401326:	89 c2                	mov    %eax,%edx
  401328:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
  40132f:	01 d0                	add    %edx,%eax
  401331:	48 98                	cltq   
  401333:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40133a:	00 
  40133b:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
  401340:	48 01 d0             	add    %rdx,%rax
  401343:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401347:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  40134b:	48 8d 44 24 a8       	lea    -0x58(%rsp),%rax
  401350:	48 89 44 24 f0       	mov    %rax,-0x10(%rsp)
  401355:	c5 fc 28 84 24 08 01 	vmovaps 0x108(%rsp),%ymm0
  40135c:	00 00 
  40135e:	c5 fc 29 44 24 c8    	vmovaps %ymm0,-0x38(%rsp)
  401364:	c5 fc 28 44 24 c8    	vmovaps -0x38(%rsp),%ymm0
  40136a:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
  40136f:	c5 fc 11 00          	vmovups %ymm0,(%rax)
  401373:	90                   	nop
  401374:	c7 84 24 00 01 00 00 	movl   $0x0,0x100(%rsp)
  40137b:	00 00 00 00 
  40137f:	eb 75                	jmp    4013f6 <matrix_multiply_avx2+0x238>
  401381:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
  401388:	0f af 44 24 8c       	imul   -0x74(%rsp),%eax
  40138d:	89 c2                	mov    %eax,%edx
  40138f:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
  401396:	01 d0                	add    %edx,%eax
  401398:	48 98                	cltq   
  40139a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4013a1:	00 
  4013a2:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
  4013a7:	48 01 d0             	add    %rdx,%rax
  4013aa:	c5 fa 10 08          	vmovss (%rax),%xmm1
  4013ae:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
  4013b5:	48 98                	cltq   
  4013b7:	c5 fa 10 44 84 a8    	vmovss -0x58(%rsp,%rax,4),%xmm0
  4013bd:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
  4013c4:	0f af 44 24 8c       	imul   -0x74(%rsp),%eax
  4013c9:	89 c2                	mov    %eax,%edx
  4013cb:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
  4013d2:	01 d0                	add    %edx,%eax
  4013d4:	48 98                	cltq   
  4013d6:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4013dd:	00 
  4013de:	48 8b 44 24 90       	mov    -0x70(%rsp),%rax
  4013e3:	48 01 d0             	add    %rdx,%rax
  4013e6:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  4013ea:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  4013ee:	83 84 24 00 01 00 00 	addl   $0x1,0x100(%rsp)
  4013f5:	01 
  4013f6:	83 bc 24 00 01 00 00 	cmpl   $0x7,0x100(%rsp)
  4013fd:	07 
  4013fe:	7e 81                	jle    401381 <matrix_multiply_avx2+0x1c3>
  401400:	83 84 24 40 01 00 00 	addl   $0x1,0x140(%rsp)
  401407:	01 
  401408:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
  40140f:	3b 44 24 8c          	cmp    -0x74(%rsp),%eax
  401413:	0f 8c e7 fd ff ff    	jl     401200 <matrix_multiply_avx2+0x42>
  401419:	83 84 24 44 01 00 00 	addl   $0x1,0x144(%rsp)
  401420:	01 
  401421:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
  401428:	3b 44 24 8c          	cmp    -0x74(%rsp),%eax
  40142c:	0f 8c be fd ff ff    	jl     4011f0 <matrix_multiply_avx2+0x32>
  401432:	90                   	nop
  401433:	90                   	nop
  401434:	c9                   	leaveq 
  401435:	c3                   	retq   

0000000000401436 <measure_execution_time>:
  401436:	55                   	push   %rbp
  401437:	48 89 e5             	mov    %rsp,%rbp
  40143a:	48 83 ec 40          	sub    $0x40,%rsp
  40143e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401442:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401446:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40144a:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  40144e:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  401452:	e8 e9 fb ff ff       	callq  401040 <clock@plt>
  401457:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40145b:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  40145e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401462:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  401466:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40146a:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  40146e:	48 89 c7             	mov    %rax,%rdi
  401471:	41 ff d0             	callq  *%r8
  401474:	e8 c7 fb ff ff       	callq  401040 <clock@plt>
  401479:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40147d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401481:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  401485:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  40148a:	c5 fb 10 0d ae 0b 00 	vmovsd 0xbae(%rip),%xmm1        # 402040 <_IO_stdin_used+0x40>
  401491:	00 
  401492:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401496:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  40149b:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4014a0:	c9                   	leaveq 
  4014a1:	c3                   	retq   

00000000004014a2 <main>:
  4014a2:	55                   	push   %rbp
  4014a3:	48 89 e5             	mov    %rsp,%rbp
  4014a6:	48 83 ec 40          	sub    $0x40,%rsp
  4014aa:	c7 45 c0 80 00 00 00 	movl   $0x80,-0x40(%rbp)
  4014b1:	c7 45 c4 00 01 00 00 	movl   $0x100,-0x3c(%rbp)
  4014b8:	c7 45 c8 00 02 00 00 	movl   $0x200,-0x38(%rbp)
  4014bf:	c7 45 cc 00 04 00 00 	movl   $0x400,-0x34(%rbp)
  4014c6:	c7 45 f8 04 00 00 00 	movl   $0x4,-0x8(%rbp)
  4014cd:	ba 08 20 40 00       	mov    $0x402008,%edx
  4014d2:	be 1c 20 40 00       	mov    $0x40201c,%esi
  4014d7:	bf 21 20 40 00       	mov    $0x402021,%edi
  4014dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e1:	e8 6a fb ff ff       	callq  401050 <printf@plt>
  4014e6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4014ed:	e9 e3 00 00 00       	jmpq   4015d5 <main+0x133>
  4014f2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4014f5:	48 98                	cltq   
  4014f7:	8b 44 85 c0          	mov    -0x40(%rbp,%rax,4),%eax
  4014fb:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4014fe:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401501:	0f af c0             	imul   %eax,%eax
  401504:	48 98                	cltq   
  401506:	48 c1 e0 02          	shl    $0x2,%rax
  40150a:	48 89 c7             	mov    %rax,%rdi
  40150d:	e8 4e fb ff ff       	callq  401060 <malloc@plt>
  401512:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401516:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401519:	0f af c0             	imul   %eax,%eax
  40151c:	48 98                	cltq   
  40151e:	48 c1 e0 02          	shl    $0x2,%rax
  401522:	48 89 c7             	mov    %rax,%rdi
  401525:	e8 36 fb ff ff       	callq  401060 <malloc@plt>
  40152a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40152e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401531:	0f af c0             	imul   %eax,%eax
  401534:	48 98                	cltq   
  401536:	48 c1 e0 02          	shl    $0x2,%rax
  40153a:	48 89 c7             	mov    %rax,%rdi
  40153d:	e8 1e fb ff ff       	callq  401060 <malloc@plt>
  401542:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401546:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401549:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40154d:	89 d6                	mov    %edx,%esi
  40154f:	48 89 c7             	mov    %rax,%rdi
  401552:	e8 0f fc ff ff       	callq  401166 <initialize_matrix>
  401557:	8b 55 f4             	mov    -0xc(%rbp),%edx
  40155a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40155e:	89 d6                	mov    %edx,%esi
  401560:	48 89 c7             	mov    %rax,%rdi
  401563:	e8 fe fb ff ff       	callq  401166 <initialize_matrix>
  401568:	8b 75 f4             	mov    -0xc(%rbp),%esi
  40156b:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40156f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401573:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401577:	41 89 f0             	mov    %esi,%r8d
  40157a:	48 89 c6             	mov    %rax,%rsi
  40157d:	bf be 11 40 00       	mov    $0x4011be,%edi
  401582:	e8 af fe ff ff       	callq  401436 <measure_execution_time>
  401587:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  40158c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401590:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401594:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401597:	c4 e1 f9 6e c2       	vmovq  %rdx,%xmm0
  40159c:	89 c6                	mov    %eax,%esi
  40159e:	bf 2e 20 40 00       	mov    $0x40202e,%edi
  4015a3:	b8 01 00 00 00       	mov    $0x1,%eax
  4015a8:	e8 a3 fa ff ff       	callq  401050 <printf@plt>
  4015ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015b1:	48 89 c7             	mov    %rax,%rdi
  4015b4:	e8 77 fa ff ff       	callq  401030 <free@plt>
  4015b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4015bd:	48 89 c7             	mov    %rax,%rdi
  4015c0:	e8 6b fa ff ff       	callq  401030 <free@plt>
  4015c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4015c9:	48 89 c7             	mov    %rax,%rdi
  4015cc:	e8 5f fa ff ff       	callq  401030 <free@plt>
  4015d1:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4015d5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015d8:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  4015db:	0f 8c 11 ff ff ff    	jl     4014f2 <main+0x50>
  4015e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4015e6:	c9                   	leaveq 
  4015e7:	c3                   	retq   

Disassembly of section .fini:

00000000004015e8 <_fini>:
  4015e8:	f3 0f 1e fa          	endbr64 
  4015ec:	48 83 ec 08          	sub    $0x8,%rsp
  4015f0:	48 83 c4 08          	add    $0x8,%rsp
  4015f4:	c3                   	retq   
