
vector_add_O3:     file format elf64-x86-64


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
  401088:	b9 1d 20 40 00       	mov    $0x40201d,%ecx
  40108d:	31 c0                	xor    %eax,%eax
  40108f:	41 56                	push   %r14
  401091:	ba 35 20 40 00       	mov    $0x402035,%edx
  401096:	be 3a 20 40 00       	mov    $0x40203a,%esi
  40109b:	bf 45 20 40 00       	mov    $0x402045,%edi
  4010a0:	41 55                	push   %r13
  4010a2:	41 54                	push   %r12
  4010a4:	55                   	push   %rbp
  4010a5:	53                   	push   %rbx
  4010a6:	48 83 ec 38          	sub    $0x38,%rsp
  4010aa:	e8 a1 ff ff ff       	callq  401050 <printf@plt>
  4010af:	c7 44 24 2c 0b 00 00 	movl   $0xb,0x2c(%rsp)
  4010b6:	00 
  4010b7:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
  4010be:	00 
  4010bf:	90                   	nop
  4010c0:	69 44 24 28 40 42 0f 	imul   $0xf4240,0x28(%rsp),%eax
  4010c7:	00 
  4010c8:	48 63 d8             	movslq %eax,%rbx
  4010cb:	89 44 24 24          	mov    %eax,0x24(%rsp)
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
  401135:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401139:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  40113d:	f3 0f 59 05 33 0f 00 	mulss  0xf33(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  401144:	00 
  401145:	f3 41 0f 11 04 1f    	movss  %xmm0,(%r15,%rbx,1)
  40114b:	e8 20 ff ff ff       	callq  401070 <rand@plt>
  401150:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401154:	41 c7 44 1d 00 00 00 	movl   $0x0,0x0(%r13,%rbx,1)
  40115b:	00 00 
  40115d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401161:	f3 0f 59 05 0f 0f 00 	mulss  0xf0f(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  401168:	00 
  401169:	f3 41 0f 11 04 1e    	movss  %xmm0,(%r14,%rbx,1)
  40116f:	48 83 c3 04          	add    $0x4,%rbx
  401173:	48 39 5c 24 10       	cmp    %rbx,0x10(%rsp)
  401178:	75 b6                	jne    401130 <main+0xb0>
  40117a:	31 db                	xor    %ebx,%ebx
  40117c:	0f 1f 40 00          	nopl   0x0(%rax)
  401180:	e8 eb fe ff ff       	callq  401070 <rand@plt>
  401185:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401189:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40118d:	f2 0f 5e 05 eb 0e 00 	divsd  0xeeb(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  401194:	00 
  401195:	f2 41 0f 11 04 1c    	movsd  %xmm0,(%r12,%rbx,1)
  40119b:	e8 d0 fe ff ff       	callq  401070 <rand@plt>
  4011a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4011a4:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4011a8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011ad:	f2 0f 5e 05 cb 0e 00 	divsd  0xecb(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  4011b4:	00 
  4011b5:	f2 0f 11 44 1d 00    	movsd  %xmm0,0x0(%rbp,%rbx,1)
  4011bb:	48 c7 04 18 00 00 00 	movq   $0x0,(%rax,%rbx,1)
  4011c2:	00 
  4011c3:	48 83 c3 08          	add    $0x8,%rbx
  4011c7:	48 39 5c 24 18       	cmp    %rbx,0x18(%rsp)
  4011cc:	75 b2                	jne    401180 <main+0x100>
  4011ce:	e8 6d fe ff ff       	callq  401040 <clock@plt>
  4011d3:	8b 4c 24 24          	mov    0x24(%rsp),%ecx
  4011d7:	31 d2                	xor    %edx,%edx
  4011d9:	48 89 c6             	mov    %rax,%rsi
  4011dc:	c1 e9 02             	shr    $0x2,%ecx
  4011df:	48 c1 e1 04          	shl    $0x4,%rcx
  4011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011e8:	41 0f 10 04 16       	movups (%r14,%rdx,1),%xmm0
  4011ed:	41 0f 10 14 17       	movups (%r15,%rdx,1),%xmm2
  4011f2:	0f 58 c2             	addps  %xmm2,%xmm0
  4011f5:	41 0f 11 44 15 00    	movups %xmm0,0x0(%r13,%rdx,1)
  4011fb:	48 83 c2 10          	add    $0x10,%rdx
  4011ff:	48 39 ca             	cmp    %rcx,%rdx
  401202:	75 e4                	jne    4011e8 <main+0x168>
  401204:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401209:	e8 32 fe ff ff       	callq  401040 <clock@plt>
  40120e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  401213:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401217:	48 29 f0             	sub    %rsi,%rax
  40121a:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  40121f:	f2 0f 5e 05 61 0e 00 	divsd  0xe61(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  401226:	00 
  401227:	66 48 0f 7e c3       	movq   %xmm0,%rbx
  40122c:	e8 0f fe ff ff       	callq  401040 <clock@plt>
  401231:	8b 4c 24 24          	mov    0x24(%rsp),%ecx
  401235:	31 d2                	xor    %edx,%edx
  401237:	48 89 c6             	mov    %rax,%rsi
  40123a:	d1 e9                	shr    %ecx
  40123c:	48 c1 e1 04          	shl    $0x4,%rcx
  401240:	66 0f 10 44 15 00    	movupd 0x0(%rbp,%rdx,1),%xmm0
  401246:	66 41 0f 10 1c 14    	movupd (%r12,%rdx,1),%xmm3
  40124c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401251:	66 0f 58 c3          	addpd  %xmm3,%xmm0
  401255:	0f 11 04 10          	movups %xmm0,(%rax,%rdx,1)
  401259:	48 83 c2 10          	add    $0x10,%rdx
  40125d:	48 39 d1             	cmp    %rdx,%rcx
  401260:	75 de                	jne    401240 <main+0x1c0>
  401262:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401267:	e8 d4 fd ff ff       	callq  401040 <clock@plt>
  40126c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  401271:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  401276:	8b 5c 24 28          	mov    0x28(%rsp),%ebx
  40127a:	8b 54 24 24          	mov    0x24(%rsp),%edx
  40127e:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401282:	bf 5e 20 40 00       	mov    $0x40205e,%edi
  401287:	48 29 f0             	sub    %rsi,%rax
  40128a:	89 de                	mov    %ebx,%esi
  40128c:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  401291:	b8 02 00 00 00       	mov    $0x2,%eax
  401296:	f2 0f 5e 0d ea 0d 00 	divsd  0xdea(%rip),%xmm1        # 402088 <_IO_stdin_used+0x88>
  40129d:	00 
  40129e:	e8 ad fd ff ff       	callq  401050 <printf@plt>
  4012a3:	4c 89 ff             	mov    %r15,%rdi
  4012a6:	e8 85 fd ff ff       	callq  401030 <free@plt>
  4012ab:	4c 89 f7             	mov    %r14,%rdi
  4012ae:	e8 7d fd ff ff       	callq  401030 <free@plt>
  4012b3:	4c 89 ef             	mov    %r13,%rdi
  4012b6:	e8 75 fd ff ff       	callq  401030 <free@plt>
  4012bb:	4c 89 e7             	mov    %r12,%rdi
  4012be:	e8 6d fd ff ff       	callq  401030 <free@plt>
  4012c3:	48 89 ef             	mov    %rbp,%rdi
  4012c6:	e8 65 fd ff ff       	callq  401030 <free@plt>
  4012cb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4012d0:	e8 5b fd ff ff       	callq  401030 <free@plt>
  4012d5:	89 d8                	mov    %ebx,%eax
  4012d7:	01 c0                	add    %eax,%eax
  4012d9:	83 6c 24 2c 01       	subl   $0x1,0x2c(%rsp)
  4012de:	89 44 24 28          	mov    %eax,0x28(%rsp)
  4012e2:	0f 85 d8 fd ff ff    	jne    4010c0 <main+0x40>
  4012e8:	48 83 c4 38          	add    $0x38,%rsp
  4012ec:	31 c0                	xor    %eax,%eax
  4012ee:	5b                   	pop    %rbx
  4012ef:	5d                   	pop    %rbp
  4012f0:	41 5c                	pop    %r12
  4012f2:	41 5d                	pop    %r13
  4012f4:	41 5e                	pop    %r14
  4012f6:	41 5f                	pop    %r15
  4012f8:	c3                   	retq   
  4012f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401300 <_start>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	31 ed                	xor    %ebp,%ebp
  401306:	49 89 d1             	mov    %rdx,%r9
  401309:	5e                   	pop    %rsi
  40130a:	48 89 e2             	mov    %rsp,%rdx
  40130d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401311:	50                   	push   %rax
  401312:	54                   	push   %rsp
  401313:	45 31 c0             	xor    %r8d,%r8d
  401316:	31 c9                	xor    %ecx,%ecx
  401318:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  40131f:	ff 15 cb 2c 00 00    	callq  *0x2ccb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401325:	f4                   	hlt    
  401326:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40132d:	00 00 00 

0000000000401330 <_dl_relocate_static_pie>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	c3                   	retq   
  401335:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40133c:	00 00 00 
  40133f:	90                   	nop

0000000000401340 <deregister_tm_clones>:
  401340:	b8 50 40 40 00       	mov    $0x404050,%eax
  401345:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  40134b:	74 13                	je     401360 <deregister_tm_clones+0x20>
  40134d:	b8 00 00 00 00       	mov    $0x0,%eax
  401352:	48 85 c0             	test   %rax,%rax
  401355:	74 09                	je     401360 <deregister_tm_clones+0x20>
  401357:	bf 50 40 40 00       	mov    $0x404050,%edi
  40135c:	ff e0                	jmpq   *%rax
  40135e:	66 90                	xchg   %ax,%ax
  401360:	c3                   	retq   
  401361:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401368:	00 00 00 00 
  40136c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401370 <register_tm_clones>:
  401370:	be 50 40 40 00       	mov    $0x404050,%esi
  401375:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  40137c:	48 89 f0             	mov    %rsi,%rax
  40137f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401383:	48 c1 f8 03          	sar    $0x3,%rax
  401387:	48 01 c6             	add    %rax,%rsi
  40138a:	48 d1 fe             	sar    %rsi
  40138d:	74 11                	je     4013a0 <register_tm_clones+0x30>
  40138f:	b8 00 00 00 00       	mov    $0x0,%eax
  401394:	48 85 c0             	test   %rax,%rax
  401397:	74 07                	je     4013a0 <register_tm_clones+0x30>
  401399:	bf 50 40 40 00       	mov    $0x404050,%edi
  40139e:	ff e0                	jmpq   *%rax
  4013a0:	c3                   	retq   
  4013a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4013a8:	00 00 00 00 
  4013ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013b0 <__do_global_dtors_aux>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	80 3d 95 2c 00 00 00 	cmpb   $0x0,0x2c95(%rip)        # 404050 <__TMC_END__>
  4013bb:	75 13                	jne    4013d0 <__do_global_dtors_aux+0x20>
  4013bd:	55                   	push   %rbp
  4013be:	48 89 e5             	mov    %rsp,%rbp
  4013c1:	e8 7a ff ff ff       	callq  401340 <deregister_tm_clones>
  4013c6:	c6 05 83 2c 00 00 01 	movb   $0x1,0x2c83(%rip)        # 404050 <__TMC_END__>
  4013cd:	5d                   	pop    %rbp
  4013ce:	c3                   	retq   
  4013cf:	90                   	nop
  4013d0:	c3                   	retq   
  4013d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4013d8:	00 00 00 00 
  4013dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013e0 <frame_dummy>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	eb 8a                	jmp    401370 <register_tm_clones>
  4013e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013ed:	00 00 00 

00000000004013f0 <initialize_arrays>:
  4013f0:	85 c9                	test   %ecx,%ecx
  4013f2:	7e 7c                	jle    401470 <initialize_arrays+0x80>
  4013f4:	48 63 c9             	movslq %ecx,%rcx
  4013f7:	41 56                	push   %r14
  4013f9:	49 89 d6             	mov    %rdx,%r14
  4013fc:	41 55                	push   %r13
  4013fe:	49 89 f5             	mov    %rsi,%r13
  401401:	41 54                	push   %r12
  401403:	49 89 fc             	mov    %rdi,%r12
  401406:	55                   	push   %rbp
  401407:	48 8d 2c 8d 00 00 00 	lea    0x0(,%rcx,4),%rbp
  40140e:	00 
  40140f:	53                   	push   %rbx
  401410:	31 db                	xor    %ebx,%ebx
  401412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401418:	e8 53 fc ff ff       	callq  401070 <rand@plt>
  40141d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401421:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401425:	f3 0f 59 05 4b 0c 00 	mulss  0xc4b(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  40142c:	00 
  40142d:	f3 41 0f 11 04 1c    	movss  %xmm0,(%r12,%rbx,1)
  401433:	e8 38 fc ff ff       	callq  401070 <rand@plt>
  401438:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40143c:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401440:	f3 0f 59 05 30 0c 00 	mulss  0xc30(%rip),%xmm0        # 402078 <_IO_stdin_used+0x78>
  401447:	00 
  401448:	f3 41 0f 11 44 1d 00 	movss  %xmm0,0x0(%r13,%rbx,1)
  40144f:	41 c7 04 1e 00 00 00 	movl   $0x0,(%r14,%rbx,1)
  401456:	00 
  401457:	48 83 c3 04          	add    $0x4,%rbx
  40145b:	48 39 dd             	cmp    %rbx,%rbp
  40145e:	75 b8                	jne    401418 <initialize_arrays+0x28>
  401460:	5b                   	pop    %rbx
  401461:	5d                   	pop    %rbp
  401462:	41 5c                	pop    %r12
  401464:	41 5d                	pop    %r13
  401466:	41 5e                	pop    %r14
  401468:	c3                   	retq   
  401469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401470:	c3                   	retq   
  401471:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401478:	00 00 00 00 
  40147c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401480 <initialize_arrays_double>:
  401480:	85 c9                	test   %ecx,%ecx
  401482:	7e 7c                	jle    401500 <initialize_arrays_double+0x80>
  401484:	48 63 c9             	movslq %ecx,%rcx
  401487:	41 56                	push   %r14
  401489:	49 89 d6             	mov    %rdx,%r14
  40148c:	41 55                	push   %r13
  40148e:	49 89 f5             	mov    %rsi,%r13
  401491:	41 54                	push   %r12
  401493:	49 89 fc             	mov    %rdi,%r12
  401496:	55                   	push   %rbp
  401497:	48 8d 2c cd 00 00 00 	lea    0x0(,%rcx,8),%rbp
  40149e:	00 
  40149f:	53                   	push   %rbx
  4014a0:	31 db                	xor    %ebx,%ebx
  4014a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4014a8:	e8 c3 fb ff ff       	callq  401070 <rand@plt>
  4014ad:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014b1:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4014b5:	f2 0f 5e 05 c3 0b 00 	divsd  0xbc3(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  4014bc:	00 
  4014bd:	f2 41 0f 11 04 1c    	movsd  %xmm0,(%r12,%rbx,1)
  4014c3:	e8 a8 fb ff ff       	callq  401070 <rand@plt>
  4014c8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014cc:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4014d0:	f2 0f 5e 05 a8 0b 00 	divsd  0xba8(%rip),%xmm0        # 402080 <_IO_stdin_used+0x80>
  4014d7:	00 
  4014d8:	f2 41 0f 11 44 1d 00 	movsd  %xmm0,0x0(%r13,%rbx,1)
  4014df:	49 c7 04 1e 00 00 00 	movq   $0x0,(%r14,%rbx,1)
  4014e6:	00 
  4014e7:	48 83 c3 08          	add    $0x8,%rbx
  4014eb:	48 39 dd             	cmp    %rbx,%rbp
  4014ee:	75 b8                	jne    4014a8 <initialize_arrays_double+0x28>
  4014f0:	5b                   	pop    %rbx
  4014f1:	5d                   	pop    %rbp
  4014f2:	41 5c                	pop    %r12
  4014f4:	41 5d                	pop    %r13
  4014f6:	41 5e                	pop    %r14
  4014f8:	c3                   	retq   
  4014f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401500:	c3                   	retq   
  401501:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401508:	00 00 00 00 
  40150c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401510 <vector_add_plain>:
  401510:	48 63 c1             	movslq %ecx,%rax
  401513:	85 c0                	test   %eax,%eax
  401515:	0f 8e e5 00 00 00    	jle    401600 <vector_add_plain+0xf0>
  40151b:	83 f8 01             	cmp    $0x1,%eax
  40151e:	0f 84 b4 00 00 00    	je     4015d8 <vector_add_plain+0xc8>
  401524:	4c 8d 47 04          	lea    0x4(%rdi),%r8
  401528:	48 89 d1             	mov    %rdx,%rcx
  40152b:	4c 29 c1             	sub    %r8,%rcx
  40152e:	48 83 f9 08          	cmp    $0x8,%rcx
  401532:	0f 86 a0 00 00 00    	jbe    4015d8 <vector_add_plain+0xc8>
  401538:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  40153c:	48 89 d1             	mov    %rdx,%rcx
  40153f:	4c 29 c1             	sub    %r8,%rcx
  401542:	48 83 f9 08          	cmp    $0x8,%rcx
  401546:	0f 86 8c 00 00 00    	jbe    4015d8 <vector_add_plain+0xc8>
  40154c:	8d 48 ff             	lea    -0x1(%rax),%ecx
  40154f:	41 89 c1             	mov    %eax,%r9d
  401552:	83 f9 02             	cmp    $0x2,%ecx
  401555:	0f 86 a6 00 00 00    	jbe    401601 <vector_add_plain+0xf1>
  40155b:	41 89 c0             	mov    %eax,%r8d
  40155e:	31 c9                	xor    %ecx,%ecx
  401560:	41 c1 e8 02          	shr    $0x2,%r8d
  401564:	49 c1 e0 04          	shl    $0x4,%r8
  401568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40156f:	00 
  401570:	0f 10 04 0f          	movups (%rdi,%rcx,1),%xmm0
  401574:	0f 10 14 0e          	movups (%rsi,%rcx,1),%xmm2
  401578:	0f 58 c2             	addps  %xmm2,%xmm0
  40157b:	0f 11 04 0a          	movups %xmm0,(%rdx,%rcx,1)
  40157f:	48 83 c1 10          	add    $0x10,%rcx
  401583:	4c 39 c1             	cmp    %r8,%rcx
  401586:	75 e8                	jne    401570 <vector_add_plain+0x60>
  401588:	89 c1                	mov    %eax,%ecx
  40158a:	83 e1 fc             	and    $0xfffffffc,%ecx
  40158d:	41 89 c8             	mov    %ecx,%r8d
  401590:	39 c8                	cmp    %ecx,%eax
  401592:	74 6c                	je     401600 <vector_add_plain+0xf0>
  401594:	29 c8                	sub    %ecx,%eax
  401596:	41 89 c1             	mov    %eax,%r9d
  401599:	83 f8 01             	cmp    $0x1,%eax
  40159c:	74 21                	je     4015bf <vector_add_plain+0xaf>
  40159e:	44 89 c0             	mov    %r8d,%eax
  4015a1:	f3 0f 7e 04 87       	movq   (%rdi,%rax,4),%xmm0
  4015a6:	f3 0f 7e 0c 86       	movq   (%rsi,%rax,4),%xmm1
  4015ab:	0f 58 c1             	addps  %xmm1,%xmm0
  4015ae:	0f 13 04 82          	movlps %xmm0,(%rdx,%rax,4)
  4015b2:	41 f6 c1 01          	test   $0x1,%r9b
  4015b6:	74 48                	je     401600 <vector_add_plain+0xf0>
  4015b8:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  4015bc:	44 01 c9             	add    %r9d,%ecx
  4015bf:	48 63 c1             	movslq %ecx,%rax
  4015c2:	f3 0f 10 04 87       	movss  (%rdi,%rax,4),%xmm0
  4015c7:	f3 0f 58 04 86       	addss  (%rsi,%rax,4),%xmm0
  4015cc:	f3 0f 11 04 82       	movss  %xmm0,(%rdx,%rax,4)
  4015d1:	c3                   	retq   
  4015d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4015d8:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
  4015df:	00 
  4015e0:	31 c0                	xor    %eax,%eax
  4015e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4015e8:	f3 0f 10 04 07       	movss  (%rdi,%rax,1),%xmm0
  4015ed:	f3 0f 58 04 06       	addss  (%rsi,%rax,1),%xmm0
  4015f2:	f3 0f 11 04 02       	movss  %xmm0,(%rdx,%rax,1)
  4015f7:	48 83 c0 04          	add    $0x4,%rax
  4015fb:	48 39 c8             	cmp    %rcx,%rax
  4015fe:	75 e8                	jne    4015e8 <vector_add_plain+0xd8>
  401600:	c3                   	retq   
  401601:	45 31 c0             	xor    %r8d,%r8d
  401604:	31 c9                	xor    %ecx,%ecx
  401606:	eb 96                	jmp    40159e <vector_add_plain+0x8e>
  401608:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40160f:	00 

0000000000401610 <vector_add_plain_double>:
  401610:	85 c9                	test   %ecx,%ecx
  401612:	0f 8e 88 00 00 00    	jle    4016a0 <vector_add_plain_double+0x90>
  401618:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40161b:	83 f8 01             	cmp    $0x1,%eax
  40161e:	76 58                	jbe    401678 <vector_add_plain_double+0x68>
  401620:	48 8d 47 08          	lea    0x8(%rdi),%rax
  401624:	48 39 c2             	cmp    %rax,%rdx
  401627:	74 4f                	je     401678 <vector_add_plain_double+0x68>
  401629:	48 8d 46 08          	lea    0x8(%rsi),%rax
  40162d:	48 39 c2             	cmp    %rax,%rdx
  401630:	74 46                	je     401678 <vector_add_plain_double+0x68>
  401632:	41 89 c8             	mov    %ecx,%r8d
  401635:	31 c0                	xor    %eax,%eax
  401637:	41 d1 e8             	shr    %r8d
  40163a:	49 c1 e0 04          	shl    $0x4,%r8
  40163e:	66 90                	xchg   %ax,%ax
  401640:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
  401645:	66 0f 10 0c 06       	movupd (%rsi,%rax,1),%xmm1
  40164a:	66 0f 58 c1          	addpd  %xmm1,%xmm0
  40164e:	0f 11 04 02          	movups %xmm0,(%rdx,%rax,1)
  401652:	48 83 c0 10          	add    $0x10,%rax
  401656:	4c 39 c0             	cmp    %r8,%rax
  401659:	75 e5                	jne    401640 <vector_add_plain_double+0x30>
  40165b:	89 c8                	mov    %ecx,%eax
  40165d:	83 e0 fe             	and    $0xfffffffe,%eax
  401660:	83 e1 01             	and    $0x1,%ecx
  401663:	74 3b                	je     4016a0 <vector_add_plain_double+0x90>
  401665:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
  40166a:	f2 0f 58 04 c6       	addsd  (%rsi,%rax,8),%xmm0
  40166f:	f2 0f 11 04 c2       	movsd  %xmm0,(%rdx,%rax,8)
  401674:	c3                   	retq   
  401675:	0f 1f 00             	nopl   (%rax)
  401678:	48 63 c9             	movslq %ecx,%rcx
  40167b:	31 c0                	xor    %eax,%eax
  40167d:	48 c1 e1 03          	shl    $0x3,%rcx
  401681:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401688:	f2 0f 10 04 07       	movsd  (%rdi,%rax,1),%xmm0
  40168d:	f2 0f 58 04 06       	addsd  (%rsi,%rax,1),%xmm0
  401692:	f2 0f 11 04 02       	movsd  %xmm0,(%rdx,%rax,1)
  401697:	48 83 c0 08          	add    $0x8,%rax
  40169b:	48 39 c8             	cmp    %rcx,%rax
  40169e:	75 e8                	jne    401688 <vector_add_plain_double+0x78>
  4016a0:	c3                   	retq   
  4016a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4016a8:	00 00 00 00 
  4016ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004016b0 <measure_execution_time>:
  4016b0:	41 57                	push   %r15
  4016b2:	45 89 c7             	mov    %r8d,%r15d
  4016b5:	41 56                	push   %r14
  4016b7:	49 89 ce             	mov    %rcx,%r14
  4016ba:	41 55                	push   %r13
  4016bc:	49 89 d5             	mov    %rdx,%r13
  4016bf:	41 54                	push   %r12
  4016c1:	49 89 f4             	mov    %rsi,%r12
  4016c4:	55                   	push   %rbp
  4016c5:	48 89 fd             	mov    %rdi,%rbp
  4016c8:	53                   	push   %rbx
  4016c9:	48 83 ec 08          	sub    $0x8,%rsp
  4016cd:	e8 6e f9 ff ff       	callq  401040 <clock@plt>
  4016d2:	44 89 f9             	mov    %r15d,%ecx
  4016d5:	4c 89 f2             	mov    %r14,%rdx
  4016d8:	4c 89 ee             	mov    %r13,%rsi
  4016db:	48 89 c3             	mov    %rax,%rbx
  4016de:	4c 89 e7             	mov    %r12,%rdi
  4016e1:	ff d5                	callq  *%rbp
  4016e3:	e8 58 f9 ff ff       	callq  401040 <clock@plt>
  4016e8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4016ec:	48 29 d8             	sub    %rbx,%rax
  4016ef:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  4016f4:	f2 0f 5e 05 8c 09 00 	divsd  0x98c(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  4016fb:	00 
  4016fc:	48 83 c4 08          	add    $0x8,%rsp
  401700:	5b                   	pop    %rbx
  401701:	5d                   	pop    %rbp
  401702:	41 5c                	pop    %r12
  401704:	41 5d                	pop    %r13
  401706:	41 5e                	pop    %r14
  401708:	41 5f                	pop    %r15
  40170a:	c3                   	retq   
  40170b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401710 <measure_execution_time_double>:
  401710:	41 57                	push   %r15
  401712:	45 89 c7             	mov    %r8d,%r15d
  401715:	41 56                	push   %r14
  401717:	49 89 ce             	mov    %rcx,%r14
  40171a:	41 55                	push   %r13
  40171c:	49 89 d5             	mov    %rdx,%r13
  40171f:	41 54                	push   %r12
  401721:	49 89 f4             	mov    %rsi,%r12
  401724:	55                   	push   %rbp
  401725:	48 89 fd             	mov    %rdi,%rbp
  401728:	53                   	push   %rbx
  401729:	48 83 ec 08          	sub    $0x8,%rsp
  40172d:	e8 0e f9 ff ff       	callq  401040 <clock@plt>
  401732:	44 89 f9             	mov    %r15d,%ecx
  401735:	4c 89 f2             	mov    %r14,%rdx
  401738:	4c 89 ee             	mov    %r13,%rsi
  40173b:	48 89 c3             	mov    %rax,%rbx
  40173e:	4c 89 e7             	mov    %r12,%rdi
  401741:	ff d5                	callq  *%rbp
  401743:	e8 f8 f8 ff ff       	callq  401040 <clock@plt>
  401748:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40174c:	48 29 d8             	sub    %rbx,%rax
  40174f:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401754:	f2 0f 5e 05 2c 09 00 	divsd  0x92c(%rip),%xmm0        # 402088 <_IO_stdin_used+0x88>
  40175b:	00 
  40175c:	48 83 c4 08          	add    $0x8,%rsp
  401760:	5b                   	pop    %rbx
  401761:	5d                   	pop    %rbp
  401762:	41 5c                	pop    %r12
  401764:	41 5d                	pop    %r13
  401766:	41 5e                	pop    %r14
  401768:	41 5f                	pop    %r15
  40176a:	c3                   	retq   

Disassembly of section .fini:

000000000040176c <_fini>:
  40176c:	f3 0f 1e fa          	endbr64 
  401770:	48 83 ec 08          	sub    $0x8,%rsp
  401774:	48 83 c4 08          	add    $0x8,%rsp
  401778:	c3                   	retq   
