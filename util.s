	.file	"util.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"%03X  [%u] "
.LC1:
	.string	" %02X"
	.text
	.globl	print_can_frame
	.type	print_can_frame, @function
print_can_frame:
.LFB0:
	.file 1 "src/util.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 31 0
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 1 32 0
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 35 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 36 0
	movl	$0, -16(%rbp)
.L3:
	.loc 1 36 0 is_stmt 0 discriminator 3
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jnb	.L4
	.loc 1 38 0 is_stmt 1 discriminator 2
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 36 0 discriminator 2
	addl	$1, -16(%rbp)
	jmp	.L3
.L4:
	.loc 1 40 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_can_frame, .-print_can_frame
.Letext0:
	.file 2 "/usr/include/asm-generic/int-ll64.h"
	.file 3 "/usr/include/linux/can.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x417
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF66
	.byte	0x4
	.long	.LASF67
	.long	.LASF68
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x15
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.long	0x3f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x1b
	.long	0x6b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x6
	.byte	0x8
	.long	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	0x99
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x48
	.long	0x60
	.uleb128 0x7
	.long	.LASF69
	.byte	0x10
	.byte	0x8
	.byte	0x3
	.byte	0x68
	.long	0x107
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.byte	0x69
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.byte	0x6a
	.long	0x34
	.byte	0x4
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x6b
	.long	0x34
	.byte	0x5
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0x6c
	.long	0x34
	.byte	0x6
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.byte	0x6d
	.long	0x34
	.byte	0x7
	.uleb128 0x9
	.long	.LASF65
	.byte	0x3
	.byte	0x6e
	.long	0x10c
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xb0
	.uleb128 0xa
	.long	0x34
	.long	0x11c
	.uleb128 0xb
	.long	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0xd8
	.long	0x85
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x8c
	.long	0x8c
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x8d
	.long	0x8c
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xd
	.long	.LASF50
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x2bf
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.byte	0xf6
	.long	0x59
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.byte	0xfb
	.long	0x93
	.byte	0x8
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.byte	0xfc
	.long	0x93
	.byte	0x10
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.byte	0xfd
	.long	0x93
	.byte	0x18
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.byte	0xfe
	.long	0x93
	.byte	0x20
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.byte	0xff
	.long	0x93
	.byte	0x28
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.value	0x100
	.long	0x93
	.byte	0x30
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.value	0x101
	.long	0x93
	.byte	0x38
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.value	0x102
	.long	0x93
	.byte	0x40
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.value	0x104
	.long	0x93
	.byte	0x48
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.value	0x105
	.long	0x93
	.byte	0x50
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.value	0x106
	.long	0x93
	.byte	0x58
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.value	0x108
	.long	0x2f7
	.byte	0x60
	.uleb128 0xe
	.long	.LASF34
	.byte	0x6
	.value	0x10a
	.long	0x2fd
	.byte	0x68
	.uleb128 0xe
	.long	.LASF35
	.byte	0x6
	.value	0x10c
	.long	0x59
	.byte	0x70
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.value	0x110
	.long	0x59
	.byte	0x74
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.value	0x112
	.long	0x127
	.byte	0x78
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.value	0x116
	.long	0x52
	.byte	0x80
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.value	0x117
	.long	0x2d
	.byte	0x82
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.value	0x118
	.long	0x303
	.byte	0x83
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.value	0x11c
	.long	0x313
	.byte	0x88
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.value	0x125
	.long	0x132
	.byte	0x90
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.value	0x12d
	.long	0x13d
	.byte	0x98
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.value	0x12e
	.long	0x13d
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.value	0x12f
	.long	0x13d
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.value	0x130
	.long	0x13d
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.value	0x132
	.long	0x11c
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.value	0x133
	.long	0x59
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.value	0x135
	.long	0x319
	.byte	0xc4
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x6
	.byte	0x9a
	.uleb128 0xd
	.long	.LASF51
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x2f7
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0xa1
	.long	0x2f7
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0xa2
	.long	0x2fd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0xa6
	.long	0x59
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c6
	.uleb128 0x6
	.byte	0x8
	.long	0x13f
	.uleb128 0xa
	.long	0x99
	.long	0x313
	.uleb128 0xb
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0xa
	.long	0x99
	.long	0x329
	.uleb128 0xb
	.long	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.value	0x13f
	.long	0x329
	.uleb128 0x11
	.long	.LASF56
	.byte	0x6
	.value	0x140
	.long	0x329
	.uleb128 0x11
	.long	.LASF57
	.byte	0x6
	.value	0x141
	.long	0x329
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x4
	.long	0x352
	.uleb128 0x12
	.long	.LASF58
	.byte	0x7
	.byte	0x87
	.long	0x2fd
	.uleb128 0x12
	.long	.LASF59
	.byte	0x7
	.byte	0x88
	.long	0x2fd
	.uleb128 0x12
	.long	.LASF60
	.byte	0x7
	.byte	0x89
	.long	0x2fd
	.uleb128 0x12
	.long	.LASF61
	.byte	0x8
	.byte	0x1a
	.long	0x59
	.uleb128 0xa
	.long	0x358
	.long	0x394
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x8
	.byte	0x1b
	.long	0x389
	.uleb128 0x12
	.long	.LASF63
	.byte	0x8
	.byte	0x1e
	.long	0x59
	.uleb128 0x12
	.long	.LASF64
	.byte	0x8
	.byte	0x1f
	.long	0x389
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x1d
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x409
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0x1d
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x1f
	.long	0x414
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"dlc"
	.byte	0x1
	.byte	0x20
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x21
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x107
	.uleb128 0x4
	.long	0x409
	.uleb128 0x6
	.byte	0x8
	.long	0x46
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"__off_t"
.LASF12:
	.string	"canid_t"
