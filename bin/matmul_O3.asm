
matmul_O3:     file format elf64-x86-64


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
  40109b:	48 83 ec 68          	sub    $0x68,%rsp
  40109f:	66 0f 6f 05 a9 0f 00 	movdqa 0xfa9(%rip),%xmm0        # 402050 <_IO_stdin_used+0x50>
  4010a6:	00 
  4010a7:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  4010ac:	e8 9f ff ff ff       	callq  401050 <printf@plt>
  4010b1:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  4010b6:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4010bb:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4010c0:	8b 18                	mov    (%rax),%ebx
  4010c2:	41 89 df             	mov    %ebx,%r15d
  4010c5:	44 0f af fb          	imul   %ebx,%r15d
  4010c9:	49 63 ef             	movslq %r15d,%rbp
  4010cc:	48 c1 e5 02          	shl    $0x2,%rbp
  4010d0:	48 89 ef             	mov    %rbp,%rdi
  4010d3:	e8 88 ff ff ff       	callq  401060 <malloc@plt>
  4010d8:	48 89 ef             	mov    %rbp,%rdi
  4010db:	49 89 c5             	mov    %rax,%r13
  4010de:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4010e3:	e8 78 ff ff ff       	callq  401060 <malloc@plt>
  4010e8:	48 89 ef             	mov    %rbp,%rdi
  4010eb:	4e 8d 64 2d 00       	lea    0x0(%rbp,%r13,1),%r12
  4010f0:	49 89 c6             	mov    %rax,%r14
  4010f3:	e8 68 ff ff ff       	callq  401060 <malloc@plt>
  4010f8:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  4010fd:	45 85 ff             	test   %r15d,%r15d
  401100:	74 5b                	je     40115d <main+0xdd>
  401102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401108:	e8 63 ff ff ff       	callq  401070 <rand@plt>
  40110d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401111:	49 83 c5 04          	add    $0x4,%r13
  401115:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401119:	f3 0f 59 05 1f 0f 00 	mulss  0xf1f(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  401120:	00 
  401121:	f3 41 0f 11 45 fc    	movss  %xmm0,-0x4(%r13)
  401127:	4d 39 e5             	cmp    %r12,%r13
  40112a:	75 dc                	jne    401108 <main+0x88>
  40112c:	4d 89 f4             	mov    %r14,%r12
  40112f:	4c 01 f5             	add    %r14,%rbp
  401132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401138:	e8 33 ff ff ff       	callq  401070 <rand@plt>
  40113d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401141:	49 83 c4 04          	add    $0x4,%r12
  401145:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  401149:	f3 0f 59 05 ef 0e 00 	mulss  0xeef(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  401150:	00 
  401151:	f3 41 0f 11 44 24 fc 	movss  %xmm0,-0x4(%r12)
  401158:	49 39 ec             	cmp    %rbp,%r12
  40115b:	75 db                	jne    401138 <main+0xb8>
  40115d:	e8 de fe ff ff       	callq  401040 <clock@plt>
  401162:	48 89 c6             	mov    %rax,%rsi
  401165:	85 db                	test   %ebx,%ebx
  401167:	0f 8e b2 01 00 00    	jle    40131f <main+0x29f>
  40116d:	48 63 fb             	movslq %ebx,%rdi
  401170:	8d 43 ff             	lea    -0x1(%rbx),%eax
  401173:	48 89 74 24 48       	mov    %rsi,0x48(%rsp)
  401178:	41 89 da             	mov    %ebx,%r10d
  40117b:	89 44 24 28          	mov    %eax,0x28(%rsp)
  40117f:	48 89 f8             	mov    %rdi,%rax
  401182:	4c 8b 64 24 40       	mov    0x40(%rsp),%r12
  401187:	41 83 e2 fc          	and    $0xfffffffc,%r10d
  40118b:	48 c1 e0 04          	shl    $0x4,%rax
  40118f:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  401194:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
  401199:	31 d2                	xor    %edx,%edx
  40119b:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4011a0:	89 d8                	mov    %ebx,%eax
  4011a2:	45 31 ed             	xor    %r13d,%r13d
  4011a5:	4c 8d 3c 7f          	lea    (%rdi,%rdi,2),%r15
  4011a9:	c1 e8 02             	shr    $0x2,%eax
  4011ac:	48 8d 2c bd 00 00 00 	lea    0x0(,%rdi,4),%rbp
  4011b3:	00 
  4011b4:	48 c1 e0 04          	shl    $0x4,%rax
  4011b8:	48 89 c1             	mov    %rax,%rcx
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011c0:	89 54 24 2c          	mov    %edx,0x2c(%rsp)
  4011c4:	49 8d 04 0b          	lea    (%r11,%rcx,1),%rax
  4011c8:	4c 89 f7             	mov    %r14,%rdi
  4011cb:	48 89 2c 24          	mov    %rbp,(%rsp)
  4011cf:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
  4011d4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4011d9:	31 c0                	xor    %eax,%eax
  4011db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011e0:	83 7c 24 28 02       	cmpl   $0x2,0x28(%rsp)
  4011e5:	41 89 c0             	mov    %eax,%r8d
  4011e8:	0f 86 b2 01 00 00    	jbe    4013a0 <main+0x320>
  4011ee:	48 8b 2c 24          	mov    (%rsp),%rbp
  4011f2:	4c 89 d9             	mov    %r11,%rcx
  4011f5:	48 89 fa             	mov    %rdi,%rdx
  4011f8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4011fc:	f3 42 0f 10 14 ba    	movss  (%rdx,%r15,4),%xmm2
  401202:	f3 0f 10 0c 6a       	movss  (%rdx,%rbp,2),%xmm1
  401207:	48 83 c1 10          	add    $0x10,%rcx
  40120b:	f3 0f 10 1c 2a       	movss  (%rdx,%rbp,1),%xmm3
  401210:	0f 10 61 f0          	movups -0x10(%rcx),%xmm4
  401214:	0f 14 ca             	unpcklps %xmm2,%xmm1
  401217:	f3 0f 10 12          	movss  (%rdx),%xmm2
  40121b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401220:	0f 14 d3             	unpcklps %xmm3,%xmm2
  401223:	48 01 f2             	add    %rsi,%rdx
  401226:	0f 16 d1             	movlhps %xmm1,%xmm2
  401229:	0f 59 d4             	mulps  %xmm4,%xmm2
  40122c:	f3 0f 58 c2          	addss  %xmm2,%xmm0
  401230:	0f 28 ca             	movaps %xmm2,%xmm1
  401233:	0f c6 ca 55          	shufps $0x55,%xmm2,%xmm1
  401237:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  40123b:	0f 28 ca             	movaps %xmm2,%xmm1
  40123e:	0f 15 ca             	unpckhps %xmm2,%xmm1
  401241:	0f c6 d2 ff          	shufps $0xff,%xmm2,%xmm2
  401245:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  401249:	f3 0f 58 c2          	addss  %xmm2,%xmm0
  40124d:	48 39 4c 24 18       	cmp    %rcx,0x18(%rsp)
  401252:	75 a8                	jne    4011fc <main+0x17c>
  401254:	48 89 2c 24          	mov    %rbp,(%rsp)
  401258:	44 89 d2             	mov    %r10d,%edx
  40125b:	44 39 d3             	cmp    %r10d,%ebx
  40125e:	0f 84 7c 00 00 00    	je     4012e0 <main+0x260>
  401264:	41 89 d9             	mov    %ebx,%r9d
  401267:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  40126c:	41 8d 74 15 00       	lea    0x0(%r13,%rdx,1),%esi
  401271:	44 0f af ca          	imul   %edx,%r9d
  401275:	48 63 f6             	movslq %esi,%rsi
  401278:	f3 0f 10 4c b5 00    	movss  0x0(%rbp,%rsi,4),%xmm1
  40127e:	43 8d 0c 01          	lea    (%r9,%r8,1),%ecx
  401282:	48 63 c9             	movslq %ecx,%rcx
  401285:	f3 41 0f 59 0c 8e    	mulss  (%r14,%rcx,4),%xmm1
  40128b:	8d 4a 01             	lea    0x1(%rdx),%ecx
  40128e:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  401292:	39 cb                	cmp    %ecx,%ebx
  401294:	7e 4a                	jle    4012e0 <main+0x260>
  401296:	41 01 d9             	add    %ebx,%r9d
  401299:	44 01 e9             	add    %r13d,%ecx
  40129c:	83 c2 02             	add    $0x2,%edx
  40129f:	43 8d 34 08          	lea    (%r8,%r9,1),%esi
  4012a3:	48 63 c9             	movslq %ecx,%rcx
  4012a6:	48 63 f6             	movslq %esi,%rsi
  4012a9:	f3 0f 10 4c 8d 00    	movss  0x0(%rbp,%rcx,4),%xmm1
  4012af:	f3 41 0f 59 0c b6    	mulss  (%r14,%rsi,4),%xmm1
  4012b5:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  4012b9:	39 d3                	cmp    %edx,%ebx
  4012bb:	7e 23                	jle    4012e0 <main+0x260>
  4012bd:	41 01 d9             	add    %ebx,%r9d
  4012c0:	44 01 ea             	add    %r13d,%edx
  4012c3:	45 01 c1             	add    %r8d,%r9d
  4012c6:	48 63 d2             	movslq %edx,%rdx
  4012c9:	49 63 c9             	movslq %r9d,%rcx
  4012cc:	f3 41 0f 10 0c 8e    	movss  (%r14,%rcx,4),%xmm1
  4012d2:	f3 0f 59 4c 95 00    	mulss  0x0(%rbp,%rdx,4),%xmm1
  4012d8:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4012e0:	f3 41 0f 11 04 84    	movss  %xmm0,(%r12,%rax,4)
  4012e6:	48 83 c7 04          	add    $0x4,%rdi
  4012ea:	48 83 c0 01          	add    $0x1,%rax
  4012ee:	48 39 44 24 08       	cmp    %rax,0x8(%rsp)
  4012f3:	0f 85 e7 fe ff ff    	jne    4011e0 <main+0x160>
  4012f9:	8b 54 24 2c          	mov    0x2c(%rsp),%edx
  4012fd:	48 8b 2c 24          	mov    (%rsp),%rbp
  401301:	41 01 dd             	add    %ebx,%r13d
  401304:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  401309:	83 c2 01             	add    $0x1,%edx
  40130c:	49 01 ec             	add    %rbp,%r12
  40130f:	49 01 eb             	add    %rbp,%r11
  401312:	39 d3                	cmp    %edx,%ebx
  401314:	0f 85 a6 fe ff ff    	jne    4011c0 <main+0x140>
  40131a:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
  40131f:	48 89 34 24          	mov    %rsi,(%rsp)
  401323:	e8 18 fd ff ff       	callq  401040 <clock@plt>
  401328:	48 8b 34 24          	mov    (%rsp),%rsi
  40132c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401330:	bf 30 20 40 00       	mov    $0x402030,%edi
  401335:	48 29 f0             	sub    %rsi,%rax
  401338:	89 de                	mov    %ebx,%esi
  40133a:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  40133f:	b8 01 00 00 00       	mov    $0x1,%eax
  401344:	f2 0f 5e 05 fc 0c 00 	divsd  0xcfc(%rip),%xmm0        # 402048 <_IO_stdin_used+0x48>
  40134b:	00 
  40134c:	e8 ff fc ff ff       	callq  401050 <printf@plt>
  401351:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401356:	e8 d5 fc ff ff       	callq  401030 <free@plt>
  40135b:	4c 89 f7             	mov    %r14,%rdi
  40135e:	e8 cd fc ff ff       	callq  401030 <free@plt>
  401363:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  401368:	e8 c3 fc ff ff       	callq  401030 <free@plt>
  40136d:	48 83 44 24 38 04    	addq   $0x4,0x38(%rsp)
  401373:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  401378:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  40137d:	48 39 f8             	cmp    %rdi,%rax
  401380:	0f 85 35 fd ff ff    	jne    4010bb <main+0x3b>
  401386:	48 83 c4 68          	add    $0x68,%rsp
  40138a:	31 c0                	xor    %eax,%eax
  40138c:	5b                   	pop    %rbx
  40138d:	5d                   	pop    %rbp
  40138e:	41 5c                	pop    %r12
  401390:	41 5d                	pop    %r13
  401392:	41 5e                	pop    %r14
  401394:	41 5f                	pop    %r15
  401396:	c3                   	retq   
  401397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40139e:	00 00 
  4013a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4013a4:	31 d2                	xor    %edx,%edx
  4013a6:	e9 b9 fe ff ff       	jmpq   401264 <main+0x1e4>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <_start>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	31 ed                	xor    %ebp,%ebp
  4013b6:	49 89 d1             	mov    %rdx,%r9
  4013b9:	5e                   	pop    %rsi
  4013ba:	48 89 e2             	mov    %rsp,%rdx
  4013bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4013c1:	50                   	push   %rax
  4013c2:	54                   	push   %rsp
  4013c3:	45 31 c0             	xor    %r8d,%r8d
  4013c6:	31 c9                	xor    %ecx,%ecx
  4013c8:	48 c7 c7 80 10 40 00 	mov    $0x401080,%rdi
  4013cf:	ff 15 1b 2c 00 00    	callq  *0x2c1b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4013d5:	f4                   	hlt    
  4013d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013dd:	00 00 00 

00000000004013e0 <_dl_relocate_static_pie>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	c3                   	retq   
  4013e5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013ec:	00 00 00 
  4013ef:	90                   	nop

00000000004013f0 <deregister_tm_clones>:
  4013f0:	b8 50 40 40 00       	mov    $0x404050,%eax
  4013f5:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  4013fb:	74 13                	je     401410 <deregister_tm_clones+0x20>
  4013fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401402:	48 85 c0             	test   %rax,%rax
  401405:	74 09                	je     401410 <deregister_tm_clones+0x20>
  401407:	bf 50 40 40 00       	mov    $0x404050,%edi
  40140c:	ff e0                	jmpq   *%rax
  40140e:	66 90                	xchg   %ax,%ax
  401410:	c3                   	retq   
  401411:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401418:	00 00 00 00 
  40141c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401420 <register_tm_clones>:
  401420:	be 50 40 40 00       	mov    $0x404050,%esi
  401425:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  40142c:	48 89 f0             	mov    %rsi,%rax
  40142f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401433:	48 c1 f8 03          	sar    $0x3,%rax
  401437:	48 01 c6             	add    %rax,%rsi
  40143a:	48 d1 fe             	sar    %rsi
  40143d:	74 11                	je     401450 <register_tm_clones+0x30>
  40143f:	b8 00 00 00 00       	mov    $0x0,%eax
  401444:	48 85 c0             	test   %rax,%rax
  401447:	74 07                	je     401450 <register_tm_clones+0x30>
  401449:	bf 50 40 40 00       	mov    $0x404050,%edi
  40144e:	ff e0                	jmpq   *%rax
  401450:	c3                   	retq   
  401451:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401458:	00 00 00 00 
  40145c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401460 <__do_global_dtors_aux>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	80 3d e5 2b 00 00 00 	cmpb   $0x0,0x2be5(%rip)        # 404050 <__TMC_END__>
  40146b:	75 13                	jne    401480 <__do_global_dtors_aux+0x20>
  40146d:	55                   	push   %rbp
  40146e:	48 89 e5             	mov    %rsp,%rbp
  401471:	e8 7a ff ff ff       	callq  4013f0 <deregister_tm_clones>
  401476:	c6 05 d3 2b 00 00 01 	movb   $0x1,0x2bd3(%rip)        # 404050 <__TMC_END__>
  40147d:	5d                   	pop    %rbp
  40147e:	c3                   	retq   
  40147f:	90                   	nop
  401480:	c3                   	retq   
  401481:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401488:	00 00 00 00 
  40148c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401490 <frame_dummy>:
  401490:	f3 0f 1e fa          	endbr64 
  401494:	eb 8a                	jmp    401420 <register_tm_clones>
  401496:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40149d:	00 00 00 

00000000004014a0 <initialize_matrix>:
  4014a0:	0f af f6             	imul   %esi,%esi
  4014a3:	85 f6                	test   %esi,%esi
  4014a5:	74 49                	je     4014f0 <initialize_matrix+0x50>
  4014a7:	55                   	push   %rbp
  4014a8:	48 63 f6             	movslq %esi,%rsi
  4014ab:	53                   	push   %rbx
  4014ac:	48 8d 2c b7          	lea    (%rdi,%rsi,4),%rbp
  4014b0:	48 89 fb             	mov    %rdi,%rbx
  4014b3:	48 83 ec 08          	sub    $0x8,%rsp
  4014b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4014be:	00 00 
  4014c0:	e8 ab fb ff ff       	callq  401070 <rand@plt>
  4014c5:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014c9:	48 83 c3 04          	add    $0x4,%rbx
  4014cd:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  4014d1:	f3 0f 59 05 67 0b 00 	mulss  0xb67(%rip),%xmm0        # 402040 <_IO_stdin_used+0x40>
  4014d8:	00 
  4014d9:	f3 0f 11 43 fc       	movss  %xmm0,-0x4(%rbx)
  4014de:	48 39 eb             	cmp    %rbp,%rbx
  4014e1:	75 dd                	jne    4014c0 <initialize_matrix+0x20>
  4014e3:	48 83 c4 08          	add    $0x8,%rsp
  4014e7:	5b                   	pop    %rbx
  4014e8:	5d                   	pop    %rbp
  4014e9:	c3                   	retq   
  4014ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4014f0:	c3                   	retq   
  4014f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014f8:	00 00 00 00 
  4014fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401500 <matrix_multiply_plain>:
  401500:	85 c9                	test   %ecx,%ecx
  401502:	0f 8e 98 00 00 00    	jle    4015a0 <matrix_multiply_plain+0xa0>
  401508:	41 56                	push   %r14
  40150a:	4c 63 f1             	movslq %ecx,%r14
  40150d:	49 89 fa             	mov    %rdi,%r10
  401510:	41 89 cb             	mov    %ecx,%r11d
  401513:	41 55                	push   %r13
  401515:	49 89 d5             	mov    %rdx,%r13
  401518:	41 54                	push   %r12
  40151a:	49 89 f4             	mov    %rsi,%r12
  40151d:	4a 8d 34 b5 00 00 00 	lea    0x0(,%r14,4),%rsi
  401524:	00 
  401525:	55                   	push   %rbp
  401526:	48 8d 3c 37          	lea    (%rdi,%rsi,1),%rdi
  40152a:	31 ed                	xor    %ebp,%ebp
  40152c:	53                   	push   %rbx
  40152d:	31 db                	xor    %ebx,%ebx
  40152f:	90                   	nop
  401530:	49 8d 4c 9d 00       	lea    0x0(%r13,%rbx,4),%rcx
  401535:	4d 89 e0             	mov    %r12,%r8
  401538:	45 31 c9             	xor    %r9d,%r9d
  40153b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401540:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
  401546:	4c 89 c2             	mov    %r8,%rdx
  401549:	4c 89 d0             	mov    %r10,%rax
  40154c:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401550:	f3 0f 10 00          	movss  (%rax),%xmm0
  401554:	f3 0f 59 02          	mulss  (%rdx),%xmm0
  401558:	48 83 c0 04          	add    $0x4,%rax
  40155c:	48 01 f2             	add    %rsi,%rdx
  40155f:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  401563:	f3 0f 11 09          	movss  %xmm1,(%rcx)
  401567:	48 39 f8             	cmp    %rdi,%rax
  40156a:	75 e4                	jne    401550 <matrix_multiply_plain+0x50>
  40156c:	41 8d 41 01          	lea    0x1(%r9),%eax
  401570:	48 83 c1 04          	add    $0x4,%rcx
  401574:	49 83 c0 04          	add    $0x4,%r8
  401578:	41 39 c3             	cmp    %eax,%r11d
  40157b:	74 05                	je     401582 <matrix_multiply_plain+0x82>
  40157d:	41 89 c1             	mov    %eax,%r9d
  401580:	eb be                	jmp    401540 <matrix_multiply_plain+0x40>
  401582:	8d 45 01             	lea    0x1(%rbp),%eax
  401585:	49 01 f2             	add    %rsi,%r10
  401588:	48 01 f7             	add    %rsi,%rdi
  40158b:	4c 01 f3             	add    %r14,%rbx
  40158e:	44 39 cd             	cmp    %r9d,%ebp
  401591:	74 04                	je     401597 <matrix_multiply_plain+0x97>
  401593:	89 c5                	mov    %eax,%ebp
  401595:	eb 99                	jmp    401530 <matrix_multiply_plain+0x30>
  401597:	5b                   	pop    %rbx
  401598:	5d                   	pop    %rbp
  401599:	41 5c                	pop    %r12
  40159b:	41 5d                	pop    %r13
  40159d:	41 5e                	pop    %r14
  40159f:	c3                   	retq   
  4015a0:	c3                   	retq   
  4015a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4015a8:	00 00 00 00 
  4015ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004015b0 <measure_execution_time>:
  4015b0:	41 57                	push   %r15
  4015b2:	45 89 c7             	mov    %r8d,%r15d
  4015b5:	41 56                	push   %r14
  4015b7:	49 89 ce             	mov    %rcx,%r14
  4015ba:	41 55                	push   %r13
  4015bc:	49 89 d5             	mov    %rdx,%r13
  4015bf:	41 54                	push   %r12
  4015c1:	49 89 f4             	mov    %rsi,%r12
  4015c4:	55                   	push   %rbp
  4015c5:	48 89 fd             	mov    %rdi,%rbp
  4015c8:	53                   	push   %rbx
  4015c9:	48 83 ec 08          	sub    $0x8,%rsp
  4015cd:	e8 6e fa ff ff       	callq  401040 <clock@plt>
  4015d2:	44 89 f9             	mov    %r15d,%ecx
  4015d5:	4c 89 f2             	mov    %r14,%rdx
  4015d8:	4c 89 ee             	mov    %r13,%rsi
  4015db:	48 89 c3             	mov    %rax,%rbx
  4015de:	4c 89 e7             	mov    %r12,%rdi
  4015e1:	ff d5                	callq  *%rbp
  4015e3:	e8 58 fa ff ff       	callq  401040 <clock@plt>
  4015e8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4015ec:	48 29 d8             	sub    %rbx,%rax
  4015ef:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  4015f4:	f2 0f 5e 05 4c 0a 00 	divsd  0xa4c(%rip),%xmm0        # 402048 <_IO_stdin_used+0x48>
  4015fb:	00 
  4015fc:	48 83 c4 08          	add    $0x8,%rsp
  401600:	5b                   	pop    %rbx
  401601:	5d                   	pop    %rbp
  401602:	41 5c                	pop    %r12
  401604:	41 5d                	pop    %r13
  401606:	41 5e                	pop    %r14
  401608:	41 5f                	pop    %r15
  40160a:	c3                   	retq   

Disassembly of section .fini:

000000000040160c <_fini>:
  40160c:	f3 0f 1e fa          	endbr64 
  401610:	48 83 ec 08          	sub    $0x8,%rsp
  401614:	48 83 c4 08          	add    $0x8,%rsp
  401618:	c3                   	retq   
