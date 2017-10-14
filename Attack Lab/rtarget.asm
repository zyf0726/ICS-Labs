
rtarget：     文件格式 elf64-x86-64


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
  400edf:	49 c7 c0 50 30 40 00 	mov    $0x403050,%r8
  400ee6:	48 c7 c1 e0 2f 40 00 	mov    $0x402fe0,%rcx
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
  400fd6:	be 68 30 40 00       	mov    $0x403068,%esi
  400fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	e8 36 fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fea:	bf a0 30 40 00       	mov    $0x4030a0,%edi
  400fef:	e8 fc fc ff ff       	callq  400cf0 <puts@plt>
  400ff4:	bf 18 32 40 00       	mov    $0x403218,%edi
  400ff9:	e8 f2 fc ff ff       	callq  400cf0 <puts@plt>
  400ffe:	bf c8 30 40 00       	mov    $0x4030c8,%edi
  401003:	e8 e8 fc ff ff       	callq  400cf0 <puts@plt>
  401008:	bf 32 32 40 00       	mov    $0x403232,%edi
  40100d:	e8 de fc ff ff       	callq  400cf0 <puts@plt>
  401012:	eb 32                	jmp    401046 <usage+0x80>
  401014:	be 4e 32 40 00       	mov    $0x40324e,%esi
  401019:	bf 01 00 00 00       	mov    $0x1,%edi
  40101e:	b8 00 00 00 00       	mov    $0x0,%eax
  401023:	e8 f8 fd ff ff       	callq  400e20 <__printf_chk@plt>
  401028:	bf f0 30 40 00       	mov    $0x4030f0,%edi
  40102d:	e8 be fc ff ff       	callq  400cf0 <puts@plt>
  401032:	bf 18 31 40 00       	mov    $0x403118,%edi
  401037:	e8 b4 fc ff ff       	callq  400cf0 <puts@plt>
  40103c:	bf 6c 32 40 00       	mov    $0x40326c,%edi
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
  40107a:	e8 3d 1f 00 00       	callq  402fbc <gencookie>
  40107f:	89 05 9f 44 20 00    	mov    %eax,0x20449f(%rip)        # 605524 <cookie>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 30 1f 00 00       	callq  402fbc <gencookie>
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
  4010e4:	c6 05 5d 50 20 00 72 	movb   $0x72,0x20505d(%rip)        # 606148 <target_prefix>
  4010eb:	83 3d b6 43 20 00 00 	cmpl   $0x0,0x2043b6(%rip)        # 6054a8 <notify>
  4010f2:	0f 84 bb 00 00 00    	je     4011b3 <initialize_target+0x163>
  4010f8:	83 3d 29 44 20 00 00 	cmpl   $0x0,0x204429(%rip)        # 605528 <is_checker>
  4010ff:	0f 85 ae 00 00 00    	jne    4011b3 <initialize_target+0x163>
  401105:	be 00 01 00 00       	mov    $0x100,%esi
  40110a:	48 89 e7             	mov    %rsp,%rdi
  40110d:	e8 4e fd ff ff       	callq  400e60 <gethostname@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 25                	je     40113b <initialize_target+0xeb>
  401116:	bf 48 31 40 00       	mov    $0x403148,%edi
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
  401163:	be 80 31 40 00       	mov    $0x403180,%esi
  401168:	bf 01 00 00 00       	mov    $0x1,%edi
  40116d:	e8 ae fc ff ff       	callq  400e20 <__printf_chk@plt>
  401172:	bf 08 00 00 00       	mov    $0x8,%edi
  401177:	e8 f4 fc ff ff       	callq  400e70 <exit@plt>
  40117c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401183:	00 
  401184:	e8 9d 1b 00 00       	callq  402d26 <init_driver>
  401189:	85 c0                	test   %eax,%eax
  40118b:	79 26                	jns    4011b3 <initialize_target+0x163>
  40118d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401194:	00 
  401195:	be c0 31 40 00       	mov    $0x4031c0,%esi
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
  4011e3:	be 46 20 40 00       	mov    $0x402046,%esi
  4011e8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011ed:	e8 8e fb ff ff       	callq  400d80 <signal@plt>
  4011f2:	be f8 1f 40 00       	mov    $0x401ff8,%esi
  4011f7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011fc:	e8 7f fb ff ff       	callq  400d80 <signal@plt>
  401201:	be 94 20 40 00       	mov    $0x402094,%esi
  401206:	bf 04 00 00 00       	mov    $0x4,%edi
  40120b:	e8 70 fb ff ff       	callq  400d80 <signal@plt>
  401210:	83 3d 11 43 20 00 00 	cmpl   $0x0,0x204311(%rip)        # 605528 <is_checker>
  401217:	74 20                	je     401239 <main+0x64>
  401219:	be e2 20 40 00       	mov    $0x4020e2,%esi
  40121e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401223:	e8 58 fb ff ff       	callq  400d80 <signal@plt>
  401228:	bf 05 00 00 00       	mov    $0x5,%edi
  40122d:	e8 0e fb ff ff       	callq  400d40 <alarm@plt>
  401232:	bd 8a 32 40 00       	mov    $0x40328a,%ebp
  401237:	eb 05                	jmp    40123e <main+0x69>
  401239:	bd 85 32 40 00       	mov    $0x403285,%ebp
  40123e:	48 8b 05 7b 42 20 00 	mov    0x20427b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401245:	48 89 05 c4 42 20 00 	mov    %rax,0x2042c4(%rip)        # 605510 <infile>
  40124c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401252:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401258:	e9 c6 00 00 00       	jmpq   401323 <main+0x14e>
  40125d:	83 e8 61             	sub    $0x61,%eax
  401260:	3c 10                	cmp    $0x10,%al
  401262:	0f 87 9c 00 00 00    	ja     401304 <main+0x12f>
  401268:	0f b6 c0             	movzbl %al,%eax
  40126b:	ff 24 c5 d0 32 40 00 	jmpq   *0x4032d0(,%rax,8)
  401272:	48 8b 3b             	mov    (%rbx),%rdi
  401275:	e8 4c fd ff ff       	callq  400fc6 <usage>
  40127a:	be dd 35 40 00       	mov    $0x4035dd,%esi
  40127f:	48 8b 3d 42 42 20 00 	mov    0x204242(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401286:	e8 a5 fb ff ff       	callq  400e30 <fopen@plt>
  40128b:	48 89 05 7e 42 20 00 	mov    %rax,0x20427e(%rip)        # 605510 <infile>
  401292:	48 85 c0             	test   %rax,%rax
  401295:	0f 85 88 00 00 00    	jne    401323 <main+0x14e>
  40129b:	48 8b 0d 26 42 20 00 	mov    0x204226(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012a2:	ba 92 32 40 00       	mov    $0x403292,%edx
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
  401307:	be af 32 40 00       	mov    $0x4032af,%esi
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
  40133b:	be 01 00 00 00       	mov    $0x1,%esi
  401340:	44 89 ef             	mov    %r13d,%edi
  401343:	e8 08 fd ff ff       	callq  401050 <initialize_target>
  401348:	83 3d d9 41 20 00 00 	cmpl   $0x0,0x2041d9(%rip)        # 605528 <is_checker>
  40134f:	74 2a                	je     40137b <main+0x1a6>
  401351:	44 3b 35 c8 41 20 00 	cmp    0x2041c8(%rip),%r14d        # 605520 <authkey>
  401358:	74 21                	je     40137b <main+0x1a6>
  40135a:	44 89 f2             	mov    %r14d,%edx
  40135d:	be e8 31 40 00       	mov    $0x4031e8,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 af fa ff ff       	callq  400e20 <__printf_chk@plt>
  401371:	b8 00 00 00 00       	mov    $0x0,%eax
  401376:	e8 19 09 00 00       	callq  401c94 <check_fail>
  40137b:	8b 15 a3 41 20 00    	mov    0x2041a3(%rip),%edx        # 605524 <cookie>
  401381:	be c2 32 40 00       	mov    $0x4032c2,%esi
  401386:	bf 01 00 00 00       	mov    $0x1,%edi
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	e8 8b fa ff ff       	callq  400e20 <__printf_chk@plt>
  401395:	48 8b 3d 04 41 20 00 	mov    0x204104(%rip),%rdi        # 6054a0 <buf_offset>
  40139c:	e8 94 0d 00 00       	callq  402135 <launch>
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
  401926:	e8 9e 03 00 00       	callq  401cc9 <Gets>
  40192b:	b8 01 00 00 00       	mov    $0x1,%eax
  401930:	48 83 c4 28          	add    $0x28,%rsp
  401934:	c3                   	retq   

0000000000401935 <touch1>:
  401935:	48 83 ec 08          	sub    $0x8,%rsp
  401939:	c7 05 d9 3b 20 00 01 	movl   $0x1,0x203bd9(%rip)        # 60551c <vlevel>
  401940:	00 00 00 
  401943:	bf 36 34 40 00       	mov    $0x403436,%edi
  401948:	e8 a3 f3 ff ff       	callq  400cf0 <puts@plt>
  40194d:	bf 01 00 00 00       	mov    $0x1,%edi
  401952:	e8 b7 05 00 00       	callq  401f0e <validate>
  401957:	bf 00 00 00 00       	mov    $0x0,%edi
  40195c:	e8 0f f5 ff ff       	callq  400e70 <exit@plt>

0000000000401961 <touch2>:
  401961:	48 83 ec 08          	sub    $0x8,%rsp
  401965:	89 fa                	mov    %edi,%edx
  401967:	c7 05 ab 3b 20 00 02 	movl   $0x2,0x203bab(%rip)        # 60551c <vlevel>
  40196e:	00 00 00 
  401971:	39 3d ad 3b 20 00    	cmp    %edi,0x203bad(%rip)        # 605524 <cookie>
  401977:	75 20                	jne    401999 <touch2+0x38>
  401979:	be 58 34 40 00       	mov    $0x403458,%esi
  40197e:	bf 01 00 00 00       	mov    $0x1,%edi
  401983:	b8 00 00 00 00       	mov    $0x0,%eax
  401988:	e8 93 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  40198d:	bf 02 00 00 00       	mov    $0x2,%edi
  401992:	e8 77 05 00 00       	callq  401f0e <validate>
  401997:	eb 1e                	jmp    4019b7 <touch2+0x56>
  401999:	be 80 34 40 00       	mov    $0x403480,%esi
  40199e:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a8:	e8 73 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019ad:	bf 02 00 00 00       	mov    $0x2,%edi
  4019b2:	e8 19 06 00 00       	callq  401fd0 <fail>
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
  401a1e:	b9 53 34 40 00       	mov    $0x403453,%ecx
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
  401a95:	be a8 34 40 00       	mov    $0x4034a8,%esi
  401a9a:	bf 01 00 00 00       	mov    $0x1,%edi
  401a9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa4:	e8 77 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401aa9:	bf 03 00 00 00       	mov    $0x3,%edi
  401aae:	e8 5b 04 00 00       	callq  401f0e <validate>
  401ab3:	eb 21                	jmp    401ad6 <touch3+0x64>
  401ab5:	48 89 da             	mov    %rbx,%rdx
  401ab8:	be d0 34 40 00       	mov    $0x4034d0,%esi
  401abd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac7:	e8 54 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401acc:	bf 03 00 00 00       	mov    $0x3,%edi
  401ad1:	e8 fa 04 00 00       	callq  401fd0 <fail>
  401ad6:	bf 00 00 00 00       	mov    $0x0,%edi
  401adb:	e8 90 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401ae0 <test>:
  401ae0:	48 83 ec 08          	sub    $0x8,%rsp
  401ae4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae9:	e8 31 fe ff ff       	callq  40191f <getbuf>
  401aee:	89 c2                	mov    %eax,%edx
  401af0:	be f8 34 40 00       	mov    $0x4034f8,%esi
  401af5:	bf 01 00 00 00       	mov    $0x1,%edi
  401afa:	b8 00 00 00 00       	mov    $0x0,%eax
  401aff:	e8 1c f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401b04:	48 83 c4 08          	add    $0x8,%rsp
  401b08:	c3                   	retq   

0000000000401b09 <start_farm>:
  401b09:	b8 01 00 00 00       	mov    $0x1,%eax
  401b0e:	c3                   	retq   

0000000000401b0f <addval_435>:
  401b0f:	8d 87 48 89 c7 c7    	lea    -0x383876b8(%rdi),%eax
  401b15:	c3                   	retq   

0000000000401b16 <addval_412>:
  401b16:	8d 87 d7 83 58 90    	lea    -0x6fa77c29(%rdi),%eax
  401b1c:	c3                   	retq   

0000000000401b1d <getval_292>:
  401b1d:	b8 48 89 c7 92       	mov    $0x92c78948,%eax
  401b22:	c3                   	retq   

0000000000401b23 <getval_423>:
  401b23:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401b28:	c3                   	retq   

0000000000401b29 <addval_281>:
  401b29:	8d 87 14 48 89 c7    	lea    -0x3876b7ec(%rdi),%eax
  401b2f:	c3                   	retq   

0000000000401b30 <getval_338>:
  401b30:	b8 18 90 90 c3       	mov    $0xc3909018,%eax
  401b35:	c3                   	retq   

0000000000401b36 <addval_427>:
  401b36:	8d 87 36 c0 d8 90    	lea    -0x6f273fca(%rdi),%eax
  401b3c:	c3                   	retq   

0000000000401b3d <setval_388>:
  401b3d:	c7 07 35 58 90 90    	movl   $0x90905835,(%rdi)
  401b43:	c3                   	retq   

0000000000401b44 <mid_farm>:
  401b44:	b8 01 00 00 00       	mov    $0x1,%eax
  401b49:	c3                   	retq   

0000000000401b4a <add_xy>:
  401b4a:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401b4e:	c3                   	retq   

0000000000401b4f <addval_105>:
  401b4f:	8d 87 89 d1 78 c0    	lea    -0x3f872e77(%rdi),%eax
  401b55:	c3                   	retq   

0000000000401b56 <getval_371>:
  401b56:	b8 89 d1 18 d2       	mov    $0xd218d189,%eax
  401b5b:	c3                   	retq   

0000000000401b5c <addval_129>:
  401b5c:	8d 87 89 d1 18 c0    	lea    -0x3fe72e77(%rdi),%eax
  401b62:	c3                   	retq   

0000000000401b63 <getval_137>:
  401b63:	b8 89 ce 90 90       	mov    $0x9090ce89,%eax
  401b68:	c3                   	retq   

0000000000401b69 <addval_362>:
  401b69:	8d 87 48 89 e0 c7    	lea    -0x381f76b8(%rdi),%eax
  401b6f:	c3                   	retq   

0000000000401b70 <addval_236>:
  401b70:	8d 87 89 ce 30 c0    	lea    -0x3fcf3177(%rdi),%eax
  401b76:	c3                   	retq   

0000000000401b77 <setval_151>:
  401b77:	c7 07 c9 c2 84 db    	movl   $0xdb84c2c9,(%rdi)
  401b7d:	c3                   	retq   

0000000000401b7e <getval_102>:
  401b7e:	b8 89 d1 90 c3       	mov    $0xc390d189,%eax
  401b83:	c3                   	retq   

0000000000401b84 <addval_121>:
  401b84:	8d 87 a9 c2 38 db    	lea    -0x24c73d57(%rdi),%eax
  401b8a:	c3                   	retq   

0000000000401b8b <addval_378>:
  401b8b:	8d 87 89 c2 94 c0    	lea    -0x3f6b3d77(%rdi),%eax
  401b91:	c3                   	retq   

0000000000401b92 <setval_443>:
  401b92:	c7 07 89 ce 94 d2    	movl   $0xd294ce89,(%rdi)
  401b98:	c3                   	retq   

0000000000401b99 <getval_467>:
  401b99:	b8 89 ce 60 c0       	mov    $0xc060ce89,%eax
  401b9e:	c3                   	retq   

0000000000401b9f <addval_479>:
  401b9f:	8d 87 99 c2 84 c9    	lea    -0x367b3d67(%rdi),%eax
  401ba5:	c3                   	retq   

0000000000401ba6 <getval_125>:
  401ba6:	b8 99 ce 84 d2       	mov    $0xd284ce99,%eax
  401bab:	c3                   	retq   

0000000000401bac <getval_276>:
  401bac:	b8 89 08 89 e0       	mov    $0xe0890889,%eax
  401bb1:	c3                   	retq   

0000000000401bb2 <getval_287>:
  401bb2:	b8 89 d1 91 c3       	mov    $0xc391d189,%eax
  401bb7:	c3                   	retq   

0000000000401bb8 <setval_265>:
  401bb8:	c7 07 a9 d1 c3 4e    	movl   $0x4ec3d1a9,(%rdi)
  401bbe:	c3                   	retq   

0000000000401bbf <addval_480>:
  401bbf:	8d 87 89 ce 90 c3    	lea    -0x3c6f3177(%rdi),%eax
  401bc5:	c3                   	retq   

0000000000401bc6 <addval_297>:
  401bc6:	8d 87 4a 89 e0 c3    	lea    -0x3c1f76b6(%rdi),%eax
  401bcc:	c3                   	retq   

0000000000401bcd <setval_313>:
  401bcd:	c7 07 89 d1 08 c0    	movl   $0xc008d189,(%rdi)
  401bd3:	c3                   	retq   

0000000000401bd4 <getval_100>:
  401bd4:	b8 89 d1 28 db       	mov    $0xdb28d189,%eax
  401bd9:	c3                   	retq   

0000000000401bda <addval_107>:
  401bda:	8d 87 a9 ce 20 c0    	lea    -0x3fdf3157(%rdi),%eax
  401be0:	c3                   	retq   

0000000000401be1 <setval_367>:
  401be1:	c7 07 89 c2 20 c0    	movl   $0xc020c289,(%rdi)
  401be7:	c3                   	retq   

0000000000401be8 <addval_191>:
  401be8:	8d 87 89 c2 20 c9    	lea    -0x36df3d77(%rdi),%eax
  401bee:	c3                   	retq   

0000000000401bef <addval_237>:
  401bef:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401bf5:	c3                   	retq   

0000000000401bf6 <getval_208>:
  401bf6:	b8 8b c2 90 c3       	mov    $0xc390c28b,%eax
  401bfb:	c3                   	retq   

0000000000401bfc <getval_228>:
  401bfc:	b8 ed 40 89 e0       	mov    $0xe08940ed,%eax
  401c01:	c3                   	retq   

0000000000401c02 <addval_293>:
  401c02:	8d 87 09 c2 84 c0    	lea    -0x3f7b3df7(%rdi),%eax
  401c08:	c3                   	retq   

0000000000401c09 <setval_363>:
  401c09:	c7 07 6e 89 ce 94    	movl   $0x94ce896e,(%rdi)
  401c0f:	c3                   	retq   

0000000000401c10 <getval_491>:
  401c10:	b8 48 99 e0 c3       	mov    $0xc3e09948,%eax
  401c15:	c3                   	retq   

0000000000401c16 <addval_175>:
  401c16:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401c1c:	c3                   	retq   

0000000000401c1d <getval_377>:
  401c1d:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  401c22:	c3                   	retq   

0000000000401c23 <end_farm>:
  401c23:	b8 01 00 00 00       	mov    $0x1,%eax
  401c28:	c3                   	retq   

0000000000401c29 <save_char>:
  401c29:	8b 05 15 45 20 00    	mov    0x204515(%rip),%eax        # 606144 <gets_cnt>
  401c2f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c34:	7f 49                	jg     401c7f <save_char+0x56>
  401c36:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c39:	89 f9                	mov    %edi,%ecx
  401c3b:	c0 e9 04             	shr    $0x4,%cl
  401c3e:	83 e1 0f             	and    $0xf,%ecx
  401c41:	0f b6 b1 20 38 40 00 	movzbl 0x403820(%rcx),%esi
  401c48:	48 63 ca             	movslq %edx,%rcx
  401c4b:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c52:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401c55:	83 e7 0f             	and    $0xf,%edi
  401c58:	0f b6 b7 20 38 40 00 	movzbl 0x403820(%rdi),%esi
  401c5f:	48 63 c9             	movslq %ecx,%rcx
  401c62:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c69:	83 c2 02             	add    $0x2,%edx
  401c6c:	48 63 d2             	movslq %edx,%rdx
  401c6f:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401c76:	83 c0 01             	add    $0x1,%eax
  401c79:	89 05 c5 44 20 00    	mov    %eax,0x2044c5(%rip)        # 606144 <gets_cnt>
  401c7f:	f3 c3                	repz retq 

0000000000401c81 <save_term>:
  401c81:	8b 05 bd 44 20 00    	mov    0x2044bd(%rip),%eax        # 606144 <gets_cnt>
  401c87:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c8a:	48 98                	cltq   
  401c8c:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401c93:	c3                   	retq   

0000000000401c94 <check_fail>:
  401c94:	48 83 ec 08          	sub    $0x8,%rsp
  401c98:	0f be 15 a9 44 20 00 	movsbl 0x2044a9(%rip),%edx        # 606148 <target_prefix>
  401c9f:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401ca5:	8b 0d 6d 38 20 00    	mov    0x20386d(%rip),%ecx        # 605518 <check_level>
  401cab:	be 1b 35 40 00       	mov    $0x40351b,%esi
  401cb0:	bf 01 00 00 00       	mov    $0x1,%edi
  401cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cba:	e8 61 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cbf:	bf 01 00 00 00       	mov    $0x1,%edi
  401cc4:	e8 a7 f1 ff ff       	callq  400e70 <exit@plt>

0000000000401cc9 <Gets>:
  401cc9:	41 54                	push   %r12
  401ccb:	55                   	push   %rbp
  401ccc:	53                   	push   %rbx
  401ccd:	49 89 fc             	mov    %rdi,%r12
  401cd0:	c7 05 6a 44 20 00 00 	movl   $0x0,0x20446a(%rip)        # 606144 <gets_cnt>
  401cd7:	00 00 00 
  401cda:	48 89 fb             	mov    %rdi,%rbx
  401cdd:	eb 11                	jmp    401cf0 <Gets+0x27>
  401cdf:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401ce3:	88 03                	mov    %al,(%rbx)
  401ce5:	0f b6 f8             	movzbl %al,%edi
  401ce8:	e8 3c ff ff ff       	callq  401c29 <save_char>
  401ced:	48 89 eb             	mov    %rbp,%rbx
  401cf0:	48 8b 3d 19 38 20 00 	mov    0x203819(%rip),%rdi        # 605510 <infile>
  401cf7:	e8 f4 f0 ff ff       	callq  400df0 <_IO_getc@plt>
  401cfc:	83 f8 ff             	cmp    $0xffffffff,%eax
  401cff:	74 05                	je     401d06 <Gets+0x3d>
  401d01:	83 f8 0a             	cmp    $0xa,%eax
  401d04:	75 d9                	jne    401cdf <Gets+0x16>
  401d06:	c6 03 00             	movb   $0x0,(%rbx)
  401d09:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0e:	e8 6e ff ff ff       	callq  401c81 <save_term>
  401d13:	4c 89 e0             	mov    %r12,%rax
  401d16:	5b                   	pop    %rbx
  401d17:	5d                   	pop    %rbp
  401d18:	41 5c                	pop    %r12
  401d1a:	c3                   	retq   

0000000000401d1b <notify_server>:
  401d1b:	53                   	push   %rbx
  401d1c:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401d23:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d2a:	00 00 
  401d2c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d33:	00 
  401d34:	31 c0                	xor    %eax,%eax
  401d36:	83 3d eb 37 20 00 00 	cmpl   $0x0,0x2037eb(%rip)        # 605528 <is_checker>
  401d3d:	0f 85 aa 01 00 00    	jne    401eed <notify_server+0x1d2>
  401d43:	89 fb                	mov    %edi,%ebx
  401d45:	8b 05 f9 43 20 00    	mov    0x2043f9(%rip),%eax        # 606144 <gets_cnt>
  401d4b:	83 c0 64             	add    $0x64,%eax
  401d4e:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d53:	7e 1e                	jle    401d73 <notify_server+0x58>
  401d55:	be 50 36 40 00       	mov    $0x403650,%esi
  401d5a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d5f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d64:	e8 b7 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d69:	bf 01 00 00 00       	mov    $0x1,%edi
  401d6e:	e8 fd f0 ff ff       	callq  400e70 <exit@plt>
  401d73:	0f be 05 ce 43 20 00 	movsbl 0x2043ce(%rip),%eax        # 606148 <target_prefix>
  401d7a:	83 3d 27 37 20 00 00 	cmpl   $0x0,0x203727(%rip)        # 6054a8 <notify>
  401d81:	74 08                	je     401d8b <notify_server+0x70>
  401d83:	8b 15 97 37 20 00    	mov    0x203797(%rip),%edx        # 605520 <authkey>
  401d89:	eb 05                	jmp    401d90 <notify_server+0x75>
  401d8b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401d90:	85 db                	test   %ebx,%ebx
  401d92:	74 08                	je     401d9c <notify_server+0x81>
  401d94:	41 b9 31 35 40 00    	mov    $0x403531,%r9d
  401d9a:	eb 06                	jmp    401da2 <notify_server+0x87>
  401d9c:	41 b9 36 35 40 00    	mov    $0x403536,%r9d
  401da2:	68 40 55 60 00       	pushq  $0x605540
  401da7:	56                   	push   %rsi
  401da8:	50                   	push   %rax
  401da9:	52                   	push   %rdx
  401daa:	44 8b 05 b7 33 20 00 	mov    0x2033b7(%rip),%r8d        # 605168 <target_id>
  401db1:	b9 3b 35 40 00       	mov    $0x40353b,%ecx
  401db6:	ba 00 20 00 00       	mov    $0x2000,%edx
  401dbb:	be 01 00 00 00       	mov    $0x1,%esi
  401dc0:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401dc5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dca:	e8 d1 f0 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401dcf:	48 83 c4 20          	add    $0x20,%rsp
  401dd3:	83 3d ce 36 20 00 00 	cmpl   $0x0,0x2036ce(%rip)        # 6054a8 <notify>
  401dda:	0f 84 81 00 00 00    	je     401e61 <notify_server+0x146>
  401de0:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401de7:	00 
  401de8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401dee:	48 89 e1             	mov    %rsp,%rcx
  401df1:	48 8b 15 78 33 20 00 	mov    0x203378(%rip),%rdx        # 605170 <lab>
  401df8:	48 8b 35 79 33 20 00 	mov    0x203379(%rip),%rsi        # 605178 <course>
  401dff:	48 8b 3d 5a 33 20 00 	mov    0x20335a(%rip),%rdi        # 605160 <user_id>
  401e06:	e8 0e 11 00 00       	callq  402f19 <driver_post>
  401e0b:	85 c0                	test   %eax,%eax
  401e0d:	79 26                	jns    401e35 <notify_server+0x11a>
  401e0f:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e16:	00 
  401e17:	be 57 35 40 00       	mov    $0x403557,%esi
  401e1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e21:	b8 00 00 00 00       	mov    $0x0,%eax
  401e26:	e8 f5 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e2b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e30:	e8 3b f0 ff ff       	callq  400e70 <exit@plt>
  401e35:	85 db                	test   %ebx,%ebx
  401e37:	74 19                	je     401e52 <notify_server+0x137>
  401e39:	bf 80 36 40 00       	mov    $0x403680,%edi
  401e3e:	e8 ad ee ff ff       	callq  400cf0 <puts@plt>
  401e43:	bf 63 35 40 00       	mov    $0x403563,%edi
  401e48:	e8 a3 ee ff ff       	callq  400cf0 <puts@plt>
  401e4d:	e9 9b 00 00 00       	jmpq   401eed <notify_server+0x1d2>
  401e52:	bf 6d 35 40 00       	mov    $0x40356d,%edi
  401e57:	e8 94 ee ff ff       	callq  400cf0 <puts@plt>
  401e5c:	e9 8c 00 00 00       	jmpq   401eed <notify_server+0x1d2>
  401e61:	85 db                	test   %ebx,%ebx
  401e63:	74 07                	je     401e6c <notify_server+0x151>
  401e65:	ba 31 35 40 00       	mov    $0x403531,%edx
  401e6a:	eb 05                	jmp    401e71 <notify_server+0x156>
  401e6c:	ba 36 35 40 00       	mov    $0x403536,%edx
  401e71:	be b8 36 40 00       	mov    $0x4036b8,%esi
  401e76:	bf 01 00 00 00       	mov    $0x1,%edi
  401e7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e80:	e8 9b ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e85:	48 8b 15 d4 32 20 00 	mov    0x2032d4(%rip),%rdx        # 605160 <user_id>
  401e8c:	be 74 35 40 00       	mov    $0x403574,%esi
  401e91:	bf 01 00 00 00       	mov    $0x1,%edi
  401e96:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9b:	e8 80 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ea0:	48 8b 15 d1 32 20 00 	mov    0x2032d1(%rip),%rdx        # 605178 <course>
  401ea7:	be 81 35 40 00       	mov    $0x403581,%esi
  401eac:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb1:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb6:	e8 65 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ebb:	48 8b 15 ae 32 20 00 	mov    0x2032ae(%rip),%rdx        # 605170 <lab>
  401ec2:	be 8d 35 40 00       	mov    $0x40358d,%esi
  401ec7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed1:	e8 4a ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ed6:	48 89 e2             	mov    %rsp,%rdx
  401ed9:	be 96 35 40 00       	mov    $0x403596,%esi
  401ede:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee8:	e8 33 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401eed:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401ef4:	00 
  401ef5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401efc:	00 00 
  401efe:	74 05                	je     401f05 <notify_server+0x1ea>
  401f00:	e8 0b ee ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401f05:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401f0c:	5b                   	pop    %rbx
  401f0d:	c3                   	retq   

0000000000401f0e <validate>:
  401f0e:	53                   	push   %rbx
  401f0f:	89 fb                	mov    %edi,%ebx
  401f11:	83 3d 10 36 20 00 00 	cmpl   $0x0,0x203610(%rip)        # 605528 <is_checker>
  401f18:	74 6b                	je     401f85 <validate+0x77>
  401f1a:	39 3d fc 35 20 00    	cmp    %edi,0x2035fc(%rip)        # 60551c <vlevel>
  401f20:	74 14                	je     401f36 <validate+0x28>
  401f22:	bf a2 35 40 00       	mov    $0x4035a2,%edi
  401f27:	e8 c4 ed ff ff       	callq  400cf0 <puts@plt>
  401f2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f31:	e8 5e fd ff ff       	callq  401c94 <check_fail>
  401f36:	8b 15 dc 35 20 00    	mov    0x2035dc(%rip),%edx        # 605518 <check_level>
  401f3c:	39 d7                	cmp    %edx,%edi
  401f3e:	74 20                	je     401f60 <validate+0x52>
  401f40:	89 f9                	mov    %edi,%ecx
  401f42:	be e0 36 40 00       	mov    $0x4036e0,%esi
  401f47:	bf 01 00 00 00       	mov    $0x1,%edi
  401f4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f51:	e8 ca ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f56:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5b:	e8 34 fd ff ff       	callq  401c94 <check_fail>
  401f60:	0f be 15 e1 41 20 00 	movsbl 0x2041e1(%rip),%edx        # 606148 <target_prefix>
  401f67:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401f6d:	89 f9                	mov    %edi,%ecx
  401f6f:	be c0 35 40 00       	mov    $0x4035c0,%esi
  401f74:	bf 01 00 00 00       	mov    $0x1,%edi
  401f79:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7e:	e8 9d ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f83:	eb 49                	jmp    401fce <validate+0xc0>
  401f85:	3b 3d 91 35 20 00    	cmp    0x203591(%rip),%edi        # 60551c <vlevel>
  401f8b:	74 18                	je     401fa5 <validate+0x97>
  401f8d:	bf a2 35 40 00       	mov    $0x4035a2,%edi
  401f92:	e8 59 ed ff ff       	callq  400cf0 <puts@plt>
  401f97:	89 de                	mov    %ebx,%esi
  401f99:	bf 00 00 00 00       	mov    $0x0,%edi
  401f9e:	e8 78 fd ff ff       	callq  401d1b <notify_server>
  401fa3:	eb 29                	jmp    401fce <validate+0xc0>
  401fa5:	0f be 0d 9c 41 20 00 	movsbl 0x20419c(%rip),%ecx        # 606148 <target_prefix>
  401fac:	89 fa                	mov    %edi,%edx
  401fae:	be 08 37 40 00       	mov    $0x403708,%esi
  401fb3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fbd:	e8 5e ee ff ff       	callq  400e20 <__printf_chk@plt>
  401fc2:	89 de                	mov    %ebx,%esi
  401fc4:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc9:	e8 4d fd ff ff       	callq  401d1b <notify_server>
  401fce:	5b                   	pop    %rbx
  401fcf:	c3                   	retq   

0000000000401fd0 <fail>:
  401fd0:	48 83 ec 08          	sub    $0x8,%rsp
  401fd4:	83 3d 4d 35 20 00 00 	cmpl   $0x0,0x20354d(%rip)        # 605528 <is_checker>
  401fdb:	74 0a                	je     401fe7 <fail+0x17>
  401fdd:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe2:	e8 ad fc ff ff       	callq  401c94 <check_fail>
  401fe7:	89 fe                	mov    %edi,%esi
  401fe9:	bf 00 00 00 00       	mov    $0x0,%edi
  401fee:	e8 28 fd ff ff       	callq  401d1b <notify_server>
  401ff3:	48 83 c4 08          	add    $0x8,%rsp
  401ff7:	c3                   	retq   

0000000000401ff8 <bushandler>:
  401ff8:	48 83 ec 08          	sub    $0x8,%rsp
  401ffc:	83 3d 25 35 20 00 00 	cmpl   $0x0,0x203525(%rip)        # 605528 <is_checker>
  402003:	74 14                	je     402019 <bushandler+0x21>
  402005:	bf d5 35 40 00       	mov    $0x4035d5,%edi
  40200a:	e8 e1 ec ff ff       	callq  400cf0 <puts@plt>
  40200f:	b8 00 00 00 00       	mov    $0x0,%eax
  402014:	e8 7b fc ff ff       	callq  401c94 <check_fail>
  402019:	bf 40 37 40 00       	mov    $0x403740,%edi
  40201e:	e8 cd ec ff ff       	callq  400cf0 <puts@plt>
  402023:	bf df 35 40 00       	mov    $0x4035df,%edi
  402028:	e8 c3 ec ff ff       	callq  400cf0 <puts@plt>
  40202d:	be 00 00 00 00       	mov    $0x0,%esi
  402032:	bf 00 00 00 00       	mov    $0x0,%edi
  402037:	e8 df fc ff ff       	callq  401d1b <notify_server>
  40203c:	bf 01 00 00 00       	mov    $0x1,%edi
  402041:	e8 2a ee ff ff       	callq  400e70 <exit@plt>

0000000000402046 <seghandler>:
  402046:	48 83 ec 08          	sub    $0x8,%rsp
  40204a:	83 3d d7 34 20 00 00 	cmpl   $0x0,0x2034d7(%rip)        # 605528 <is_checker>
  402051:	74 14                	je     402067 <seghandler+0x21>
  402053:	bf f5 35 40 00       	mov    $0x4035f5,%edi
  402058:	e8 93 ec ff ff       	callq  400cf0 <puts@plt>
  40205d:	b8 00 00 00 00       	mov    $0x0,%eax
  402062:	e8 2d fc ff ff       	callq  401c94 <check_fail>
  402067:	bf 60 37 40 00       	mov    $0x403760,%edi
  40206c:	e8 7f ec ff ff       	callq  400cf0 <puts@plt>
  402071:	bf df 35 40 00       	mov    $0x4035df,%edi
  402076:	e8 75 ec ff ff       	callq  400cf0 <puts@plt>
  40207b:	be 00 00 00 00       	mov    $0x0,%esi
  402080:	bf 00 00 00 00       	mov    $0x0,%edi
  402085:	e8 91 fc ff ff       	callq  401d1b <notify_server>
  40208a:	bf 01 00 00 00       	mov    $0x1,%edi
  40208f:	e8 dc ed ff ff       	callq  400e70 <exit@plt>

0000000000402094 <illegalhandler>:
  402094:	48 83 ec 08          	sub    $0x8,%rsp
  402098:	83 3d 89 34 20 00 00 	cmpl   $0x0,0x203489(%rip)        # 605528 <is_checker>
  40209f:	74 14                	je     4020b5 <illegalhandler+0x21>
  4020a1:	bf 08 36 40 00       	mov    $0x403608,%edi
  4020a6:	e8 45 ec ff ff       	callq  400cf0 <puts@plt>
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 df fb ff ff       	callq  401c94 <check_fail>
  4020b5:	bf 88 37 40 00       	mov    $0x403788,%edi
  4020ba:	e8 31 ec ff ff       	callq  400cf0 <puts@plt>
  4020bf:	bf df 35 40 00       	mov    $0x4035df,%edi
  4020c4:	e8 27 ec ff ff       	callq  400cf0 <puts@plt>
  4020c9:	be 00 00 00 00       	mov    $0x0,%esi
  4020ce:	bf 00 00 00 00       	mov    $0x0,%edi
  4020d3:	e8 43 fc ff ff       	callq  401d1b <notify_server>
  4020d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4020dd:	e8 8e ed ff ff       	callq  400e70 <exit@plt>

00000000004020e2 <sigalrmhandler>:
  4020e2:	48 83 ec 08          	sub    $0x8,%rsp
  4020e6:	83 3d 3b 34 20 00 00 	cmpl   $0x0,0x20343b(%rip)        # 605528 <is_checker>
  4020ed:	74 14                	je     402103 <sigalrmhandler+0x21>
  4020ef:	bf 1c 36 40 00       	mov    $0x40361c,%edi
  4020f4:	e8 f7 eb ff ff       	callq  400cf0 <puts@plt>
  4020f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fe:	e8 91 fb ff ff       	callq  401c94 <check_fail>
  402103:	ba 05 00 00 00       	mov    $0x5,%edx
  402108:	be b8 37 40 00       	mov    $0x4037b8,%esi
  40210d:	bf 01 00 00 00       	mov    $0x1,%edi
  402112:	b8 00 00 00 00       	mov    $0x0,%eax
  402117:	e8 04 ed ff ff       	callq  400e20 <__printf_chk@plt>
  40211c:	be 00 00 00 00       	mov    $0x0,%esi
  402121:	bf 00 00 00 00       	mov    $0x0,%edi
  402126:	e8 f0 fb ff ff       	callq  401d1b <notify_server>
  40212b:	bf 01 00 00 00       	mov    $0x1,%edi
  402130:	e8 3b ed ff ff       	callq  400e70 <exit@plt>

0000000000402135 <launch>:
  402135:	55                   	push   %rbp
  402136:	48 89 e5             	mov    %rsp,%rbp
  402139:	48 83 ec 10          	sub    $0x10,%rsp
  40213d:	48 89 fa             	mov    %rdi,%rdx
  402140:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402147:	00 00 
  402149:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40214d:	31 c0                	xor    %eax,%eax
  40214f:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402153:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402157:	48 29 c4             	sub    %rax,%rsp
  40215a:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40215f:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402163:	be f4 00 00 00       	mov    $0xf4,%esi
  402168:	e8 c3 eb ff ff       	callq  400d30 <memset@plt>
  40216d:	48 8b 05 4c 33 20 00 	mov    0x20334c(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402174:	48 39 05 95 33 20 00 	cmp    %rax,0x203395(%rip)        # 605510 <infile>
  40217b:	75 14                	jne    402191 <launch+0x5c>
  40217d:	be 24 36 40 00       	mov    $0x403624,%esi
  402182:	bf 01 00 00 00       	mov    $0x1,%edi
  402187:	b8 00 00 00 00       	mov    $0x0,%eax
  40218c:	e8 8f ec ff ff       	callq  400e20 <__printf_chk@plt>
  402191:	c7 05 81 33 20 00 00 	movl   $0x0,0x203381(%rip)        # 60551c <vlevel>
  402198:	00 00 00 
  40219b:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a0:	e8 3b f9 ff ff       	callq  401ae0 <test>
  4021a5:	83 3d 7c 33 20 00 00 	cmpl   $0x0,0x20337c(%rip)        # 605528 <is_checker>
  4021ac:	74 14                	je     4021c2 <launch+0x8d>
  4021ae:	bf 31 36 40 00       	mov    $0x403631,%edi
  4021b3:	e8 38 eb ff ff       	callq  400cf0 <puts@plt>
  4021b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021bd:	e8 d2 fa ff ff       	callq  401c94 <check_fail>
  4021c2:	bf 3c 36 40 00       	mov    $0x40363c,%edi
  4021c7:	e8 24 eb ff ff       	callq  400cf0 <puts@plt>
  4021cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021d0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4021d7:	00 00 
  4021d9:	74 05                	je     4021e0 <launch+0xab>
  4021db:	e8 30 eb ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4021e0:	c9                   	leaveq 
  4021e1:	c3                   	retq   

00000000004021e2 <stable_launch>:
  4021e2:	53                   	push   %rbx
  4021e3:	48 89 3d 1e 33 20 00 	mov    %rdi,0x20331e(%rip)        # 605508 <global_offset>
  4021ea:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4021f0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4021f6:	b9 32 01 00 00       	mov    $0x132,%ecx
  4021fb:	ba 07 00 00 00       	mov    $0x7,%edx
  402200:	be 00 00 10 00       	mov    $0x100000,%esi
  402205:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40220a:	e8 11 eb ff ff       	callq  400d20 <mmap@plt>
  40220f:	48 89 c3             	mov    %rax,%rbx
  402212:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402218:	74 37                	je     402251 <stable_launch+0x6f>
  40221a:	be 00 00 10 00       	mov    $0x100000,%esi
  40221f:	48 89 c7             	mov    %rax,%rdi
  402222:	e8 e9 eb ff ff       	callq  400e10 <munmap@plt>
  402227:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40222c:	ba f0 37 40 00       	mov    $0x4037f0,%edx
  402231:	be 01 00 00 00       	mov    $0x1,%esi
  402236:	48 8b 3d a3 32 20 00 	mov    0x2032a3(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40223d:	b8 00 00 00 00       	mov    $0x0,%eax
  402242:	e8 49 ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  402247:	bf 01 00 00 00       	mov    $0x1,%edi
  40224c:	e8 1f ec ff ff       	callq  400e70 <exit@plt>
  402251:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402258:	48 89 15 f1 3e 20 00 	mov    %rdx,0x203ef1(%rip)        # 606150 <stack_top>
  40225f:	48 89 e0             	mov    %rsp,%rax
  402262:	48 89 d4             	mov    %rdx,%rsp
  402265:	48 89 c2             	mov    %rax,%rdx
  402268:	48 89 15 91 32 20 00 	mov    %rdx,0x203291(%rip)        # 605500 <global_save_stack>
  40226f:	48 8b 3d 92 32 20 00 	mov    0x203292(%rip),%rdi        # 605508 <global_offset>
  402276:	e8 ba fe ff ff       	callq  402135 <launch>
  40227b:	48 8b 05 7e 32 20 00 	mov    0x20327e(%rip),%rax        # 605500 <global_save_stack>
  402282:	48 89 c4             	mov    %rax,%rsp
  402285:	be 00 00 10 00       	mov    $0x100000,%esi
  40228a:	48 89 df             	mov    %rbx,%rdi
  40228d:	e8 7e eb ff ff       	callq  400e10 <munmap@plt>
  402292:	5b                   	pop    %rbx
  402293:	c3                   	retq   

0000000000402294 <rio_readinitb>:
  402294:	89 37                	mov    %esi,(%rdi)
  402296:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40229d:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4022a1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4022a5:	c3                   	retq   

00000000004022a6 <sigalrm_handler>:
  4022a6:	48 83 ec 08          	sub    $0x8,%rsp
  4022aa:	b9 00 00 00 00       	mov    $0x0,%ecx
  4022af:	ba 30 38 40 00       	mov    $0x403830,%edx
  4022b4:	be 01 00 00 00       	mov    $0x1,%esi
  4022b9:	48 8b 3d 20 32 20 00 	mov    0x203220(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4022c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c5:	e8 c6 eb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4022ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4022cf:	e8 9c eb ff ff       	callq  400e70 <exit@plt>

00000000004022d4 <rio_writen>:
  4022d4:	41 55                	push   %r13
  4022d6:	41 54                	push   %r12
  4022d8:	55                   	push   %rbp
  4022d9:	53                   	push   %rbx
  4022da:	48 83 ec 08          	sub    $0x8,%rsp
  4022de:	41 89 fc             	mov    %edi,%r12d
  4022e1:	48 89 f5             	mov    %rsi,%rbp
  4022e4:	49 89 d5             	mov    %rdx,%r13
  4022e7:	48 89 d3             	mov    %rdx,%rbx
  4022ea:	eb 28                	jmp    402314 <rio_writen+0x40>
  4022ec:	48 89 da             	mov    %rbx,%rdx
  4022ef:	48 89 ee             	mov    %rbp,%rsi
  4022f2:	44 89 e7             	mov    %r12d,%edi
  4022f5:	e8 06 ea ff ff       	callq  400d00 <write@plt>
  4022fa:	48 85 c0             	test   %rax,%rax
  4022fd:	7f 0f                	jg     40230e <rio_writen+0x3a>
  4022ff:	e8 ac e9 ff ff       	callq  400cb0 <__errno_location@plt>
  402304:	83 38 04             	cmpl   $0x4,(%rax)
  402307:	75 15                	jne    40231e <rio_writen+0x4a>
  402309:	b8 00 00 00 00       	mov    $0x0,%eax
  40230e:	48 29 c3             	sub    %rax,%rbx
  402311:	48 01 c5             	add    %rax,%rbp
  402314:	48 85 db             	test   %rbx,%rbx
  402317:	75 d3                	jne    4022ec <rio_writen+0x18>
  402319:	4c 89 e8             	mov    %r13,%rax
  40231c:	eb 07                	jmp    402325 <rio_writen+0x51>
  40231e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402325:	48 83 c4 08          	add    $0x8,%rsp
  402329:	5b                   	pop    %rbx
  40232a:	5d                   	pop    %rbp
  40232b:	41 5c                	pop    %r12
  40232d:	41 5d                	pop    %r13
  40232f:	c3                   	retq   

0000000000402330 <rio_read>:
  402330:	41 55                	push   %r13
  402332:	41 54                	push   %r12
  402334:	55                   	push   %rbp
  402335:	53                   	push   %rbx
  402336:	48 83 ec 08          	sub    $0x8,%rsp
  40233a:	48 89 fb             	mov    %rdi,%rbx
  40233d:	49 89 f5             	mov    %rsi,%r13
  402340:	49 89 d4             	mov    %rdx,%r12
  402343:	eb 2e                	jmp    402373 <rio_read+0x43>
  402345:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402349:	8b 3b                	mov    (%rbx),%edi
  40234b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402350:	48 89 ee             	mov    %rbp,%rsi
  402353:	e8 08 ea ff ff       	callq  400d60 <read@plt>
  402358:	89 43 04             	mov    %eax,0x4(%rbx)
  40235b:	85 c0                	test   %eax,%eax
  40235d:	79 0c                	jns    40236b <rio_read+0x3b>
  40235f:	e8 4c e9 ff ff       	callq  400cb0 <__errno_location@plt>
  402364:	83 38 04             	cmpl   $0x4,(%rax)
  402367:	74 0a                	je     402373 <rio_read+0x43>
  402369:	eb 37                	jmp    4023a2 <rio_read+0x72>
  40236b:	85 c0                	test   %eax,%eax
  40236d:	74 3c                	je     4023ab <rio_read+0x7b>
  40236f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402373:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402376:	85 ed                	test   %ebp,%ebp
  402378:	7e cb                	jle    402345 <rio_read+0x15>
  40237a:	89 e8                	mov    %ebp,%eax
  40237c:	49 39 c4             	cmp    %rax,%r12
  40237f:	77 03                	ja     402384 <rio_read+0x54>
  402381:	44 89 e5             	mov    %r12d,%ebp
  402384:	4c 63 e5             	movslq %ebp,%r12
  402387:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40238b:	4c 89 e2             	mov    %r12,%rdx
  40238e:	4c 89 ef             	mov    %r13,%rdi
  402391:	e8 2a ea ff ff       	callq  400dc0 <memcpy@plt>
  402396:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40239a:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40239d:	4c 89 e0             	mov    %r12,%rax
  4023a0:	eb 0e                	jmp    4023b0 <rio_read+0x80>
  4023a2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023a9:	eb 05                	jmp    4023b0 <rio_read+0x80>
  4023ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b0:	48 83 c4 08          	add    $0x8,%rsp
  4023b4:	5b                   	pop    %rbx
  4023b5:	5d                   	pop    %rbp
  4023b6:	41 5c                	pop    %r12
  4023b8:	41 5d                	pop    %r13
  4023ba:	c3                   	retq   

00000000004023bb <rio_readlineb>:
  4023bb:	41 55                	push   %r13
  4023bd:	41 54                	push   %r12
  4023bf:	55                   	push   %rbp
  4023c0:	53                   	push   %rbx
  4023c1:	48 83 ec 18          	sub    $0x18,%rsp
  4023c5:	49 89 fd             	mov    %rdi,%r13
  4023c8:	48 89 f5             	mov    %rsi,%rbp
  4023cb:	49 89 d4             	mov    %rdx,%r12
  4023ce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023d5:	00 00 
  4023d7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4023dc:	31 c0                	xor    %eax,%eax
  4023de:	bb 01 00 00 00       	mov    $0x1,%ebx
  4023e3:	eb 3f                	jmp    402424 <rio_readlineb+0x69>
  4023e5:	ba 01 00 00 00       	mov    $0x1,%edx
  4023ea:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4023ef:	4c 89 ef             	mov    %r13,%rdi
  4023f2:	e8 39 ff ff ff       	callq  402330 <rio_read>
  4023f7:	83 f8 01             	cmp    $0x1,%eax
  4023fa:	75 15                	jne    402411 <rio_readlineb+0x56>
  4023fc:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402400:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402405:	88 55 00             	mov    %dl,0x0(%rbp)
  402408:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  40240d:	75 0e                	jne    40241d <rio_readlineb+0x62>
  40240f:	eb 1a                	jmp    40242b <rio_readlineb+0x70>
  402411:	85 c0                	test   %eax,%eax
  402413:	75 22                	jne    402437 <rio_readlineb+0x7c>
  402415:	48 83 fb 01          	cmp    $0x1,%rbx
  402419:	75 13                	jne    40242e <rio_readlineb+0x73>
  40241b:	eb 23                	jmp    402440 <rio_readlineb+0x85>
  40241d:	48 83 c3 01          	add    $0x1,%rbx
  402421:	48 89 c5             	mov    %rax,%rbp
  402424:	4c 39 e3             	cmp    %r12,%rbx
  402427:	72 bc                	jb     4023e5 <rio_readlineb+0x2a>
  402429:	eb 03                	jmp    40242e <rio_readlineb+0x73>
  40242b:	48 89 c5             	mov    %rax,%rbp
  40242e:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402432:	48 89 d8             	mov    %rbx,%rax
  402435:	eb 0e                	jmp    402445 <rio_readlineb+0x8a>
  402437:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40243e:	eb 05                	jmp    402445 <rio_readlineb+0x8a>
  402440:	b8 00 00 00 00       	mov    $0x0,%eax
  402445:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40244a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402451:	00 00 
  402453:	74 05                	je     40245a <rio_readlineb+0x9f>
  402455:	e8 b6 e8 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  40245a:	48 83 c4 18          	add    $0x18,%rsp
  40245e:	5b                   	pop    %rbx
  40245f:	5d                   	pop    %rbp
  402460:	41 5c                	pop    %r12
  402462:	41 5d                	pop    %r13
  402464:	c3                   	retq   

0000000000402465 <urlencode>:
  402465:	41 54                	push   %r12
  402467:	55                   	push   %rbp
  402468:	53                   	push   %rbx
  402469:	48 83 ec 10          	sub    $0x10,%rsp
  40246d:	48 89 fb             	mov    %rdi,%rbx
  402470:	48 89 f5             	mov    %rsi,%rbp
  402473:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40247a:	00 00 
  40247c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402481:	31 c0                	xor    %eax,%eax
  402483:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40248a:	f2 ae                	repnz scas %es:(%rdi),%al
  40248c:	48 f7 d1             	not    %rcx
  40248f:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402492:	e9 aa 00 00 00       	jmpq   402541 <urlencode+0xdc>
  402497:	44 0f b6 03          	movzbl (%rbx),%r8d
  40249b:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40249f:	0f 94 c2             	sete   %dl
  4024a2:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4024a6:	0f 94 c0             	sete   %al
  4024a9:	08 c2                	or     %al,%dl
  4024ab:	75 24                	jne    4024d1 <urlencode+0x6c>
  4024ad:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4024b1:	74 1e                	je     4024d1 <urlencode+0x6c>
  4024b3:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4024b7:	74 18                	je     4024d1 <urlencode+0x6c>
  4024b9:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4024bd:	3c 09                	cmp    $0x9,%al
  4024bf:	76 10                	jbe    4024d1 <urlencode+0x6c>
  4024c1:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4024c5:	3c 19                	cmp    $0x19,%al
  4024c7:	76 08                	jbe    4024d1 <urlencode+0x6c>
  4024c9:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4024cd:	3c 19                	cmp    $0x19,%al
  4024cf:	77 0a                	ja     4024db <urlencode+0x76>
  4024d1:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4024d5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024d9:	eb 5f                	jmp    40253a <urlencode+0xd5>
  4024db:	41 80 f8 20          	cmp    $0x20,%r8b
  4024df:	75 0a                	jne    4024eb <urlencode+0x86>
  4024e1:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4024e5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024e9:	eb 4f                	jmp    40253a <urlencode+0xd5>
  4024eb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4024ef:	3c 5f                	cmp    $0x5f,%al
  4024f1:	0f 96 c2             	setbe  %dl
  4024f4:	41 80 f8 09          	cmp    $0x9,%r8b
  4024f8:	0f 94 c0             	sete   %al
  4024fb:	08 c2                	or     %al,%dl
  4024fd:	74 50                	je     40254f <urlencode+0xea>
  4024ff:	45 0f b6 c0          	movzbl %r8b,%r8d
  402503:	b9 e8 38 40 00       	mov    $0x4038e8,%ecx
  402508:	ba 08 00 00 00       	mov    $0x8,%edx
  40250d:	be 01 00 00 00       	mov    $0x1,%esi
  402512:	48 89 e7             	mov    %rsp,%rdi
  402515:	b8 00 00 00 00       	mov    $0x0,%eax
  40251a:	e8 81 e9 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  40251f:	0f b6 04 24          	movzbl (%rsp),%eax
  402523:	88 45 00             	mov    %al,0x0(%rbp)
  402526:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40252b:	88 45 01             	mov    %al,0x1(%rbp)
  40252e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402533:	88 45 02             	mov    %al,0x2(%rbp)
  402536:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40253a:	48 83 c3 01          	add    $0x1,%rbx
  40253e:	44 89 e0             	mov    %r12d,%eax
  402541:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402545:	85 c0                	test   %eax,%eax
  402547:	0f 85 4a ff ff ff    	jne    402497 <urlencode+0x32>
  40254d:	eb 05                	jmp    402554 <urlencode+0xef>
  40254f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402554:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402559:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402560:	00 00 
  402562:	74 05                	je     402569 <urlencode+0x104>
  402564:	e8 a7 e7 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402569:	48 83 c4 10          	add    $0x10,%rsp
  40256d:	5b                   	pop    %rbx
  40256e:	5d                   	pop    %rbp
  40256f:	41 5c                	pop    %r12
  402571:	c3                   	retq   

0000000000402572 <submitr>:
  402572:	41 57                	push   %r15
  402574:	41 56                	push   %r14
  402576:	41 55                	push   %r13
  402578:	41 54                	push   %r12
  40257a:	55                   	push   %rbp
  40257b:	53                   	push   %rbx
  40257c:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402583:	49 89 fd             	mov    %rdi,%r13
  402586:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40258a:	48 89 14 24          	mov    %rdx,(%rsp)
  40258e:	49 89 ce             	mov    %rcx,%r14
  402591:	4d 89 c7             	mov    %r8,%r15
  402594:	4d 89 cc             	mov    %r9,%r12
  402597:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  40259e:	00 
  40259f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025a6:	00 00 
  4025a8:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4025af:	00 
  4025b0:	31 c0                	xor    %eax,%eax
  4025b2:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4025b9:	00 
  4025ba:	ba 00 00 00 00       	mov    $0x0,%edx
  4025bf:	be 01 00 00 00       	mov    $0x1,%esi
  4025c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4025c9:	e8 e2 e8 ff ff       	callq  400eb0 <socket@plt>
  4025ce:	85 c0                	test   %eax,%eax
  4025d0:	79 4e                	jns    402620 <submitr+0xae>
  4025d2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025d9:	3a 20 43 
  4025dc:	48 89 03             	mov    %rax,(%rbx)
  4025df:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025e6:	20 75 6e 
  4025e9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025ed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025f4:	74 6f 20 
  4025f7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025fb:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402602:	65 20 73 
  402605:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402609:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402610:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402616:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40261b:	e9 b3 06 00 00       	jmpq   402cd3 <submitr+0x761>
  402620:	89 c5                	mov    %eax,%ebp
  402622:	4c 89 ef             	mov    %r13,%rdi
  402625:	e8 66 e7 ff ff       	callq  400d90 <gethostbyname@plt>
  40262a:	48 85 c0             	test   %rax,%rax
  40262d:	75 75                	jne    4026a4 <submitr+0x132>
  40262f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402636:	3a 20 44 
  402639:	48 89 03             	mov    %rax,(%rbx)
  40263c:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402643:	20 75 6e 
  402646:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40264a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402651:	74 6f 20 
  402654:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402658:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  40265f:	76 65 20 
  402662:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402666:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40266d:	61 62 20 
  402670:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402674:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40267b:	72 20 61 
  40267e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402682:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  402689:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  40268f:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  402693:	89 ef                	mov    %ebp,%edi
  402695:	e8 b6 e6 ff ff       	callq  400d50 <close@plt>
  40269a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40269f:	e9 2f 06 00 00       	jmpq   402cd3 <submitr+0x761>
  4026a4:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4026ab:	00 00 
  4026ad:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4026b4:	00 00 
  4026b6:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  4026bd:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026c1:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026c5:	48 8b 30             	mov    (%rax),%rsi
  4026c8:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4026cd:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4026d2:	e8 c9 e6 ff ff       	callq  400da0 <__memmove_chk@plt>
  4026d7:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  4026dc:	66 c1 c8 08          	ror    $0x8,%ax
  4026e0:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4026e5:	ba 10 00 00 00       	mov    $0x10,%edx
  4026ea:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4026ef:	89 ef                	mov    %ebp,%edi
  4026f1:	e8 8a e7 ff ff       	callq  400e80 <connect@plt>
  4026f6:	85 c0                	test   %eax,%eax
  4026f8:	79 67                	jns    402761 <submitr+0x1ef>
  4026fa:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402701:	3a 20 55 
  402704:	48 89 03             	mov    %rax,(%rbx)
  402707:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40270e:	20 74 6f 
  402711:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402715:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40271c:	65 63 74 
  40271f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402723:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40272a:	68 65 20 
  40272d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402731:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402738:	61 62 20 
  40273b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40273f:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  402746:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  40274c:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402750:	89 ef                	mov    %ebp,%edi
  402752:	e8 f9 e5 ff ff       	callq  400d50 <close@plt>
  402757:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40275c:	e9 72 05 00 00       	jmpq   402cd3 <submitr+0x761>
  402761:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402768:	b8 00 00 00 00       	mov    $0x0,%eax
  40276d:	48 89 f1             	mov    %rsi,%rcx
  402770:	4c 89 e7             	mov    %r12,%rdi
  402773:	f2 ae                	repnz scas %es:(%rdi),%al
  402775:	48 f7 d1             	not    %rcx
  402778:	48 89 ca             	mov    %rcx,%rdx
  40277b:	48 89 f1             	mov    %rsi,%rcx
  40277e:	48 8b 3c 24          	mov    (%rsp),%rdi
  402782:	f2 ae                	repnz scas %es:(%rdi),%al
  402784:	48 f7 d1             	not    %rcx
  402787:	49 89 c8             	mov    %rcx,%r8
  40278a:	48 89 f1             	mov    %rsi,%rcx
  40278d:	4c 89 f7             	mov    %r14,%rdi
  402790:	f2 ae                	repnz scas %es:(%rdi),%al
  402792:	48 f7 d1             	not    %rcx
  402795:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40279a:	48 89 f1             	mov    %rsi,%rcx
  40279d:	4c 89 ff             	mov    %r15,%rdi
  4027a0:	f2 ae                	repnz scas %es:(%rdi),%al
  4027a2:	48 89 c8             	mov    %rcx,%rax
  4027a5:	48 f7 d0             	not    %rax
  4027a8:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4027ad:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4027b2:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4027b9:	00 
  4027ba:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4027c0:	76 72                	jbe    402834 <submitr+0x2c2>
  4027c2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027c9:	3a 20 52 
  4027cc:	48 89 03             	mov    %rax,(%rbx)
  4027cf:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4027d6:	20 73 74 
  4027d9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027dd:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4027e4:	74 6f 6f 
  4027e7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027eb:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4027f2:	65 2e 20 
  4027f5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027f9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402800:	61 73 65 
  402803:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402807:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  40280e:	49 54 52 
  402811:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402815:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40281c:	55 46 00 
  40281f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402823:	89 ef                	mov    %ebp,%edi
  402825:	e8 26 e5 ff ff       	callq  400d50 <close@plt>
  40282a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40282f:	e9 9f 04 00 00       	jmpq   402cd3 <submitr+0x761>
  402834:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40283b:	00 
  40283c:	b9 00 04 00 00       	mov    $0x400,%ecx
  402841:	b8 00 00 00 00       	mov    $0x0,%eax
  402846:	48 89 f7             	mov    %rsi,%rdi
  402849:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40284c:	4c 89 e7             	mov    %r12,%rdi
  40284f:	e8 11 fc ff ff       	callq  402465 <urlencode>
  402854:	85 c0                	test   %eax,%eax
  402856:	0f 89 8a 00 00 00    	jns    4028e6 <submitr+0x374>
  40285c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402863:	3a 20 52 
  402866:	48 89 03             	mov    %rax,(%rbx)
  402869:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402870:	20 73 74 
  402873:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402877:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40287e:	63 6f 6e 
  402881:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402885:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40288c:	20 61 6e 
  40288f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402893:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40289a:	67 61 6c 
  40289d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028a1:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4028a8:	6e 70 72 
  4028ab:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028af:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4028b6:	6c 65 20 
  4028b9:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028bd:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4028c4:	63 74 65 
  4028c7:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4028cb:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4028d1:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4028d5:	89 ef                	mov    %ebp,%edi
  4028d7:	e8 74 e4 ff ff       	callq  400d50 <close@plt>
  4028dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028e1:	e9 ed 03 00 00       	jmpq   402cd3 <submitr+0x761>
  4028e6:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  4028ed:	00 
  4028ee:	48 83 ec 08          	sub    $0x8,%rsp
  4028f2:	41 55                	push   %r13
  4028f4:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  4028fb:	00 
  4028fc:	50                   	push   %rax
  4028fd:	41 56                	push   %r14
  4028ff:	4d 89 f9             	mov    %r15,%r9
  402902:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  402907:	b9 58 38 40 00       	mov    $0x403858,%ecx
  40290c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402911:	be 01 00 00 00       	mov    $0x1,%esi
  402916:	4c 89 e7             	mov    %r12,%rdi
  402919:	b8 00 00 00 00       	mov    $0x0,%eax
  40291e:	e8 7d e5 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402923:	b8 00 00 00 00       	mov    $0x0,%eax
  402928:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40292f:	4c 89 e7             	mov    %r12,%rdi
  402932:	f2 ae                	repnz scas %es:(%rdi),%al
  402934:	48 f7 d1             	not    %rcx
  402937:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40293b:	48 83 c4 20          	add    $0x20,%rsp
  40293f:	4c 89 e6             	mov    %r12,%rsi
  402942:	89 ef                	mov    %ebp,%edi
  402944:	e8 8b f9 ff ff       	callq  4022d4 <rio_writen>
  402949:	48 85 c0             	test   %rax,%rax
  40294c:	79 6b                	jns    4029b9 <submitr+0x447>
  40294e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402955:	3a 20 43 
  402958:	48 89 03             	mov    %rax,(%rbx)
  40295b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402962:	20 75 6e 
  402965:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402969:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402970:	74 6f 20 
  402973:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402977:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40297e:	20 74 6f 
  402981:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402985:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40298c:	41 75 74 
  40298f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402993:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  40299a:	73 65 72 
  40299d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029a1:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  4029a8:	89 ef                	mov    %ebp,%edi
  4029aa:	e8 a1 e3 ff ff       	callq  400d50 <close@plt>
  4029af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029b4:	e9 1a 03 00 00       	jmpq   402cd3 <submitr+0x761>
  4029b9:	89 ee                	mov    %ebp,%esi
  4029bb:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029c0:	e8 cf f8 ff ff       	callq  402294 <rio_readinitb>
  4029c5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029ca:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029d1:	00 
  4029d2:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029d7:	e8 df f9 ff ff       	callq  4023bb <rio_readlineb>
  4029dc:	48 85 c0             	test   %rax,%rax
  4029df:	7f 7f                	jg     402a60 <submitr+0x4ee>
  4029e1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029e8:	3a 20 43 
  4029eb:	48 89 03             	mov    %rax,(%rbx)
  4029ee:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029f5:	20 75 6e 
  4029f8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029fc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a03:	74 6f 20 
  402a06:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a0a:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402a11:	66 69 72 
  402a14:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a18:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402a1f:	61 64 65 
  402a22:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a26:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  402a2d:	6d 20 41 
  402a30:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a34:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402a3b:	62 20 73 
  402a3e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a42:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  402a49:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  402a4f:	89 ef                	mov    %ebp,%edi
  402a51:	e8 fa e2 ff ff       	callq  400d50 <close@plt>
  402a56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a5b:	e9 73 02 00 00       	jmpq   402cd3 <submitr+0x761>
  402a60:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  402a67:	00 
  402a68:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402a6d:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402a74:	00 
  402a75:	be ef 38 40 00       	mov    $0x4038ef,%esi
  402a7a:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402a81:	00 
  402a82:	b8 00 00 00 00       	mov    $0x0,%eax
  402a87:	e8 74 e3 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  402a8c:	e9 92 00 00 00       	jmpq   402b23 <submitr+0x5b1>
  402a91:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a96:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a9d:	00 
  402a9e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402aa3:	e8 13 f9 ff ff       	callq  4023bb <rio_readlineb>
  402aa8:	48 85 c0             	test   %rax,%rax
  402aab:	7f 76                	jg     402b23 <submitr+0x5b1>
  402aad:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ab4:	3a 20 43 
  402ab7:	48 89 03             	mov    %rax,(%rbx)
  402aba:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402ac1:	20 75 6e 
  402ac4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ac8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402acf:	74 6f 20 
  402ad2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ad6:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402add:	68 65 61 
  402ae0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ae4:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402aeb:	66 72 6f 
  402aee:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402af2:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  402af9:	6f 6c 61 
  402afc:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402b00:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402b07:	76 65 72 
  402b0a:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402b0e:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  402b12:	89 ef                	mov    %ebp,%edi
  402b14:	e8 37 e2 ff ff       	callq  400d50 <close@plt>
  402b19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b1e:	e9 b0 01 00 00       	jmpq   402cd3 <submitr+0x761>
  402b23:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402b2a:	00 
  402b2b:	b8 0d 00 00 00       	mov    $0xd,%eax
  402b30:	29 d0                	sub    %edx,%eax
  402b32:	75 1b                	jne    402b4f <submitr+0x5dd>
  402b34:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402b3b:	00 
  402b3c:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b41:	29 d0                	sub    %edx,%eax
  402b43:	75 0a                	jne    402b4f <submitr+0x5dd>
  402b45:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402b4c:	00 
  402b4d:	f7 d8                	neg    %eax
  402b4f:	85 c0                	test   %eax,%eax
  402b51:	0f 85 3a ff ff ff    	jne    402a91 <submitr+0x51f>
  402b57:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b5c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b63:	00 
  402b64:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402b69:	e8 4d f8 ff ff       	callq  4023bb <rio_readlineb>
  402b6e:	48 85 c0             	test   %rax,%rax
  402b71:	0f 8f 80 00 00 00    	jg     402bf7 <submitr+0x685>
  402b77:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b7e:	3a 20 43 
  402b81:	48 89 03             	mov    %rax,(%rbx)
  402b84:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b8b:	20 75 6e 
  402b8e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402b92:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b99:	74 6f 20 
  402b9c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ba0:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402ba7:	73 74 61 
  402baa:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402bae:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402bb5:	65 73 73 
  402bb8:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402bbc:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402bc3:	72 6f 6d 
  402bc6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402bca:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402bd1:	6c 61 62 
  402bd4:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402bd8:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402bdf:	65 72 00 
  402be2:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402be6:	89 ef                	mov    %ebp,%edi
  402be8:	e8 63 e1 ff ff       	callq  400d50 <close@plt>
  402bed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf2:	e9 dc 00 00 00       	jmpq   402cd3 <submitr+0x761>
  402bf7:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402bfc:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402c03:	74 37                	je     402c3c <submitr+0x6ca>
  402c05:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402c0c:	00 
  402c0d:	b9 b8 38 40 00       	mov    $0x4038b8,%ecx
  402c12:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402c19:	be 01 00 00 00       	mov    $0x1,%esi
  402c1e:	48 89 df             	mov    %rbx,%rdi
  402c21:	b8 00 00 00 00       	mov    $0x0,%eax
  402c26:	e8 75 e2 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402c2b:	89 ef                	mov    %ebp,%edi
  402c2d:	e8 1e e1 ff ff       	callq  400d50 <close@plt>
  402c32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c37:	e9 97 00 00 00       	jmpq   402cd3 <submitr+0x761>
  402c3c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402c43:	00 
  402c44:	48 89 df             	mov    %rbx,%rdi
  402c47:	e8 94 e0 ff ff       	callq  400ce0 <strcpy@plt>
  402c4c:	89 ef                	mov    %ebp,%edi
  402c4e:	e8 fd e0 ff ff       	callq  400d50 <close@plt>
  402c53:	0f b6 03             	movzbl (%rbx),%eax
  402c56:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402c5b:	29 c2                	sub    %eax,%edx
  402c5d:	75 22                	jne    402c81 <submitr+0x70f>
  402c5f:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402c63:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402c68:	29 c8                	sub    %ecx,%eax
  402c6a:	75 17                	jne    402c83 <submitr+0x711>
  402c6c:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402c70:	b8 0a 00 00 00       	mov    $0xa,%eax
  402c75:	29 c8                	sub    %ecx,%eax
  402c77:	75 0a                	jne    402c83 <submitr+0x711>
  402c79:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402c7d:	f7 d8                	neg    %eax
  402c7f:	eb 02                	jmp    402c83 <submitr+0x711>
  402c81:	89 d0                	mov    %edx,%eax
  402c83:	85 c0                	test   %eax,%eax
  402c85:	74 40                	je     402cc7 <submitr+0x755>
  402c87:	bf 00 39 40 00       	mov    $0x403900,%edi
  402c8c:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c91:	48 89 de             	mov    %rbx,%rsi
  402c94:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c96:	0f 97 c0             	seta   %al
  402c99:	0f 92 c1             	setb   %cl
  402c9c:	29 c8                	sub    %ecx,%eax
  402c9e:	0f be c0             	movsbl %al,%eax
  402ca1:	85 c0                	test   %eax,%eax
  402ca3:	74 2e                	je     402cd3 <submitr+0x761>
  402ca5:	85 d2                	test   %edx,%edx
  402ca7:	75 13                	jne    402cbc <submitr+0x74a>
  402ca9:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402cad:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402cb2:	29 c2                	sub    %eax,%edx
  402cb4:	75 06                	jne    402cbc <submitr+0x74a>
  402cb6:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402cba:	f7 da                	neg    %edx
  402cbc:	85 d2                	test   %edx,%edx
  402cbe:	75 0e                	jne    402cce <submitr+0x75c>
  402cc0:	b8 00 00 00 00       	mov    $0x0,%eax
  402cc5:	eb 0c                	jmp    402cd3 <submitr+0x761>
  402cc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402ccc:	eb 05                	jmp    402cd3 <submitr+0x761>
  402cce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cd3:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402cda:	00 
  402cdb:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ce2:	00 00 
  402ce4:	74 05                	je     402ceb <submitr+0x779>
  402ce6:	e8 25 e0 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402ceb:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402cf2:	5b                   	pop    %rbx
  402cf3:	5d                   	pop    %rbp
  402cf4:	41 5c                	pop    %r12
  402cf6:	41 5d                	pop    %r13
  402cf8:	41 5e                	pop    %r14
  402cfa:	41 5f                	pop    %r15
  402cfc:	c3                   	retq   

0000000000402cfd <init_timeout>:
  402cfd:	85 ff                	test   %edi,%edi
  402cff:	74 23                	je     402d24 <init_timeout+0x27>
  402d01:	53                   	push   %rbx
  402d02:	89 fb                	mov    %edi,%ebx
  402d04:	85 ff                	test   %edi,%edi
  402d06:	79 05                	jns    402d0d <init_timeout+0x10>
  402d08:	bb 00 00 00 00       	mov    $0x0,%ebx
  402d0d:	be a6 22 40 00       	mov    $0x4022a6,%esi
  402d12:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d17:	e8 64 e0 ff ff       	callq  400d80 <signal@plt>
  402d1c:	89 df                	mov    %ebx,%edi
  402d1e:	e8 1d e0 ff ff       	callq  400d40 <alarm@plt>
  402d23:	5b                   	pop    %rbx
  402d24:	f3 c3                	repz retq 

0000000000402d26 <init_driver>:
  402d26:	55                   	push   %rbp
  402d27:	53                   	push   %rbx
  402d28:	48 83 ec 28          	sub    $0x28,%rsp
  402d2c:	48 89 fd             	mov    %rdi,%rbp
  402d2f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d36:	00 00 
  402d38:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402d3d:	31 c0                	xor    %eax,%eax
  402d3f:	be 01 00 00 00       	mov    $0x1,%esi
  402d44:	bf 0d 00 00 00       	mov    $0xd,%edi
  402d49:	e8 32 e0 ff ff       	callq  400d80 <signal@plt>
  402d4e:	be 01 00 00 00       	mov    $0x1,%esi
  402d53:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d58:	e8 23 e0 ff ff       	callq  400d80 <signal@plt>
  402d5d:	be 01 00 00 00       	mov    $0x1,%esi
  402d62:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d67:	e8 14 e0 ff ff       	callq  400d80 <signal@plt>
  402d6c:	ba 00 00 00 00       	mov    $0x0,%edx
  402d71:	be 01 00 00 00       	mov    $0x1,%esi
  402d76:	bf 02 00 00 00       	mov    $0x2,%edi
  402d7b:	e8 30 e1 ff ff       	callq  400eb0 <socket@plt>
  402d80:	85 c0                	test   %eax,%eax
  402d82:	79 4f                	jns    402dd3 <init_driver+0xad>
  402d84:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d8b:	3a 20 43 
  402d8e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d92:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402d99:	20 75 6e 
  402d9c:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402da0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402da7:	74 6f 20 
  402daa:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402dae:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402db5:	65 20 73 
  402db8:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402dbc:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402dc3:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402dc9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dce:	e9 2a 01 00 00       	jmpq   402efd <init_driver+0x1d7>
  402dd3:	89 c3                	mov    %eax,%ebx
  402dd5:	bf 25 34 40 00       	mov    $0x403425,%edi
  402dda:	e8 b1 df ff ff       	callq  400d90 <gethostbyname@plt>
  402ddf:	48 85 c0             	test   %rax,%rax
  402de2:	75 68                	jne    402e4c <init_driver+0x126>
  402de4:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402deb:	3a 20 44 
  402dee:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402df2:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402df9:	20 75 6e 
  402dfc:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402e00:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e07:	74 6f 20 
  402e0a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e0e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402e15:	76 65 20 
  402e18:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402e1c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402e23:	72 20 61 
  402e26:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e2a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402e31:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402e37:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402e3b:	89 df                	mov    %ebx,%edi
  402e3d:	e8 0e df ff ff       	callq  400d50 <close@plt>
  402e42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e47:	e9 b1 00 00 00       	jmpq   402efd <init_driver+0x1d7>
  402e4c:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402e53:	00 
  402e54:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402e5b:	00 00 
  402e5d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e63:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e67:	48 8b 40 18          	mov    0x18(%rax),%rax
  402e6b:	48 8b 30             	mov    (%rax),%rsi
  402e6e:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402e73:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402e78:	e8 23 df ff ff       	callq  400da0 <__memmove_chk@plt>
  402e7d:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402e84:	ba 10 00 00 00       	mov    $0x10,%edx
  402e89:	48 89 e6             	mov    %rsp,%rsi
  402e8c:	89 df                	mov    %ebx,%edi
  402e8e:	e8 ed df ff ff       	callq  400e80 <connect@plt>
  402e93:	85 c0                	test   %eax,%eax
  402e95:	79 50                	jns    402ee7 <init_driver+0x1c1>
  402e97:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e9e:	3a 20 55 
  402ea1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ea5:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402eac:	20 74 6f 
  402eaf:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402eb3:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402eba:	65 63 74 
  402ebd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ec1:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402ec8:	65 72 76 
  402ecb:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ecf:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402ed5:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402ed9:	89 df                	mov    %ebx,%edi
  402edb:	e8 70 de ff ff       	callq  400d50 <close@plt>
  402ee0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ee5:	eb 16                	jmp    402efd <init_driver+0x1d7>
  402ee7:	89 df                	mov    %ebx,%edi
  402ee9:	e8 62 de ff ff       	callq  400d50 <close@plt>
  402eee:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402ef4:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402ef8:	b8 00 00 00 00       	mov    $0x0,%eax
  402efd:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f02:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f09:	00 00 
  402f0b:	74 05                	je     402f12 <init_driver+0x1ec>
  402f0d:	e8 fe dd ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402f12:	48 83 c4 28          	add    $0x28,%rsp
  402f16:	5b                   	pop    %rbx
  402f17:	5d                   	pop    %rbp
  402f18:	c3                   	retq   

0000000000402f19 <driver_post>:
  402f19:	53                   	push   %rbx
  402f1a:	4c 89 cb             	mov    %r9,%rbx
  402f1d:	45 85 c0             	test   %r8d,%r8d
  402f20:	74 27                	je     402f49 <driver_post+0x30>
  402f22:	48 89 ca             	mov    %rcx,%rdx
  402f25:	be 05 39 40 00       	mov    $0x403905,%esi
  402f2a:	bf 01 00 00 00       	mov    $0x1,%edi
  402f2f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f34:	e8 e7 de ff ff       	callq  400e20 <__printf_chk@plt>
  402f39:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f3e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f42:	b8 00 00 00 00       	mov    $0x0,%eax
  402f47:	eb 3f                	jmp    402f88 <driver_post+0x6f>
  402f49:	48 85 ff             	test   %rdi,%rdi
  402f4c:	74 2c                	je     402f7a <driver_post+0x61>
  402f4e:	80 3f 00             	cmpb   $0x0,(%rdi)
  402f51:	74 27                	je     402f7a <driver_post+0x61>
  402f53:	48 83 ec 08          	sub    $0x8,%rsp
  402f57:	41 51                	push   %r9
  402f59:	49 89 c9             	mov    %rcx,%r9
  402f5c:	49 89 d0             	mov    %rdx,%r8
  402f5f:	48 89 f9             	mov    %rdi,%rcx
  402f62:	48 89 f2             	mov    %rsi,%rdx
  402f65:	be 50 00 00 00       	mov    $0x50,%esi
  402f6a:	bf 25 34 40 00       	mov    $0x403425,%edi
  402f6f:	e8 fe f5 ff ff       	callq  402572 <submitr>
  402f74:	48 83 c4 10          	add    $0x10,%rsp
  402f78:	eb 0e                	jmp    402f88 <driver_post+0x6f>
  402f7a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f7f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f83:	b8 00 00 00 00       	mov    $0x0,%eax
  402f88:	5b                   	pop    %rbx
  402f89:	c3                   	retq   

0000000000402f8a <check>:
  402f8a:	89 f8                	mov    %edi,%eax
  402f8c:	c1 e8 1c             	shr    $0x1c,%eax
  402f8f:	85 c0                	test   %eax,%eax
  402f91:	74 1d                	je     402fb0 <check+0x26>
  402f93:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f98:	eb 0b                	jmp    402fa5 <check+0x1b>
  402f9a:	89 f8                	mov    %edi,%eax
  402f9c:	d3 e8                	shr    %cl,%eax
  402f9e:	3c 0a                	cmp    $0xa,%al
  402fa0:	74 14                	je     402fb6 <check+0x2c>
  402fa2:	83 c1 08             	add    $0x8,%ecx
  402fa5:	83 f9 1f             	cmp    $0x1f,%ecx
  402fa8:	7e f0                	jle    402f9a <check+0x10>
  402faa:	b8 01 00 00 00       	mov    $0x1,%eax
  402faf:	c3                   	retq   
  402fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  402fb5:	c3                   	retq   
  402fb6:	b8 00 00 00 00       	mov    $0x0,%eax
  402fbb:	c3                   	retq   

0000000000402fbc <gencookie>:
  402fbc:	53                   	push   %rbx
  402fbd:	83 c7 01             	add    $0x1,%edi
  402fc0:	e8 fb dc ff ff       	callq  400cc0 <srandom@plt>
  402fc5:	e8 16 de ff ff       	callq  400de0 <random@plt>
  402fca:	89 c3                	mov    %eax,%ebx
  402fcc:	89 c7                	mov    %eax,%edi
  402fce:	e8 b7 ff ff ff       	callq  402f8a <check>
  402fd3:	85 c0                	test   %eax,%eax
  402fd5:	74 ee                	je     402fc5 <gencookie+0x9>
  402fd7:	89 d8                	mov    %ebx,%eax
  402fd9:	5b                   	pop    %rbx
  402fda:	c3                   	retq   
  402fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402fe0 <__libc_csu_init>:
  402fe0:	41 57                	push   %r15
  402fe2:	41 56                	push   %r14
  402fe4:	41 89 ff             	mov    %edi,%r15d
  402fe7:	41 55                	push   %r13
  402fe9:	41 54                	push   %r12
  402feb:	4c 8d 25 0e 1e 20 00 	lea    0x201e0e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402ff2:	55                   	push   %rbp
  402ff3:	48 8d 2d 0e 1e 20 00 	lea    0x201e0e(%rip),%rbp        # 604e08 <__init_array_end>
  402ffa:	53                   	push   %rbx
  402ffb:	49 89 f6             	mov    %rsi,%r14
  402ffe:	49 89 d5             	mov    %rdx,%r13
  403001:	4c 29 e5             	sub    %r12,%rbp
  403004:	48 83 ec 08          	sub    $0x8,%rsp
  403008:	48 c1 fd 03          	sar    $0x3,%rbp
  40300c:	e8 57 dc ff ff       	callq  400c68 <_init>
  403011:	48 85 ed             	test   %rbp,%rbp
  403014:	74 20                	je     403036 <__libc_csu_init+0x56>
  403016:	31 db                	xor    %ebx,%ebx
  403018:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40301f:	00 
  403020:	4c 89 ea             	mov    %r13,%rdx
  403023:	4c 89 f6             	mov    %r14,%rsi
  403026:	44 89 ff             	mov    %r15d,%edi
  403029:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40302d:	48 83 c3 01          	add    $0x1,%rbx
  403031:	48 39 eb             	cmp    %rbp,%rbx
  403034:	75 ea                	jne    403020 <__libc_csu_init+0x40>
  403036:	48 83 c4 08          	add    $0x8,%rsp
  40303a:	5b                   	pop    %rbx
  40303b:	5d                   	pop    %rbp
  40303c:	41 5c                	pop    %r12
  40303e:	41 5d                	pop    %r13
  403040:	41 5e                	pop    %r14
  403042:	41 5f                	pop    %r15
  403044:	c3                   	retq   
  403045:	90                   	nop
  403046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40304d:	00 00 00 

0000000000403050 <__libc_csu_fini>:
  403050:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403054 <_fini>:
  403054:	48 83 ec 08          	sub    $0x8,%rsp
  403058:	48 83 c4 08          	add    $0x8,%rsp
  40305c:	c3                   	retq   
