
vector_add_avx2_O0:     file format elf64-x86-64


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
  401098:	48 c7 c7 a2 16 40 00 	mov    $0x4016a2,%rdi
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
  401184:	eb 7a                	jmp    401200 <initialize_arrays+0x9a>
  401186:	e8 e5 fe ff ff       	callq  401070 <rand@plt>
  40118b:	c5 fa 2a c0          	vcvtsi2ss %eax,%xmm0,%xmm0
  40118f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401192:	48 98                	cltq   
  401194:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40119b:	00 
  40119c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4011a0:	48 01 d0             	add    %rdx,%rax
  4011a3:	c5 fa 10 0d c5 0e 00 	vmovss 0xec5(%rip),%xmm1        # 402070 <_IO_stdin_used+0x70>
  4011aa:	00 
  4011ab:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
  4011af:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  4011b3:	e8 b8 fe ff ff       	callq  401070 <rand@plt>
  4011b8:	c5 fa 2a c0          	vcvtsi2ss %eax,%xmm0,%xmm0
  4011bc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4011bf:	48 98                	cltq   
  4011c1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4011c8:	00 
  4011c9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4011cd:	48 01 d0             	add    %rdx,%rax
  4011d0:	c5 fa 10 0d 98 0e 00 	vmovss 0xe98(%rip),%xmm1        # 402070 <_IO_stdin_used+0x70>
  4011d7:	00 
  4011d8:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
  4011dc:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  4011e0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4011e3:	48 98                	cltq   
  4011e5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4011ec:	00 
  4011ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011f1:	48 01 d0             	add    %rdx,%rax
  4011f4:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4011f8:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  4011fc:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401200:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401203:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  401206:	0f 8c 7a ff ff ff    	jl     401186 <initialize_arrays+0x20>
  40120c:	90                   	nop
  40120d:	90                   	nop
  40120e:	c9                   	leaveq 
  40120f:	c3                   	retq   

0000000000401210 <initialize_arrays_double>:
  401210:	55                   	push   %rbp
  401211:	48 89 e5             	mov    %rsp,%rbp
  401214:	48 83 ec 30          	sub    $0x30,%rsp
  401218:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40121c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401220:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401224:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  401227:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40122e:	eb 7a                	jmp    4012aa <initialize_arrays_double+0x9a>
  401230:	e8 3b fe ff ff       	callq  401070 <rand@plt>
  401235:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  401239:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40123c:	48 98                	cltq   
  40123e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401245:	00 
  401246:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40124a:	48 01 d0             	add    %rdx,%rax
  40124d:	c5 fb 10 0d 23 0e 00 	vmovsd 0xe23(%rip),%xmm1        # 402078 <_IO_stdin_used+0x78>
  401254:	00 
  401255:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401259:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  40125d:	e8 0e fe ff ff       	callq  401070 <rand@plt>
  401262:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  401266:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401269:	48 98                	cltq   
  40126b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401272:	00 
  401273:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401277:	48 01 d0             	add    %rdx,%rax
  40127a:	c5 fb 10 0d f6 0d 00 	vmovsd 0xdf6(%rip),%xmm1        # 402078 <_IO_stdin_used+0x78>
  401281:	00 
  401282:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401286:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  40128a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40128d:	48 98                	cltq   
  40128f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401296:	00 
  401297:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40129b:	48 01 d0             	add    %rdx,%rax
  40129e:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4012a2:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  4012a6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4012aa:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012ad:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4012b0:	0f 8c 7a ff ff ff    	jl     401230 <initialize_arrays_double+0x20>
  4012b6:	90                   	nop
  4012b7:	90                   	nop
  4012b8:	c9                   	leaveq 
  4012b9:	c3                   	retq   

