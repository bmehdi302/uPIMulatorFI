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
	movq	$0x000000000, 224(%rdi,%rsi,8)
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
	leaq	7(%rbp), %rdi
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
	movq	112(%rdi), %rax
	subq	(%rdi), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	120(%rdi), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	8(%rdi), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	224(%rdx), %xmm0
	movsd	%xmm0, 224(%rdx)
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
	.string	"Time (ms): %f\t"
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
	movsd	224(%rdi,%rsi,8), %xmm0
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
	.ascii	"\nUsage:  ./program [options]\n\nGeneral options:\n    -h   "
	.ascii	"     help\n    -w <W>    # of untimed warmup iterations (def"
	.ascii	"ault=1)\n    -e <E>    # of timed repetition iteratio"
	.string	"ns (default=3)\n    -x <X>    Weak (0) or strong (1) scaling (default=0)\n\nBenchmark-specific options:\n    -m <I>    m (default=16 elements)\n    -n <I>    n (default=8 elements)\n    -o <I>    M_ (default=12288 elements)\n    -p <I>    N_ (default=1 elements)\n"
	.section	.rodata.str1.1
.LC4:
	.string	"\nUnrecognized option!\n"
.LC5:
	.string	"hw:e:x:m:n:o:p:"
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
	movl	$1, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$3, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.L12(%rip), %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	$0, 28(%rsp)
	movl	$8, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$16, 20(%rsp)
	movl	$12288, 16(%rsp)
.L9:
	leaq	.LC5(%rip), %rdx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt@PLT
	testl	%eax, %eax
	js	.L24
	subl	$101, %eax
	cmpl	$19, %eax
	ja	.L10
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L12:
	.long	.L19-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L23-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L17-.L12
	.long	.L16-.L12
	.long	.L15-.L12
	.long	.L14-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L13-.L12
	.long	.L11-.L12
	.text
.L10:
	movq	stderr(%rip), %rdi
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L23:
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
	movl	%eax, 28(%rsp)
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
	movl	%eax, 24(%rsp)
	jmp	.L9
.L15:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 16(%rsp)
	jmp	.L9
.L16:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 12(%rsp)
	jmp	.L9
.L17:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 20(%rsp)
	jmp	.L9
.L19:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r14d
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L24:
	movd	24(%rsp), %xmm1
	movd	12(%rsp), %xmm2
	movl	%r15d, 16(%r13)
	movd	16(%rsp), %xmm0
	movd	20(%rsp), %xmm3
	movl	%r14d, 20(%r13)
	movl	28(%rsp), %eax
	punpckldq	%xmm2, %xmm1
	punpckldq	%xmm3, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movl	%eax, 24(%r13)
	movq	%r13, %rax
	movups	%xmm0, 0(%r13)
	addq	$40, %rsp
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
	.cfi_endproc
.LFE41:
	.size	input_params, .-input_params
	.section	.rodata.str1.1
.LC6:
	.string	"nr_elements\t%u\t"
.LC7:
	.string	"NR_TASKLETS\t%d\n"
.LC8:
	.string	"M_\t%u, m\t%u, N_\t%u, n\t%u\n"
.LC9:
	.string	"CPU "
.LC10:
	.string	"CPU-DPU (Step 1) "
.LC11:
	.string	"Step 2 "
.LC12:
	.string	"Step 3 "
.LC13:
	.string	"DPU-CPU "
.LC14:
	.string	"host/app.c"
.LC15:
	.string	"%s:%d(%s): DPU Error (%s)\n"
.LC16:
	.string	"./bin/dpu_code"
.LC17:
	.string	"Allocated %d DPU(s)\n"
.LC18:
	.string	"Load input data (step 1)\n"
.LC19:
	.string	"__sys_used_mram_end"
.LC20:
	.string	"DPU_INPUT_ARGUMENTS"
.LC21:
	.string	"Run step 2 on DPU(s) \n"
.LC22:
	.string	"Run step 3 on DPU(s) \n"
