	.file	"app.c"
	.text
	.p2align 4
	.globl	start
	.type	start, @function
start:
.LFB37:
	.cfi_startproc
	endbr64
	movslq	%esi, %rsi
	testl	%edx, %edx
	jne	.L2
	movq	$0x000000000, 128(%rdi,%rsi,8)
.L2:
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	jmp	gettimeofday@PLT
	.cfi_endproc
.LFE37:
	.size	start, .-start
	.p2align 4
	.globl	stop
	.type	stop, @function
stop:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movslq	%esi, %rbp
	xorl	%esi, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	leaq	4(%rbp), %rdi
	salq	$4, %rdi
	addq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	gettimeofday@PLT
	leaq	(%rbx,%rbp,8), %rdx
	salq	$4, %rbp
	pxor	%xmm0, %xmm0
	leaq	(%rbx,%rbp), %rdi
	pxor	%xmm1, %xmm1
	movq	64(%rdi), %rax
	subq	(%rdi), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	72(%rdi), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	8(%rdi), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	128(%rdx), %xmm0
	movsd	%xmm0, 128(%rdx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	stop, .-stop
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%f\t"
	.text
	.p2align 4
	.globl	print
	.type	print, @function
print:
.LFB39:
	.cfi_startproc
	endbr64
	imull	$1000, %edx, %edx
	pxor	%xmm1, %xmm1
	movslq	%esi, %rsi
	movl	$1, %eax
	movsd	128(%rdi,%rsi,8), %xmm0
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE39:
	.size	print, .-print
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.ascii	"\nUsage:  ./program [options]\n\nGeneral options"
	.string	":\n    -h        help\n    -w <W>    # of untimed warmup iterations (default=1)\n    -e <E>    # of timed repetition iterations (default=3)\n\nBenchmark-specific options:\n    -m <I>    m_size (default=8192 elements)\n    -n <I>    n_size (default=8192 elements)\n"
	.section	.rodata.str1.1
.LC4:
	.string	"\nUnrecognized option!\n"
.LC5:
	.string	"hm:n:w:e:"
	.text
	.p2align 4
	.globl	input_params
	.type	input_params, @function
input_params:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$8192, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$3, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$8192, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.L12(%rip), %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	$1, 12(%rsp)
.L9:
	leaq	.LC5(%rip), %rdx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt@PLT
	testl	%eax, %eax
	js	.L21
	subl	$101, %eax
	cmpl	$18, %eax
	ja	.L10
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L12:
	.long	.L16-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L20-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L14-.L12
	.long	.L13-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L11-.L12
	.text
.L10:
	movq	stderr(%rip), %rdi
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L20:
	movq	stderr(%rip), %rdi
	leaq	.LC3(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%edi, %edi
	call	exit@PLT
.L11:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 12(%rsp)
	jmp	.L9
.L13:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r15d
	jmp	.L9
.L14:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r13d
	jmp	.L9
.L16:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r14d
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L21:
	movl	12(%rsp), %edx
	salq	$32, %r15
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movl	%r13d, %eax
	salq	$32, %r14
	popq	%rbx
	.cfi_def_cfa_offset 48
	orq	%r15, %rax
	popq	%rbp
	.cfi_def_cfa_offset 40
	orq	%r14, %rdx
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	input_params, .-input_params
	.section	.rodata.str1.1
.LC6:
	.string	"host/app.c"
.LC7:
	.string	"%s:%d(%s): DPU Error (%s)\n"
.LC8:
	.string	"./bin/gemv_dpu"
.LC9:
	.string	"CPU Version Time (ms): "
.LC11:
	.string	"CPU-DPU Time (ms): "
.LC12:
	.string	"DPU Kernel Time (ms): "
.LC13:
	.string	"DPU-CPU Time (ms): "
.LC14:
	.string	"DPU_INPUT_ARGUMENTS"
.LC15:
	.string	"__sys_used_mram_end"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"[\033[32mOK\033[0m] Outputs are equal\n"
	.align 8
.LC17:
	.string	"[\033[31mERROR\033[0m] Outputs differ!\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	movq	%fs:40, %rax
	movq	%rax, 440(%rsp)
	xorl	%eax, %eax
	leaq	112(%rsp), %r15
	call	input_params
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, 24(%rsp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rdx, 72(%rsp)
	movl	%edx, 8(%rsp)
	movq	%r15, %rdx
	movq	%rax, 80(%rsp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L127
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_load@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L128
	leaq	108(%rsp), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L129
	movl	108(%rsp), %ebx
	movq	24(%rsp), %rbp
	leaq	(%rbx,%rbx,2), %rdi
	movl	%ebp, %r14d
	salq	$4, %rbx
	shrq	$32, %rbp
	salq	$2, %rdi
	movq	%rbp, 40(%rsp)
	movl	%ebp, %r12d
	call	malloc@PLT
	movq	%rbx, %rdi
	leaq	176(%rsp), %rbx
	movq	%rax, dpu_info(%rip)
	call	malloc@PLT
	movq	%r15, %rsi
	movq	%rbx, %rdi
	movq	%rax, %r13
	movl	%ebp, %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movl	%ebp, %eax
	sbbl	$-1, %eax
	xorl	%ebp, %ebp
	movl	%eax, 36(%rsp)
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %ecx
	je	.L27
	movq	%r15, 16(%rsp)
	movl	%ebp, %r15d
	movq	%rbx, %rbp
	movl	36(%rsp), %ebx
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L131:
	addl	$1, %eax
	movl	%eax, %r8d
	imull	%ecx, %r8d
.L29:
	movl	%eax, %edx
	movl	%eax, %edi
	andl	$1, %edx
	cmpl	$1, %edx
	movl	%ecx, %edx
	movq	dpu_info(%rip), %rcx
	sbbl	$-1, %edi
	leaq	(%rdx,%rdx,2), %r9
	cmpl	%edi, %r15d
	leaq	(%rcx,%r9,4), %rcx
	cmovb	%edi, %r15d
	salq	$4, %rdx
	movl	%edi, 4(%rcx)
	movq	%rbp, %rdi
	addq	%r13, %rdx
	movl	%eax, (%rcx)
	movl	%r8d, 8(%rcx)
	movl	%r12d, (%rdx)
	movl	%ebx, 4(%rdx)
	movl	%eax, 8(%rdx)
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %ecx
	je	.L130
.L31:
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	108(%rsp)
	cmpl	%ecx, %edx
	ja	.L131
	testl	%edx, %edx
	jne	.L132
	movl	%eax, %r8d
	imull	%ecx, %r8d
	jmp	.L29
.L132:
	movl	%ecx, %esi
	leal	1(%rax), %r8d
	subl	%edx, %esi
	imull	%edx, %r8d
	movl	%esi, %edx
	imull	%eax, %edx
	addl	%edx, %r8d
	jmp	.L29
.L130:
	movq	%rbp, %rbx
	movl	%r15d, %ebp
	movq	16(%rsp), %r15
.L27:
	movl	108(%rsp), %edx
	movl	36(%rsp), %edi
	imull	%ebp, %edx
	imull	%edx, %edi
	movl	%edx, 48(%rsp)
	salq	$2, %rdi
	call	malloc@PLT
	movq	%rax, A(%rip)
	movq	%rax, %r14
	movl	36(%rsp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	malloc@PLT
	movl	48(%rsp), %edi
	movq	%rax, 56(%rsp)
	salq	$2, %rdi
	movq	%rax, B(%rip)
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, 48(%rsp)
	movq	%rax, C(%rip)
	call	srand@PLT
	movl	40(%rsp), %eax
	imull	24(%rsp), %eax
	testl	%eax, %eax
	je	.L36
	subl	$1, %eax
	movq	%r14, %rcx
	movq	%r14, 64(%rsp)
	leaq	4(%r14,%rax,4), %rax
	movq	%rbx, 88(%rsp)
	movq	%rcx, %rbx
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L35:
	call	rand@PLT
	addq	$4, %rbx
	movslq	%eax, %rdx
	movl	%eax, %esi
	imulq	$1374389535, %rdx, %rdx
	sarl	$31, %esi
	sarq	$36, %rdx
	subl	%esi, %edx
	imull	$50, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -4(%rbx)
	cmpq	%rbx, %r14
	jne	.L35
	movq	64(%rsp), %r14
	movq	88(%rsp), %rbx
.L36:
	movl	40(%rsp), %edi
	testl	%edi, %edi
	je	.L133
	movq	40(%rsp), %rax
	movq	56(%rsp), %rsi
	movq	%r14, 64(%rsp)
	movq	%rbx, 88(%rsp)
	subl	$1, %eax
	movq	%rsi, %rbx
	leaq	4(%rsi,%rax,4), %rax
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L39:
	call	rand@PLT
	addq	$4, %rbx
	movslq	%eax, %rdx
	movl	%eax, %esi
	imulq	$1374389535, %rdx, %rdx
	sarl	$31, %esi
	sarq	$36, %rdx
	subl	%esi, %edx
	imull	$50, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -4(%rbx)
	cmpq	%rbx, %r14
	jne	.L39
	leaq	272(%rsp), %rax
	xorl	%esi, %esi
	movq	64(%rsp), %r14
	movq	$0x000000000, 400(%rsp)
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rbx
	call	gettimeofday@PLT
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.L38
	movq	24(%rsp), %rax
	movq	48(%rsp), %rdi
	xorl	%esi, %esi
	subl	$1, %eax
	leaq	4(,%rax,4), %r11
	movq	%r11, %rdx
	movq	%r11, 24(%rsp)
	call	memset@PLT
	movq	48(%rsp), %r9
	movq	24(%rsp), %r11
	xorl	%r10d, %r10d
	movl	40(%rsp), %edi
	movq	56(%rsp), %r8
	addq	%r9, %r11
	.p2align 4,,10
	.p2align 3
.L88:
	movl	(%r9), %esi
	movq	%r8, %rcx
	movl	%r10d, %eax
	.p2align 4,,10
	.p2align 3
.L41:
	movl	%eax, %edx
	addl	$1, %eax
	addq	$4, %rcx
	movl	(%r14,%rdx,4), %edx
	imull	-4(%rcx), %edx
	addl	%edx, %esi
	cmpl	%eax, %edi
	jne	.L41
	movl	%esi, (%r9)
	addq	$4, %r9
	addl	%r12d, %r10d
	addl	%r12d, %edi
	cmpq	%r9, %r11
	jne	.L88
.L38:
	movq	64(%rsp), %rdi
	xorl	%esi, %esi
	call	stop
	movl	72(%rsp), %eax
	addl	80(%rsp), %eax
	movl	%eax, 56(%rsp)
	je	.L75
	movl	36(%rsp), %ecx
	xorl	%r14d, %r14d
	movl	%ecx, %eax
	imull	%ebp, %eax
	movl	%eax, %edx
	sall	$2, %eax
	movl	%eax, 36(%rsp)
	movl	%ebp, %eax
	leaq	0(,%rdx,4), %rsi
	salq	$2, %rax
	movq	%rsi, 24(%rsp)
	movq	%rax, 40(%rsp)
	leal	1(%rbp), %eax
	imull	%ecx, %eax
	sall	$2, %eax
	movl	%eax, 48(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L74:
	cmpl	%r14d, 8(%rsp)
	ja	.L45
	jne	.L46
	movq	$0x000000000, 408(%rsp)
.L46:
	movq	64(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L45:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm6
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %edi
	movq	%rax, 160(%rsp)
	movaps	%xmm6, 144(%rsp)
	je	.L51
	.p2align 4,,10
	.p2align 3
.L47:
	salq	$4, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	addq	%r13, %rdi
	movl	%ebp, 12(%rdi)
	pushq	168(%rsp)
	.cfi_def_cfa_offset 528
	pushq	168(%rsp)
	.cfi_def_cfa_offset 536
	pushq	168(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L134
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm2
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %edi
	movq	%rax, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	jne	.L47
.L51:
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	xorl	%r8d, %r8d
	movl	$16, %ecx
	xorl	%edx, %edx
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	leaq	.LC14(%rip), %rsi
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L135
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm7
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm7, 144(%rsp)
	je	.L56
	.p2align 4,,10
	.p2align 3
.L52:
	movq	dpu_info(%rip), %rdx
	leaq	(%rax,%rax,2), %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	leaq	(%rdx,%rax,4), %rax
	movl	%r12d, %edx
	imull	8(%rax), %edx
	pushq	168(%rsp)
	.cfi_def_cfa_offset 528
	movq	A(%rip), %rax
	pushq	168(%rsp)
	.cfi_def_cfa_offset 536
	pushq	168(%rsp)
	.cfi_def_cfa_offset 544
	leaq	(%rax,%rdx,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L136
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm3
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm3, 144(%rsp)
	jne	.L52
.L56:
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	leaq	.LC15(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	movq	56(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L137
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm1
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movaps	%xmm1, 144(%rsp)
	je	.L61
	.p2align 4,,10
	.p2align 3
.L57:
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	movq	B(%rip), %rdi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 528
	pushq	168(%rsp)
	.cfi_def_cfa_offset 536
	pushq	168(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L138
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm4
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movaps	%xmm4, 144(%rsp)
	jne	.L57
.L61:
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	xorl	%r8d, %r8d
	leaq	.LC15(%rip), %rsi
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	movq	48(%rsp), %rcx
	movl	68(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L139
	cmpl	%r14d, 8(%rsp)
	jbe	.L140
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L64
	movl	%ebp, %edi
	imull	108(%rsp), %edi
	salq	$2, %rdi
	call	malloc@PLT
	movq	%rax, C_dpu(%rip)
.L87:
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm6
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm6, 144(%rsp)
	je	.L72
	.p2align 4,,10
	.p2align 3
.L68:
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	imull	%ebp, %eax
	movq	C_dpu(%rip), %rdx
	pushq	168(%rsp)
	.cfi_def_cfa_offset 528
	pushq	168(%rsp)
	.cfi_def_cfa_offset 536
	pushq	168(%rsp)
	.cfi_def_cfa_offset 544
	leaq	(%rdx,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L141
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm5
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm5, 144(%rsp)
	jne	.L68
.L72:
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	xorl	%r8d, %r8d
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	leaq	.LC15(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	movq	72(%rsp), %rcx
	movl	80(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L142
	cmpl	%r14d, 8(%rsp)
	jbe	.L143
.L73:
	addl	$1, %r14d
	cmpl	56(%rsp), %r14d
	jne	.L74
.L75:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	400(%rsp), %xmm0
	divsd	.LC10(%rip), %xmm0
	call	__printf_chk@PLT
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm7, %xmm7
	movl	$1, %edi
	movsd	408(%rsp), %xmm0
	imull	$1000, 80(%rsp), %eax
	leaq	.LC2(%rip), %rsi
	cvtsi2sdl	%eax, %xmm7
	movl	$1, %eax
	divsd	%xmm7, %xmm0
	movsd	%xmm7, 8(%rsp)
	call	__printf_chk@PLT
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	416(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	424(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	movl	108(%rsp), %edx
	testl	%edx, %edx
	je	.L44
	leal	-1(%rdx), %r13d
	movq	dpu_info(%rip), %rax
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	imulq	$12, %r13, %r13
	movq	C(%rip), %r11
	movl	$1, %edx
	xorl	%r9d, %r9d
	leaq	12(%rax), %rbx
	movq	C_dpu(%rip), %r10
	addq	%rbx, %r13
.L76:
	movl	(%rax), %esi
	movl	%r12d, %r8d
	movl	%ecx, %eax
	subl	%ecx, %r8d
	leal	(%rsi,%rcx), %edi
	testl	%esi, %esi
	je	.L81
	.p2align 4,,10
	.p2align 3
.L78:
	leal	(%r8,%rax), %esi
	movl	%eax, %ecx
	movl	(%r11,%rcx,4), %ecx
	cmpl	%ecx, (%r10,%rsi,4)
	cmovne	%r9d, %edx
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L78
	movl	%edi, %ecx
.L81:
	movq	%rbx, %rax
	addl	%ebp, %r12d
	cmpq	%r13, %rbx
	je	.L79
	addq	$12, %rbx
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L140:
	movq	72(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	352(%rsp), %rax
	subq	288(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	360(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	296(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	408(%rsp), %xmm0
	movsd	%xmm0, 408(%rsp)
	cmpl	%r14d, 8(%rsp)
	jne	.L63
	movq	$0x000000000, 416(%rsp)
.L63:
	leaq	304(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 520
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L64
	leaq	368(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movl	%ebp, %edi
	movq	368(%rsp), %rax
	subq	304(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	376(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	312(%rsp), %rax
	imull	108(%rsp), %edi
	cvtsi2sdq	%rax, %xmm1
	salq	$2, %rdi
	addsd	%xmm1, %xmm0
	addsd	416(%rsp), %xmm0
	movsd	%xmm0, 416(%rsp)
	call	malloc@PLT
	movq	%rax, C_dpu(%rip)
	cmpl	%r14d, 8(%rsp)
	jne	.L67
	movq	$0x000000000, 424(%rsp)
.L67:
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L143:
	leaq	384(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	384(%rsp), %rax
	subq	320(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	392(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	328(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	424(%rsp), %xmm0
	movsd	%xmm0, 424(%rsp)
	jmp	.L73
.L79:
	testb	%dl, %dl
	jne	.L44
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	B(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C_dpu(%rip), %rdi
	call	free@PLT
	pushq	%rcx
	.cfi_def_cfa_offset 520
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	je	.L94
.L83:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$262, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L44:
	.cfi_restore_state
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	B(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C_dpu(%rip), %rdi
	call	free@PLT
	pushq	%rsi
	.cfi_def_cfa_offset 520
	pushq	136(%rsp)
	.cfi_def_cfa_offset 528
	pushq	136(%rsp)
	.cfi_def_cfa_offset 536
	pushq	136(%rsp)
	.cfi_def_cfa_offset 544
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L83
.L84:
	movq	440(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L144
	addq	$456, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L134:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$158, %r8d
	pushq	%rsi
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
.L126:
	movq	stderr(%rip), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L136:
	.cfi_def_cfa_offset 512
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	movl	$166, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L138:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$170, %r8d
	pushq	%r11
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L141:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	movl	$208, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L133:
	.cfi_restore_state
	leaq	272(%rsp), %rax
	xorl	%esi, %esi
	movq	$0x000000000, 400(%rsp)
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	call	gettimeofday@PLT
	cmpl	$0, 24(%rsp)
	je	.L38
	movq	24(%rsp), %rax
	movq	48(%rsp), %rdi
	xorl	%esi, %esi
	subl	$1, %eax
	leaq	4(,%rax,4), %rdx
	call	memset@PLT
	jmp	.L38
.L64:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movl	$186, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	leaq	__func__.3596(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L139:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$172, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L137:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	movl	$168, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L129:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	movl	$76, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L128:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	movl	$75, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	leaq	__func__.3596(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L127:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$74, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L135:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$161, %r8d
	pushq	%rcx
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L142:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3596(%rip), %r9
	movl	$210, %r8d
	pushq	%rdi
	.cfi_remember_state
	.cfi_def_cfa_offset 520
	pushq	%rax
	.cfi_def_cfa_offset 528
	jmp	.L126
.L94:
	.cfi_restore_state
	orl	$-1, %eax
	jmp	.L84
.L144:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3596, @object
	.size	__func__.3596, 5
__func__.3596:
	.string	"main"
	.local	C_dpu
	.comm	C_dpu,8,8
	.local	C
	.comm	C,8,8
	.local	B
	.comm	B,8,8
	.local	A
	.comm	A,8,8
	.comm	dpu_info,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.align 8
.LC10:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