00000000004012ba <vector_add_avx2>:
  4012ba:	55                   	push   %rbp
  4012bb:	48 89 e5             	mov    %rsp,%rbp
  4012be:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4012c2:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  4012c9:	48 89 7c 24 b0       	mov    %rdi,-0x50(%rsp)
  4012ce:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
  4012d3:	48 89 54 24 a0       	mov    %rdx,-0x60(%rsp)
  4012d8:	89 4c 24 9c          	mov    %ecx,-0x64(%rsp)
  4012dc:	c7 84 24 c4 00 00 00 	movl   $0x0,0xc4(%rsp)
  4012e3:	00 00 00 00 
  4012e7:	e9 cc 00 00 00       	jmpq   4013b8 <vector_add_avx2+0xfe>
  4012ec:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  4012f3:	48 98                	cltq   
  4012f5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4012fc:	00 
  4012fd:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
  401302:	48 01 d0             	add    %rdx,%rax
  401305:	48 89 44 24 b8       	mov    %rax,-0x48(%rsp)
  40130a:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
  40130f:	c5 fc 10 00          	vmovups (%rax),%ymm0
  401313:	c5 fc 29 84 24 88 00 	vmovaps %ymm0,0x88(%rsp)
  40131a:	00 00 
  40131c:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  401323:	48 98                	cltq   
  401325:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40132c:	00 
  40132d:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
  401332:	48 01 d0             	add    %rdx,%rax
  401335:	48 89 44 24 c0       	mov    %rax,-0x40(%rsp)
  40133a:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
  40133f:	c5 fc 10 00          	vmovups (%rax),%ymm0
  401343:	c5 fc 29 44 24 68    	vmovaps %ymm0,0x68(%rsp)
  401349:	c5 fc 28 84 24 88 00 	vmovaps 0x88(%rsp),%ymm0
  401350:	00 00 
  401352:	c5 fc 29 44 24 e8    	vmovaps %ymm0,-0x18(%rsp)
  401358:	c5 fc 28 44 24 68    	vmovaps 0x68(%rsp),%ymm0
  40135e:	c5 fc 29 44 24 c8    	vmovaps %ymm0,-0x38(%rsp)
  401364:	c5 fc 28 44 24 e8    	vmovaps -0x18(%rsp),%ymm0
  40136a:	c5 fc 58 44 24 c8    	vaddps -0x38(%rsp),%ymm0,%ymm0
  401370:	c5 fc 29 44 24 48    	vmovaps %ymm0,0x48(%rsp)
  401376:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  40137d:	48 98                	cltq   
  40137f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401386:	00 
  401387:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
  40138c:	48 01 d0             	add    %rdx,%rax
  40138f:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  401394:	c5 fc 28 44 24 48    	vmovaps 0x48(%rsp),%ymm0
  40139a:	c5 fc 29 44 24 08    	vmovaps %ymm0,0x8(%rsp)
  4013a0:	c5 fc 28 44 24 08    	vmovaps 0x8(%rsp),%ymm0
  4013a6:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  4013ab:	c5 fc 11 00          	vmovups %ymm0,(%rax)
  4013af:	90                   	nop
  4013b0:	83 84 24 c4 00 00 00 	addl   $0x8,0xc4(%rsp)
  4013b7:	08 
  4013b8:	8b 44 24 9c          	mov    -0x64(%rsp),%eax
  4013bc:	83 e8 07             	sub    $0x7,%eax
  4013bf:	39 84 24 c4 00 00 00 	cmp    %eax,0xc4(%rsp)
  4013c6:	0f 8c 20 ff ff ff    	jl     4012ec <vector_add_avx2+0x32>
  4013cc:	eb 63                	jmp    401431 <vector_add_avx2+0x177>
  4013ce:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  4013d5:	48 98                	cltq   
  4013d7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4013de:	00 
  4013df:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
  4013e4:	48 01 d0             	add    %rdx,%rax
  4013e7:	c5 fa 10 08          	vmovss (%rax),%xmm1
  4013eb:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  4013f2:	48 98                	cltq   
  4013f4:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4013fb:	00 
  4013fc:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
  401401:	48 01 d0             	add    %rdx,%rax
  401404:	c5 fa 10 00          	vmovss (%rax),%xmm0
  401408:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  40140f:	48 98                	cltq   
  401411:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401418:	00 
  401419:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
  40141e:	48 01 d0             	add    %rdx,%rax
  401421:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  401425:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  401429:	83 84 24 c4 00 00 00 	addl   $0x1,0xc4(%rsp)
  401430:	01 
  401431:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  401438:	3b 44 24 9c          	cmp    -0x64(%rsp),%eax
  40143c:	7c 90                	jl     4013ce <vector_add_avx2+0x114>
  40143e:	90                   	nop
  40143f:	90                   	nop
  401440:	c9                   	leaveq 
  401441:	c3                   	retq   

