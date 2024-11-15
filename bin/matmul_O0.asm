
matmul_O0:     file format elf64-x86-64


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
  401098:	48 c7 c7 58 13 40 00 	mov    $0x401358,%rdi
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
  40117c:	eb 35                	jmp    4011b3 <initialize_matrix+0x4d>
  40117e:	e8 ed fe ff ff       	callq  401070 <rand@plt>
  401183:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401187:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  40118b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40118e:	48 98                	cltq   
  401190:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401197:	00 
  401198:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40119c:	48 01 d0             	add    %rdx,%rax
  40119f:	f3 0f 10 0d 9d 0e 00 	movss  0xe9d(%rip),%xmm1        # 402044 <_IO_stdin_used+0x44>
  4011a6:	00 
  4011a7:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  4011ab:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4011af:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4011b3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4011b6:	0f af c0             	imul   %eax,%eax
  4011b9:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  4011bc:	7c c0                	jl     40117e <initialize_matrix+0x18>
  4011be:	90                   	nop
  4011bf:	90                   	nop
  4011c0:	c9                   	leaveq 
  4011c1:	c3                   	retq   

00000000004011c2 <matrix_multiply_plain>:
  4011c2:	55                   	push   %rbp
  4011c3:	48 89 e5             	mov    %rsp,%rbp
  4011c6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4011ca:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4011ce:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4011d2:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  4011d5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4011dc:	e9 f7 00 00 00       	jmpq   4012d8 <matrix_multiply_plain+0x116>
  4011e1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  4011e8:	e9 db 00 00 00       	jmpq   4012c8 <matrix_multiply_plain+0x106>
  4011ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4011f0:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
  4011f4:	89 c2                	mov    %eax,%edx
  4011f6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4011f9:	01 d0                	add    %edx,%eax
  4011fb:	48 98                	cltq   
  4011fd:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401204:	00 
  401205:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401209:	48 01 d0             	add    %rdx,%rax
  40120c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401210:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401214:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40121b:	e9 98 00 00 00       	jmpq   4012b8 <matrix_multiply_plain+0xf6>
  401220:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401223:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
  401227:	89 c2                	mov    %eax,%edx
  401229:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40122c:	01 d0                	add    %edx,%eax
  40122e:	48 98                	cltq   
  401230:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401237:	00 
  401238:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40123c:	48 01 d0             	add    %rdx,%rax
  40123f:	f3 0f 10 08          	movss  (%rax),%xmm1
  401243:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401246:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
  40124a:	89 c2                	mov    %eax,%edx
  40124c:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40124f:	01 d0                	add    %edx,%eax
  401251:	48 98                	cltq   
  401253:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40125a:	00 
  40125b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40125f:	48 01 d0             	add    %rdx,%rax
  401262:	f3 0f 10 10          	movss  (%rax),%xmm2
  401266:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401269:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
  40126d:	89 c2                	mov    %eax,%edx
  40126f:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401272:	01 d0                	add    %edx,%eax
  401274:	48 98                	cltq   
  401276:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40127d:	00 
  40127e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401282:	48 01 d0             	add    %rdx,%rax
  401285:	f3 0f 10 00          	movss  (%rax),%xmm0
  401289:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  40128d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401290:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
  401294:	89 c2                	mov    %eax,%edx
  401296:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401299:	01 d0                	add    %edx,%eax
  40129b:	48 98                	cltq   
  40129d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4012a4:	00 
  4012a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012a9:	48 01 d0             	add    %rdx,%rax
  4012ac:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  4012b0:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4012b4:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  4012b8:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4012bb:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4012be:	0f 8c 5c ff ff ff    	jl     401220 <matrix_multiply_plain+0x5e>
  4012c4:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  4012c8:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4012cb:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4012ce:	0f 8c 19 ff ff ff    	jl     4011ed <matrix_multiply_plain+0x2b>
  4012d4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4012d8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012db:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4012de:	0f 8c fd fe ff ff    	jl     4011e1 <matrix_multiply_plain+0x1f>
  4012e4:	90                   	nop
  4012e5:	90                   	nop
  4012e6:	5d                   	pop    %rbp
  4012e7:	c3                   	retq   

00000000004012e8 <measure_execution_time>:
  4012e8:	55                   	push   %rbp
  4012e9:	48 89 e5             	mov    %rsp,%rbp
  4012ec:	48 83 ec 40          	sub    $0x40,%rsp
  4012f0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4012f4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4012f8:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4012fc:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  401300:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  401304:	e8 37 fd ff ff       	callq  401040 <clock@plt>
  401309:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40130d:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  401310:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401314:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  401318:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40131c:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  401320:	48 89 c7             	mov    %rax,%rdi
  401323:	41 ff d0             	callq  *%r8
  401326:	e8 15 fd ff ff       	callq  401040 <clock@plt>
  40132b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40132f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401333:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  401337:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40133b:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401340:	f2 0f 10 0d 00 0d 00 	movsd  0xd00(%rip),%xmm1        # 402048 <_IO_stdin_used+0x48>
  401347:	00 
  401348:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  40134c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  401351:	66 48 0f 6e c0       	movq   %rax,%xmm0
  401356:	c9                   	leaveq 
  401357:	c3                   	retq   

