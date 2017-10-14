
ctarget：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400c68 <_init>:
  400c68:	48 83 ec 08          	sub    $0x8,%rsp
  400c6c:	48 8b 05 85 43 20 00 	mov    0x204385(%rip),%rax        # 604ff8 <_DYNAMIC+0x1e0>
  400c73:	48 85 c0             	test   %rax,%rax
  400c76:	74 05                	je     400c7d <_init+0x15>
  400c78:	e8 43 02 00 00       	callq  400ec0 <socket@plt+0x10>
  400c7d:	48 83 c4 08          	add    $0x8,%rsp
  400c81:	c3                   	retq   

Disassembly of section .plt:

0000000000400c90 <strcasecmp@plt-0x10>:
  400c90:	ff 35 72 43 20 00    	pushq  0x204372(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c96:	ff 25 74 43 20 00    	jmpq   *0x204374(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ca0 <strcasecmp@plt>:
  400ca0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ca6:	68 00 00 00 00       	pushq  $0x0
  400cab:	e9 e0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cb0 <__errno_location@plt>:
  400cb0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400cb6:	68 01 00 00 00       	pushq  $0x1
  400cbb:	e9 d0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cc0 <srandom@plt>:
  400cc0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cc6:	68 02 00 00 00       	pushq  $0x2
  400ccb:	e9 c0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cd0 <strncmp@plt>:
  400cd0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cd6:	68 03 00 00 00       	pushq  $0x3
  400cdb:	e9 b0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400ce0 <strcpy@plt>:
  400ce0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ce6:	68 04 00 00 00       	pushq  $0x4
  400ceb:	e9 a0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cf0 <puts@plt>:
  400cf0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cf6:	68 05 00 00 00       	pushq  $0x5
  400cfb:	e9 90 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d00 <write@plt>:
  400d00:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400d06:	68 06 00 00 00       	pushq  $0x6
  400d0b:	e9 80 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d10 <__stack_chk_fail@plt>:
  400d10:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d16:	68 07 00 00 00       	pushq  $0x7
  400d1b:	e9 70 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d20 <mmap@plt>:
  400d20:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d26:	68 08 00 00 00       	pushq  $0x8
  400d2b:	e9 60 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d30 <memset@plt>:
  400d30:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d36:	68 09 00 00 00       	pushq  $0x9
  400d3b:	e9 50 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d40 <alarm@plt>:
  400d40:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d46:	68 0a 00 00 00       	pushq  $0xa
  400d4b:	e9 40 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d50 <close@plt>:
  400d50:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d56:	68 0b 00 00 00       	pushq  $0xb
  400d5b:	e9 30 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d60 <read@plt>:
  400d60:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d66:	68 0c 00 00 00       	pushq  $0xc
  400d6b:	e9 20 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d70 <__libc_start_main@plt>:
  400d70:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d76:	68 0d 00 00 00       	pushq  $0xd
  400d7b:	e9 10 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d80 <signal@plt>:
  400d80:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d86:	68 0e 00 00 00       	pushq  $0xe
  400d8b:	e9 00 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d90 <gethostbyname@plt>:
  400d90:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d96:	68 0f 00 00 00       	pushq  $0xf
  400d9b:	e9 f0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400da0 <__memmove_chk@plt>:
  400da0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400da6:	68 10 00 00 00       	pushq  $0x10
  400dab:	e9 e0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400db6:	68 11 00 00 00       	pushq  $0x11
  400dbb:	e9 d0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400dc6:	68 12 00 00 00       	pushq  $0x12
  400dcb:	e9 c0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dd6:	68 13 00 00 00       	pushq  $0x13
  400ddb:	e9 b0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400de0 <random@plt>:
  400de0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400de6:	68 14 00 00 00       	pushq  $0x14
  400deb:	e9 a0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400df6:	68 15 00 00 00       	pushq  $0x15
  400dfb:	e9 90 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400e06:	68 16 00 00 00       	pushq  $0x16
  400e0b:	e9 80 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e16:	68 17 00 00 00       	pushq  $0x17
  400e1b:	e9 70 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e26:	68 18 00 00 00       	pushq  $0x18
  400e2b:	e9 60 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e36:	68 19 00 00 00       	pushq  $0x19
  400e3b:	e9 50 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e46:	68 1a 00 00 00       	pushq  $0x1a
  400e4b:	e9 40 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e56:	68 1b 00 00 00       	pushq  $0x1b
  400e5b:	e9 30 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e66:	68 1c 00 00 00       	pushq  $0x1c
  400e6b:	e9 20 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e76:	68 1d 00 00 00       	pushq  $0x1d
  400e7b:	e9 10 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e86:	68 1e 00 00 00       	pushq  $0x1e
  400e8b:	e9 00 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e96:	68 1f 00 00 00       	pushq  $0x1f
  400e9b:	e9 f0 fd ff ff       	jmpq   400c90 <_init+0x28>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400ea6:	68 20 00 00 00       	pushq  $0x20
  400eab:	e9 e0 fd ff ff       	jmpq   400c90 <_init+0x28>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400eb6:	68 21 00 00 00       	pushq  $0x21
  400ebb:	e9 d0 fd ff ff       	jmpq   400c90 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ec0 <.plt.got>:
  400ec0:	ff 25 32 41 20 00    	jmpq   *0x204132(%rip)        # 604ff8 <_DYNAMIC+0x1e0>
  400ec6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400ed0 <_start>:
  400ed0:	31 ed                	xor    %ebp,%ebp
  400ed2:	49 89 d1             	mov    %rdx,%r9
  400ed5:	5e                   	pop    %rsi
  400ed6:	48 89 e2             	mov    %rsp,%rdx
  400ed9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400edd:	50                   	push   %rax
  400ede:	54                   	push   %rsp
  400edf:	49 c7 c0 30 2f 40 00 	mov    $0x402f30,%r8
  400ee6:	48 c7 c1 c0 2e 40 00 	mov    $0x402ec0,%rcx
  400eed:	48 c7 c7 d5 11 40 00 	mov    $0x4011d5,%rdi
  400ef4:	e8 77 fe ff ff       	callq  400d70 <__libc_start_main@plt>
  400ef9:	f4                   	hlt    
  400efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f00 <deregister_tm_clones>:
  400f00:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400f05:	55                   	push   %rbp
  400f06:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400f0c:	48 83 f8 0e          	cmp    $0xe,%rax
  400f10:	48 89 e5             	mov    %rsp,%rbp
  400f13:	76 1b                	jbe    400f30 <deregister_tm_clones+0x30>
  400f15:	b8 00 00 00 00       	mov    $0x0,%eax
  400f1a:	48 85 c0             	test   %rax,%rax
  400f1d:	74 11                	je     400f30 <deregister_tm_clones+0x30>
  400f1f:	5d                   	pop    %rbp
  400f20:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f25:	ff e0                	jmpq   *%rax
  400f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f2e:	00 00 
  400f30:	5d                   	pop    %rbp
  400f31:	c3                   	retq   
  400f32:	0f 1f 40 00          	nopl   0x0(%rax)
  400f36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f3d:	00 00 00 

0000000000400f40 <register_tm_clones>:
  400f40:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f45:	55                   	push   %rbp
  400f46:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f4d:	48 c1 fe 03          	sar    $0x3,%rsi
  400f51:	48 89 e5             	mov    %rsp,%rbp
  400f54:	48 89 f0             	mov    %rsi,%rax
  400f57:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f5b:	48 01 c6             	add    %rax,%rsi
  400f5e:	48 d1 fe             	sar    %rsi
  400f61:	74 15                	je     400f78 <register_tm_clones+0x38>
  400f63:	b8 00 00 00 00       	mov    $0x0,%eax
  400f68:	48 85 c0             	test   %rax,%rax
  400f6b:	74 0b                	je     400f78 <register_tm_clones+0x38>
  400f6d:	5d                   	pop    %rbp
  400f6e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f73:	ff e0                	jmpq   *%rax
  400f75:	0f 1f 00             	nopl   (%rax)
  400f78:	5d                   	pop    %rbp
  400f79:	c3                   	retq   
  400f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f80 <__do_global_dtors_aux>:
  400f80:	80 3d 61 45 20 00 00 	cmpb   $0x0,0x204561(%rip)        # 6054e8 <completed.7585>
  400f87:	75 11                	jne    400f9a <__do_global_dtors_aux+0x1a>
  400f89:	55                   	push   %rbp
  400f8a:	48 89 e5             	mov    %rsp,%rbp
  400f8d:	e8 6e ff ff ff       	callq  400f00 <deregister_tm_clones>
  400f92:	5d                   	pop    %rbp
  400f93:	c6 05 4e 45 20 00 01 	movb   $0x1,0x20454e(%rip)        # 6054e8 <completed.7585>
  400f9a:	f3 c3                	repz retq 
  400f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400fa0 <frame_dummy>:
  400fa0:	bf 10 4e 60 00       	mov    $0x604e10,%edi
  400fa5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400fa9:	75 05                	jne    400fb0 <frame_dummy+0x10>
  400fab:	eb 93                	jmp    400f40 <register_tm_clones>
  400fad:	0f 1f 00             	nopl   (%rax)
  400fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fb5:	48 85 c0             	test   %rax,%rax
  400fb8:	74 f1                	je     400fab <frame_dummy+0xb>
  400fba:	55                   	push   %rbp
  400fbb:	48 89 e5             	mov    %rsp,%rbp
  400fbe:	ff d0                	callq  *%rax
  400fc0:	5d                   	pop    %rbp
  400fc1:	e9 7a ff ff ff       	jmpq   400f40 <register_tm_clones>

0000000000400fc6 <usage>:
  400fc6:	48 83 ec 08          	sub    $0x8,%rsp
  400fca:	48 89 fa             	mov    %rdi,%rdx
  400fcd:	83 3d 54 45 20 00 00 	cmpl   $0x0,0x204554(%rip)        # 605528 <is_checker>
  400fd4:	74 3e                	je     401014 <usage+0x4e>
  400fd6:	be 48 2f 40 00       	mov    $0x402f48,%esi
  400fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	e8 36 fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fea:	bf 80 2f 40 00       	mov    $0x402f80,%edi
  400fef:	e8 fc fc ff ff       	callq  400cf0 <puts@plt>
  400ff4:	bf f8 30 40 00       	mov    $0x4030f8,%edi
  400ff9:	e8 f2 fc ff ff       	callq  400cf0 <puts@plt>
  400ffe:	bf a8 2f 40 00       	mov    $0x402fa8,%edi
  401003:	e8 e8 fc ff ff       	callq  400cf0 <puts@plt>
  401008:	bf 12 31 40 00       	mov    $0x403112,%edi
  40100d:	e8 de fc ff ff       	callq  400cf0 <puts@plt>
  401012:	eb 32                	jmp    401046 <usage+0x80>
  401014:	be 2e 31 40 00       	mov    $0x40312e,%esi
  401019:	bf 01 00 00 00       	mov    $0x1,%edi
  40101e:	b8 00 00 00 00       	mov    $0x0,%eax
  401023:	e8 f8 fd ff ff       	callq  400e20 <__printf_chk@plt>
  401028:	bf d0 2f 40 00       	mov    $0x402fd0,%edi
  40102d:	e8 be fc ff ff       	callq  400cf0 <puts@plt>
  401032:	bf f8 2f 40 00       	mov    $0x402ff8,%edi
  401037:	e8 b4 fc ff ff       	callq  400cf0 <puts@plt>
  40103c:	bf 4c 31 40 00       	mov    $0x40314c,%edi
  401041:	e8 aa fc ff ff       	callq  400cf0 <puts@plt>
  401046:	bf 00 00 00 00       	mov    $0x0,%edi
  40104b:	e8 20 fe ff ff       	callq  400e70 <exit@plt>

0000000000401050 <initialize_target>:
  401050:	55                   	push   %rbp
  401051:	53                   	push   %rbx
  401052:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401059:	89 f5                	mov    %esi,%ebp
  40105b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401062:	00 00 
  401064:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40106b:	00 
  40106c:	31 c0                	xor    %eax,%eax
  40106e:	89 3d a4 44 20 00    	mov    %edi,0x2044a4(%rip)        # 605518 <check_level>
  401074:	8b 3d ee 40 20 00    	mov    0x2040ee(%rip),%edi        # 605168 <target_id>
  40107a:	e8 1d 1e 00 00       	callq  402e9c <gencookie>
  40107f:	89 05 9f 44 20 00    	mov    %eax,0x20449f(%rip)        # 605524 <cookie>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 10 1e 00 00       	callq  402e9c <gencookie>
  40108c:	89 05 8e 44 20 00    	mov    %eax,0x20448e(%rip)        # 605520 <authkey>
  401092:	8b 05 d0 40 20 00    	mov    0x2040d0(%rip),%eax        # 605168 <target_id>
  401098:	8d 78 01             	lea    0x1(%rax),%edi
  40109b:	e8 20 fc ff ff       	callq  400cc0 <srandom@plt>
  4010a0:	e8 3b fd ff ff       	callq  400de0 <random@plt>
  4010a5:	89 c7                	mov    %eax,%edi
  4010a7:	e8 03 03 00 00       	callq  4013af <scramble>
  4010ac:	89 c3                	mov    %eax,%ebx
  4010ae:	85 ed                	test   %ebp,%ebp
  4010b0:	74 18                	je     4010ca <initialize_target+0x7a>
  4010b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4010b7:	e8 14 fd ff ff       	callq  400dd0 <time@plt>
  4010bc:	89 c7                	mov    %eax,%edi
  4010be:	e8 fd fb ff ff       	callq  400cc0 <srandom@plt>
  4010c3:	e8 18 fd ff ff       	callq  400de0 <random@plt>
  4010c8:	eb 05                	jmp    4010cf <initialize_target+0x7f>
  4010ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4010cf:	01 c3                	add    %eax,%ebx
  4010d1:	0f b7 db             	movzwl %bx,%ebx
  4010d4:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010db:	89 c0                	mov    %eax,%eax
  4010dd:	48 89 05 bc 43 20 00 	mov    %rax,0x2043bc(%rip)        # 6054a0 <buf_offset>
  4010e4:	c6 05 5d 50 20 00 63 	movb   $0x63,0x20505d(%rip)        # 606148 <target_prefix>
  4010eb:	83 3d b6 43 20 00 00 	cmpl   $0x0,0x2043b6(%rip)        # 6054a8 <notify>
  4010f2:	0f 84 bb 00 00 00    	je     4011b3 <initialize_target+0x163>
  4010f8:	83 3d 29 44 20 00 00 	cmpl   $0x0,0x204429(%rip)        # 605528 <is_checker>
  4010ff:	0f 85 ae 00 00 00    	jne    4011b3 <initialize_target+0x163>
  401105:	be 00 01 00 00       	mov    $0x100,%esi
  40110a:	48 89 e7             	mov    %rsp,%rdi
  40110d:	e8 4e fd ff ff       	callq  400e60 <gethostname@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 25                	je     40113b <initialize_target+0xeb>
  401116:	bf 28 30 40 00       	mov    $0x403028,%edi
  40111b:	e8 d0 fb ff ff       	callq  400cf0 <puts@plt>
  401120:	bf 08 00 00 00       	mov    $0x8,%edi
  401125:	e8 46 fd ff ff       	callq  400e70 <exit@plt>
  40112a:	48 89 e6             	mov    %rsp,%rsi
  40112d:	e8 6e fb ff ff       	callq  400ca0 <strcasecmp@plt>
  401132:	85 c0                	test   %eax,%eax
  401134:	74 21                	je     401157 <initialize_target+0x107>
  401136:	83 c3 01             	add    $0x1,%ebx
  401139:	eb 05                	jmp    401140 <initialize_target+0xf0>
  40113b:	bb 00 00 00 00       	mov    $0x0,%ebx
  401140:	48 63 c3             	movslq %ebx,%rax
  401143:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  40114a:	00 
  40114b:	48 85 ff             	test   %rdi,%rdi
  40114e:	75 da                	jne    40112a <initialize_target+0xda>
  401150:	b8 00 00 00 00       	mov    $0x0,%eax
  401155:	eb 05                	jmp    40115c <initialize_target+0x10c>
  401157:	b8 01 00 00 00       	mov    $0x1,%eax
  40115c:	85 c0                	test   %eax,%eax
  40115e:	75 1c                	jne    40117c <initialize_target+0x12c>
  401160:	48 89 e2             	mov    %rsp,%rdx
  401163:	be 60 30 40 00       	mov    $0x403060,%esi
  401168:	bf 01 00 00 00       	mov    $0x1,%edi
  40116d:	e8 ae fc ff ff       	callq  400e20 <__printf_chk@plt>
  401172:	bf 08 00 00 00       	mov    $0x8,%edi
  401177:	e8 f4 fc ff ff       	callq  400e70 <exit@plt>
  40117c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401183:	00 
  401184:	e8 7d 1a 00 00       	callq  402c06 <init_driver>
  401189:	85 c0                	test   %eax,%eax
  40118b:	79 26                	jns    4011b3 <initialize_target+0x163>
  40118d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401194:	00 
  401195:	be a0 30 40 00       	mov    $0x4030a0,%esi
  40119a:	bf 01 00 00 00       	mov    $0x1,%edi
  40119f:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a4:	e8 77 fc ff ff       	callq  400e20 <__printf_chk@plt>
  4011a9:	bf 08 00 00 00       	mov    $0x8,%edi
  4011ae:	e8 bd fc ff ff       	callq  400e70 <exit@plt>
  4011b3:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4011ba:	00 
  4011bb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011c2:	00 00 
  4011c4:	74 05                	je     4011cb <initialize_target+0x17b>
  4011c6:	e8 45 fb ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4011cb:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011d2:	5b                   	pop    %rbx
  4011d3:	5d                   	pop    %rbp
  4011d4:	c3                   	retq   

00000000004011d5 <main>:
  4011d5:	41 56                	push   %r14
  4011d7:	41 55                	push   %r13
  4011d9:	41 54                	push   %r12
  4011db:	55                   	push   %rbp
  4011dc:	53                   	push   %rbx
  4011dd:	41 89 fc             	mov    %edi,%r12d
  4011e0:	48 89 f3             	mov    %rsi,%rbx
  4011e3:	be 26 1f 40 00       	mov    $0x401f26,%esi
  4011e8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011ed:	e8 8e fb ff ff       	callq  400d80 <signal@plt>
  4011f2:	be d8 1e 40 00       	mov    $0x401ed8,%esi
  4011f7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011fc:	e8 7f fb ff ff       	callq  400d80 <signal@plt>
  401201:	be 74 1f 40 00       	mov    $0x401f74,%esi
  401206:	bf 04 00 00 00       	mov    $0x4,%edi
  40120b:	e8 70 fb ff ff       	callq  400d80 <signal@plt>
  401210:	83 3d 11 43 20 00 00 	cmpl   $0x0,0x204311(%rip)        # 605528 <is_checker>
  401217:	74 20                	je     401239 <main+0x64>
  401219:	be c2 1f 40 00       	mov    $0x401fc2,%esi
  40121e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401223:	e8 58 fb ff ff       	callq  400d80 <signal@plt>
  401228:	bf 05 00 00 00       	mov    $0x5,%edi
  40122d:	e8 0e fb ff ff       	callq  400d40 <alarm@plt>
  401232:	bd 6a 31 40 00       	mov    $0x40316a,%ebp
  401237:	eb 05                	jmp    40123e <main+0x69>
  401239:	bd 65 31 40 00       	mov    $0x403165,%ebp
  40123e:	48 8b 05 7b 42 20 00 	mov    0x20427b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401245:	48 89 05 c4 42 20 00 	mov    %rax,0x2042c4(%rip)        # 605510 <infile>
  40124c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401252:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401258:	e9 c6 00 00 00       	jmpq   401323 <main+0x14e>
  40125d:	83 e8 61             	sub    $0x61,%eax
  401260:	3c 10                	cmp    $0x10,%al
  401262:	0f 87 9c 00 00 00    	ja     401304 <main+0x12f>
  401268:	0f b6 c0             	movzbl %al,%eax
  40126b:	ff 24 c5 b0 31 40 00 	jmpq   *0x4031b0(,%rax,8)
  401272:	48 8b 3b             	mov    (%rbx),%rdi
  401275:	e8 4c fd ff ff       	callq  400fc6 <usage>
  40127a:	be bd 34 40 00       	mov    $0x4034bd,%esi
  40127f:	48 8b 3d 42 42 20 00 	mov    0x204242(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401286:	e8 a5 fb ff ff       	callq  400e30 <fopen@plt>
  40128b:	48 89 05 7e 42 20 00 	mov    %rax,0x20427e(%rip)        # 605510 <infile>
  401292:	48 85 c0             	test   %rax,%rax
  401295:	0f 85 88 00 00 00    	jne    401323 <main+0x14e>
  40129b:	48 8b 0d 26 42 20 00 	mov    0x204226(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012a2:	ba 72 31 40 00       	mov    $0x403172,%edx
  4012a7:	be 01 00 00 00       	mov    $0x1,%esi
  4012ac:	48 8b 3d 2d 42 20 00 	mov    0x20422d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4012b3:	e8 d8 fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4012bd:	e9 e4 00 00 00       	jmpq   4013a6 <main+0x1d1>
  4012c2:	ba 10 00 00 00       	mov    $0x10,%edx
  4012c7:	be 00 00 00 00       	mov    $0x0,%esi
  4012cc:	48 8b 3d f5 41 20 00 	mov    0x2041f5(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012d3:	e8 78 fb ff ff       	callq  400e50 <strtoul@plt>
  4012d8:	41 89 c6             	mov    %eax,%r14d
  4012db:	eb 46                	jmp    401323 <main+0x14e>
  4012dd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012e2:	be 00 00 00 00       	mov    $0x0,%esi
  4012e7:	48 8b 3d da 41 20 00 	mov    0x2041da(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ee:	e8 bd fa ff ff       	callq  400db0 <strtol@plt>
  4012f3:	41 89 c5             	mov    %eax,%r13d
  4012f6:	eb 2b                	jmp    401323 <main+0x14e>
  4012f8:	c7 05 a6 41 20 00 00 	movl   $0x0,0x2041a6(%rip)        # 6054a8 <notify>
  4012ff:	00 00 00 
  401302:	eb 1f                	jmp    401323 <main+0x14e>
  401304:	0f be d2             	movsbl %dl,%edx
  401307:	be 8f 31 40 00       	mov    $0x40318f,%esi
  40130c:	bf 01 00 00 00       	mov    $0x1,%edi
  401311:	b8 00 00 00 00       	mov    $0x0,%eax
  401316:	e8 05 fb ff ff       	callq  400e20 <__printf_chk@plt>
  40131b:	48 8b 3b             	mov    (%rbx),%rdi
  40131e:	e8 a3 fc ff ff       	callq  400fc6 <usage>
  401323:	48 89 ea             	mov    %rbp,%rdx
  401326:	48 89 de             	mov    %rbx,%rsi
  401329:	44 89 e7             	mov    %r12d,%edi
  40132c:	e8 0f fb ff ff       	callq  400e40 <getopt@plt>
  401331:	89 c2                	mov    %eax,%edx
  401333:	3c ff                	cmp    $0xff,%al
  401335:	0f 85 22 ff ff ff    	jne    40125d <main+0x88>
  40133b:	be 00 00 00 00       	mov    $0x0,%esi
  401340:	44 89 ef             	mov    %r13d,%edi
  401343:	e8 08 fd ff ff       	callq  401050 <initialize_target>
  401348:	83 3d d9 41 20 00 00 	cmpl   $0x0,0x2041d9(%rip)        # 605528 <is_checker>
  40134f:	74 2a                	je     40137b <main+0x1a6>
  401351:	44 3b 35 c8 41 20 00 	cmp    0x2041c8(%rip),%r14d        # 605520 <authkey>
  401358:	74 21                	je     40137b <main+0x1a6>
  40135a:	44 89 f2             	mov    %r14d,%edx
  40135d:	be c8 30 40 00       	mov    $0x4030c8,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 af fa ff ff       	callq  400e20 <__printf_chk@plt>
  401371:	b8 00 00 00 00       	mov    $0x0,%eax
  401376:	e8 f9 07 00 00       	callq  401b74 <check_fail>
  40137b:	8b 15 a3 41 20 00    	mov    0x2041a3(%rip),%edx        # 605524 <cookie>
  401381:	be a2 31 40 00       	mov    $0x4031a2,%esi
  401386:	bf 01 00 00 00       	mov    $0x1,%edi
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	e8 8b fa ff ff       	callq  400e20 <__printf_chk@plt>
  401395:	48 8b 3d 04 41 20 00 	mov    0x204104(%rip),%rdi        # 6054a0 <buf_offset>
  40139c:	e8 21 0d 00 00       	callq  4020c2 <stable_launch>
  4013a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a6:	5b                   	pop    %rbx
  4013a7:	5d                   	pop    %rbp
  4013a8:	41 5c                	pop    %r12
  4013aa:	41 5d                	pop    %r13
  4013ac:	41 5e                	pop    %r14
  4013ae:	c3                   	retq   

00000000004013af <scramble>:
  4013af:	48 83 ec 38          	sub    $0x38,%rsp
  4013b3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013ba:	00 00 
  4013bc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4013c1:	31 c0                	xor    %eax,%eax
  4013c3:	eb 10                	jmp    4013d5 <scramble+0x26>
  4013c5:	69 d0 96 57 00 00    	imul   $0x5796,%eax,%edx
  4013cb:	01 fa                	add    %edi,%edx
  4013cd:	89 c1                	mov    %eax,%ecx
  4013cf:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4013d2:	83 c0 01             	add    $0x1,%eax
  4013d5:	83 f8 09             	cmp    $0x9,%eax
  4013d8:	76 eb                	jbe    4013c5 <scramble+0x16>
  4013da:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4013de:	69 c0 75 e6 00 00    	imul   $0xe675,%eax,%eax
  4013e4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4013e8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4013ec:	69 c0 2b 74 00 00    	imul   $0x742b,%eax,%eax
  4013f2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4013f6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4013fa:	69 c0 e9 58 00 00    	imul   $0x58e9,%eax,%eax
  401400:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401404:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401408:	69 c0 09 fd 00 00    	imul   $0xfd09,%eax,%eax
  40140e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401412:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401416:	69 c0 74 7c 00 00    	imul   $0x7c74,%eax,%eax
  40141c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401420:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401424:	69 c0 86 de 00 00    	imul   $0xde86,%eax,%eax
  40142a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40142e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401432:	69 c0 71 eb 00 00    	imul   $0xeb71,%eax,%eax
  401438:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40143c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401440:	69 c0 39 07 00 00    	imul   $0x739,%eax,%eax
  401446:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40144a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40144e:	69 c0 47 8f 00 00    	imul   $0x8f47,%eax,%eax
  401454:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401458:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40145c:	69 c0 7b bb 00 00    	imul   $0xbb7b,%eax,%eax
  401462:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401466:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40146a:	69 c0 35 96 00 00    	imul   $0x9635,%eax,%eax
  401470:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401474:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401478:	69 c0 37 e7 00 00    	imul   $0xe737,%eax,%eax
  40147e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401482:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401486:	69 c0 e4 0c 00 00    	imul   $0xce4,%eax,%eax
  40148c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401490:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401494:	69 c0 f7 47 00 00    	imul   $0x47f7,%eax,%eax
  40149a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40149e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014a2:	69 c0 da 58 00 00    	imul   $0x58da,%eax,%eax
  4014a8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014ac:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014b0:	69 c0 fb c3 00 00    	imul   $0xc3fb,%eax,%eax
  4014b6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014ba:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014be:	69 c0 c4 32 00 00    	imul   $0x32c4,%eax,%eax
  4014c4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014c8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014cc:	69 c0 b6 4d 00 00    	imul   $0x4db6,%eax,%eax
  4014d2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014d6:	8b 04 24             	mov    (%rsp),%eax
  4014d9:	69 c0 40 81 00 00    	imul   $0x8140,%eax,%eax
  4014df:	89 04 24             	mov    %eax,(%rsp)
  4014e2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014e6:	69 c0 e0 4a 00 00    	imul   $0x4ae0,%eax,%eax
  4014ec:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014f0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014f4:	69 c0 dc 50 00 00    	imul   $0x50dc,%eax,%eax
  4014fa:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014fe:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401502:	69 c0 c3 0c 00 00    	imul   $0xcc3,%eax,%eax
  401508:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40150c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401510:	69 c0 30 55 00 00    	imul   $0x5530,%eax,%eax
  401516:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40151a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40151e:	69 c0 81 70 00 00    	imul   $0x7081,%eax,%eax
  401524:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401528:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40152c:	69 c0 af d6 00 00    	imul   $0xd6af,%eax,%eax
  401532:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401536:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40153a:	69 c0 4f a4 00 00    	imul   $0xa44f,%eax,%eax
  401540:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401544:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401548:	69 c0 22 4f 00 00    	imul   $0x4f22,%eax,%eax
  40154e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401552:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401556:	69 c0 bf 0b 00 00    	imul   $0xbbf,%eax,%eax
  40155c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401560:	8b 04 24             	mov    (%rsp),%eax
  401563:	69 c0 28 74 00 00    	imul   $0x7428,%eax,%eax
  401569:	89 04 24             	mov    %eax,(%rsp)
  40156c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401570:	69 c0 6b c8 00 00    	imul   $0xc86b,%eax,%eax
  401576:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40157a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40157e:	69 c0 6d 17 00 00    	imul   $0x176d,%eax,%eax
  401584:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401588:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40158c:	69 c0 51 0c 00 00    	imul   $0xc51,%eax,%eax
  401592:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401596:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40159a:	69 c0 8e c4 00 00    	imul   $0xc48e,%eax,%eax
  4015a0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015a4:	8b 04 24             	mov    (%rsp),%eax
  4015a7:	69 c0 de d5 00 00    	imul   $0xd5de,%eax,%eax
  4015ad:	89 04 24             	mov    %eax,(%rsp)
  4015b0:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015b4:	69 c0 c8 a4 00 00    	imul   $0xa4c8,%eax,%eax
  4015ba:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015be:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015c2:	69 c0 83 43 00 00    	imul   $0x4383,%eax,%eax
  4015c8:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015cc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015d0:	69 c0 25 4a 00 00    	imul   $0x4a25,%eax,%eax
  4015d6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015da:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015de:	69 c0 f1 31 00 00    	imul   $0x31f1,%eax,%eax
  4015e4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015e8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015ec:	69 c0 44 64 00 00    	imul   $0x6444,%eax,%eax
  4015f2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015f6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015fa:	69 c0 cc 83 00 00    	imul   $0x83cc,%eax,%eax
  401600:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401604:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401608:	69 c0 6f ce 00 00    	imul   $0xce6f,%eax,%eax
  40160e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401612:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401616:	69 c0 d7 a7 00 00    	imul   $0xa7d7,%eax,%eax
  40161c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401620:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401624:	69 c0 a1 b3 00 00    	imul   $0xb3a1,%eax,%eax
  40162a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40162e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401632:	69 c0 98 79 00 00    	imul   $0x7998,%eax,%eax
  401638:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40163c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401640:	69 c0 4c 07 00 00    	imul   $0x74c,%eax,%eax
  401646:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40164a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40164e:	69 c0 cb f4 00 00    	imul   $0xf4cb,%eax,%eax
  401654:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401658:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40165c:	69 c0 6a ce 00 00    	imul   $0xce6a,%eax,%eax
  401662:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401666:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40166a:	69 c0 ea 68 00 00    	imul   $0x68ea,%eax,%eax
  401670:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401674:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401678:	69 c0 24 5b 00 00    	imul   $0x5b24,%eax,%eax
  40167e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401682:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401686:	69 c0 c7 d8 00 00    	imul   $0xd8c7,%eax,%eax
  40168c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401690:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401694:	69 c0 87 5f 00 00    	imul   $0x5f87,%eax,%eax
  40169a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40169e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016a2:	69 c0 90 f5 00 00    	imul   $0xf590,%eax,%eax
  4016a8:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016ac:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016b0:	69 c0 91 6c 00 00    	imul   $0x6c91,%eax,%eax
  4016b6:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016ba:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016be:	69 c0 01 49 00 00    	imul   $0x4901,%eax,%eax
  4016c4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016c8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016cc:	69 c0 f4 c9 00 00    	imul   $0xc9f4,%eax,%eax
  4016d2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016d6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016da:	69 c0 c8 0b 00 00    	imul   $0xbc8,%eax,%eax
  4016e0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016e4:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016e8:	69 c0 e8 f4 00 00    	imul   $0xf4e8,%eax,%eax
  4016ee:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016f2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016f6:	69 c0 f5 b5 00 00    	imul   $0xb5f5,%eax,%eax
  4016fc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401700:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401704:	69 c0 35 67 00 00    	imul   $0x6735,%eax,%eax
  40170a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40170e:	8b 04 24             	mov    (%rsp),%eax
  401711:	69 c0 52 d0 00 00    	imul   $0xd052,%eax,%eax
  401717:	89 04 24             	mov    %eax,(%rsp)
  40171a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40171e:	69 c0 90 71 00 00    	imul   $0x7190,%eax,%eax
  401724:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401728:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40172c:	69 c0 3b 8d 00 00    	imul   $0x8d3b,%eax,%eax
  401732:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401736:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40173a:	69 c0 39 c6 00 00    	imul   $0xc639,%eax,%eax
  401740:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401744:	8b 04 24             	mov    (%rsp),%eax
  401747:	69 c0 f3 d2 00 00    	imul   $0xd2f3,%eax,%eax
  40174d:	89 04 24             	mov    %eax,(%rsp)
  401750:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401754:	69 c0 ee 34 00 00    	imul   $0x34ee,%eax,%eax
  40175a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40175e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401762:	69 c0 4a 21 00 00    	imul   $0x214a,%eax,%eax
  401768:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40176c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401770:	69 c0 05 c8 00 00    	imul   $0xc805,%eax,%eax
  401776:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40177a:	8b 04 24             	mov    (%rsp),%eax
  40177d:	69 c0 21 3e 00 00    	imul   $0x3e21,%eax,%eax
  401783:	89 04 24             	mov    %eax,(%rsp)
  401786:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40178a:	69 c0 5c 3e 00 00    	imul   $0x3e5c,%eax,%eax
  401790:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401794:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401798:	69 c0 6c 05 00 00    	imul   $0x56c,%eax,%eax
  40179e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017a2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017a6:	69 c0 ef 53 00 00    	imul   $0x53ef,%eax,%eax
  4017ac:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017b0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017b4:	69 c0 b4 a0 00 00    	imul   $0xa0b4,%eax,%eax
  4017ba:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017be:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017c2:	69 c0 d4 c4 00 00    	imul   $0xc4d4,%eax,%eax
  4017c8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017cc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017d0:	69 c0 60 f1 00 00    	imul   $0xf160,%eax,%eax
  4017d6:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017da:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017de:	69 c0 36 86 00 00    	imul   $0x8636,%eax,%eax
  4017e4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017e8:	8b 04 24             	mov    (%rsp),%eax
  4017eb:	69 c0 8b 9a 00 00    	imul   $0x9a8b,%eax,%eax
  4017f1:	89 04 24             	mov    %eax,(%rsp)
  4017f4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017f8:	69 c0 cf 86 00 00    	imul   $0x86cf,%eax,%eax
  4017fe:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401802:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401806:	69 c0 c1 37 00 00    	imul   $0x37c1,%eax,%eax
  40180c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401810:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401814:	69 c0 ed 1d 00 00    	imul   $0x1ded,%eax,%eax
  40181a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40181e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401822:	69 c0 67 6e 00 00    	imul   $0x6e67,%eax,%eax
  401828:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40182c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401830:	69 c0 6f b6 00 00    	imul   $0xb66f,%eax,%eax
  401836:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40183a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40183e:	69 c0 51 e7 00 00    	imul   $0xe751,%eax,%eax
  401844:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401848:	8b 04 24             	mov    (%rsp),%eax
  40184b:	69 c0 8c a6 00 00    	imul   $0xa68c,%eax,%eax
  401851:	89 04 24             	mov    %eax,(%rsp)
  401854:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401858:	69 c0 0b b3 00 00    	imul   $0xb30b,%eax,%eax
  40185e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401862:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401866:	69 c0 95 ac 00 00    	imul   $0xac95,%eax,%eax
  40186c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401870:	8b 04 24             	mov    (%rsp),%eax
  401873:	69 c0 39 ed 00 00    	imul   $0xed39,%eax,%eax
  401879:	89 04 24             	mov    %eax,(%rsp)
  40187c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401880:	69 c0 ab c9 00 00    	imul   $0xc9ab,%eax,%eax
  401886:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40188a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40188e:	69 c0 5c 49 00 00    	imul   $0x495c,%eax,%eax
  401894:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401898:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40189c:	69 c0 96 e4 00 00    	imul   $0xe496,%eax,%eax
  4018a2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018a6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018aa:	69 c0 89 ba 00 00    	imul   $0xba89,%eax,%eax
  4018b0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018b4:	8b 04 24             	mov    (%rsp),%eax
  4018b7:	69 c0 6f fc 00 00    	imul   $0xfc6f,%eax,%eax
  4018bd:	89 04 24             	mov    %eax,(%rsp)
  4018c0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018c4:	69 c0 93 62 00 00    	imul   $0x6293,%eax,%eax
  4018ca:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018ce:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018d2:	69 c0 db 7c 00 00    	imul   $0x7cdb,%eax,%eax
  4018d8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018dc:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018e0:	69 c0 47 d0 00 00    	imul   $0xd047,%eax,%eax
  4018e6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018ea:	ba 00 00 00 00       	mov    $0x0,%edx
  4018ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4018f4:	eb 0a                	jmp    401900 <scramble+0x551>
  4018f6:	89 d1                	mov    %edx,%ecx
  4018f8:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4018fb:	01 c8                	add    %ecx,%eax
  4018fd:	83 c2 01             	add    $0x1,%edx
  401900:	83 fa 09             	cmp    $0x9,%edx
  401903:	76 f1                	jbe    4018f6 <scramble+0x547>
  401905:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40190a:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401911:	00 00 
  401913:	74 05                	je     40191a <scramble+0x56b>
  401915:	e8 f6 f3 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  40191a:	48 83 c4 38          	add    $0x38,%rsp
  40191e:	c3                   	retq   

000000000040191f <getbuf>:
  40191f:	48 83 ec 28          	sub    $0x28,%rsp
  401923:	48 89 e7             	mov    %rsp,%rdi
  401926:	e8 7e 02 00 00       	callq  401ba9 <Gets>
  40192b:	b8 01 00 00 00       	mov    $0x1,%eax
  401930:	48 83 c4 28          	add    $0x28,%rsp
  401934:	c3                   	retq   

0000000000401935 <touch1>:
  401935:	48 83 ec 08          	sub    $0x8,%rsp
  401939:	c7 05 d9 3b 20 00 01 	movl   $0x1,0x203bd9(%rip)        # 60551c <vlevel>
  401940:	00 00 00 
  401943:	bf 16 33 40 00       	mov    $0x403316,%edi
  401948:	e8 a3 f3 ff ff       	callq  400cf0 <puts@plt>
  40194d:	bf 01 00 00 00       	mov    $0x1,%edi
  401952:	e8 97 04 00 00       	callq  401dee <validate>
  401957:	bf 00 00 00 00       	mov    $0x0,%edi
  40195c:	e8 0f f5 ff ff       	callq  400e70 <exit@plt>

0000000000401961 <touch2>:
  401961:	48 83 ec 08          	sub    $0x8,%rsp
  401965:	89 fa                	mov    %edi,%edx
  401967:	c7 05 ab 3b 20 00 02 	movl   $0x2,0x203bab(%rip)        # 60551c <vlevel>
  40196e:	00 00 00 
  401971:	39 3d ad 3b 20 00    	cmp    %edi,0x203bad(%rip)        # 605524 <cookie>
  401977:	75 20                	jne    401999 <touch2+0x38>
  401979:	be 38 33 40 00       	mov    $0x403338,%esi
  40197e:	bf 01 00 00 00       	mov    $0x1,%edi
  401983:	b8 00 00 00 00       	mov    $0x0,%eax
  401988:	e8 93 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  40198d:	bf 02 00 00 00       	mov    $0x2,%edi
  401992:	e8 57 04 00 00       	callq  401dee <validate>
  401997:	eb 1e                	jmp    4019b7 <touch2+0x56>
  401999:	be 60 33 40 00       	mov    $0x403360,%esi
  40199e:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a8:	e8 73 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019ad:	bf 02 00 00 00       	mov    $0x2,%edi
  4019b2:	e8 f9 04 00 00       	callq  401eb0 <fail>
  4019b7:	bf 00 00 00 00       	mov    $0x0,%edi
  4019bc:	e8 af f4 ff ff       	callq  400e70 <exit@plt>

00000000004019c1 <hexmatch>:
  4019c1:	41 54                	push   %r12
  4019c3:	55                   	push   %rbp
  4019c4:	53                   	push   %rbx
  4019c5:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4019c9:	89 fd                	mov    %edi,%ebp
  4019cb:	48 89 f3             	mov    %rsi,%rbx
  4019ce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019d5:	00 00 
  4019d7:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4019dc:	31 c0                	xor    %eax,%eax
  4019de:	e8 fd f3 ff ff       	callq  400de0 <random@plt>
  4019e3:	48 89 c1             	mov    %rax,%rcx
  4019e6:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4019ed:	0a d7 a3 
  4019f0:	48 f7 ea             	imul   %rdx
  4019f3:	48 01 ca             	add    %rcx,%rdx
  4019f6:	48 c1 fa 06          	sar    $0x6,%rdx
  4019fa:	48 89 c8             	mov    %rcx,%rax
  4019fd:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a01:	48 29 c2             	sub    %rax,%rdx
  401a04:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a08:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a0c:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a13:	00 
  401a14:	48 29 c1             	sub    %rax,%rcx
  401a17:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a1b:	41 89 e8             	mov    %ebp,%r8d
  401a1e:	b9 33 33 40 00       	mov    $0x403333,%ecx
  401a23:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a2a:	be 01 00 00 00       	mov    $0x1,%esi
  401a2f:	4c 89 e7             	mov    %r12,%rdi
  401a32:	b8 00 00 00 00       	mov    $0x0,%eax
  401a37:	e8 64 f4 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401a3c:	ba 09 00 00 00       	mov    $0x9,%edx
  401a41:	4c 89 e6             	mov    %r12,%rsi
  401a44:	48 89 df             	mov    %rbx,%rdi
  401a47:	e8 84 f2 ff ff       	callq  400cd0 <strncmp@plt>
  401a4c:	85 c0                	test   %eax,%eax
  401a4e:	0f 94 c0             	sete   %al
  401a51:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a56:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401a5d:	00 00 
  401a5f:	74 05                	je     401a66 <hexmatch+0xa5>
  401a61:	e8 aa f2 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401a66:	0f b6 c0             	movzbl %al,%eax
  401a69:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401a6d:	5b                   	pop    %rbx
  401a6e:	5d                   	pop    %rbp
  401a6f:	41 5c                	pop    %r12
  401a71:	c3                   	retq   

0000000000401a72 <touch3>:
  401a72:	53                   	push   %rbx
  401a73:	48 89 fb             	mov    %rdi,%rbx
  401a76:	c7 05 9c 3a 20 00 03 	movl   $0x3,0x203a9c(%rip)        # 60551c <vlevel>
  401a7d:	00 00 00 
  401a80:	48 89 fe             	mov    %rdi,%rsi
  401a83:	8b 3d 9b 3a 20 00    	mov    0x203a9b(%rip),%edi        # 605524 <cookie>
  401a89:	e8 33 ff ff ff       	callq  4019c1 <hexmatch>
  401a8e:	85 c0                	test   %eax,%eax
  401a90:	74 23                	je     401ab5 <touch3+0x43>
  401a92:	48 89 da             	mov    %rbx,%rdx
  401a95:	be 88 33 40 00       	mov    $0x403388,%esi
  401a9a:	bf 01 00 00 00       	mov    $0x1,%edi
  401a9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa4:	e8 77 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401aa9:	bf 03 00 00 00       	mov    $0x3,%edi
  401aae:	e8 3b 03 00 00       	callq  401dee <validate>
  401ab3:	eb 21                	jmp    401ad6 <touch3+0x64>
  401ab5:	48 89 da             	mov    %rbx,%rdx
  401ab8:	be b0 33 40 00       	mov    $0x4033b0,%esi
  401abd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac7:	e8 54 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401acc:	bf 03 00 00 00       	mov    $0x3,%edi
  401ad1:	e8 da 03 00 00       	callq  401eb0 <fail>
  401ad6:	bf 00 00 00 00       	mov    $0x0,%edi
  401adb:	e8 90 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401ae0 <test>:
  401ae0:	48 83 ec 08          	sub    $0x8,%rsp
  401ae4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae9:	e8 31 fe ff ff       	callq  40191f <getbuf>
  401aee:	89 c2                	mov    %eax,%edx
  401af0:	be d8 33 40 00       	mov    $0x4033d8,%esi
  401af5:	bf 01 00 00 00       	mov    $0x1,%edi
  401afa:	b8 00 00 00 00       	mov    $0x0,%eax
  401aff:	e8 1c f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401b04:	48 83 c4 08          	add    $0x8,%rsp
  401b08:	c3                   	retq   

0000000000401b09 <save_char>:
  401b09:	8b 05 35 46 20 00    	mov    0x204635(%rip),%eax        # 606144 <gets_cnt>
  401b0f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b14:	7f 49                	jg     401b5f <save_char+0x56>
  401b16:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401b19:	89 f9                	mov    %edi,%ecx
  401b1b:	c0 e9 04             	shr    $0x4,%cl
  401b1e:	83 e1 0f             	and    $0xf,%ecx
  401b21:	0f b6 b1 00 37 40 00 	movzbl 0x403700(%rcx),%esi
  401b28:	48 63 ca             	movslq %edx,%rcx
  401b2b:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b32:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401b35:	83 e7 0f             	and    $0xf,%edi
  401b38:	0f b6 b7 00 37 40 00 	movzbl 0x403700(%rdi),%esi
  401b3f:	48 63 c9             	movslq %ecx,%rcx
  401b42:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b49:	83 c2 02             	add    $0x2,%edx
  401b4c:	48 63 d2             	movslq %edx,%rdx
  401b4f:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401b56:	83 c0 01             	add    $0x1,%eax
  401b59:	89 05 e5 45 20 00    	mov    %eax,0x2045e5(%rip)        # 606144 <gets_cnt>
  401b5f:	f3 c3                	repz retq 

0000000000401b61 <save_term>:
  401b61:	8b 05 dd 45 20 00    	mov    0x2045dd(%rip),%eax        # 606144 <gets_cnt>
  401b67:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b6a:	48 98                	cltq   
  401b6c:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401b73:	c3                   	retq   

0000000000401b74 <check_fail>:
  401b74:	48 83 ec 08          	sub    $0x8,%rsp
  401b78:	0f be 15 c9 45 20 00 	movsbl 0x2045c9(%rip),%edx        # 606148 <target_prefix>
  401b7f:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401b85:	8b 0d 8d 39 20 00    	mov    0x20398d(%rip),%ecx        # 605518 <check_level>
  401b8b:	be fb 33 40 00       	mov    $0x4033fb,%esi
  401b90:	bf 01 00 00 00       	mov    $0x1,%edi
  401b95:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9a:	e8 81 f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401b9f:	bf 01 00 00 00       	mov    $0x1,%edi
  401ba4:	e8 c7 f2 ff ff       	callq  400e70 <exit@plt>

0000000000401ba9 <Gets>:
  401ba9:	41 54                	push   %r12
  401bab:	55                   	push   %rbp
  401bac:	53                   	push   %rbx
  401bad:	49 89 fc             	mov    %rdi,%r12
  401bb0:	c7 05 8a 45 20 00 00 	movl   $0x0,0x20458a(%rip)        # 606144 <gets_cnt>
  401bb7:	00 00 00 
  401bba:	48 89 fb             	mov    %rdi,%rbx
  401bbd:	eb 11                	jmp    401bd0 <Gets+0x27>
  401bbf:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401bc3:	88 03                	mov    %al,(%rbx)
  401bc5:	0f b6 f8             	movzbl %al,%edi
  401bc8:	e8 3c ff ff ff       	callq  401b09 <save_char>
  401bcd:	48 89 eb             	mov    %rbp,%rbx
  401bd0:	48 8b 3d 39 39 20 00 	mov    0x203939(%rip),%rdi        # 605510 <infile>
  401bd7:	e8 14 f2 ff ff       	callq  400df0 <_IO_getc@plt>
  401bdc:	83 f8 ff             	cmp    $0xffffffff,%eax
  401bdf:	74 05                	je     401be6 <Gets+0x3d>
  401be1:	83 f8 0a             	cmp    $0xa,%eax
  401be4:	75 d9                	jne    401bbf <Gets+0x16>
  401be6:	c6 03 00             	movb   $0x0,(%rbx)
  401be9:	b8 00 00 00 00       	mov    $0x0,%eax
  401bee:	e8 6e ff ff ff       	callq  401b61 <save_term>
  401bf3:	4c 89 e0             	mov    %r12,%rax
  401bf6:	5b                   	pop    %rbx
  401bf7:	5d                   	pop    %rbp
  401bf8:	41 5c                	pop    %r12
  401bfa:	c3                   	retq   

0000000000401bfb <notify_server>:
  401bfb:	53                   	push   %rbx
  401bfc:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401c03:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c0a:	00 00 
  401c0c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401c13:	00 
  401c14:	31 c0                	xor    %eax,%eax
  401c16:	83 3d 0b 39 20 00 00 	cmpl   $0x0,0x20390b(%rip)        # 605528 <is_checker>
  401c1d:	0f 85 aa 01 00 00    	jne    401dcd <notify_server+0x1d2>
  401c23:	89 fb                	mov    %edi,%ebx
  401c25:	8b 05 19 45 20 00    	mov    0x204519(%rip),%eax        # 606144 <gets_cnt>
  401c2b:	83 c0 64             	add    $0x64,%eax
  401c2e:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c33:	7e 1e                	jle    401c53 <notify_server+0x58>
  401c35:	be 30 35 40 00       	mov    $0x403530,%esi
  401c3a:	bf 01 00 00 00       	mov    $0x1,%edi
  401c3f:	b8 00 00 00 00       	mov    $0x0,%eax
  401c44:	e8 d7 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c49:	bf 01 00 00 00       	mov    $0x1,%edi
  401c4e:	e8 1d f2 ff ff       	callq  400e70 <exit@plt>
  401c53:	0f be 05 ee 44 20 00 	movsbl 0x2044ee(%rip),%eax        # 606148 <target_prefix>
  401c5a:	83 3d 47 38 20 00 00 	cmpl   $0x0,0x203847(%rip)        # 6054a8 <notify>
  401c61:	74 08                	je     401c6b <notify_server+0x70>
  401c63:	8b 15 b7 38 20 00    	mov    0x2038b7(%rip),%edx        # 605520 <authkey>
  401c69:	eb 05                	jmp    401c70 <notify_server+0x75>
  401c6b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401c70:	85 db                	test   %ebx,%ebx
  401c72:	74 08                	je     401c7c <notify_server+0x81>
  401c74:	41 b9 11 34 40 00    	mov    $0x403411,%r9d
  401c7a:	eb 06                	jmp    401c82 <notify_server+0x87>
  401c7c:	41 b9 16 34 40 00    	mov    $0x403416,%r9d
  401c82:	68 40 55 60 00       	pushq  $0x605540
  401c87:	56                   	push   %rsi
  401c88:	50                   	push   %rax
  401c89:	52                   	push   %rdx
  401c8a:	44 8b 05 d7 34 20 00 	mov    0x2034d7(%rip),%r8d        # 605168 <target_id>
  401c91:	b9 1b 34 40 00       	mov    $0x40341b,%ecx
  401c96:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c9b:	be 01 00 00 00       	mov    $0x1,%esi
  401ca0:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401ca5:	b8 00 00 00 00       	mov    $0x0,%eax
  401caa:	e8 f1 f1 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401caf:	48 83 c4 20          	add    $0x20,%rsp
  401cb3:	83 3d ee 37 20 00 00 	cmpl   $0x0,0x2037ee(%rip)        # 6054a8 <notify>
  401cba:	0f 84 81 00 00 00    	je     401d41 <notify_server+0x146>
  401cc0:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401cc7:	00 
  401cc8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401cce:	48 89 e1             	mov    %rsp,%rcx
  401cd1:	48 8b 15 98 34 20 00 	mov    0x203498(%rip),%rdx        # 605170 <lab>
  401cd8:	48 8b 35 99 34 20 00 	mov    0x203499(%rip),%rsi        # 605178 <course>
  401cdf:	48 8b 3d 7a 34 20 00 	mov    0x20347a(%rip),%rdi        # 605160 <user_id>
  401ce6:	e8 0e 11 00 00       	callq  402df9 <driver_post>
  401ceb:	85 c0                	test   %eax,%eax
  401ced:	79 26                	jns    401d15 <notify_server+0x11a>
  401cef:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401cf6:	00 
  401cf7:	be 37 34 40 00       	mov    $0x403437,%esi
  401cfc:	bf 01 00 00 00       	mov    $0x1,%edi
  401d01:	b8 00 00 00 00       	mov    $0x0,%eax
  401d06:	e8 15 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401d0b:	bf 01 00 00 00       	mov    $0x1,%edi
  401d10:	e8 5b f1 ff ff       	callq  400e70 <exit@plt>
  401d15:	85 db                	test   %ebx,%ebx
  401d17:	74 19                	je     401d32 <notify_server+0x137>
  401d19:	bf 60 35 40 00       	mov    $0x403560,%edi
  401d1e:	e8 cd ef ff ff       	callq  400cf0 <puts@plt>
  401d23:	bf 43 34 40 00       	mov    $0x403443,%edi
  401d28:	e8 c3 ef ff ff       	callq  400cf0 <puts@plt>
  401d2d:	e9 9b 00 00 00       	jmpq   401dcd <notify_server+0x1d2>
  401d32:	bf 4d 34 40 00       	mov    $0x40344d,%edi
  401d37:	e8 b4 ef ff ff       	callq  400cf0 <puts@plt>
  401d3c:	e9 8c 00 00 00       	jmpq   401dcd <notify_server+0x1d2>
  401d41:	85 db                	test   %ebx,%ebx
  401d43:	74 07                	je     401d4c <notify_server+0x151>
  401d45:	ba 11 34 40 00       	mov    $0x403411,%edx
  401d4a:	eb 05                	jmp    401d51 <notify_server+0x156>
  401d4c:	ba 16 34 40 00       	mov    $0x403416,%edx
  401d51:	be 98 35 40 00       	mov    $0x403598,%esi
  401d56:	bf 01 00 00 00       	mov    $0x1,%edi
  401d5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d60:	e8 bb f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d65:	48 8b 15 f4 33 20 00 	mov    0x2033f4(%rip),%rdx        # 605160 <user_id>
  401d6c:	be 54 34 40 00       	mov    $0x403454,%esi
  401d71:	bf 01 00 00 00       	mov    $0x1,%edi
  401d76:	b8 00 00 00 00       	mov    $0x0,%eax
  401d7b:	e8 a0 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d80:	48 8b 15 f1 33 20 00 	mov    0x2033f1(%rip),%rdx        # 605178 <course>
  401d87:	be 61 34 40 00       	mov    $0x403461,%esi
  401d8c:	bf 01 00 00 00       	mov    $0x1,%edi
  401d91:	b8 00 00 00 00       	mov    $0x0,%eax
  401d96:	e8 85 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d9b:	48 8b 15 ce 33 20 00 	mov    0x2033ce(%rip),%rdx        # 605170 <lab>
  401da2:	be 6d 34 40 00       	mov    $0x40346d,%esi
  401da7:	bf 01 00 00 00       	mov    $0x1,%edi
  401dac:	b8 00 00 00 00       	mov    $0x0,%eax
  401db1:	e8 6a f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401db6:	48 89 e2             	mov    %rsp,%rdx
  401db9:	be 76 34 40 00       	mov    $0x403476,%esi
  401dbe:	bf 01 00 00 00       	mov    $0x1,%edi
  401dc3:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc8:	e8 53 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dcd:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401dd4:	00 
  401dd5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401ddc:	00 00 
  401dde:	74 05                	je     401de5 <notify_server+0x1ea>
  401de0:	e8 2b ef ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401de5:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401dec:	5b                   	pop    %rbx
  401ded:	c3                   	retq   

0000000000401dee <validate>:
  401dee:	53                   	push   %rbx
  401def:	89 fb                	mov    %edi,%ebx
  401df1:	83 3d 30 37 20 00 00 	cmpl   $0x0,0x203730(%rip)        # 605528 <is_checker>
  401df8:	74 6b                	je     401e65 <validate+0x77>
  401dfa:	39 3d 1c 37 20 00    	cmp    %edi,0x20371c(%rip)        # 60551c <vlevel>
  401e00:	74 14                	je     401e16 <validate+0x28>
  401e02:	bf 82 34 40 00       	mov    $0x403482,%edi
  401e07:	e8 e4 ee ff ff       	callq  400cf0 <puts@plt>
  401e0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e11:	e8 5e fd ff ff       	callq  401b74 <check_fail>
  401e16:	8b 15 fc 36 20 00    	mov    0x2036fc(%rip),%edx        # 605518 <check_level>
  401e1c:	39 d7                	cmp    %edx,%edi
  401e1e:	74 20                	je     401e40 <validate+0x52>
  401e20:	89 f9                	mov    %edi,%ecx
  401e22:	be c0 35 40 00       	mov    $0x4035c0,%esi
  401e27:	bf 01 00 00 00       	mov    $0x1,%edi
  401e2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e31:	e8 ea ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e36:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3b:	e8 34 fd ff ff       	callq  401b74 <check_fail>
  401e40:	0f be 15 01 43 20 00 	movsbl 0x204301(%rip),%edx        # 606148 <target_prefix>
  401e47:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401e4d:	89 f9                	mov    %edi,%ecx
  401e4f:	be a0 34 40 00       	mov    $0x4034a0,%esi
  401e54:	bf 01 00 00 00       	mov    $0x1,%edi
  401e59:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5e:	e8 bd ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e63:	eb 49                	jmp    401eae <validate+0xc0>
  401e65:	3b 3d b1 36 20 00    	cmp    0x2036b1(%rip),%edi        # 60551c <vlevel>
  401e6b:	74 18                	je     401e85 <validate+0x97>
  401e6d:	bf 82 34 40 00       	mov    $0x403482,%edi
  401e72:	e8 79 ee ff ff       	callq  400cf0 <puts@plt>
  401e77:	89 de                	mov    %ebx,%esi
  401e79:	bf 00 00 00 00       	mov    $0x0,%edi
  401e7e:	e8 78 fd ff ff       	callq  401bfb <notify_server>
  401e83:	eb 29                	jmp    401eae <validate+0xc0>
  401e85:	0f be 0d bc 42 20 00 	movsbl 0x2042bc(%rip),%ecx        # 606148 <target_prefix>
  401e8c:	89 fa                	mov    %edi,%edx
  401e8e:	be e8 35 40 00       	mov    $0x4035e8,%esi
  401e93:	bf 01 00 00 00       	mov    $0x1,%edi
  401e98:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9d:	e8 7e ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ea2:	89 de                	mov    %ebx,%esi
  401ea4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea9:	e8 4d fd ff ff       	callq  401bfb <notify_server>
  401eae:	5b                   	pop    %rbx
  401eaf:	c3                   	retq   

0000000000401eb0 <fail>:
  401eb0:	48 83 ec 08          	sub    $0x8,%rsp
  401eb4:	83 3d 6d 36 20 00 00 	cmpl   $0x0,0x20366d(%rip)        # 605528 <is_checker>
  401ebb:	74 0a                	je     401ec7 <fail+0x17>
  401ebd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec2:	e8 ad fc ff ff       	callq  401b74 <check_fail>
  401ec7:	89 fe                	mov    %edi,%esi
  401ec9:	bf 00 00 00 00       	mov    $0x0,%edi
  401ece:	e8 28 fd ff ff       	callq  401bfb <notify_server>
  401ed3:	48 83 c4 08          	add    $0x8,%rsp
  401ed7:	c3                   	retq   

0000000000401ed8 <bushandler>:
  401ed8:	48 83 ec 08          	sub    $0x8,%rsp
  401edc:	83 3d 45 36 20 00 00 	cmpl   $0x0,0x203645(%rip)        # 605528 <is_checker>
  401ee3:	74 14                	je     401ef9 <bushandler+0x21>
  401ee5:	bf b5 34 40 00       	mov    $0x4034b5,%edi
  401eea:	e8 01 ee ff ff       	callq  400cf0 <puts@plt>
  401eef:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef4:	e8 7b fc ff ff       	callq  401b74 <check_fail>
  401ef9:	bf 20 36 40 00       	mov    $0x403620,%edi
  401efe:	e8 ed ed ff ff       	callq  400cf0 <puts@plt>
  401f03:	bf bf 34 40 00       	mov    $0x4034bf,%edi
  401f08:	e8 e3 ed ff ff       	callq  400cf0 <puts@plt>
  401f0d:	be 00 00 00 00       	mov    $0x0,%esi
  401f12:	bf 00 00 00 00       	mov    $0x0,%edi
  401f17:	e8 df fc ff ff       	callq  401bfb <notify_server>
  401f1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f21:	e8 4a ef ff ff       	callq  400e70 <exit@plt>

0000000000401f26 <seghandler>:
  401f26:	48 83 ec 08          	sub    $0x8,%rsp
  401f2a:	83 3d f7 35 20 00 00 	cmpl   $0x0,0x2035f7(%rip)        # 605528 <is_checker>
  401f31:	74 14                	je     401f47 <seghandler+0x21>
  401f33:	bf d5 34 40 00       	mov    $0x4034d5,%edi
  401f38:	e8 b3 ed ff ff       	callq  400cf0 <puts@plt>
  401f3d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f42:	e8 2d fc ff ff       	callq  401b74 <check_fail>
  401f47:	bf 40 36 40 00       	mov    $0x403640,%edi
  401f4c:	e8 9f ed ff ff       	callq  400cf0 <puts@plt>
  401f51:	bf bf 34 40 00       	mov    $0x4034bf,%edi
  401f56:	e8 95 ed ff ff       	callq  400cf0 <puts@plt>
  401f5b:	be 00 00 00 00       	mov    $0x0,%esi
  401f60:	bf 00 00 00 00       	mov    $0x0,%edi
  401f65:	e8 91 fc ff ff       	callq  401bfb <notify_server>
  401f6a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f6f:	e8 fc ee ff ff       	callq  400e70 <exit@plt>

0000000000401f74 <illegalhandler>:
  401f74:	48 83 ec 08          	sub    $0x8,%rsp
  401f78:	83 3d a9 35 20 00 00 	cmpl   $0x0,0x2035a9(%rip)        # 605528 <is_checker>
  401f7f:	74 14                	je     401f95 <illegalhandler+0x21>
  401f81:	bf e8 34 40 00       	mov    $0x4034e8,%edi
  401f86:	e8 65 ed ff ff       	callq  400cf0 <puts@plt>
  401f8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f90:	e8 df fb ff ff       	callq  401b74 <check_fail>
  401f95:	bf 68 36 40 00       	mov    $0x403668,%edi
  401f9a:	e8 51 ed ff ff       	callq  400cf0 <puts@plt>
  401f9f:	bf bf 34 40 00       	mov    $0x4034bf,%edi
  401fa4:	e8 47 ed ff ff       	callq  400cf0 <puts@plt>
  401fa9:	be 00 00 00 00       	mov    $0x0,%esi
  401fae:	bf 00 00 00 00       	mov    $0x0,%edi
  401fb3:	e8 43 fc ff ff       	callq  401bfb <notify_server>
  401fb8:	bf 01 00 00 00       	mov    $0x1,%edi
  401fbd:	e8 ae ee ff ff       	callq  400e70 <exit@plt>

0000000000401fc2 <sigalrmhandler>:
  401fc2:	48 83 ec 08          	sub    $0x8,%rsp
  401fc6:	83 3d 5b 35 20 00 00 	cmpl   $0x0,0x20355b(%rip)        # 605528 <is_checker>
  401fcd:	74 14                	je     401fe3 <sigalrmhandler+0x21>
  401fcf:	bf fc 34 40 00       	mov    $0x4034fc,%edi
  401fd4:	e8 17 ed ff ff       	callq  400cf0 <puts@plt>
  401fd9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fde:	e8 91 fb ff ff       	callq  401b74 <check_fail>
  401fe3:	ba 05 00 00 00       	mov    $0x5,%edx
  401fe8:	be 98 36 40 00       	mov    $0x403698,%esi
  401fed:	bf 01 00 00 00       	mov    $0x1,%edi
  401ff2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff7:	e8 24 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401ffc:	be 00 00 00 00       	mov    $0x0,%esi
  402001:	bf 00 00 00 00       	mov    $0x0,%edi
  402006:	e8 f0 fb ff ff       	callq  401bfb <notify_server>
  40200b:	bf 01 00 00 00       	mov    $0x1,%edi
  402010:	e8 5b ee ff ff       	callq  400e70 <exit@plt>

0000000000402015 <launch>:
  402015:	55                   	push   %rbp
  402016:	48 89 e5             	mov    %rsp,%rbp
  402019:	48 83 ec 10          	sub    $0x10,%rsp
  40201d:	48 89 fa             	mov    %rdi,%rdx
  402020:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402027:	00 00 
  402029:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40202d:	31 c0                	xor    %eax,%eax
  40202f:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402033:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402037:	48 29 c4             	sub    %rax,%rsp
  40203a:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40203f:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402043:	be f4 00 00 00       	mov    $0xf4,%esi
  402048:	e8 e3 ec ff ff       	callq  400d30 <memset@plt>
  40204d:	48 8b 05 6c 34 20 00 	mov    0x20346c(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402054:	48 39 05 b5 34 20 00 	cmp    %rax,0x2034b5(%rip)        # 605510 <infile>
  40205b:	75 14                	jne    402071 <launch+0x5c>
  40205d:	be 04 35 40 00       	mov    $0x403504,%esi
  402062:	bf 01 00 00 00       	mov    $0x1,%edi
  402067:	b8 00 00 00 00       	mov    $0x0,%eax
  40206c:	e8 af ed ff ff       	callq  400e20 <__printf_chk@plt>
  402071:	c7 05 a1 34 20 00 00 	movl   $0x0,0x2034a1(%rip)        # 60551c <vlevel>
  402078:	00 00 00 
  40207b:	b8 00 00 00 00       	mov    $0x0,%eax
  402080:	e8 5b fa ff ff       	callq  401ae0 <test>
  402085:	83 3d 9c 34 20 00 00 	cmpl   $0x0,0x20349c(%rip)        # 605528 <is_checker>
  40208c:	74 14                	je     4020a2 <launch+0x8d>
  40208e:	bf 11 35 40 00       	mov    $0x403511,%edi
  402093:	e8 58 ec ff ff       	callq  400cf0 <puts@plt>
  402098:	b8 00 00 00 00       	mov    $0x0,%eax
  40209d:	e8 d2 fa ff ff       	callq  401b74 <check_fail>
  4020a2:	bf 1c 35 40 00       	mov    $0x40351c,%edi
  4020a7:	e8 44 ec ff ff       	callq  400cf0 <puts@plt>
  4020ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020b0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4020b7:	00 00 
  4020b9:	74 05                	je     4020c0 <launch+0xab>
  4020bb:	e8 50 ec ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4020c0:	c9                   	leaveq 
  4020c1:	c3                   	retq   

00000000004020c2 <stable_launch>:
  4020c2:	53                   	push   %rbx
  4020c3:	48 89 3d 3e 34 20 00 	mov    %rdi,0x20343e(%rip)        # 605508 <global_offset>
  4020ca:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4020d0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4020d6:	b9 32 01 00 00       	mov    $0x132,%ecx
  4020db:	ba 07 00 00 00       	mov    $0x7,%edx
  4020e0:	be 00 00 10 00       	mov    $0x100000,%esi
  4020e5:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4020ea:	e8 31 ec ff ff       	callq  400d20 <mmap@plt>
  4020ef:	48 89 c3             	mov    %rax,%rbx
  4020f2:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4020f8:	74 37                	je     402131 <stable_launch+0x6f>
  4020fa:	be 00 00 10 00       	mov    $0x100000,%esi
  4020ff:	48 89 c7             	mov    %rax,%rdi
  402102:	e8 09 ed ff ff       	callq  400e10 <munmap@plt>
  402107:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40210c:	ba d0 36 40 00       	mov    $0x4036d0,%edx
  402111:	be 01 00 00 00       	mov    $0x1,%esi
  402116:	48 8b 3d c3 33 20 00 	mov    0x2033c3(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40211d:	b8 00 00 00 00       	mov    $0x0,%eax
  402122:	e8 69 ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  402127:	bf 01 00 00 00       	mov    $0x1,%edi
  40212c:	e8 3f ed ff ff       	callq  400e70 <exit@plt>
  402131:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402138:	48 89 15 11 40 20 00 	mov    %rdx,0x204011(%rip)        # 606150 <stack_top>
  40213f:	48 89 e0             	mov    %rsp,%rax
  402142:	48 89 d4             	mov    %rdx,%rsp
  402145:	48 89 c2             	mov    %rax,%rdx
  402148:	48 89 15 b1 33 20 00 	mov    %rdx,0x2033b1(%rip)        # 605500 <global_save_stack>
  40214f:	48 8b 3d b2 33 20 00 	mov    0x2033b2(%rip),%rdi        # 605508 <global_offset>
  402156:	e8 ba fe ff ff       	callq  402015 <launch>
  40215b:	48 8b 05 9e 33 20 00 	mov    0x20339e(%rip),%rax        # 605500 <global_save_stack>
  402162:	48 89 c4             	mov    %rax,%rsp
  402165:	be 00 00 10 00       	mov    $0x100000,%esi
  40216a:	48 89 df             	mov    %rbx,%rdi
  40216d:	e8 9e ec ff ff       	callq  400e10 <munmap@plt>
  402172:	5b                   	pop    %rbx
  402173:	c3                   	retq   

0000000000402174 <rio_readinitb>:
  402174:	89 37                	mov    %esi,(%rdi)
  402176:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40217d:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402181:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402185:	c3                   	retq   

0000000000402186 <sigalrm_handler>:
  402186:	48 83 ec 08          	sub    $0x8,%rsp
  40218a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40218f:	ba 10 37 40 00       	mov    $0x403710,%edx
  402194:	be 01 00 00 00       	mov    $0x1,%esi
  402199:	48 8b 3d 40 33 20 00 	mov    0x203340(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4021a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a5:	e8 e6 ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  4021aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4021af:	e8 bc ec ff ff       	callq  400e70 <exit@plt>

00000000004021b4 <rio_writen>:
  4021b4:	41 55                	push   %r13
  4021b6:	41 54                	push   %r12
  4021b8:	55                   	push   %rbp
  4021b9:	53                   	push   %rbx
  4021ba:	48 83 ec 08          	sub    $0x8,%rsp
  4021be:	41 89 fc             	mov    %edi,%r12d
  4021c1:	48 89 f5             	mov    %rsi,%rbp
  4021c4:	49 89 d5             	mov    %rdx,%r13
  4021c7:	48 89 d3             	mov    %rdx,%rbx
  4021ca:	eb 28                	jmp    4021f4 <rio_writen+0x40>
  4021cc:	48 89 da             	mov    %rbx,%rdx
  4021cf:	48 89 ee             	mov    %rbp,%rsi
  4021d2:	44 89 e7             	mov    %r12d,%edi
  4021d5:	e8 26 eb ff ff       	callq  400d00 <write@plt>
  4021da:	48 85 c0             	test   %rax,%rax
  4021dd:	7f 0f                	jg     4021ee <rio_writen+0x3a>
  4021df:	e8 cc ea ff ff       	callq  400cb0 <__errno_location@plt>
  4021e4:	83 38 04             	cmpl   $0x4,(%rax)
  4021e7:	75 15                	jne    4021fe <rio_writen+0x4a>
  4021e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ee:	48 29 c3             	sub    %rax,%rbx
  4021f1:	48 01 c5             	add    %rax,%rbp
  4021f4:	48 85 db             	test   %rbx,%rbx
  4021f7:	75 d3                	jne    4021cc <rio_writen+0x18>
  4021f9:	4c 89 e8             	mov    %r13,%rax
  4021fc:	eb 07                	jmp    402205 <rio_writen+0x51>
  4021fe:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402205:	48 83 c4 08          	add    $0x8,%rsp
  402209:	5b                   	pop    %rbx
  40220a:	5d                   	pop    %rbp
  40220b:	41 5c                	pop    %r12
  40220d:	41 5d                	pop    %r13
  40220f:	c3                   	retq   

0000000000402210 <rio_read>:
  402210:	41 55                	push   %r13
  402212:	41 54                	push   %r12
  402214:	55                   	push   %rbp
  402215:	53                   	push   %rbx
  402216:	48 83 ec 08          	sub    $0x8,%rsp
  40221a:	48 89 fb             	mov    %rdi,%rbx
  40221d:	49 89 f5             	mov    %rsi,%r13
  402220:	49 89 d4             	mov    %rdx,%r12
  402223:	eb 2e                	jmp    402253 <rio_read+0x43>
  402225:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402229:	8b 3b                	mov    (%rbx),%edi
  40222b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402230:	48 89 ee             	mov    %rbp,%rsi
  402233:	e8 28 eb ff ff       	callq  400d60 <read@plt>
  402238:	89 43 04             	mov    %eax,0x4(%rbx)
  40223b:	85 c0                	test   %eax,%eax
  40223d:	79 0c                	jns    40224b <rio_read+0x3b>
  40223f:	e8 6c ea ff ff       	callq  400cb0 <__errno_location@plt>
  402244:	83 38 04             	cmpl   $0x4,(%rax)
  402247:	74 0a                	je     402253 <rio_read+0x43>
  402249:	eb 37                	jmp    402282 <rio_read+0x72>
  40224b:	85 c0                	test   %eax,%eax
  40224d:	74 3c                	je     40228b <rio_read+0x7b>
  40224f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402253:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402256:	85 ed                	test   %ebp,%ebp
  402258:	7e cb                	jle    402225 <rio_read+0x15>
  40225a:	89 e8                	mov    %ebp,%eax
  40225c:	49 39 c4             	cmp    %rax,%r12
  40225f:	77 03                	ja     402264 <rio_read+0x54>
  402261:	44 89 e5             	mov    %r12d,%ebp
  402264:	4c 63 e5             	movslq %ebp,%r12
  402267:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40226b:	4c 89 e2             	mov    %r12,%rdx
  40226e:	4c 89 ef             	mov    %r13,%rdi
  402271:	e8 4a eb ff ff       	callq  400dc0 <memcpy@plt>
  402276:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40227a:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40227d:	4c 89 e0             	mov    %r12,%rax
  402280:	eb 0e                	jmp    402290 <rio_read+0x80>
  402282:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402289:	eb 05                	jmp    402290 <rio_read+0x80>
  40228b:	b8 00 00 00 00       	mov    $0x0,%eax
  402290:	48 83 c4 08          	add    $0x8,%rsp
  402294:	5b                   	pop    %rbx
  402295:	5d                   	pop    %rbp
  402296:	41 5c                	pop    %r12
  402298:	41 5d                	pop    %r13
  40229a:	c3                   	retq   

000000000040229b <rio_readlineb>:
  40229b:	41 55                	push   %r13
  40229d:	41 54                	push   %r12
  40229f:	55                   	push   %rbp
  4022a0:	53                   	push   %rbx
  4022a1:	48 83 ec 18          	sub    $0x18,%rsp
  4022a5:	49 89 fd             	mov    %rdi,%r13
  4022a8:	48 89 f5             	mov    %rsi,%rbp
  4022ab:	49 89 d4             	mov    %rdx,%r12
  4022ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022b5:	00 00 
  4022b7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022bc:	31 c0                	xor    %eax,%eax
  4022be:	bb 01 00 00 00       	mov    $0x1,%ebx
  4022c3:	eb 3f                	jmp    402304 <rio_readlineb+0x69>
  4022c5:	ba 01 00 00 00       	mov    $0x1,%edx
  4022ca:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4022cf:	4c 89 ef             	mov    %r13,%rdi
  4022d2:	e8 39 ff ff ff       	callq  402210 <rio_read>
  4022d7:	83 f8 01             	cmp    $0x1,%eax
  4022da:	75 15                	jne    4022f1 <rio_readlineb+0x56>
  4022dc:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4022e0:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4022e5:	88 55 00             	mov    %dl,0x0(%rbp)
  4022e8:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4022ed:	75 0e                	jne    4022fd <rio_readlineb+0x62>
  4022ef:	eb 1a                	jmp    40230b <rio_readlineb+0x70>
  4022f1:	85 c0                	test   %eax,%eax
  4022f3:	75 22                	jne    402317 <rio_readlineb+0x7c>
  4022f5:	48 83 fb 01          	cmp    $0x1,%rbx
  4022f9:	75 13                	jne    40230e <rio_readlineb+0x73>
  4022fb:	eb 23                	jmp    402320 <rio_readlineb+0x85>
  4022fd:	48 83 c3 01          	add    $0x1,%rbx
  402301:	48 89 c5             	mov    %rax,%rbp
  402304:	4c 39 e3             	cmp    %r12,%rbx
  402307:	72 bc                	jb     4022c5 <rio_readlineb+0x2a>
  402309:	eb 03                	jmp    40230e <rio_readlineb+0x73>
  40230b:	48 89 c5             	mov    %rax,%rbp
  40230e:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402312:	48 89 d8             	mov    %rbx,%rax
  402315:	eb 0e                	jmp    402325 <rio_readlineb+0x8a>
  402317:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40231e:	eb 05                	jmp    402325 <rio_readlineb+0x8a>
  402320:	b8 00 00 00 00       	mov    $0x0,%eax
  402325:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40232a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402331:	00 00 
  402333:	74 05                	je     40233a <rio_readlineb+0x9f>
  402335:	e8 d6 e9 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  40233a:	48 83 c4 18          	add    $0x18,%rsp
  40233e:	5b                   	pop    %rbx
  40233f:	5d                   	pop    %rbp
  402340:	41 5c                	pop    %r12
  402342:	41 5d                	pop    %r13
  402344:	c3                   	retq   

0000000000402345 <urlencode>:
  402345:	41 54                	push   %r12
  402347:	55                   	push   %rbp
  402348:	53                   	push   %rbx
  402349:	48 83 ec 10          	sub    $0x10,%rsp
  40234d:	48 89 fb             	mov    %rdi,%rbx
  402350:	48 89 f5             	mov    %rsi,%rbp
  402353:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40235a:	00 00 
  40235c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402361:	31 c0                	xor    %eax,%eax
  402363:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40236a:	f2 ae                	repnz scas %es:(%rdi),%al
  40236c:	48 f7 d1             	not    %rcx
  40236f:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402372:	e9 aa 00 00 00       	jmpq   402421 <urlencode+0xdc>
  402377:	44 0f b6 03          	movzbl (%rbx),%r8d
  40237b:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40237f:	0f 94 c2             	sete   %dl
  402382:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402386:	0f 94 c0             	sete   %al
  402389:	08 c2                	or     %al,%dl
  40238b:	75 24                	jne    4023b1 <urlencode+0x6c>
  40238d:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402391:	74 1e                	je     4023b1 <urlencode+0x6c>
  402393:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402397:	74 18                	je     4023b1 <urlencode+0x6c>
  402399:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40239d:	3c 09                	cmp    $0x9,%al
  40239f:	76 10                	jbe    4023b1 <urlencode+0x6c>
  4023a1:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4023a5:	3c 19                	cmp    $0x19,%al
  4023a7:	76 08                	jbe    4023b1 <urlencode+0x6c>
  4023a9:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4023ad:	3c 19                	cmp    $0x19,%al
  4023af:	77 0a                	ja     4023bb <urlencode+0x76>
  4023b1:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4023b5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023b9:	eb 5f                	jmp    40241a <urlencode+0xd5>
  4023bb:	41 80 f8 20          	cmp    $0x20,%r8b
  4023bf:	75 0a                	jne    4023cb <urlencode+0x86>
  4023c1:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4023c5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023c9:	eb 4f                	jmp    40241a <urlencode+0xd5>
  4023cb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4023cf:	3c 5f                	cmp    $0x5f,%al
  4023d1:	0f 96 c2             	setbe  %dl
  4023d4:	41 80 f8 09          	cmp    $0x9,%r8b
  4023d8:	0f 94 c0             	sete   %al
  4023db:	08 c2                	or     %al,%dl
  4023dd:	74 50                	je     40242f <urlencode+0xea>
  4023df:	45 0f b6 c0          	movzbl %r8b,%r8d
  4023e3:	b9 c8 37 40 00       	mov    $0x4037c8,%ecx
  4023e8:	ba 08 00 00 00       	mov    $0x8,%edx
  4023ed:	be 01 00 00 00       	mov    $0x1,%esi
  4023f2:	48 89 e7             	mov    %rsp,%rdi
  4023f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4023fa:	e8 a1 ea ff ff       	callq  400ea0 <__sprintf_chk@plt>
  4023ff:	0f b6 04 24          	movzbl (%rsp),%eax
  402403:	88 45 00             	mov    %al,0x0(%rbp)
  402406:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40240b:	88 45 01             	mov    %al,0x1(%rbp)
  40240e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402413:	88 45 02             	mov    %al,0x2(%rbp)
  402416:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40241a:	48 83 c3 01          	add    $0x1,%rbx
  40241e:	44 89 e0             	mov    %r12d,%eax
  402421:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402425:	85 c0                	test   %eax,%eax
  402427:	0f 85 4a ff ff ff    	jne    402377 <urlencode+0x32>
  40242d:	eb 05                	jmp    402434 <urlencode+0xef>
  40242f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402434:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402439:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402440:	00 00 
  402442:	74 05                	je     402449 <urlencode+0x104>
  402444:	e8 c7 e8 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402449:	48 83 c4 10          	add    $0x10,%rsp
  40244d:	5b                   	pop    %rbx
  40244e:	5d                   	pop    %rbp
  40244f:	41 5c                	pop    %r12
  402451:	c3                   	retq   

0000000000402452 <submitr>:
  402452:	41 57                	push   %r15
  402454:	41 56                	push   %r14
  402456:	41 55                	push   %r13
  402458:	41 54                	push   %r12
  40245a:	55                   	push   %rbp
  40245b:	53                   	push   %rbx
  40245c:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402463:	49 89 fd             	mov    %rdi,%r13
  402466:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40246a:	48 89 14 24          	mov    %rdx,(%rsp)
  40246e:	49 89 ce             	mov    %rcx,%r14
  402471:	4d 89 c7             	mov    %r8,%r15
  402474:	4d 89 cc             	mov    %r9,%r12
  402477:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  40247e:	00 
  40247f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402486:	00 00 
  402488:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  40248f:	00 
  402490:	31 c0                	xor    %eax,%eax
  402492:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402499:	00 
  40249a:	ba 00 00 00 00       	mov    $0x0,%edx
  40249f:	be 01 00 00 00       	mov    $0x1,%esi
  4024a4:	bf 02 00 00 00       	mov    $0x2,%edi
  4024a9:	e8 02 ea ff ff       	callq  400eb0 <socket@plt>
  4024ae:	85 c0                	test   %eax,%eax
  4024b0:	79 4e                	jns    402500 <submitr+0xae>
  4024b2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024b9:	3a 20 43 
  4024bc:	48 89 03             	mov    %rax,(%rbx)
  4024bf:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4024c6:	20 75 6e 
  4024c9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024cd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024d4:	74 6f 20 
  4024d7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024db:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4024e2:	65 20 73 
  4024e5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024e9:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4024f0:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4024f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024fb:	e9 b3 06 00 00       	jmpq   402bb3 <submitr+0x761>
  402500:	89 c5                	mov    %eax,%ebp
  402502:	4c 89 ef             	mov    %r13,%rdi
  402505:	e8 86 e8 ff ff       	callq  400d90 <gethostbyname@plt>
  40250a:	48 85 c0             	test   %rax,%rax
  40250d:	75 75                	jne    402584 <submitr+0x132>
  40250f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402516:	3a 20 44 
  402519:	48 89 03             	mov    %rax,(%rbx)
  40251c:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402523:	20 75 6e 
  402526:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40252a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402531:	74 6f 20 
  402534:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402538:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  40253f:	76 65 20 
  402542:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402546:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40254d:	61 62 20 
  402550:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402554:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40255b:	72 20 61 
  40255e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402562:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  402569:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  40256f:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  402573:	89 ef                	mov    %ebp,%edi
  402575:	e8 d6 e7 ff ff       	callq  400d50 <close@plt>
  40257a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40257f:	e9 2f 06 00 00       	jmpq   402bb3 <submitr+0x761>
  402584:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  40258b:	00 00 
  40258d:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402594:	00 00 
  402596:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  40259d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025a1:	48 8b 40 18          	mov    0x18(%rax),%rax
  4025a5:	48 8b 30             	mov    (%rax),%rsi
  4025a8:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4025ad:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4025b2:	e8 e9 e7 ff ff       	callq  400da0 <__memmove_chk@plt>
  4025b7:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  4025bc:	66 c1 c8 08          	ror    $0x8,%ax
  4025c0:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4025c5:	ba 10 00 00 00       	mov    $0x10,%edx
  4025ca:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4025cf:	89 ef                	mov    %ebp,%edi
  4025d1:	e8 aa e8 ff ff       	callq  400e80 <connect@plt>
  4025d6:	85 c0                	test   %eax,%eax
  4025d8:	79 67                	jns    402641 <submitr+0x1ef>
  4025da:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4025e1:	3a 20 55 
  4025e4:	48 89 03             	mov    %rax,(%rbx)
  4025e7:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4025ee:	20 74 6f 
  4025f1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025f5:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4025fc:	65 63 74 
  4025ff:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402603:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40260a:	68 65 20 
  40260d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402611:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402618:	61 62 20 
  40261b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40261f:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  402626:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  40262c:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402630:	89 ef                	mov    %ebp,%edi
  402632:	e8 19 e7 ff ff       	callq  400d50 <close@plt>
  402637:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40263c:	e9 72 05 00 00       	jmpq   402bb3 <submitr+0x761>
  402641:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402648:	b8 00 00 00 00       	mov    $0x0,%eax
  40264d:	48 89 f1             	mov    %rsi,%rcx
  402650:	4c 89 e7             	mov    %r12,%rdi
  402653:	f2 ae                	repnz scas %es:(%rdi),%al
  402655:	48 f7 d1             	not    %rcx
  402658:	48 89 ca             	mov    %rcx,%rdx
  40265b:	48 89 f1             	mov    %rsi,%rcx
  40265e:	48 8b 3c 24          	mov    (%rsp),%rdi
  402662:	f2 ae                	repnz scas %es:(%rdi),%al
  402664:	48 f7 d1             	not    %rcx
  402667:	49 89 c8             	mov    %rcx,%r8
  40266a:	48 89 f1             	mov    %rsi,%rcx
  40266d:	4c 89 f7             	mov    %r14,%rdi
  402670:	f2 ae                	repnz scas %es:(%rdi),%al
  402672:	48 f7 d1             	not    %rcx
  402675:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40267a:	48 89 f1             	mov    %rsi,%rcx
  40267d:	4c 89 ff             	mov    %r15,%rdi
  402680:	f2 ae                	repnz scas %es:(%rdi),%al
  402682:	48 89 c8             	mov    %rcx,%rax
  402685:	48 f7 d0             	not    %rax
  402688:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40268d:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402692:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402699:	00 
  40269a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4026a0:	76 72                	jbe    402714 <submitr+0x2c2>
  4026a2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026a9:	3a 20 52 
  4026ac:	48 89 03             	mov    %rax,(%rbx)
  4026af:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026b6:	20 73 74 
  4026b9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026bd:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4026c4:	74 6f 6f 
  4026c7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026cb:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4026d2:	65 2e 20 
  4026d5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026d9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4026e0:	61 73 65 
  4026e3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026e7:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4026ee:	49 54 52 
  4026f1:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026f5:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4026fc:	55 46 00 
  4026ff:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402703:	89 ef                	mov    %ebp,%edi
  402705:	e8 46 e6 ff ff       	callq  400d50 <close@plt>
  40270a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40270f:	e9 9f 04 00 00       	jmpq   402bb3 <submitr+0x761>
  402714:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40271b:	00 
  40271c:	b9 00 04 00 00       	mov    $0x400,%ecx
  402721:	b8 00 00 00 00       	mov    $0x0,%eax
  402726:	48 89 f7             	mov    %rsi,%rdi
  402729:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40272c:	4c 89 e7             	mov    %r12,%rdi
  40272f:	e8 11 fc ff ff       	callq  402345 <urlencode>
  402734:	85 c0                	test   %eax,%eax
  402736:	0f 89 8a 00 00 00    	jns    4027c6 <submitr+0x374>
  40273c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402743:	3a 20 52 
  402746:	48 89 03             	mov    %rax,(%rbx)
  402749:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402750:	20 73 74 
  402753:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402757:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40275e:	63 6f 6e 
  402761:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402765:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40276c:	20 61 6e 
  40276f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402773:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40277a:	67 61 6c 
  40277d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402781:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402788:	6e 70 72 
  40278b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40278f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402796:	6c 65 20 
  402799:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40279d:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4027a4:	63 74 65 
  4027a7:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4027ab:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4027b1:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4027b5:	89 ef                	mov    %ebp,%edi
  4027b7:	e8 94 e5 ff ff       	callq  400d50 <close@plt>
  4027bc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027c1:	e9 ed 03 00 00       	jmpq   402bb3 <submitr+0x761>
  4027c6:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  4027cd:	00 
  4027ce:	48 83 ec 08          	sub    $0x8,%rsp
  4027d2:	41 55                	push   %r13
  4027d4:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  4027db:	00 
  4027dc:	50                   	push   %rax
  4027dd:	41 56                	push   %r14
  4027df:	4d 89 f9             	mov    %r15,%r9
  4027e2:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  4027e7:	b9 38 37 40 00       	mov    $0x403738,%ecx
  4027ec:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027f1:	be 01 00 00 00       	mov    $0x1,%esi
  4027f6:	4c 89 e7             	mov    %r12,%rdi
  4027f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4027fe:	e8 9d e6 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402803:	b8 00 00 00 00       	mov    $0x0,%eax
  402808:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40280f:	4c 89 e7             	mov    %r12,%rdi
  402812:	f2 ae                	repnz scas %es:(%rdi),%al
  402814:	48 f7 d1             	not    %rcx
  402817:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40281b:	48 83 c4 20          	add    $0x20,%rsp
  40281f:	4c 89 e6             	mov    %r12,%rsi
  402822:	89 ef                	mov    %ebp,%edi
  402824:	e8 8b f9 ff ff       	callq  4021b4 <rio_writen>
  402829:	48 85 c0             	test   %rax,%rax
  40282c:	79 6b                	jns    402899 <submitr+0x447>
  40282e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402835:	3a 20 43 
  402838:	48 89 03             	mov    %rax,(%rbx)
  40283b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402842:	20 75 6e 
  402845:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402849:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402850:	74 6f 20 
  402853:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402857:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40285e:	20 74 6f 
  402861:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402865:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40286c:	41 75 74 
  40286f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402873:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  40287a:	73 65 72 
  40287d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402881:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  402888:	89 ef                	mov    %ebp,%edi
  40288a:	e8 c1 e4 ff ff       	callq  400d50 <close@plt>
  40288f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402894:	e9 1a 03 00 00       	jmpq   402bb3 <submitr+0x761>
  402899:	89 ee                	mov    %ebp,%esi
  40289b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028a0:	e8 cf f8 ff ff       	callq  402174 <rio_readinitb>
  4028a5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028aa:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4028b1:	00 
  4028b2:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028b7:	e8 df f9 ff ff       	callq  40229b <rio_readlineb>
  4028bc:	48 85 c0             	test   %rax,%rax
  4028bf:	7f 7f                	jg     402940 <submitr+0x4ee>
  4028c1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028c8:	3a 20 43 
  4028cb:	48 89 03             	mov    %rax,(%rbx)
  4028ce:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028d5:	20 75 6e 
  4028d8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028dc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028e3:	74 6f 20 
  4028e6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028ea:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4028f1:	66 69 72 
  4028f4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028f8:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4028ff:	61 64 65 
  402902:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402906:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  40290d:	6d 20 41 
  402910:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402914:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  40291b:	62 20 73 
  40291e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402922:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  402929:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  40292f:	89 ef                	mov    %ebp,%edi
  402931:	e8 1a e4 ff ff       	callq  400d50 <close@plt>
  402936:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40293b:	e9 73 02 00 00       	jmpq   402bb3 <submitr+0x761>
  402940:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  402947:	00 
  402948:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  40294d:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402954:	00 
  402955:	be cf 37 40 00       	mov    $0x4037cf,%esi
  40295a:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402961:	00 
  402962:	b8 00 00 00 00       	mov    $0x0,%eax
  402967:	e8 94 e4 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  40296c:	e9 92 00 00 00       	jmpq   402a03 <submitr+0x5b1>
  402971:	ba 00 20 00 00       	mov    $0x2000,%edx
  402976:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40297d:	00 
  40297e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402983:	e8 13 f9 ff ff       	callq  40229b <rio_readlineb>
  402988:	48 85 c0             	test   %rax,%rax
  40298b:	7f 76                	jg     402a03 <submitr+0x5b1>
  40298d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402994:	3a 20 43 
  402997:	48 89 03             	mov    %rax,(%rbx)
  40299a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029a1:	20 75 6e 
  4029a4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029a8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029af:	74 6f 20 
  4029b2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029b6:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4029bd:	68 65 61 
  4029c0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029c4:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4029cb:	66 72 6f 
  4029ce:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029d2:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  4029d9:	6f 6c 61 
  4029dc:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029e0:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4029e7:	76 65 72 
  4029ea:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029ee:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  4029f2:	89 ef                	mov    %ebp,%edi
  4029f4:	e8 57 e3 ff ff       	callq  400d50 <close@plt>
  4029f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029fe:	e9 b0 01 00 00       	jmpq   402bb3 <submitr+0x761>
  402a03:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402a0a:	00 
  402a0b:	b8 0d 00 00 00       	mov    $0xd,%eax
  402a10:	29 d0                	sub    %edx,%eax
  402a12:	75 1b                	jne    402a2f <submitr+0x5dd>
  402a14:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402a1b:	00 
  402a1c:	b8 0a 00 00 00       	mov    $0xa,%eax
  402a21:	29 d0                	sub    %edx,%eax
  402a23:	75 0a                	jne    402a2f <submitr+0x5dd>
  402a25:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402a2c:	00 
  402a2d:	f7 d8                	neg    %eax
  402a2f:	85 c0                	test   %eax,%eax
  402a31:	0f 85 3a ff ff ff    	jne    402971 <submitr+0x51f>
  402a37:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a3c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a43:	00 
  402a44:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a49:	e8 4d f8 ff ff       	callq  40229b <rio_readlineb>
  402a4e:	48 85 c0             	test   %rax,%rax
  402a51:	0f 8f 80 00 00 00    	jg     402ad7 <submitr+0x685>
  402a57:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a5e:	3a 20 43 
  402a61:	48 89 03             	mov    %rax,(%rbx)
  402a64:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a6b:	20 75 6e 
  402a6e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a72:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a79:	74 6f 20 
  402a7c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a80:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402a87:	73 74 61 
  402a8a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a8e:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402a95:	65 73 73 
  402a98:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a9c:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402aa3:	72 6f 6d 
  402aa6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402aaa:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402ab1:	6c 61 62 
  402ab4:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402ab8:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402abf:	65 72 00 
  402ac2:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402ac6:	89 ef                	mov    %ebp,%edi
  402ac8:	e8 83 e2 ff ff       	callq  400d50 <close@plt>
  402acd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ad2:	e9 dc 00 00 00       	jmpq   402bb3 <submitr+0x761>
  402ad7:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402adc:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402ae3:	74 37                	je     402b1c <submitr+0x6ca>
  402ae5:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402aec:	00 
  402aed:	b9 98 37 40 00       	mov    $0x403798,%ecx
  402af2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402af9:	be 01 00 00 00       	mov    $0x1,%esi
  402afe:	48 89 df             	mov    %rbx,%rdi
  402b01:	b8 00 00 00 00       	mov    $0x0,%eax
  402b06:	e8 95 e3 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402b0b:	89 ef                	mov    %ebp,%edi
  402b0d:	e8 3e e2 ff ff       	callq  400d50 <close@plt>
  402b12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b17:	e9 97 00 00 00       	jmpq   402bb3 <submitr+0x761>
  402b1c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b23:	00 
  402b24:	48 89 df             	mov    %rbx,%rdi
  402b27:	e8 b4 e1 ff ff       	callq  400ce0 <strcpy@plt>
  402b2c:	89 ef                	mov    %ebp,%edi
  402b2e:	e8 1d e2 ff ff       	callq  400d50 <close@plt>
  402b33:	0f b6 03             	movzbl (%rbx),%eax
  402b36:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402b3b:	29 c2                	sub    %eax,%edx
  402b3d:	75 22                	jne    402b61 <submitr+0x70f>
  402b3f:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402b43:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402b48:	29 c8                	sub    %ecx,%eax
  402b4a:	75 17                	jne    402b63 <submitr+0x711>
  402b4c:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402b50:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b55:	29 c8                	sub    %ecx,%eax
  402b57:	75 0a                	jne    402b63 <submitr+0x711>
  402b59:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402b5d:	f7 d8                	neg    %eax
  402b5f:	eb 02                	jmp    402b63 <submitr+0x711>
  402b61:	89 d0                	mov    %edx,%eax
  402b63:	85 c0                	test   %eax,%eax
  402b65:	74 40                	je     402ba7 <submitr+0x755>
  402b67:	bf e0 37 40 00       	mov    $0x4037e0,%edi
  402b6c:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b71:	48 89 de             	mov    %rbx,%rsi
  402b74:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b76:	0f 97 c0             	seta   %al
  402b79:	0f 92 c1             	setb   %cl
  402b7c:	29 c8                	sub    %ecx,%eax
  402b7e:	0f be c0             	movsbl %al,%eax
  402b81:	85 c0                	test   %eax,%eax
  402b83:	74 2e                	je     402bb3 <submitr+0x761>
  402b85:	85 d2                	test   %edx,%edx
  402b87:	75 13                	jne    402b9c <submitr+0x74a>
  402b89:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402b8d:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402b92:	29 c2                	sub    %eax,%edx
  402b94:	75 06                	jne    402b9c <submitr+0x74a>
  402b96:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402b9a:	f7 da                	neg    %edx
  402b9c:	85 d2                	test   %edx,%edx
  402b9e:	75 0e                	jne    402bae <submitr+0x75c>
  402ba0:	b8 00 00 00 00       	mov    $0x0,%eax
  402ba5:	eb 0c                	jmp    402bb3 <submitr+0x761>
  402ba7:	b8 00 00 00 00       	mov    $0x0,%eax
  402bac:	eb 05                	jmp    402bb3 <submitr+0x761>
  402bae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bb3:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402bba:	00 
  402bbb:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402bc2:	00 00 
  402bc4:	74 05                	je     402bcb <submitr+0x779>
  402bc6:	e8 45 e1 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402bcb:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402bd2:	5b                   	pop    %rbx
  402bd3:	5d                   	pop    %rbp
  402bd4:	41 5c                	pop    %r12
  402bd6:	41 5d                	pop    %r13
  402bd8:	41 5e                	pop    %r14
  402bda:	41 5f                	pop    %r15
  402bdc:	c3                   	retq   

0000000000402bdd <init_timeout>:
  402bdd:	85 ff                	test   %edi,%edi
  402bdf:	74 23                	je     402c04 <init_timeout+0x27>
  402be1:	53                   	push   %rbx
  402be2:	89 fb                	mov    %edi,%ebx
  402be4:	85 ff                	test   %edi,%edi
  402be6:	79 05                	jns    402bed <init_timeout+0x10>
  402be8:	bb 00 00 00 00       	mov    $0x0,%ebx
  402bed:	be 86 21 40 00       	mov    $0x402186,%esi
  402bf2:	bf 0e 00 00 00       	mov    $0xe,%edi
  402bf7:	e8 84 e1 ff ff       	callq  400d80 <signal@plt>
  402bfc:	89 df                	mov    %ebx,%edi
  402bfe:	e8 3d e1 ff ff       	callq  400d40 <alarm@plt>
  402c03:	5b                   	pop    %rbx
  402c04:	f3 c3                	repz retq 

0000000000402c06 <init_driver>:
  402c06:	55                   	push   %rbp
  402c07:	53                   	push   %rbx
  402c08:	48 83 ec 28          	sub    $0x28,%rsp
  402c0c:	48 89 fd             	mov    %rdi,%rbp
  402c0f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c16:	00 00 
  402c18:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c1d:	31 c0                	xor    %eax,%eax
  402c1f:	be 01 00 00 00       	mov    $0x1,%esi
  402c24:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c29:	e8 52 e1 ff ff       	callq  400d80 <signal@plt>
  402c2e:	be 01 00 00 00       	mov    $0x1,%esi
  402c33:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c38:	e8 43 e1 ff ff       	callq  400d80 <signal@plt>
  402c3d:	be 01 00 00 00       	mov    $0x1,%esi
  402c42:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c47:	e8 34 e1 ff ff       	callq  400d80 <signal@plt>
  402c4c:	ba 00 00 00 00       	mov    $0x0,%edx
  402c51:	be 01 00 00 00       	mov    $0x1,%esi
  402c56:	bf 02 00 00 00       	mov    $0x2,%edi
  402c5b:	e8 50 e2 ff ff       	callq  400eb0 <socket@plt>
  402c60:	85 c0                	test   %eax,%eax
  402c62:	79 4f                	jns    402cb3 <init_driver+0xad>
  402c64:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c6b:	3a 20 43 
  402c6e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c72:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402c79:	20 75 6e 
  402c7c:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c80:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c87:	74 6f 20 
  402c8a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c8e:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402c95:	65 20 73 
  402c98:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c9c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402ca3:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402ca9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cae:	e9 2a 01 00 00       	jmpq   402ddd <init_driver+0x1d7>
  402cb3:	89 c3                	mov    %eax,%ebx
  402cb5:	bf 05 33 40 00       	mov    $0x403305,%edi
  402cba:	e8 d1 e0 ff ff       	callq  400d90 <gethostbyname@plt>
  402cbf:	48 85 c0             	test   %rax,%rax
  402cc2:	75 68                	jne    402d2c <init_driver+0x126>
  402cc4:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ccb:	3a 20 44 
  402cce:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cd2:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402cd9:	20 75 6e 
  402cdc:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ce0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ce7:	74 6f 20 
  402cea:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cee:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402cf5:	76 65 20 
  402cf8:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402cfc:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d03:	72 20 61 
  402d06:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d0a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d11:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d17:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402d1b:	89 df                	mov    %ebx,%edi
  402d1d:	e8 2e e0 ff ff       	callq  400d50 <close@plt>
  402d22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d27:	e9 b1 00 00 00       	jmpq   402ddd <init_driver+0x1d7>
  402d2c:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402d33:	00 
  402d34:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402d3b:	00 00 
  402d3d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d43:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d47:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d4b:	48 8b 30             	mov    (%rax),%rsi
  402d4e:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d53:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d58:	e8 43 e0 ff ff       	callq  400da0 <__memmove_chk@plt>
  402d5d:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402d64:	ba 10 00 00 00       	mov    $0x10,%edx
  402d69:	48 89 e6             	mov    %rsp,%rsi
  402d6c:	89 df                	mov    %ebx,%edi
  402d6e:	e8 0d e1 ff ff       	callq  400e80 <connect@plt>
  402d73:	85 c0                	test   %eax,%eax
  402d75:	79 50                	jns    402dc7 <init_driver+0x1c1>
  402d77:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d7e:	3a 20 55 
  402d81:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d85:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402d8c:	20 74 6f 
  402d8f:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d93:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d9a:	65 63 74 
  402d9d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402da1:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402da8:	65 72 76 
  402dab:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402daf:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402db5:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402db9:	89 df                	mov    %ebx,%edi
  402dbb:	e8 90 df ff ff       	callq  400d50 <close@plt>
  402dc0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dc5:	eb 16                	jmp    402ddd <init_driver+0x1d7>
  402dc7:	89 df                	mov    %ebx,%edi
  402dc9:	e8 82 df ff ff       	callq  400d50 <close@plt>
  402dce:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402dd4:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402dd8:	b8 00 00 00 00       	mov    $0x0,%eax
  402ddd:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402de2:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402de9:	00 00 
  402deb:	74 05                	je     402df2 <init_driver+0x1ec>
  402ded:	e8 1e df ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402df2:	48 83 c4 28          	add    $0x28,%rsp
  402df6:	5b                   	pop    %rbx
  402df7:	5d                   	pop    %rbp
  402df8:	c3                   	retq   

0000000000402df9 <driver_post>:
  402df9:	53                   	push   %rbx
  402dfa:	4c 89 cb             	mov    %r9,%rbx
  402dfd:	45 85 c0             	test   %r8d,%r8d
  402e00:	74 27                	je     402e29 <driver_post+0x30>
  402e02:	48 89 ca             	mov    %rcx,%rdx
  402e05:	be e5 37 40 00       	mov    $0x4037e5,%esi
  402e0a:	bf 01 00 00 00       	mov    $0x1,%edi
  402e0f:	b8 00 00 00 00       	mov    $0x0,%eax
  402e14:	e8 07 e0 ff ff       	callq  400e20 <__printf_chk@plt>
  402e19:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e1e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e22:	b8 00 00 00 00       	mov    $0x0,%eax
  402e27:	eb 3f                	jmp    402e68 <driver_post+0x6f>
  402e29:	48 85 ff             	test   %rdi,%rdi
  402e2c:	74 2c                	je     402e5a <driver_post+0x61>
  402e2e:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e31:	74 27                	je     402e5a <driver_post+0x61>
  402e33:	48 83 ec 08          	sub    $0x8,%rsp
  402e37:	41 51                	push   %r9
  402e39:	49 89 c9             	mov    %rcx,%r9
  402e3c:	49 89 d0             	mov    %rdx,%r8
  402e3f:	48 89 f9             	mov    %rdi,%rcx
  402e42:	48 89 f2             	mov    %rsi,%rdx
  402e45:	be 50 00 00 00       	mov    $0x50,%esi
  402e4a:	bf 05 33 40 00       	mov    $0x403305,%edi
  402e4f:	e8 fe f5 ff ff       	callq  402452 <submitr>
  402e54:	48 83 c4 10          	add    $0x10,%rsp
  402e58:	eb 0e                	jmp    402e68 <driver_post+0x6f>
  402e5a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e5f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e63:	b8 00 00 00 00       	mov    $0x0,%eax
  402e68:	5b                   	pop    %rbx
  402e69:	c3                   	retq   

0000000000402e6a <check>:
  402e6a:	89 f8                	mov    %edi,%eax
  402e6c:	c1 e8 1c             	shr    $0x1c,%eax
  402e6f:	85 c0                	test   %eax,%eax
  402e71:	74 1d                	je     402e90 <check+0x26>
  402e73:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e78:	eb 0b                	jmp    402e85 <check+0x1b>
  402e7a:	89 f8                	mov    %edi,%eax
  402e7c:	d3 e8                	shr    %cl,%eax
  402e7e:	3c 0a                	cmp    $0xa,%al
  402e80:	74 14                	je     402e96 <check+0x2c>
  402e82:	83 c1 08             	add    $0x8,%ecx
  402e85:	83 f9 1f             	cmp    $0x1f,%ecx
  402e88:	7e f0                	jle    402e7a <check+0x10>
  402e8a:	b8 01 00 00 00       	mov    $0x1,%eax
  402e8f:	c3                   	retq   
  402e90:	b8 00 00 00 00       	mov    $0x0,%eax
  402e95:	c3                   	retq   
  402e96:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9b:	c3                   	retq   

0000000000402e9c <gencookie>:
  402e9c:	53                   	push   %rbx
  402e9d:	83 c7 01             	add    $0x1,%edi
  402ea0:	e8 1b de ff ff       	callq  400cc0 <srandom@plt>
  402ea5:	e8 36 df ff ff       	callq  400de0 <random@plt>
  402eaa:	89 c3                	mov    %eax,%ebx
  402eac:	89 c7                	mov    %eax,%edi
  402eae:	e8 b7 ff ff ff       	callq  402e6a <check>
  402eb3:	85 c0                	test   %eax,%eax
  402eb5:	74 ee                	je     402ea5 <gencookie+0x9>
  402eb7:	89 d8                	mov    %ebx,%eax
  402eb9:	5b                   	pop    %rbx
  402eba:	c3                   	retq   
  402ebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402ec0 <__libc_csu_init>:
  402ec0:	41 57                	push   %r15
  402ec2:	41 56                	push   %r14
  402ec4:	41 89 ff             	mov    %edi,%r15d
  402ec7:	41 55                	push   %r13
  402ec9:	41 54                	push   %r12
  402ecb:	4c 8d 25 2e 1f 20 00 	lea    0x201f2e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402ed2:	55                   	push   %rbp
  402ed3:	48 8d 2d 2e 1f 20 00 	lea    0x201f2e(%rip),%rbp        # 604e08 <__init_array_end>
  402eda:	53                   	push   %rbx
  402edb:	49 89 f6             	mov    %rsi,%r14
  402ede:	49 89 d5             	mov    %rdx,%r13
  402ee1:	4c 29 e5             	sub    %r12,%rbp
  402ee4:	48 83 ec 08          	sub    $0x8,%rsp
  402ee8:	48 c1 fd 03          	sar    $0x3,%rbp
  402eec:	e8 77 dd ff ff       	callq  400c68 <_init>
  402ef1:	48 85 ed             	test   %rbp,%rbp
  402ef4:	74 20                	je     402f16 <__libc_csu_init+0x56>
  402ef6:	31 db                	xor    %ebx,%ebx
  402ef8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402eff:	00 
  402f00:	4c 89 ea             	mov    %r13,%rdx
  402f03:	4c 89 f6             	mov    %r14,%rsi
  402f06:	44 89 ff             	mov    %r15d,%edi
  402f09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f0d:	48 83 c3 01          	add    $0x1,%rbx
  402f11:	48 39 eb             	cmp    %rbp,%rbx
  402f14:	75 ea                	jne    402f00 <__libc_csu_init+0x40>
  402f16:	48 83 c4 08          	add    $0x8,%rsp
  402f1a:	5b                   	pop    %rbx
  402f1b:	5d                   	pop    %rbp
  402f1c:	41 5c                	pop    %r12
  402f1e:	41 5d                	pop    %r13
  402f20:	41 5e                	pop    %r14
  402f22:	41 5f                	pop    %r15
  402f24:	c3                   	retq   
  402f25:	90                   	nop
  402f26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f2d:	00 00 00 

0000000000402f30 <__libc_csu_fini>:
  402f30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f34 <_fini>:
  402f34:	48 83 ec 08          	sub    $0x8,%rsp
  402f38:	48 83 c4 08          	add    $0x8,%rsp
  402f3c:	c3                   	retq   