0000000000401442 <vector_add_avx2_double>:
  401442:	55                   	push   %rbp
  401443:	48 89 e5             	mov    %rsp,%rbp
  401446:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40144a:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
  401451:	48 89 7c 24 b0       	mov    %rdi,-0x50(%rsp)
  401456:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
  40145b:	48 89 54 24 a0       	mov    %rdx,-0x60(%rsp)
  401460:	89 4c 24 9c          	mov    %ecx,-0x64(%rsp)
  401464:	c7 84 24 c4 00 00 00 	movl   $0x0,0xc4(%rsp)
  40146b:	00 00 00 00 
  40146f:	e9 cc 00 00 00       	jmpq   401540 <vector_add_avx2_double+0xfe>
  401474:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  40147b:	48 98                	cltq   
  40147d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401484:	00 
  401485:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
  40148a:	48 01 d0             	add    %rdx,%rax
  40148d:	48 89 44 24 b8       	mov    %rax,-0x48(%rsp)
  401492:	48 8b 44 24 b8       	mov    -0x48(%rsp),%rax
  401497:	c5 fd 10 00          	vmovupd (%rax),%ymm0
  40149b:	c5 fd 29 84 24 88 00 	vmovapd %ymm0,0x88(%rsp)
  4014a2:	00 00 
  4014a4:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  4014ab:	48 98                	cltq   
  4014ad:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4014b4:	00 
  4014b5:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
  4014ba:	48 01 d0             	add    %rdx,%rax
  4014bd:	48 89 44 24 c0       	mov    %rax,-0x40(%rsp)
  4014c2:	48 8b 44 24 c0       	mov    -0x40(%rsp),%rax
  4014c7:	c5 fd 10 00          	vmovupd (%rax),%ymm0
  4014cb:	c5 fd 29 44 24 68    	vmovapd %ymm0,0x68(%rsp)
  4014d1:	c5 fd 28 84 24 88 00 	vmovapd 0x88(%rsp),%ymm0
  4014d8:	00 00 
  4014da:	c5 fd 29 44 24 e8    	vmovapd %ymm0,-0x18(%rsp)
  4014e0:	c5 fd 28 44 24 68    	vmovapd 0x68(%rsp),%ymm0
  4014e6:	c5 fd 29 44 24 c8    	vmovapd %ymm0,-0x38(%rsp)
  4014ec:	c5 fd 28 44 24 e8    	vmovapd -0x18(%rsp),%ymm0
  4014f2:	c5 fd 58 44 24 c8    	vaddpd -0x38(%rsp),%ymm0,%ymm0
  4014f8:	c5 fd 29 44 24 48    	vmovapd %ymm0,0x48(%rsp)
  4014fe:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  401505:	48 98                	cltq   
  401507:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40150e:	00 
  40150f:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
  401514:	48 01 d0             	add    %rdx,%rax
  401517:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  40151c:	c5 fd 28 44 24 48    	vmovapd 0x48(%rsp),%ymm0
  401522:	c5 fd 29 44 24 08    	vmovapd %ymm0,0x8(%rsp)
  401528:	c5 fd 28 44 24 08    	vmovapd 0x8(%rsp),%ymm0
  40152e:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  401533:	c5 fd 11 00          	vmovupd %ymm0,(%rax)
  401537:	90                   	nop
  401538:	83 84 24 c4 00 00 00 	addl   $0x4,0xc4(%rsp)
  40153f:	04 
  401540:	8b 44 24 9c          	mov    -0x64(%rsp),%eax
  401544:	83 e8 03             	sub    $0x3,%eax
  401547:	39 84 24 c4 00 00 00 	cmp    %eax,0xc4(%rsp)
  40154e:	0f 8c 20 ff ff ff    	jl     401474 <vector_add_avx2_double+0x32>
  401554:	eb 63                	jmp    4015b9 <vector_add_avx2_double+0x177>
  401556:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  40155d:	48 98                	cltq   
  40155f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401566:	00 
  401567:	48 8b 44 24 b0       	mov    -0x50(%rsp),%rax
  40156c:	48 01 d0             	add    %rdx,%rax
  40156f:	c5 fb 10 08          	vmovsd (%rax),%xmm1
  401573:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  40157a:	48 98                	cltq   
  40157c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401583:	00 
  401584:	48 8b 44 24 a8       	mov    -0x58(%rsp),%rax
  401589:	48 01 d0             	add    %rdx,%rax
  40158c:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  401590:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  401597:	48 98                	cltq   
  401599:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4015a0:	00 
  4015a1:	48 8b 44 24 a0       	mov    -0x60(%rsp),%rax
  4015a6:	48 01 d0             	add    %rdx,%rax
  4015a9:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  4015ad:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  4015b1:	83 84 24 c4 00 00 00 	addl   $0x1,0xc4(%rsp)
  4015b8:	01 
  4015b9:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
  4015c0:	3b 44 24 9c          	cmp    -0x64(%rsp),%eax
  4015c4:	7c 90                	jl     401556 <vector_add_avx2_double+0x114>
  4015c6:	90                   	nop
  4015c7:	90                   	nop
  4015c8:	c9                   	leaveq 
  4015c9:	c3                   	retq   