.LC23:
	.string	"Retrieve results\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"[\033[32mOK\033[0m] Outputs are equal\n"
	.align 8
.LC25:
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
	movl	%edi, %r8d
	movq	%rsi, %rdx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %esi
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
	subq	$680, %rsp
	.cfi_def_cfa_offset 736
	movq	%fs:40, %rax
	movq	%rax, 664(%rsp)
	xorl	%eax, %eax
	leaq	256(%rsp), %rdi
	call	input_params
	movl	272(%rsp), %eax
	movl	256(%rsp), %ebx
	movl	260(%rsp), %esi
	movl	268(%rsp), %r15d
	movl	%eax, 32(%rsp)
	movl	276(%rsp), %eax
	movl	%ebx, %r14d
	imull	%esi, %r14d
	movl	%ebx, 40(%rsp)
	movl	%eax, 112(%rsp)
	movl	264(%rsp), %eax
	imull	%r15d, %ebx
	movl	%esi, 44(%rsp)
	movl	%eax, 72(%rsp)
	imull	%r15d, %eax
	movl	%r14d, 8(%rsp)
	imull	%eax, %r14d
	movl	%eax, 12(%rsp)
	movl	%r14d, %eax
	movl	%r14d, 48(%rsp)
	leaq	0(,%rax,8), %r13
	movq	%r13, %rdi
	movq	%r13, 80(%rsp)
	call	malloc@PLT
	movq	%r13, %rdi
	movq	%rax, A_host(%rip)
	movq	%rax, %rbp
	call	malloc@PLT
	movq	%r13, %rdi
	movq	%rax, A_backup(%rip)
	call	malloc@PLT
	movl	$1, %esi
	movl	%ebx, %edi
	movl	%ebx, 76(%rsp)
	movq	%rax, A_result(%rip)
	call	calloc@PLT
	xorl	%edi, %edi
	movq	%rax, 56(%rsp)
	call	srand@PLT
	xorl	%eax, %eax
	movl	%r14d, %edx
	movl	$1, %edi
	leaq	.LC6(%rip), %rsi
	call	__printf_chk@PLT
	testl	%r14d, %r14d
	je	.L30
	movl	48(%rsp), %eax
	subl	$1, %eax
	leaq	8(%rbp,%rax,8), %rbx
.L29:
	call	rand@PLT
	addq	$8, %rbp
	cltq
	movq	%rax, -8(%rbp)
	cmpq	%rbx, %rbp
	jne	.L29
.L30:
	movq	80(%rsp), %rdx
	movq	A_host(%rip), %rsi
	movq	A_backup(%rip), %rdi
	call	memcpy@PLT
	movl	$16, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	72(%rsp), %r8d
	movl	44(%rsp), %ecx
	xorl	%eax, %eax
	movl	40(%rsp), %edx
	movl	%r15d, %r9d
	movl	$1, %edi
	leaq	.LC8(%rip), %rsi
	call	__printf_chk@PLT
	movl	32(%rsp), %eax
	addl	112(%rsp), %eax
	movl	%eax, 116(%rsp)
	testl	%eax, %eax
	jle	.L28
	movl	8(%rsp), %eax
	movl	12(%rsp), %edx
	movl	$0, 28(%rsp)
	movq	%rax, %rcx
	imulq	%rdx, %rax
	movl	%r15d, %edx
	salq	$3, %rax
	movq	%rax, 104(%rsp)
	leaq	0(,%rdx,8), %rax
	movq	%rax, 16(%rsp)
	leal	0(,%r15,8), %eax
	imull	%eax, %ecx
	movl	%eax, 24(%rsp)
	movl	76(%rsp), %eax
	movl	%ecx, 88(%rsp)
	movl	44(%rsp), %ecx
	imull	%ecx, %eax
	movl	%eax, 128(%rsp)
	movl	%ecx, %eax
	imulq	%rdx, %rax
	movl	40(%rsp), %edx
	imulq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, 96(%rsp)
	movl	32(%rsp), %eax
	negl	%eax
	movl	%eax, 92(%rsp)
	movl	48(%rsp), %eax
	subl	$1, %eax
	movl	%eax, 132(%rsp)
	movq	%rax, 120(%rsp)
	leaq	8(,%rax,8), %rax
	movq	%rax, 64(%rsp)
.L91:
	movq	A_host(%rip), %rbp
	movq	80(%rsp), %rdx
	movq	A_backup(%rip), %rsi
	movq	%rbp, %rdi
	call	memcpy@PLT
	movl	28(%rsp), %ecx
	cmpl	%ecx, 32(%rsp)
	jg	.L32
	jne	.L33
	movq	$0x000000000, 608(%rsp)
.L33:
	leaq	384(%rsp), %r13
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	gettimeofday@PLT
	movq	104(%rsp), %rdi
	call	malloc@PLT
	cmpl	$0, 48(%rsp)
	movq	%rax, %rdi
	movq	%rax, %r12
	je	.L34
.L100:
	movl	8(%rsp), %r8d
	movl	12(%rsp), %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	120(%rsp), %r9
	movl	132(%rsp), %r10d
	.p2align 4,,10
	.p2align 3
.L35:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%esi, %edx
	addl	%r8d, %esi
	imull	%r10d, %eax
	subl	%eax, %edx
	movq	%rdx, %rax
	movq	0(%rbp,%rcx,8), %rdx
	movq	%rdx, (%r12,%rax,8)
	movq	%rcx, %rax
	addq	$1, %rcx
	cmpq	%r9, %rax
	jne	.L35
	movq	64(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	memcpy@PLT
	movq	%r12, %rdi
	call	free@PLT
	movl	28(%rsp), %ecx
	cmpl	%ecx, 32(%rsp)
	jle	.L138
.L36:
	movl	72(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L37
	leaq	192(%rsp), %rax
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, %rdx
	movq	%rax, (%rsp)
	call	dpu_alloc@PLT
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L139
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_load@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L140
	leaq	156(%rsp), %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movq	%rax, 144(%rsp)
	movq	%rax, %rdi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L141
	movl	156(%rsp), %edx
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	288(%rsp), %rbp
	call	__printf_chk@PLT
	movl	92(%rsp), %eax
	movl	$0, 36(%rsp)
	movl	%eax, 52(%rsp)
.L43:
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	28(%rsp), %ecx
	cmpl	%ecx, 32(%rsp)
	jg	.L46
	movl	52(%rsp), %edi
	testl	%edi, %edi
	jne	.L47
	movq	$0x000000000, 616(%rsp)
.L47:
	xorl	%esi, %esi
	leaq	400(%rsp), %rdi
	call	gettimeofday@PLT
	movl	8(%rsp), %esi
	testl	%esi, %esi
	je	.L49
.L48:
	movl	36(%rsp), %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	imull	%r15d, %r14d
	.p2align 4,,10
	.p2align 3
.L56:
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%r14d, %ebx
	call	dpu_set_dpu_iterator_from@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm2
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm2, 224(%rsp)
	je	.L55
	.p2align 4,,10
	.p2align 3
.L51:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movq	A_backup(%rip), %rdx
	movl	%ebx, %eax
	pushq	248(%rsp)
	.cfi_def_cfa_offset 752
	pushq	248(%rsp)
	.cfi_def_cfa_offset 760
	leaq	(%rdx,%rax,8), %rdi
	pushq	248(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	testl	%eax, %eax
	jne	.L142
	movq	%rbp, %rdi
	addl	%r15d, %ebx
	call	dpu_set_dpu_iterator_next@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm1
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm1, 224(%rsp)
	jne	.L51
.L55:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	xorl	%r8d, %r8d
	movl	%r13d, %edx
	xorl	%edi, %edi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	leaq	.LC19(%rip), %rsi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	movq	48(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	testl	%eax, %eax
	jne	.L143
	addl	$1, %r12d
	addl	24(%rsp), %r13d
	addl	12(%rsp), %r14d
	cmpl	%r12d, 8(%rsp)
	jne	.L56
	movl	28(%rsp), %ecx
	cmpl	%ecx, 32(%rsp)
	jle	.L49
.L50:
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	368(%rsp), %rax
	movq	56(%rsp), %rbx
	movdqa	352(%rsp), %xmm7
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm7, 224(%rsp)
	je	.L62
	.p2align 4,,10
	.p2align 3
.L58:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movq	%rbx, %rdi
	pushq	248(%rsp)
	.cfi_def_cfa_offset 752
	pushq	248(%rsp)
	.cfi_def_cfa_offset 760
	pushq	248(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	testl	%eax, %eax
	jne	.L144
	movq	%rbp, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm3
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm3, 224(%rsp)
	jne	.L58
.L62:
	movl	76(%rsp), %eax
	movl	$8, %ecx
	leaq	.LC19(%rip), %rsi
	cmpl	$8, %eax
	cmovnb	%rax, %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	movl	120(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L145
	movl	44(%rsp), %eax
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%r15d, 164(%rsp)
	movl	$0, 172(%rsp)
	leaq	160(%rsp), %rbx
	movl	%eax, 160(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, 168(%rsp)
	call	dpu_set_dpu_iterator_from@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm7
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm7, 224(%rsp)
	je	.L67
	.p2align 4,,10
	.p2align 3
.L63:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movq	%rbx, %rdi
	pushq	248(%rsp)
	.cfi_def_cfa_offset 752
	pushq	248(%rsp)
	.cfi_def_cfa_offset 760
	pushq	248(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	testl	%eax, %eax
	jne	.L146
	movq	%rbp, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm4
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm4, 224(%rsp)
	jne	.L63
.L67:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	$16, %ecx
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	xorl	%edx, %edx
	leaq	.LC20(%rip), %rsi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L147
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	28(%rsp), %ecx
	cmpl	%ecx, 32(%rsp)
	jg	.L68
	movl	52(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L69
	movq	$0x000000000, 624(%rsp)
.L69:
	leaq	416(%rsp), %rdi
	xorl	%esi, %esi
	leaq	384(%rsp), %r12
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movl	$1, %edi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L97
	movl	$2, %esi
	movq	%r12, %rdi
	call	stop
.L98:
	movl	44(%rsp), %eax
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%r15d, 180(%rsp)
	movl	$1, 188(%rsp)
	leaq	176(%rsp), %rbx
	movl	%eax, 176(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, 184(%rsp)
	call	dpu_set_dpu_iterator_from@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm7
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm7, 224(%rsp)
	je	.L75
	.p2align 4,,10
	.p2align 3
.L71:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movq	%rbx, %rdi
	pushq	248(%rsp)
	.cfi_def_cfa_offset 752
	pushq	248(%rsp)
	.cfi_def_cfa_offset 760
	pushq	248(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	testl	%eax, %eax
	jne	.L148
	movq	%rbp, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm5
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm5, 224(%rsp)
	jne	.L71
.L75:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	$16, %ecx
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	xorl	%edx, %edx
	leaq	.LC20(%rip), %rsi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L149
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	28(%rsp), %ecx
	cmpl	%ecx, 32(%rsp)
	jg	.L76
	movl	52(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L77
	movq	$0x000000000, 632(%rsp)
.L77:
	leaq	432(%rsp), %rdi
	xorl	%esi, %esi
	leaq	384(%rsp), %r12
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movl	$1, %edi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L78
	movl	$3, %esi
	movq	%r12, %rdi
	call	stop
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	52(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L82
	movq	$0x000000000, 640(%rsp)
.L82:
	leaq	448(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L96:
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm0
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	je	.L83
	movl	36(%rsp), %r12d
	movl	128(%rsp), %r13d
	movl	%r12d, %ebx
	imull	%r13d, %ebx
	.p2align 4,,10
	.p2align 3
.L85:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movq	A_result(%rip), %rdx
	movl	%ebx, %eax
	pushq	248(%rsp)
	.cfi_def_cfa_offset 752
	pushq	248(%rsp)
	.cfi_def_cfa_offset 760
	leaq	(%rdx,%rax,8), %rdi
	pushq	248(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	testl	%eax, %eax
	jne	.L150
	movq	%rbp, %rdi
	addl	$1, %r12d
	addl	%r13d, %ebx
	call	dpu_set_dpu_iterator_next@PLT
	movq	368(%rsp), %rax
	movdqa	352(%rsp), %xmm6
	cmpb	$0, 344(%rsp)
	movq	%rax, 240(%rsp)
	movaps	%xmm6, 224(%rsp)
	jne	.L85
	movl	%r12d, 36(%rsp)
.L83:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movl	$1, %edi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	leaq	.LC19(%rip), %rsi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	movq	128(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L151
	movl	28(%rsp), %esi
	cmpl	%esi, 32(%rsp)
	jle	.L152
.L87:
	movl	72(%rsp), %ecx
	cmpl	%ecx, 36(%rsp)
	jnb	.L37
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L153
	movq	(%rsp), %rdx
	movl	$1, %edi
	xorl	%esi, %esi
	call	dpu_alloc@PLT
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L154
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_load@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L155
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	movq	168(%rsp), %rdi
	call	dpu_get_nr_dpus@PLT
	addl	$1, 84(%rsp)
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L156
	movl	156(%rsp), %edx
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L43
.L138:
	leaq	384(%rsp), %r13
.L99:
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	stop
	jmp	.L36
.L46:
	movl	8(%rsp), %eax
	testl	%eax, %eax
	jne	.L48
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L68:
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movl	$1, %edi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	je	.L98
.L97:
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$168, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	movl	$1, %edi
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L78
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L96
.L49:
	leaq	384(%rsp), %r12
	movl	$1, %esi
	movq	%r12, %rdi
	call	stop
	jmp	.L50
.L152:
	leaq	384(%rsp), %r12
	movl	$4, %esi
	movq	%r12, %rdi
	call	stop
	jmp	.L87
.L142:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 744
	leaq	__func__.4480(%rip), %r9
	movl	$141, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
.L137:
	movq	stderr(%rip), %rdi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	.cfi_def_cfa_offset 736
	movq	104(%rsp), %rdi
	call	malloc@PLT
	cmpl	$0, 48(%rsp)
	movq	%rax, %rdi
	movq	%rax, %r12
	jne	.L100
	call	free@PLT
	jmp	.L36
.L37:
	pushq	%rcx
	.cfi_def_cfa_offset 744
	pushq	216(%rsp)
	.cfi_def_cfa_offset 752
	pushq	216(%rsp)
	.cfi_def_cfa_offset 760
	pushq	216(%rsp)
	.cfi_def_cfa_offset 768
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 736
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L157
	addl	$1, 28(%rsp)
	movl	28(%rsp), %eax
	addl	$1, 92(%rsp)
	cmpl	116(%rsp), %eax
	jne	.L91
.L28:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm7, %xmm7
	movl	$1, %edi
	movsd	608(%rsp), %xmm0
	imull	$1000, 112(%rsp), %eax
	leaq	.LC2(%rip), %rsi
	cvtsi2sdl	%eax, %xmm7
	movl	$1, %eax
	divsd	%xmm7, %xmm0
	movsd	%xmm7, (%rsp)
	call	__printf_chk@PLT
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	616(%rsp), %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	624(%rsp), %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	632(%rsp), %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	640(%rsp), %xmm0
	divsd	(%rsp), %xmm0
	call	__printf_chk@PLT
	movq	A_host(%rip), %rdi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	A_result(%rip), %rsi
	movl	$1, %edx
	jmp	.L31
.L93:
	movq	(%rsi,%rax,8), %rbx
	cmpq	%rbx, (%rdi,%rax,8)
	cmovne	%ecx, %edx
	addq	$1, %rax
.L31:
	cmpl	%eax, 48(%rsp)
	ja	.L93
	testb	%dl, %dl
	je	.L94
	leaq	.LC24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A_host(%rip), %rdi
	call	free@PLT
	movq	A_backup(%rip), %rdi
	call	free@PLT
	movq	A_result(%rip), %rdi
	call	free@PLT
	movq	56(%rsp), %rdi
	call	free@PLT
	xorl	%eax, %eax
.L25:
	movq	664(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L158
	addq	$680, %rsp
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
.L34:
	.cfi_restore_state
	call	free@PLT
	jmp	.L99
.L157:
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$236, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L156:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$125, %r8d
	pushq	%r11
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L155:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$124, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L154:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$123, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L153:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%r12
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$122, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L140:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	movl	$129, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	leaq	__func__.4480(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L139:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$128, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L145:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%r15
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$152, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L144:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$150, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L143:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$144, %r8d
	pushq	%rcx
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L141:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$130, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L158:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L94:
	leaq	.LC25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A_host(%rip), %rdi
	call	free@PLT
	movq	A_backup(%rip), %rdi
	call	free@PLT
	movq	A_result(%rip), %rdi
	call	free@PLT
	movq	56(%rsp), %rdi
	call	free@PLT
	orl	$-1, %eax
	jmp	.L25
.L151:
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$227, %r8d
	pushq	%rsi
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L150:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$224, %r8d
	pushq	%rdi
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L78:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	movl	$201, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	leaq	__func__.4480(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L149:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	movl	$192, %r8d
	pushq	%r11
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L148:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$190, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L147:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%r13
	.cfi_remember_state
	.cfi_def_cfa_offset 744
	movl	$159, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
.L146:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4480(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 744
	movl	$157, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 752
	jmp	.L137
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.4480, @object
	.size	__func__.4480, 5
__func__.4480:
	.string	"main"
	.local	A_result
	.comm	A_result,8,8
	.local	A_backup
	.comm	A_backup,8,8
	.local	A_host
	.comm	A_host,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1093567616
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