0000000000401358 <main>:
  401358:	55                   	push   %rbp
  401359:	48 89 e5             	mov    %rsp,%rbp
  40135c:	48 83 ec 40          	sub    $0x40,%rsp
  401360:	c7 45 c0 80 00 00 00 	movl   $0x80,-0x40(%rbp)
  401367:	c7 45 c4 00 01 00 00 	movl   $0x100,-0x3c(%rbp)
  40136e:	c7 45 c8 00 02 00 00 	movl   $0x200,-0x38(%rbp)
  401375:	c7 45 cc 00 04 00 00 	movl   $0x400,-0x34(%rbp)
  40137c:	c7 45 f8 04 00 00 00 	movl   $0x4,-0x8(%rbp)
  401383:	ba 08 20 40 00       	mov    $0x402008,%edx
  401388:	be 22 20 40 00       	mov    $0x402022,%esi
  40138d:	bf 27 20 40 00       	mov    $0x402027,%edi
  401392:	b8 00 00 00 00       	mov    $0x0,%eax
  401397:	e8 b4 fc ff ff       	callq  401050 <printf@plt>
  40139c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4013a3:	e9 e3 00 00 00       	jmpq   40148b <main+0x133>
  4013a8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013ab:	48 98                	cltq   
  4013ad:	8b 44 85 c0          	mov    -0x40(%rbp,%rax,4),%eax
  4013b1:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4013b4:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013b7:	0f af c0             	imul   %eax,%eax
  4013ba:	48 98                	cltq   
  4013bc:	48 c1 e0 02          	shl    $0x2,%rax
  4013c0:	48 89 c7             	mov    %rax,%rdi
  4013c3:	e8 98 fc ff ff       	callq  401060 <malloc@plt>
  4013c8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4013cc:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013cf:	0f af c0             	imul   %eax,%eax
  4013d2:	48 98                	cltq   
  4013d4:	48 c1 e0 02          	shl    $0x2,%rax
  4013d8:	48 89 c7             	mov    %rax,%rdi
  4013db:	e8 80 fc ff ff       	callq  401060 <malloc@plt>
  4013e0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4013e4:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013e7:	0f af c0             	imul   %eax,%eax
  4013ea:	48 98                	cltq   
  4013ec:	48 c1 e0 02          	shl    $0x2,%rax
  4013f0:	48 89 c7             	mov    %rax,%rdi
  4013f3:	e8 68 fc ff ff       	callq  401060 <malloc@plt>
  4013f8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4013fc:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4013ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401403:	89 d6                	mov    %edx,%esi
  401405:	48 89 c7             	mov    %rax,%rdi
  401408:	e8 59 fd ff ff       	callq  401166 <initialize_matrix>
  40140d:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401410:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401414:	89 d6                	mov    %edx,%esi
  401416:	48 89 c7             	mov    %rax,%rdi
  401419:	e8 48 fd ff ff       	callq  401166 <initialize_matrix>
  40141e:	8b 75 f4             	mov    -0xc(%rbp),%esi
  401421:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  401425:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401429:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40142d:	41 89 f0             	mov    %esi,%r8d
  401430:	48 89 c6             	mov    %rax,%rsi
  401433:	bf c2 11 40 00       	mov    $0x4011c2,%edi
  401438:	e8 ab fe ff ff       	callq  4012e8 <measure_execution_time>
  40143d:	66 48 0f 7e c0       	movq   %xmm0,%rax
  401442:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401446:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40144a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40144d:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  401452:	89 c6                	mov    %eax,%esi
  401454:	bf 34 20 40 00       	mov    $0x402034,%edi
  401459:	b8 01 00 00 00       	mov    $0x1,%eax
  40145e:	e8 ed fb ff ff       	callq  401050 <printf@plt>
  401463:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401467:	48 89 c7             	mov    %rax,%rdi
  40146a:	e8 c1 fb ff ff       	callq  401030 <free@plt>
  40146f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401473:	48 89 c7             	mov    %rax,%rdi
  401476:	e8 b5 fb ff ff       	callq  401030 <free@plt>
  40147b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40147f:	48 89 c7             	mov    %rax,%rdi
  401482:	e8 a9 fb ff ff       	callq  401030 <free@plt>
  401487:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40148b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40148e:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  401491:	0f 8c 11 ff ff ff    	jl     4013a8 <main+0x50>
  401497:	b8 00 00 00 00       	mov    $0x0,%eax
  40149c:	c9                   	leaveq 
  40149d:	c3                   	retq   

Disassembly of section .fini:

00000000004014a0 <_fini>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	48 83 ec 08          	sub    $0x8,%rsp
  4014a8:	48 83 c4 08          	add    $0x8,%rsp
  4014ac:	c3                   	retq   