00000000004015ca <measure_execution_time>:
  4015ca:	55                   	push   %rbp
  4015cb:	48 89 e5             	mov    %rsp,%rbp
  4015ce:	48 83 ec 40          	sub    $0x40,%rsp
  4015d2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4015d6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4015da:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4015de:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4015e2:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  4015e6:	e8 55 fa ff ff       	callq  401040 <clock@plt>
  4015eb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4015ef:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  4015f2:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4015f6:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  4015fa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4015fe:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  401602:	48 89 c7             	mov    %rax,%rdi
  401605:	41 ff d0             	callq  *%r8
  401608:	e8 33 fa ff ff       	callq  401040 <clock@plt>
  40160d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401611:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401615:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  401619:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  40161e:	c5 fb 10 0d 5a 0a 00 	vmovsd 0xa5a(%rip),%xmm1        # 402080 <_IO_stdin_used+0x80>
  401625:	00 
  401626:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  40162a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  40162f:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  401634:	c9                   	leaveq 
  401635:	c3                   	retq   

0000000000401636 <measure_execution_time_double>:
  401636:	55                   	push   %rbp
  401637:	48 89 e5             	mov    %rsp,%rbp
  40163a:	48 83 ec 40          	sub    $0x40,%rsp
  40163e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401642:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401646:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40164a:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  40164e:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  401652:	e8 e9 f9 ff ff       	callq  401040 <clock@plt>
  401657:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40165b:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  40165e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401662:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  401666:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40166a:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  40166e:	48 89 c7             	mov    %rax,%rdi
  401671:	41 ff d0             	callq  *%r8
  401674:	e8 c7 f9 ff ff       	callq  401040 <clock@plt>
  401679:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40167d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401681:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  401685:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  40168a:	c5 fb 10 0d ee 09 00 	vmovsd 0x9ee(%rip),%xmm1        # 402080 <_IO_stdin_used+0x80>
  401691:	00 
  401692:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401696:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  40169b:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4016a0:	c9                   	leaveq 
  4016a1:	c3                   	retq   

