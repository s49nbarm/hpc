
vector_add_avx2_O3:     file format elf64-x86-64


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
  401080:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  401085:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  401089:	b9 17 20 40 00       	mov    $0x402017,%ecx
  40108e:	31 c0                	xor    %eax,%eax
  401090:	41 ff 72 f8          	pushq  -0x8(%r10)
  401094:	41 b8 04 20 40 00    	mov    $0x402004,%r8d
  40109a:	ba 29 20 40 00       	mov    $0x402029,%edx
  40109f:	be 2e 20 40 00       	mov    $0x40202e,%esi
  4010a4:	55                   	push   %rbp
  4010a5:	bf 39 20 40 00       	mov    $0x402039,%edi
  4010aa:	48 89 e5             	mov    %rsp,%rbp
  4010ad:	41 57                	push   %r15
  4010af:	41 56                	push   %r14
  4010b1:	41 55                	push   %r13
  4010b3:	41 54                	push   %r12
  4010b5:	41 52                	push   %r10
  4010b7:	53                   	push   %rbx
  4010b8:	48 83 ec 40          	sub    $0x40,%rsp
  4010bc:	e8 8f ff ff ff       	callq  401050 <printf@plt>
  4010c1:	c7 45 a4 0b 00 00 00 	movl   $0xb,-0x5c(%rbp)
  4010c8:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%rbp)
  4010cf:	90                   	nop
  4010d0:	69 45 a8 40 42 0f 00 	imul   $0xf4240,-0x58(%rbp),%eax
  4010d7:	4c 63 f0             	movslq %eax,%r14
  4010da:	89 45 ac             	mov    %eax,-0x54(%rbp)
  4010dd:	4a 8d 1c b5 00 00 00 	lea    0x0(,%r14,4),%rbx
  4010e4:	00 
  4010e5:	48 89 df             	mov    %rbx,%rdi
  4010e8:	48 89 5d b8          	mov    %rbx,-0x48(%rbp)
  4010ec:	e8 6f ff ff ff       	callq  401060 <malloc@plt>
  4010f1:	48 89 df             	mov    %rbx,%rdi
  4010f4:	49 89 c5             	mov    %rax,%r13
  4010f7:	e8 64 ff ff ff       	callq  401060 <malloc@plt>
  4010fc:	48 89 df             	mov    %rbx,%rdi
  4010ff:	4a 8d 1c f5 00 00 00 	lea    0x0(,%r14,8),%rbx
  401106:	00 
  401107:	49 89 c4             	mov    %rax,%r12
  40110a:	e8 51 ff ff ff       	callq  401060 <malloc@plt>
  40110f:	48 89 df             	mov    %rbx,%rdi
  401112:	48 89 5d b0          	mov    %rbx,-0x50(%rbp)
  401116:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40111a:	e8 41 ff ff ff       	callq  401060 <malloc@plt>
  40111f:	48 89 df             	mov    %rbx,%rdi
  401122:	49 89 c7             	mov    %rax,%r15
  401125:	e8 36 ff ff ff       	callq  401060 <malloc@plt>
  40112a:	48 89 df             	mov    %rbx,%rdi
  40112d:	31 db                	xor    %ebx,%ebx
  40112f:	49 89 c6             	mov    %rax,%r14
  401132:	e8 29 ff ff ff       	callq  401060 <malloc@plt>
  401137:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401140:	e8 2b ff ff ff       	callq  401070 <rand@plt>
  401145:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  401149:	c5 ea 2a c0          	vcvtsi2ss %eax,%xmm2,%xmm0
  40114d:	c5 fa 59 05 17 0f 00 	vmulss 0xf17(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  401154:	00 
  401155:	c4 c1 7a 11 44 1d 00 	vmovss %xmm0,0x0(%r13,%rbx,1)
  40115c:	e8 0f ff ff ff       	callq  401070 <rand@plt>
  401161:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  401165:	c5 ea 2a c0          	vcvtsi2ss %eax,%xmm2,%xmm0
  401169:	c5 fa 59 05 fb 0e 00 	vmulss 0xefb(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  401170:	00 
  401171:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401175:	c7 04 18 00 00 00 00 	movl   $0x0,(%rax,%rbx,1)
  40117c:	c4 c1 7a 11 04 1c    	vmovss %xmm0,(%r12,%rbx,1)
  401182:	48 83 c3 04          	add    $0x4,%rbx
  401186:	48 39 5d b8          	cmp    %rbx,-0x48(%rbp)
  40118a:	75 b4                	jne    401140 <main+0xc0>
  40118c:	31 db                	xor    %ebx,%ebx
  40118e:	66 90                	xchg   %ax,%ax
  401190:	e8 db fe ff ff       	callq  401070 <rand@plt>
  401195:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  401199:	c5 e3 2a c0          	vcvtsi2sd %eax,%xmm3,%xmm0
  40119d:	c5 fb 5e 05 cb 0e 00 	vdivsd 0xecb(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  4011a4:	00 
  4011a5:	c4 c1 7b 11 04 1f    	vmovsd %xmm0,(%r15,%rbx,1)
  4011ab:	e8 c0 fe ff ff       	callq  401070 <rand@plt>
  4011b0:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  4011b4:	c5 e3 2a c0          	vcvtsi2sd %eax,%xmm3,%xmm0
  4011b8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4011bc:	c5 fb 5e 05 ac 0e 00 	vdivsd 0xeac(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  4011c3:	00 
  4011c4:	c4 c1 7b 11 04 1e    	vmovsd %xmm0,(%r14,%rbx,1)
  4011ca:	48 c7 04 18 00 00 00 	movq   $0x0,(%rax,%rbx,1)
  4011d1:	00 
  4011d2:	48 83 c3 08          	add    $0x8,%rbx
  4011d6:	48 39 5d b0          	cmp    %rbx,-0x50(%rbp)
  4011da:	75 b4                	jne    401190 <main+0x110>
  4011dc:	e8 5f fe ff ff       	callq  401040 <clock@plt>
  4011e1:	48 89 c1             	mov    %rax,%rcx
  4011e4:	8b 45 ac             	mov    -0x54(%rbp),%eax
  4011e7:	8d 50 f9             	lea    -0x7(%rax),%edx
  4011ea:	31 c0                	xor    %eax,%eax
  4011ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4011f0:	c4 c1 7c 10 64 85 00 	vmovups 0x0(%r13,%rax,4),%ymm4
  4011f7:	c4 c1 5c 58 04 84    	vaddps (%r12,%rax,4),%ymm4,%ymm0
  4011fd:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  401201:	c5 fc 11 04 86       	vmovups %ymm0,(%rsi,%rax,4)
  401206:	48 83 c0 08          	add    $0x8,%rax
  40120a:	39 c2                	cmp    %eax,%edx
  40120c:	7f e2                	jg     4011f0 <main+0x170>
  40120e:	8b 75 ac             	mov    -0x54(%rbp),%esi
  401211:	8d 46 f8             	lea    -0x8(%rsi),%eax
  401214:	c1 e8 03             	shr    $0x3,%eax
  401217:	83 c0 01             	add    $0x1,%eax
  40121a:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  401221:	39 d6                	cmp    %edx,%esi
  401223:	7e 1a                	jle    40123f <main+0x1bf>
  401225:	48 c1 e0 05          	shl    $0x5,%rax
  401229:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40122d:	c4 c1 7c 10 74 05 00 	vmovups 0x0(%r13,%rax,1),%ymm6
  401234:	c4 c1 4c 58 04 04    	vaddps (%r12,%rax,1),%ymm6,%ymm0
  40123a:	c5 fc 11 04 02       	vmovups %ymm0,(%rdx,%rax,1)
  40123f:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  401243:	c5 f8 77             	vzeroupper 
  401246:	e8 f5 fd ff ff       	callq  401040 <clock@plt>
  40124b:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  40124f:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  401253:	48 29 c8             	sub    %rcx,%rax
  401256:	c4 e1 cb 2a c0       	vcvtsi2sd %rax,%xmm6,%xmm0
  40125b:	c5 fb 5e 3d 15 0e 00 	vdivsd 0xe15(%rip),%xmm0,%xmm7        # 402078 <_IO_stdin_used+0x78>
  401262:	00 
  401263:	c5 fb 11 7d b8       	vmovsd %xmm7,-0x48(%rbp)
  401268:	e8 d3 fd ff ff       	callq  401040 <clock@plt>
  40126d:	48 89 c1             	mov    %rax,%rcx
  401270:	8b 45 ac             	mov    -0x54(%rbp),%eax
  401273:	8d 50 fd             	lea    -0x3(%rax),%edx
  401276:	31 c0                	xor    %eax,%eax
  401278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40127f:	00 
  401280:	c4 c1 7d 10 2c c7    	vmovupd (%r15,%rax,8),%ymm5
  401286:	c4 c1 55 58 04 c6    	vaddpd (%r14,%rax,8),%ymm5,%ymm0
  40128c:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  401290:	c5 fd 11 04 c7       	vmovupd %ymm0,(%rdi,%rax,8)
  401295:	48 83 c0 04          	add    $0x4,%rax
  401299:	39 c2                	cmp    %eax,%edx
  40129b:	7f e3                	jg     401280 <main+0x200>
  40129d:	8b 5d ac             	mov    -0x54(%rbp),%ebx
  4012a0:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  4012a4:	8d 43 fc             	lea    -0x4(%rbx),%eax
  4012a7:	c1 e8 02             	shr    $0x2,%eax
  4012aa:	83 c0 01             	add    $0x1,%eax
  4012ad:	8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%edx
  4012b4:	39 d3                	cmp    %edx,%ebx
  4012b6:	0f 8e b4 00 00 00    	jle    401370 <main+0x2f0>
  4012bc:	48 c1 e0 05          	shl    $0x5,%rax
  4012c0:	c4 c1 7d 10 3c 06    	vmovupd (%r14,%rax,1),%ymm7
  4012c6:	c4 c1 45 58 04 07    	vaddpd (%r15,%rax,1),%ymm7,%ymm0
  4012cc:	c5 fd 11 04 07       	vmovupd %ymm0,(%rdi,%rax,1)
  4012d1:	c5 f8 77             	vzeroupper 
  4012d4:	e8 67 fd ff ff       	callq  401040 <clock@plt>
  4012d9:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  4012dd:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  4012e1:	c5 fb 10 45 b8       	vmovsd -0x48(%rbp),%xmm0
  4012e6:	89 da                	mov    %ebx,%edx
  4012e8:	48 29 c8             	sub    %rcx,%rax
  4012eb:	c4 e1 c3 2a c8       	vcvtsi2sd %rax,%xmm7,%xmm1
  4012f0:	c5 f3 5e 0d 80 0d 00 	vdivsd 0xd80(%rip),%xmm1,%xmm1        # 402078 <_IO_stdin_used+0x78>
  4012f7:	00 
  4012f8:	8b 5d a8             	mov    -0x58(%rbp),%ebx
  4012fb:	bf 52 20 40 00       	mov    $0x402052,%edi
  401300:	b8 02 00 00 00       	mov    $0x2,%eax
  401305:	89 de                	mov    %ebx,%esi
  401307:	e8 44 fd ff ff       	callq  401050 <printf@plt>
  40130c:	4c 89 ef             	mov    %r13,%rdi
  40130f:	e8 1c fd ff ff       	callq  401030 <free@plt>
  401314:	4c 89 e7             	mov    %r12,%rdi
  401317:	e8 14 fd ff ff       	callq  401030 <free@plt>
  40131c:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  401320:	e8 0b fd ff ff       	callq  401030 <free@plt>
  401325:	4c 89 ff             	mov    %r15,%rdi
  401328:	e8 03 fd ff ff       	callq  401030 <free@plt>
  40132d:	4c 89 f7             	mov    %r14,%rdi
  401330:	e8 fb fc ff ff       	callq  401030 <free@plt>
  401335:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  401339:	e8 f2 fc ff ff       	callq  401030 <free@plt>
  40133e:	89 d8                	mov    %ebx,%eax
  401340:	01 c0                	add    %eax,%eax
  401342:	83 6d a4 01          	subl   $0x1,-0x5c(%rbp)
  401346:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401349:	0f 85 81 fd ff ff    	jne    4010d0 <main+0x50>
  40134f:	48 83 c4 40          	add    $0x40,%rsp
  401353:	31 c0                	xor    %eax,%eax
  401355:	5b                   	pop    %rbx
  401356:	41 5a                	pop    %r10
  401358:	41 5c                	pop    %r12
  40135a:	41 5d                	pop    %r13
  40135c:	41 5e                	pop    %r14
  40135e:	41 5f                	pop    %r15
  401360:	5d                   	pop    %rbp
  401361:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  401365:	c3                   	retq   
  401366:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40136d:	00 00 00 
  401370:	c5 f8 77             	vzeroupper 
  401373:	e8 c8 fc ff ff       	callq  401040 <clock@plt>
  401378:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  40137c:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  401380:	c5 fb 10 45 b8       	vmovsd -0x48(%rbp),%xmm0
  401385:	8b 55 ac             	mov    -0x54(%rbp),%edx
  401388:	48 29 c8             	sub    %rcx,%rax
  40138b:	c4 e1 cb 2a c8       	vcvtsi2sd %rax,%xmm6,%xmm1
  401390:	c5 f3 5e 0d e0 0c 00 	vdivsd 0xce0(%rip),%xmm1,%xmm1        # 402078 <_IO_stdin_used+0x78>
  401397:	00 
  401398:	e9 5b ff ff ff       	jmpq   4012f8 <main+0x278>
  40139d:	0f 1f 00             	nopl   (%rax)

00000000004013a0 <_start>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	31 ed                	xor    %ebp,%ebp
  4013a6:	49 89 d1             	mov    %rdx,%r9
  4013a9:	5e                   	pop    %rsi
  4013aa:	48 89 e2             	mov    %rsp,%rdx
  4013ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4013b1:	50                   	push   %rax
  4013b2:	54                   	push   %rsp
  4013b3:	45 31 c0             	xor    %r8d,%r8d
  4013b6:	31 c9                	xor    %ecx,%ecx
  4013b8:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  4013bf:	ff 15 2b 2c 00 00    	callq  *0x2c2b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4013c5:	f4                   	hlt    
  4013c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013cd:	00 00 00 

00000000004013d0 <_dl_relocate_static_pie>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	c3                   	retq   
  4013d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013dc:	00 00 00 
  4013df:	90                   	nop

00000000004013e0 <deregister_tm_clones>:
  4013e0:	b8 50 40 40 00       	mov    $0x404050,%eax
  4013e5:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  4013eb:	74 13                	je     401400 <deregister_tm_clones+0x20>
  4013ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f2:	48 85 c0             	test   %rax,%rax
  4013f5:	74 09                	je     401400 <deregister_tm_clones+0x20>
  4013f7:	bf 50 40 40 00       	mov    $0x404050,%edi
  4013fc:	ff e0                	jmpq   *%rax
  4013fe:	66 90                	xchg   %ax,%ax
  401400:	c3                   	retq   
  401401:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401408:	00 00 00 00 
  40140c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401410 <register_tm_clones>:
  401410:	be 50 40 40 00       	mov    $0x404050,%esi
  401415:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  40141c:	48 89 f0             	mov    %rsi,%rax
  40141f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401423:	48 c1 f8 03          	sar    $0x3,%rax
  401427:	48 01 c6             	add    %rax,%rsi
  40142a:	48 d1 fe             	sar    %rsi
  40142d:	74 11                	je     401440 <register_tm_clones+0x30>
  40142f:	b8 00 00 00 00       	mov    $0x0,%eax
  401434:	48 85 c0             	test   %rax,%rax
  401437:	74 07                	je     401440 <register_tm_clones+0x30>
  401439:	bf 50 40 40 00       	mov    $0x404050,%edi
  40143e:	ff e0                	jmpq   *%rax
  401440:	c3                   	retq   
  401441:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401448:	00 00 00 00 
  40144c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401450 <__do_global_dtors_aux>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	80 3d f5 2b 00 00 00 	cmpb   $0x0,0x2bf5(%rip)        # 404050 <__TMC_END__>
  40145b:	75 13                	jne    401470 <__do_global_dtors_aux+0x20>
  40145d:	55                   	push   %rbp
  40145e:	48 89 e5             	mov    %rsp,%rbp
  401461:	e8 7a ff ff ff       	callq  4013e0 <deregister_tm_clones>
  401466:	c6 05 e3 2b 00 00 01 	movb   $0x1,0x2be3(%rip)        # 404050 <__TMC_END__>
  40146d:	5d                   	pop    %rbp
  40146e:	c3                   	retq   
  40146f:	90                   	nop
  401470:	c3                   	retq   
  401471:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401478:	00 00 00 00 
  40147c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401480 <frame_dummy>:
  401480:	f3 0f 1e fa          	endbr64 
  401484:	eb 8a                	jmp    401410 <register_tm_clones>
  401486:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40148d:	00 00 00 

0000000000401490 <initialize_arrays>:
  401490:	85 c9                	test   %ecx,%ecx
  401492:	7e 7c                	jle    401510 <initialize_arrays+0x80>
  401494:	48 63 c9             	movslq %ecx,%rcx
  401497:	41 56                	push   %r14
  401499:	49 89 d6             	mov    %rdx,%r14
  40149c:	41 55                	push   %r13
  40149e:	49 89 f5             	mov    %rsi,%r13
  4014a1:	41 54                	push   %r12
  4014a3:	49 89 fc             	mov    %rdi,%r12
  4014a6:	55                   	push   %rbp
  4014a7:	48 8d 2c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbp
  4014ae:	00 
  4014af:	53                   	push   %rbx
  4014b0:	31 db                	xor    %ebx,%ebx
  4014b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4014b8:	e8 b3 fb ff ff       	callq  401070 <rand@plt>
  4014bd:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4014c1:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  4014c5:	c5 fa 59 05 9f 0b 00 	vmulss 0xb9f(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  4014cc:	00 
  4014cd:	c4 c1 7a 11 04 1c    	vmovss %xmm0,(%r12,%rbx,1)
  4014d3:	e8 98 fb ff ff       	callq  401070 <rand@plt>
  4014d8:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4014dc:	c5 f2 2a c0          	vcvtsi2ss %eax,%xmm1,%xmm0
  4014e0:	c5 fa 59 05 84 0b 00 	vmulss 0xb84(%rip),%xmm0,%xmm0        # 40206c <_IO_stdin_used+0x6c>
  4014e7:	00 
  4014e8:	c4 c1 7a 11 44 1d 00 	vmovss %xmm0,0x0(%r13,%rbx,1)
  4014ef:	41 c7 04 1e 00 00 00 	movl   $0x0,(%r14,%rbx,1)
  4014f6:	00 
  4014f7:	48 83 c3 04          	add    $0x4,%rbx
  4014fb:	48 39 dd             	cmp    %rbx,%rbp
  4014fe:	75 b8                	jne    4014b8 <initialize_arrays+0x28>
  401500:	5b                   	pop    %rbx
  401501:	5d                   	pop    %rbp
  401502:	41 5c                	pop    %r12
  401504:	41 5d                	pop    %r13
  401506:	41 5e                	pop    %r14
  401508:	c3                   	retq   
  401509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401510:	c3                   	retq   
  401511:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <initialize_arrays_double>:
  401520:	85 c9                	test   %ecx,%ecx
  401522:	7e 7c                	jle    4015a0 <initialize_arrays_double+0x80>
  401524:	48 63 c9             	movslq %ecx,%rcx
  401527:	41 56                	push   %r14
  401529:	49 89 d6             	mov    %rdx,%r14
  40152c:	41 55                	push   %r13
  40152e:	49 89 f5             	mov    %rsi,%r13
  401531:	41 54                	push   %r12
  401533:	49 89 fc             	mov    %rdi,%r12
  401536:	55                   	push   %rbp
  401537:	48 8d 2c cd 00 00 00 	lea    0x0(,%rcx,8),%rbp
  40153e:	00 
  40153f:	53                   	push   %rbx
  401540:	31 db                	xor    %ebx,%ebx
  401542:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401548:	e8 23 fb ff ff       	callq  401070 <rand@plt>
  40154d:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  401551:	c5 f3 2a c0          	vcvtsi2sd %eax,%xmm1,%xmm0
  401555:	c5 fb 5e 05 13 0b 00 	vdivsd 0xb13(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  40155c:	00 
  40155d:	c4 c1 7b 11 04 1c    	vmovsd %xmm0,(%r12,%rbx,1)
  401563:	e8 08 fb ff ff       	callq  401070 <rand@plt>
  401568:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40156c:	c5 f3 2a c0          	vcvtsi2sd %eax,%xmm1,%xmm0
  401570:	c5 fb 5e 05 f8 0a 00 	vdivsd 0xaf8(%rip),%xmm0,%xmm0        # 402070 <_IO_stdin_used+0x70>
  401577:	00 
  401578:	c4 c1 7b 11 44 1d 00 	vmovsd %xmm0,0x0(%r13,%rbx,1)
  40157f:	49 c7 04 1e 00 00 00 	movq   $0x0,(%r14,%rbx,1)
  401586:	00 
  401587:	48 83 c3 08          	add    $0x8,%rbx
  40158b:	48 39 dd             	cmp    %rbx,%rbp
  40158e:	75 b8                	jne    401548 <initialize_arrays_double+0x28>
  401590:	5b                   	pop    %rbx
  401591:	5d                   	pop    %rbp
  401592:	41 5c                	pop    %r12
  401594:	41 5d                	pop    %r13
  401596:	41 5e                	pop    %r14
  401598:	c3                   	retq   
  401599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4015a0:	c3                   	retq   
  4015a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4015a8:	00 00 00 00 
  4015ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004015b0 <vector_add_avx2>:
  4015b0:	83 f9 07             	cmp    $0x7,%ecx
  4015b3:	0f 8e 5f 02 00 00    	jle    401818 <vector_add_avx2+0x268>
  4015b9:	44 8d 41 f9          	lea    -0x7(%rcx),%r8d
  4015bd:	31 c0                	xor    %eax,%eax
  4015bf:	90                   	nop
  4015c0:	c5 fc 10 0c 87       	vmovups (%rdi,%rax,4),%ymm1
  4015c5:	c5 f4 58 04 86       	vaddps (%rsi,%rax,4),%ymm1,%ymm0
  4015ca:	c5 fc 11 04 82       	vmovups %ymm0,(%rdx,%rax,4)
  4015cf:	48 83 c0 08          	add    $0x8,%rax
  4015d3:	41 39 c0             	cmp    %eax,%r8d
  4015d6:	7f e8                	jg     4015c0 <vector_add_avx2+0x10>
  4015d8:	8d 41 f8             	lea    -0x8(%rcx),%eax
  4015db:	c1 e8 03             	shr    $0x3,%eax
  4015de:	8d 04 c5 08 00 00 00 	lea    0x8(,%rax,8),%eax
  4015e5:	39 c1                	cmp    %eax,%ecx
  4015e7:	0f 8e 23 02 00 00    	jle    401810 <vector_add_avx2+0x260>
  4015ed:	55                   	push   %rbp
  4015ee:	41 89 ca             	mov    %ecx,%r10d
  4015f1:	4c 63 c8             	movslq %eax,%r9
  4015f4:	41 29 c2             	sub    %eax,%r10d
  4015f7:	48 89 e5             	mov    %rsp,%rbp
  4015fa:	41 55                	push   %r13
  4015fc:	41 54                	push   %r12
  4015fe:	53                   	push   %rbx
  4015ff:	41 8d 5a ff          	lea    -0x1(%r10),%ebx
  401603:	83 fb 02             	cmp    $0x2,%ebx
  401606:	0f 86 fc 00 00 00    	jbe    401708 <vector_add_avx2+0x158>
  40160c:	4e 8d 04 8d 00 00 00 	lea    0x0(,%r9,4),%r8
  401613:	00 
  401614:	4e 8d 1c 02          	lea    (%rdx,%r8,1),%r11
  401618:	49 83 c0 04          	add    $0x4,%r8
  40161c:	4e 8d 2c 07          	lea    (%rdi,%r8,1),%r13
  401620:	4d 89 dc             	mov    %r11,%r12
  401623:	4d 29 ec             	sub    %r13,%r12
  401626:	49 83 fc 18          	cmp    $0x18,%r12
  40162a:	0f 86 d8 00 00 00    	jbe    401708 <vector_add_avx2+0x158>
  401630:	49 01 f0             	add    %rsi,%r8
  401633:	4d 89 dc             	mov    %r11,%r12
  401636:	4d 29 c4             	sub    %r8,%r12
  401639:	49 83 fc 18          	cmp    $0x18,%r12
  40163d:	0f 86 c5 00 00 00    	jbe    401708 <vector_add_avx2+0x158>
  401643:	83 fb 06             	cmp    $0x6,%ebx
  401646:	0f 86 d3 01 00 00    	jbe    40181f <vector_add_avx2+0x26f>
  40164c:	c4 a1 7c 10 1c 8f    	vmovups (%rdi,%r9,4),%ymm3
  401652:	c4 a1 64 58 04 8e    	vaddps (%rsi,%r9,4),%ymm3,%ymm0
  401658:	45 89 d0             	mov    %r10d,%r8d
  40165b:	41 83 e0 f8          	and    $0xfffffff8,%r8d
  40165f:	44 01 c0             	add    %r8d,%eax
  401662:	c4 c1 7c 11 03       	vmovups %ymm0,(%r11)
  401667:	41 f6 c2 07          	test   $0x7,%r10b
  40166b:	0f 84 89 00 00 00    	je     4016fa <vector_add_avx2+0x14a>
  401671:	45 29 c2             	sub    %r8d,%r10d
  401674:	45 8d 5a ff          	lea    -0x1(%r10),%r11d
  401678:	41 83 fb 02          	cmp    $0x2,%r11d
  40167c:	76 25                	jbe    4016a3 <vector_add_avx2+0xf3>
  40167e:	4d 01 c8             	add    %r9,%r8
  401681:	c4 a1 78 10 14 87    	vmovups (%rdi,%r8,4),%xmm2
  401687:	c4 a1 68 58 04 86    	vaddps (%rsi,%r8,4),%xmm2,%xmm0
  40168d:	c4 a1 78 11 04 82    	vmovups %xmm0,(%rdx,%r8,4)
  401693:	45 89 d0             	mov    %r10d,%r8d
  401696:	41 83 e0 fc          	and    $0xfffffffc,%r8d
  40169a:	44 01 c0             	add    %r8d,%eax
  40169d:	41 83 e2 03          	and    $0x3,%r10d
  4016a1:	74 57                	je     4016fa <vector_add_avx2+0x14a>
  4016a3:	4c 63 c8             	movslq %eax,%r9
  4016a6:	c4 a1 7a 10 04 8f    	vmovss (%rdi,%r9,4),%xmm0
  4016ac:	c4 a1 7a 58 04 8e    	vaddss (%rsi,%r9,4),%xmm0,%xmm0
  4016b2:	4e 8d 04 8d 00 00 00 	lea    0x0(,%r9,4),%r8
  4016b9:	00 
  4016ba:	c4 a1 7a 11 04 8a    	vmovss %xmm0,(%rdx,%r9,4)
  4016c0:	44 8d 48 01          	lea    0x1(%rax),%r9d
  4016c4:	44 39 c9             	cmp    %r9d,%ecx
  4016c7:	7e 31                	jle    4016fa <vector_add_avx2+0x14a>
  4016c9:	c4 a1 7a 10 44 07 04 	vmovss 0x4(%rdi,%r8,1),%xmm0
  4016d0:	c4 a1 7a 58 44 06 04 	vaddss 0x4(%rsi,%r8,1),%xmm0,%xmm0
  4016d7:	83 c0 02             	add    $0x2,%eax
  4016da:	c4 a1 7a 11 44 02 04 	vmovss %xmm0,0x4(%rdx,%r8,1)
  4016e1:	39 c1                	cmp    %eax,%ecx
  4016e3:	7e 15                	jle    4016fa <vector_add_avx2+0x14a>
  4016e5:	c4 a1 7a 10 44 07 08 	vmovss 0x8(%rdi,%r8,1),%xmm0
  4016ec:	c4 a1 7a 58 44 06 08 	vaddss 0x8(%rsi,%r8,1),%xmm0,%xmm0
  4016f3:	c4 a1 7a 11 44 02 08 	vmovss %xmm0,0x8(%rdx,%r8,1)
  4016fa:	c5 f8 77             	vzeroupper 
  4016fd:	5b                   	pop    %rbx
  4016fe:	41 5c                	pop    %r12
  401700:	41 5d                	pop    %r13
  401702:	5d                   	pop    %rbp
  401703:	c3                   	retq   
  401704:	0f 1f 40 00          	nopl   0x0(%rax)
  401708:	c4 a1 7a 10 04 8f    	vmovss (%rdi,%r9,4),%xmm0
  40170e:	c4 a1 7a 58 04 8e    	vaddss (%rsi,%r9,4),%xmm0,%xmm0
  401714:	4e 8d 04 8d 00 00 00 	lea    0x0(,%r9,4),%r8
  40171b:	00 
  40171c:	c4 a1 7a 11 04 8a    	vmovss %xmm0,(%rdx,%r9,4)
  401722:	44 8d 48 01          	lea    0x1(%rax),%r9d
  401726:	44 39 c9             	cmp    %r9d,%ecx
  401729:	7e cf                	jle    4016fa <vector_add_avx2+0x14a>
  40172b:	c4 a1 7a 10 44 07 04 	vmovss 0x4(%rdi,%r8,1),%xmm0
  401732:	c4 a1 7a 58 44 06 04 	vaddss 0x4(%rsi,%r8,1),%xmm0,%xmm0
  401739:	44 8d 48 02          	lea    0x2(%rax),%r9d
  40173d:	c4 a1 7a 11 44 02 04 	vmovss %xmm0,0x4(%rdx,%r8,1)
  401744:	44 39 c9             	cmp    %r9d,%ecx
  401747:	7e b1                	jle    4016fa <vector_add_avx2+0x14a>
  401749:	c4 a1 7a 10 44 07 08 	vmovss 0x8(%rdi,%r8,1),%xmm0
  401750:	c4 a1 7a 58 44 06 08 	vaddss 0x8(%rsi,%r8,1),%xmm0,%xmm0
  401757:	44 8d 48 03          	lea    0x3(%rax),%r9d
  40175b:	c4 a1 7a 11 44 02 08 	vmovss %xmm0,0x8(%rdx,%r8,1)
  401762:	44 39 c9             	cmp    %r9d,%ecx
  401765:	7e 93                	jle    4016fa <vector_add_avx2+0x14a>
  401767:	c4 a1 7a 10 44 07 0c 	vmovss 0xc(%rdi,%r8,1),%xmm0
  40176e:	c4 a1 7a 58 44 06 0c 	vaddss 0xc(%rsi,%r8,1),%xmm0,%xmm0
  401775:	44 8d 48 04          	lea    0x4(%rax),%r9d
  401779:	c4 a1 7a 11 44 02 0c 	vmovss %xmm0,0xc(%rdx,%r8,1)
  401780:	44 39 c9             	cmp    %r9d,%ecx
  401783:	0f 8e 71 ff ff ff    	jle    4016fa <vector_add_avx2+0x14a>
  401789:	c4 a1 7a 10 44 07 10 	vmovss 0x10(%rdi,%r8,1),%xmm0
  401790:	c4 a1 7a 58 44 06 10 	vaddss 0x10(%rsi,%r8,1),%xmm0,%xmm0
  401797:	44 8d 48 05          	lea    0x5(%rax),%r9d
  40179b:	c4 a1 7a 11 44 02 10 	vmovss %xmm0,0x10(%rdx,%r8,1)
  4017a2:	44 39 c9             	cmp    %r9d,%ecx
  4017a5:	0f 8e 4f ff ff ff    	jle    4016fa <vector_add_avx2+0x14a>
  4017ab:	c4 a1 7a 10 44 07 14 	vmovss 0x14(%rdi,%r8,1),%xmm0
  4017b2:	c4 a1 7a 58 44 06 14 	vaddss 0x14(%rsi,%r8,1),%xmm0,%xmm0
  4017b9:	44 8d 48 06          	lea    0x6(%rax),%r9d
  4017bd:	c4 a1 7a 11 44 02 14 	vmovss %xmm0,0x14(%rdx,%r8,1)
  4017c4:	44 39 c9             	cmp    %r9d,%ecx
  4017c7:	0f 8e 2d ff ff ff    	jle    4016fa <vector_add_avx2+0x14a>
  4017cd:	c4 a1 7a 10 44 07 18 	vmovss 0x18(%rdi,%r8,1),%xmm0
  4017d4:	c4 a1 7a 58 44 06 18 	vaddss 0x18(%rsi,%r8,1),%xmm0,%xmm0
  4017db:	83 c0 07             	add    $0x7,%eax
  4017de:	c4 a1 7a 11 44 02 18 	vmovss %xmm0,0x18(%rdx,%r8,1)
  4017e5:	39 c1                	cmp    %eax,%ecx
  4017e7:	0f 8e 0d ff ff ff    	jle    4016fa <vector_add_avx2+0x14a>
  4017ed:	c4 a1 7a 10 44 07 1c 	vmovss 0x1c(%rdi,%r8,1),%xmm0
  4017f4:	c4 a1 7a 58 44 06 1c 	vaddss 0x1c(%rsi,%r8,1),%xmm0,%xmm0
  4017fb:	c4 a1 7a 11 44 02 1c 	vmovss %xmm0,0x1c(%rdx,%r8,1)
  401802:	c5 f8 77             	vzeroupper 
  401805:	5b                   	pop    %rbx
  401806:	41 5c                	pop    %r12
  401808:	41 5d                	pop    %r13
  40180a:	5d                   	pop    %rbp
  40180b:	c3                   	retq   
  40180c:	0f 1f 40 00          	nopl   0x0(%rax)
  401810:	c5 f8 77             	vzeroupper 
  401813:	c3                   	retq   
  401814:	0f 1f 40 00          	nopl   0x0(%rax)
  401818:	31 c0                	xor    %eax,%eax
  40181a:	e9 c6 fd ff ff       	jmpq   4015e5 <vector_add_avx2+0x35>
  40181f:	45 31 c0             	xor    %r8d,%r8d
  401822:	e9 57 fe ff ff       	jmpq   40167e <vector_add_avx2+0xce>
  401827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40182e:	00 00 

0000000000401830 <vector_add_avx2_double>:
  401830:	41 89 c8             	mov    %ecx,%r8d
  401833:	83 f9 03             	cmp    $0x3,%ecx
  401836:	0f 8e 74 01 00 00    	jle    4019b0 <vector_add_avx2_double+0x180>
  40183c:	83 e9 03             	sub    $0x3,%ecx
  40183f:	31 c0                	xor    %eax,%eax
  401841:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401848:	c5 fd 10 0c c7       	vmovupd (%rdi,%rax,8),%ymm1
  40184d:	c5 f5 58 04 c6       	vaddpd (%rsi,%rax,8),%ymm1,%ymm0
  401852:	c5 fd 11 04 c2       	vmovupd %ymm0,(%rdx,%rax,8)
  401857:	48 83 c0 04          	add    $0x4,%rax
  40185b:	39 c1                	cmp    %eax,%ecx
  40185d:	7f e9                	jg     401848 <vector_add_avx2_double+0x18>
  40185f:	41 8d 40 fc          	lea    -0x4(%r8),%eax
  401863:	c1 e8 02             	shr    $0x2,%eax
  401866:	8d 04 85 04 00 00 00 	lea    0x4(,%rax,4),%eax
  40186d:	41 39 c0             	cmp    %eax,%r8d
  401870:	0f 8e 32 01 00 00    	jle    4019a8 <vector_add_avx2_double+0x178>
  401876:	55                   	push   %rbp
  401877:	45 89 c1             	mov    %r8d,%r9d
  40187a:	4c 63 d0             	movslq %eax,%r10
  40187d:	41 29 c1             	sub    %eax,%r9d
  401880:	48 89 e5             	mov    %rsp,%rbp
  401883:	41 54                	push   %r12
  401885:	53                   	push   %rbx
  401886:	41 83 f9 01          	cmp    $0x1,%r9d
  40188a:	0f 84 a0 00 00 00    	je     401930 <vector_add_avx2_double+0x100>
  401890:	4a 8d 0c d5 00 00 00 	lea    0x0(,%r10,8),%rcx
  401897:	00 
  401898:	4c 8d 1c 0a          	lea    (%rdx,%rcx,1),%r11
  40189c:	48 83 c1 08          	add    $0x8,%rcx
  4018a0:	4c 8d 24 0f          	lea    (%rdi,%rcx,1),%r12
  4018a4:	4c 89 db             	mov    %r11,%rbx
  4018a7:	4c 29 e3             	sub    %r12,%rbx
  4018aa:	48 83 fb 10          	cmp    $0x10,%rbx
  4018ae:	0f 86 7c 00 00 00    	jbe    401930 <vector_add_avx2_double+0x100>
  4018b4:	48 01 f1             	add    %rsi,%rcx
  4018b7:	4c 89 db             	mov    %r11,%rbx
  4018ba:	48 29 cb             	sub    %rcx,%rbx
  4018bd:	48 83 fb 10          	cmp    $0x10,%rbx
  4018c1:	76 6d                	jbe    401930 <vector_add_avx2_double+0x100>
  4018c3:	41 8d 49 ff          	lea    -0x1(%r9),%ecx
  4018c7:	83 f9 02             	cmp    $0x2,%ecx
  4018ca:	0f 86 e7 00 00 00    	jbe    4019b7 <vector_add_avx2_double+0x187>
  4018d0:	c4 a1 7d 10 1c d7    	vmovupd (%rdi,%r10,8),%ymm3
  4018d6:	c4 a1 65 58 04 d6    	vaddpd (%rsi,%r10,8),%ymm3,%ymm0
  4018dc:	44 89 c9             	mov    %r9d,%ecx
  4018df:	83 e1 fc             	and    $0xfffffffc,%ecx
  4018e2:	01 c8                	add    %ecx,%eax
  4018e4:	c4 c1 7d 11 03       	vmovupd %ymm0,(%r11)
  4018e9:	41 f6 c1 03          	test   $0x3,%r9b
  4018ed:	74 39                	je     401928 <vector_add_avx2_double+0xf8>
  4018ef:	41 29 c9             	sub    %ecx,%r9d
  4018f2:	41 83 f9 01          	cmp    $0x1,%r9d
  4018f6:	74 1f                	je     401917 <vector_add_avx2_double+0xe7>
  4018f8:	4c 01 d1             	add    %r10,%rcx
  4018fb:	c5 f9 10 14 cf       	vmovupd (%rdi,%rcx,8),%xmm2
  401900:	c5 e9 58 04 ce       	vaddpd (%rsi,%rcx,8),%xmm2,%xmm0
  401905:	c5 f9 11 04 ca       	vmovupd %xmm0,(%rdx,%rcx,8)
  40190a:	41 f6 c1 01          	test   $0x1,%r9b
  40190e:	74 18                	je     401928 <vector_add_avx2_double+0xf8>
  401910:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  401914:	44 01 c8             	add    %r9d,%eax
  401917:	48 98                	cltq   
  401919:	c5 fb 10 04 c7       	vmovsd (%rdi,%rax,8),%xmm0
  40191e:	c5 fb 58 04 c6       	vaddsd (%rsi,%rax,8),%xmm0,%xmm0
  401923:	c5 fb 11 04 c2       	vmovsd %xmm0,(%rdx,%rax,8)
  401928:	c5 f8 77             	vzeroupper 
  40192b:	5b                   	pop    %rbx
  40192c:	41 5c                	pop    %r12
  40192e:	5d                   	pop    %rbp
  40192f:	c3                   	retq   
  401930:	c4 a1 7b 10 04 d7    	vmovsd (%rdi,%r10,8),%xmm0
  401936:	c4 a1 7b 58 04 d6    	vaddsd (%rsi,%r10,8),%xmm0,%xmm0
  40193c:	44 8d 48 01          	lea    0x1(%rax),%r9d
  401940:	4a 8d 0c d5 00 00 00 	lea    0x0(,%r10,8),%rcx
  401947:	00 
  401948:	c4 a1 7b 11 04 d2    	vmovsd %xmm0,(%rdx,%r10,8)
  40194e:	45 39 c8             	cmp    %r9d,%r8d
  401951:	7e d5                	jle    401928 <vector_add_avx2_double+0xf8>
  401953:	c5 fb 10 44 0f 08    	vmovsd 0x8(%rdi,%rcx,1),%xmm0
  401959:	c5 fb 58 44 0e 08    	vaddsd 0x8(%rsi,%rcx,1),%xmm0,%xmm0
  40195f:	44 8d 48 02          	lea    0x2(%rax),%r9d
  401963:	c5 fb 11 44 0a 08    	vmovsd %xmm0,0x8(%rdx,%rcx,1)
  401969:	45 39 c8             	cmp    %r9d,%r8d
  40196c:	7e ba                	jle    401928 <vector_add_avx2_double+0xf8>
  40196e:	c5 fb 10 44 0f 10    	vmovsd 0x10(%rdi,%rcx,1),%xmm0
  401974:	c5 fb 58 44 0e 10    	vaddsd 0x10(%rsi,%rcx,1),%xmm0,%xmm0
  40197a:	83 c0 03             	add    $0x3,%eax
  40197d:	c5 fb 11 44 0a 10    	vmovsd %xmm0,0x10(%rdx,%rcx,1)
  401983:	41 39 c0             	cmp    %eax,%r8d
  401986:	7e a0                	jle    401928 <vector_add_avx2_double+0xf8>
  401988:	c5 fb 10 44 0f 18    	vmovsd 0x18(%rdi,%rcx,1),%xmm0
  40198e:	c5 fb 58 44 0e 18    	vaddsd 0x18(%rsi,%rcx,1),%xmm0,%xmm0
  401994:	c5 fb 11 44 0a 18    	vmovsd %xmm0,0x18(%rdx,%rcx,1)
  40199a:	c5 f8 77             	vzeroupper 
  40199d:	5b                   	pop    %rbx
  40199e:	41 5c                	pop    %r12
  4019a0:	5d                   	pop    %rbp
  4019a1:	c3                   	retq   
  4019a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4019a8:	c5 f8 77             	vzeroupper 
  4019ab:	c3                   	retq   
  4019ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4019b0:	31 c0                	xor    %eax,%eax
  4019b2:	e9 b6 fe ff ff       	jmpq   40186d <vector_add_avx2_double+0x3d>
  4019b7:	31 c9                	xor    %ecx,%ecx
  4019b9:	e9 3a ff ff ff       	jmpq   4018f8 <vector_add_avx2_double+0xc8>
  4019be:	66 90                	xchg   %ax,%ax

00000000004019c0 <measure_execution_time>:
  4019c0:	41 57                	push   %r15
  4019c2:	45 89 c7             	mov    %r8d,%r15d
  4019c5:	41 56                	push   %r14
  4019c7:	49 89 ce             	mov    %rcx,%r14
  4019ca:	41 55                	push   %r13
  4019cc:	49 89 d5             	mov    %rdx,%r13
  4019cf:	41 54                	push   %r12
  4019d1:	49 89 f4             	mov    %rsi,%r12
  4019d4:	55                   	push   %rbp
  4019d5:	48 89 fd             	mov    %rdi,%rbp
  4019d8:	53                   	push   %rbx
  4019d9:	48 83 ec 08          	sub    $0x8,%rsp
  4019dd:	e8 5e f6 ff ff       	callq  401040 <clock@plt>
  4019e2:	44 89 f9             	mov    %r15d,%ecx
  4019e5:	4c 89 f2             	mov    %r14,%rdx
  4019e8:	4c 89 ee             	mov    %r13,%rsi
  4019eb:	48 89 c3             	mov    %rax,%rbx
  4019ee:	4c 89 e7             	mov    %r12,%rdi
  4019f1:	ff d5                	callq  *%rbp
  4019f3:	e8 48 f6 ff ff       	callq  401040 <clock@plt>
  4019f8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4019fc:	48 29 d8             	sub    %rbx,%rax
  4019ff:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401a04:	c5 fb 5e 05 6c 06 00 	vdivsd 0x66c(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  401a0b:	00 
  401a0c:	48 83 c4 08          	add    $0x8,%rsp
  401a10:	5b                   	pop    %rbx
  401a11:	5d                   	pop    %rbp
  401a12:	41 5c                	pop    %r12
  401a14:	41 5d                	pop    %r13
  401a16:	41 5e                	pop    %r14
  401a18:	41 5f                	pop    %r15
  401a1a:	c3                   	retq   
  401a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401a20 <measure_execution_time_double>:
  401a20:	41 57                	push   %r15
  401a22:	45 89 c7             	mov    %r8d,%r15d
  401a25:	41 56                	push   %r14
  401a27:	49 89 ce             	mov    %rcx,%r14
  401a2a:	41 55                	push   %r13
  401a2c:	49 89 d5             	mov    %rdx,%r13
  401a2f:	41 54                	push   %r12
  401a31:	49 89 f4             	mov    %rsi,%r12
  401a34:	55                   	push   %rbp
  401a35:	48 89 fd             	mov    %rdi,%rbp
  401a38:	53                   	push   %rbx
  401a39:	48 83 ec 08          	sub    $0x8,%rsp
  401a3d:	e8 fe f5 ff ff       	callq  401040 <clock@plt>
  401a42:	44 89 f9             	mov    %r15d,%ecx
  401a45:	4c 89 f2             	mov    %r14,%rdx
  401a48:	4c 89 ee             	mov    %r13,%rsi
  401a4b:	48 89 c3             	mov    %rax,%rbx
  401a4e:	4c 89 e7             	mov    %r12,%rdi
  401a51:	ff d5                	callq  *%rbp
  401a53:	e8 e8 f5 ff ff       	callq  401040 <clock@plt>
  401a58:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401a5c:	48 29 d8             	sub    %rbx,%rax
  401a5f:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401a64:	c5 fb 5e 05 0c 06 00 	vdivsd 0x60c(%rip),%xmm0,%xmm0        # 402078 <_IO_stdin_used+0x78>
  401a6b:	00 
  401a6c:	48 83 c4 08          	add    $0x8,%rsp
  401a70:	5b                   	pop    %rbx
  401a71:	5d                   	pop    %rbp
  401a72:	41 5c                	pop    %r12
  401a74:	41 5d                	pop    %r13
  401a76:	41 5e                	pop    %r14
  401a78:	41 5f                	pop    %r15
  401a7a:	c3                   	retq   

Disassembly of section .fini:

0000000000401a7c <_fini>:
  401a7c:	f3 0f 1e fa          	endbr64 
  401a80:	48 83 ec 08          	sub    $0x8,%rsp
  401a84:	48 83 c4 08          	add    $0x8,%rsp
  401a88:	c3                   	retq   