.LASF34:
	.string	"_chain"
.LASF18:
	.string	"size_t"
.LASF40:
	.string	"_shortbuf"
.LASF57:
	.string	"_IO_2_1_stderr_"
.LASF28:
	.string	"_IO_buf_base"
.LASF8:
	.string	"long long unsigned int"
.LASF73:
	.string	"frame"
.LASF68:
	.string	"/home/alig/src/myapp"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF72:
	.string	"print_can_frame"
.LASF35:
	.string	"_fileno"
.LASF23:
	.string	"_IO_read_end"
.LASF10:
	.string	"long int"
.LASF21:
	.string	"_flags"
.LASF29:
	.string	"_IO_buf_end"
.LASF67:
	.string	"src/util.c"
.LASF13:
	.string	"can_id"
.LASF64:
	.string	"_sys_errlist"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF51:
	.string	"_IO_marker"
.LASF58:
	.string	"stdin"
.LASF6:
	.string	"unsigned int"
.LASF4:
	.string	"__u8"
.LASF9:
	.string	"long unsigned int"
.LASF5:
	.string	"__u32"
.LASF71:
	.string	"_IO_FILE_plus"
.LASF26:
	.string	"_IO_write_ptr"
.LASF61:
	.string	"sys_nerr"
.LASF53:
	.string	"_sbuf"
.LASF65:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"__pad"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF59:
	.string	"stdout"
.LASF55:
	.string	"_IO_2_1_stdin_"
.LASF30:
	.string	"_IO_save_base"
.LASF22:
	.string	"_IO_read_ptr"
.LASF70:
	.string	"_IO_lock_t"
.LASF50:
	.string	"_IO_FILE"
.LASF66:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O0 -fstack-protector-strong"
.LASF54:
	.string	"_pos"
.LASF62:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF63:
	.string	"_sys_nerr"
.LASF39:
	.string	"_vtable_offset"
.LASF56:
	.string	"_IO_2_1_stdout_"
.LASF11:
	.string	"char"
.LASF14:
	.string	"can_dlc"
.LASF52:
	.string	"_next"
.LASF20:
	.string	"__off64_t"
.LASF38:
	.string	"_cur_column"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF43:
	.string	"__pad1"
.LASF44:
	.string	"__pad2"
.LASF45:
	.string	"__pad3"
.LASF46:
	.string	"__pad4"
.LASF47:
	.string	"__pad5"
.LASF27:
	.string	"_IO_write_end"
.LASF49:
	.string	"_unused2"
.LASF60:
	.string	"stderr"
.LASF16:
	.string	"__res0"
.LASF17:
	.string	"__res1"
.LASF31:
	.string	"_IO_backup_base"
.LASF69:
	.string	"can_frame"
.LASF25:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