00000000004016a2 <main>:
  4016a2:	55                   	push   %rbp
  4016a3:	48 89 e5             	mov    %rsp,%rbp
  4016a6:	48 83 ec 50          	sub    $0x50,%rsp
  4016aa:	c7 45 f8 40 42 0f 00 	movl   $0xf4240,-0x8(%rbp)
  4016b1:	41 b8 08 20 40 00    	mov    $0x402008,%r8d
  4016b7:	b9 1b 20 40 00       	mov    $0x40201b,%ecx
  4016bc:	ba 2d 20 40 00       	mov    $0x40202d,%edx
  4016c1:	be 32 20 40 00       	mov    $0x402032,%esi
  4016c6:	bf 3d 20 40 00       	mov    $0x40203d,%edi
  4016cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d0:	e8 7b f9 ff ff       	callq  401050 <printf@plt>
  4016d5:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4016dc:	e9 7a 01 00 00       	jmpq   40185b <main+0x1b9>
  4016e1:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4016e4:	0f af 45 fc          	imul   -0x4(%rbp),%eax
  4016e8:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4016eb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4016ee:	48 98                	cltq   
  4016f0:	48 c1 e0 02          	shl    $0x2,%rax
  4016f4:	48 89 c7             	mov    %rax,%rdi
  4016f7:	e8 64 f9 ff ff       	callq  401060 <malloc@plt>
  4016fc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401700:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401703:	48 98                	cltq   
  401705:	48 c1 e0 02          	shl    $0x2,%rax
  401709:	48 89 c7             	mov    %rax,%rdi
  40170c:	e8 4f f9 ff ff       	callq  401060 <malloc@plt>
  401711:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401715:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401718:	48 98                	cltq   
  40171a:	48 c1 e0 02          	shl    $0x2,%rax
  40171e:	48 89 c7             	mov    %rax,%rdi
  401721:	e8 3a f9 ff ff       	callq  401060 <malloc@plt>
  401726:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40172a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40172d:	48 98                	cltq   
  40172f:	48 c1 e0 03          	shl    $0x3,%rax
  401733:	48 89 c7             	mov    %rax,%rdi
  401736:	e8 25 f9 ff ff       	callq  401060 <malloc@plt>
  40173b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40173f:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401742:	48 98                	cltq   
  401744:	48 c1 e0 03          	shl    $0x3,%rax
  401748:	48 89 c7             	mov    %rax,%rdi
  40174b:	e8 10 f9 ff ff       	callq  401060 <malloc@plt>
  401750:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401754:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401757:	48 98                	cltq   
  401759:	48 c1 e0 03          	shl    $0x3,%rax
  40175d:	48 89 c7             	mov    %rax,%rdi
  401760:	e8 fb f8 ff ff       	callq  401060 <malloc@plt>
  401765:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401769:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  40176c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401770:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  401774:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401778:	48 89 c7             	mov    %rax,%rdi
  40177b:	e8 e6 f9 ff ff       	callq  401166 <initialize_arrays>
  401780:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  401783:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401787:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40178b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40178f:	48 89 c7             	mov    %rax,%rdi
  401792:	e8 79 fa ff ff       	callq  401210 <initialize_arrays_double>
  401797:	8b 75 f4             	mov    -0xc(%rbp),%esi
  40179a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40179e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4017a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017a6:	41 89 f0             	mov    %esi,%r8d
  4017a9:	48 89 c6             	mov    %rax,%rsi
  4017ac:	bf ba 12 40 00       	mov    $0x4012ba,%edi
  4017b1:	e8 14 fe ff ff       	callq  4015ca <measure_execution_time>
  4017b6:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4017bb:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4017bf:	8b 75 f4             	mov    -0xc(%rbp),%esi
  4017c2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  4017c6:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4017ca:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4017ce:	41 89 f0             	mov    %esi,%r8d
  4017d1:	48 89 c6             	mov    %rax,%rsi
  4017d4:	bf 42 14 40 00       	mov    $0x401442,%edi
  4017d9:	e8 58 fe ff ff       	callq  401636 <measure_execution_time_double>
  4017de:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4017e3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4017e7:	c5 fb 10 45 b0       	vmovsd -0x50(%rbp),%xmm0
  4017ec:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  4017f0:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4017f3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4017f6:	c5 fb 10 c8          	vmovsd %xmm0,%xmm0,%xmm1
  4017fa:	c4 e1 f9 6e c1       	vmovq  %rcx,%xmm0
  4017ff:	89 c6                	mov    %eax,%esi
  401801:	bf 56 20 40 00       	mov    $0x402056,%edi
  401806:	b8 02 00 00 00       	mov    $0x2,%eax
  40180b:	e8 40 f8 ff ff       	callq  401050 <printf@plt>
  401810:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401814:	48 89 c7             	mov    %rax,%rdi
  401817:	e8 14 f8 ff ff       	callq  401030 <free@plt>
  40181c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401820:	48 89 c7             	mov    %rax,%rdi
  401823:	e8 08 f8 ff ff       	callq  401030 <free@plt>
  401828:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40182c:	48 89 c7             	mov    %rax,%rdi
  40182f:	e8 fc f7 ff ff       	callq  401030 <free@plt>
  401834:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401838:	48 89 c7             	mov    %rax,%rdi
  40183b:	e8 f0 f7 ff ff       	callq  401030 <free@plt>
  401840:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401844:	48 89 c7             	mov    %rax,%rdi
  401847:	e8 e4 f7 ff ff       	callq  401030 <free@plt>
  40184c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401850:	48 89 c7             	mov    %rax,%rdi
  401853:	e8 d8 f7 ff ff       	callq  401030 <free@plt>
  401858:	d1 65 fc             	shll   -0x4(%rbp)
  40185b:	81 7d fc 00 04 00 00 	cmpl   $0x400,-0x4(%rbp)
  401862:	0f 8e 79 fe ff ff    	jle    4016e1 <main+0x3f>
  401868:	b8 00 00 00 00       	mov    $0x0,%eax
  40186d:	c9                   	leaveq 
  40186e:	c3                   	retq   

Disassembly of section .fini:

0000000000401870 <_fini>:
  401870:	f3 0f 1e fa          	endbr64 
  401874:	48 83 ec 08          	sub    $0x8,%rsp
  401878:	48 83 c4 08          	add    $0x8,%rsp
  40187c:	c3                   	retq   
