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
	.ascii	"\nUsage:  ./program [options]\n\nGeneral options:\n    -h   "
	.ascii	"     hel"
	.string	"p\n    -w <W>    # of untimed warmup iterations (default=1)\n    -e <E>    # of timed repetition iterations (default=3)\n    -x <X>    Weak (0) or strong (1) scaling (default=0)\n\nBenchmark-specific options:\n    -i <I>    input size (default=6553600 elements)\n"
	.section	.rodata.str1.1
.LC4:
	.string	"\nUnrecognized option!\n"
.LC5:
	.string	"hi:w:e:x:"
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
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$6553600, %r13d
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
	movl	$3, 12(%rsp)
.L9:
	leaq	.LC5(%rip), %rdx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt@PLT
	testl	%eax, %eax
	js	.L21
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
	.long	.L16-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L20-.L12
	.long	.L14-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
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
	movl	%eax, %r14d
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
	movl	%eax, 12(%rsp)
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
	.string	"./bin/dpu_code"
.LC9:
	.string	"Allocated %d DPU(s)\n"
.LC10:
	.string	"nr_elements\t%u\t"
.LC11:
	.string	"NR_TASKLETS\t%d\tBL\t%d\n"
.LC12:
	.string	"Load input data\n"
.LC13:
	.string	"DPU_INPUT_ARGUMENTS"
.LC14:
	.string	"__sys_used_mram_end"
.LC15:
	.string	"Run program on DPU(s) \n"
.LC16:
	.string	"Retrieve results\n"
.LC17:
	.string	"DPU_RESULTS"
.LC18:
	.string	"CPU "
.LC19:
	.string	"CPU-DPU "
.LC20:
	.string	"DPU Kernel "
.LC21:
	.string	"Inter-DPU "
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"[\033[32mOK\033[0m] Outputs are equal\n"
	.align 8
.LC23:
	.string	"[\033[31mERROR\033[0m] Outputs differ!\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	call	input_params
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rbx
	movl	%eax, -432(%rbp)
	movq	%rax, %r12
	leaq	-400(%rbp), %rax
	sarq	$32, %rbx
	movq	%rdx, -520(%rbp)
	movq	%rax, %rdx
	movl	%ebx, -428(%rbp)
	movq	%rax, -448(%rbp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L122
	subq	$8, %rsp
	pushq	-384(%rbp)
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	call	dpu_load@PLT
	addq	$32, %rsp
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L123
	subq	$8, %rsp
	pushq	-384(%rbp)
	leaq	-404(%rbp), %rdi
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	movl	%eax, -424(%rbp)
	testl	%eax, %eax
	jne	.L124
	movl	-404(%rbp), %edx
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	-520(%rbp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L125
.L26:
	movl	-432(%rbp), %r13d
	movl	-404(%rbp), %ecx
	xorl	%edx, %edx
	leal	-1(%r13), %eax
	movl	%eax, -476(%rbp)
	divl	%ecx
	leal	1(%rax), %r15d
	imull	%r15d, %ecx
	leaq	0(,%rcx,8), %rdi
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, A(%rip)
	movq	%rax, %r14
	call	srand@PLT
	xorl	%eax, %eax
	movl	%r13d, %edx
	movl	$1, %edi
	leaq	.LC10(%rip), %rsi
	call	__printf_chk@PLT
	testl	%r13d, %r13d
	je	.L31
	movl	-476(%rbp), %eax
	movq	%r14, %r13
	leaq	8(%r14,%rax,8), %r12
.L30:
	call	rand@PLT
	addq	$8, %r13
	cltq
	movq	%rax, -8(%r13)
	cmpq	%r12, %r13
	jne	.L30
.L31:
	movl	$10, %ecx
	movl	$16, %edx
	leaq	.LC11(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	-520(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -508(%rbp)
	testl	%eax, %eax
	jle	.L126
	movl	-432(%rbp), %esi
	leal	0(,%r15,8), %eax
	leaq	-336(%rbp), %r12
	movl	%eax, -480(%rbp)
	leal	0(,%rsi,8), %eax
	movl	%eax, -484(%rbp)
	movl	%r15d, %eax
	salq	$3, %rax
	movq	%rax, -496(%rbp)
	movl	%esi, %eax
	andl	$-2, %esi
	shrl	%eax
	movl	%esi, -488(%rbp)
	salq	$4, %rax
	movq	%rax, -504(%rbp)
.L72:
	movl	-424(%rbp), %ecx
	cmpl	%ecx, -428(%rbp)
	jg	.L32
	jne	.L33
	movq	$0x000000000, -96(%rbp)
.L33:
	leaq	-224(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	-432(%rbp), %eax
	movq	A(%rip), %rcx
	testl	%eax, %eax
	je	.L85
.L83:
	cmpl	$2, -476(%rbp)
	jbe	.L86
	movq	-504(%rbp), %rsi
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
	leaq	(%rcx,%rsi), %rdx
	.p2align 4,,10
	.p2align 3
.L36:
	movdqu	(%rax), %xmm5
	addq	$16, %rax
	paddq	%xmm5, %xmm0
	cmpq	%rax, %rdx
	jne	.L36
	movdqa	%xmm0, %xmm1
	movl	-488(%rbp), %eax
	psrldq	$8, %xmm1
	paddq	%xmm1, %xmm0
	movq	%xmm0, -440(%rbp)
	cmpl	%eax, -432(%rbp)
	je	.L39
.L35:
	movl	%eax, %edx
	movl	-432(%rbp), %ebx
	movq	(%rcx,%rdx,8), %rdx
	addq	%rdx, -440(%rbp)
	leal	1(%rax), %edx
	movq	-440(%rbp), %rsi
	cmpl	%edx, %ebx
	jbe	.L39
	movq	(%rcx,%rdx,8), %rdx
	addl	$2, %eax
	addq	%rdx, %rsi
	movq	%rsi, -440(%rbp)
	cmpl	%eax, %ebx
	jbe	.L39
	movq	(%rcx,%rax,8), %rax
	addq	%rax, %rsi
	movq	%rsi, -440(%rbp)
.L39:
	movl	-424(%rbp), %ecx
	cmpl	%ecx, -428(%rbp)
	jle	.L34
.L38:
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L82:
	movl	-404(%rbp), %eax
	subl	$1, %eax
	je	.L41
	movl	$0, -236(%rbp)
	movl	-480(%rbp), %ecx
	movl	%ecx, -240(%rbp)
.L41:
	movl	-484(%rbp), %ecx
	movq	-448(%rbp), %rsi
	movl	%eax, %eax
	movq	%r12, %rdi
	salq	$4, %rax
	leaq	-240(%rbp), %rbx
	movl	%ecx, -240(%rbp,%rax)
	movl	$0, -236(%rbp,%rax)
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-272(%rbp), %xmm6
	movq	-256(%rbp), %rdx
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %eax
	movq	%rdx, -352(%rbp)
	movaps	%xmm6, -368(%rbp)
	je	.L46
	.p2align 4,,10
	.p2align 3
.L42:
	movl	%eax, %edi
	subq	$8, %rsp
	pushq	-352(%rbp)
	movq	%rdi, %rax
	pushq	-360(%rbp)
	pushq	-368(%rbp)
	salq	$4, %rax
	leaq	(%rbx,%rax), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L127
	movq	%r12, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-272(%rbp), %xmm2
	movq	-256(%rbp), %rdx
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %eax
	movq	%rdx, -352(%rbp)
	movaps	%xmm2, -368(%rbp)
	jne	.L42
.L46:
	subq	$8, %rsp
	pushq	-384(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-392(%rbp)
	movl	$16, %ecx
	leaq	.LC13(%rip), %rsi
	xorl	%edi, %edi
	pushq	-400(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L128
	movq	-448(%rbp), %rsi
	movq	%r12, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-272(%rbp), %xmm7
	movq	-256(%rbp), %rdx
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %eax
	movq	%rdx, -352(%rbp)
	movaps	%xmm7, -368(%rbp)
	je	.L51
	.p2align 4,,10
	.p2align 3
.L47:
	imull	%r15d, %eax
	subq	$8, %rsp
	pushq	-352(%rbp)
	pushq	-360(%rbp)
	pushq	-368(%rbp)
	leaq	(%r14,%rax,8), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L129
	movq	%r12, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-272(%rbp), %xmm3
	movq	-256(%rbp), %rdx
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %eax
	movq	%rdx, -352(%rbp)
	movaps	%xmm3, -368(%rbp)
	jne	.L47
.L51:
	subq	$8, %rsp
	pushq	-384(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-392(%rbp)
	leaq	.LC14(%rip), %rsi
	xorl	%edi, %edi
	pushq	-400(%rbp)
	movq	-496(%rbp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L130
	movl	-424(%rbp), %esi
	cmpl	%esi, -428(%rbp)
	jle	.L131
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	subq	$8, %rsp
	pushq	-384(%rbp)
	movl	$1, %edi
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L80
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	-404(%rbp), %eax
	movq	%rsp, %rsi
	movq	%rsp, -456(%rbp)
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	%rdx, %rcx
	andq	$-4096, %rcx
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	cmpq	%rcx, %rsp
	je	.L77
.L132:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L132
.L77:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	je	.L78
	orq	$0, -8(%rsp,%rdx)
.L78:
	movq	%rsp, -472(%rbp)
.L79:
	leaq	15(,%rax,8), %rax
	movq	%rsp, %rcx
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	cmpq	%rdx, %rsp
	je	.L60
.L133:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L133
.L60:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L61
	orq	$0, -8(%rsp,%rax)
.L61:
	movq	-448(%rbp), %rsi
	movq	%r12, %rdi
	movq	%rsp, %r13
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-272(%rbp), %xmm7
	movq	-256(%rbp), %rax
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %ebx
	movq	%rax, -352(%rbp)
	movaps	%xmm7, -368(%rbp)
	je	.L66
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$256, %edi
	call	malloc@PLT
	subq	$8, %rsp
	movq	%rax, 0(%r13,%rbx,8)
	movq	%rax, %rdi
	pushq	-352(%rbp)
	pushq	-360(%rbp)
	pushq	-368(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L134
	movq	%r12, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-272(%rbp), %xmm4
	movq	-256(%rbp), %rax
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %ebx
	movq	%rax, -352(%rbp)
	movaps	%xmm4, -368(%rbp)
	jne	.L62
.L66:
	subq	$8, %rsp
	pushq	-384(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-392(%rbp)
	movl	$256, %ecx
	movl	$1, %edi
	leaq	.LC17(%rip), %rsi
	pushq	-400(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L135
	movq	-448(%rbp), %rsi
	movq	%r12, %rdi
	xorl	%ebx, %ebx
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %eax
	je	.L67
	movq	%r14, -464(%rbp)
	movq	-472(%rbp), %r14
	movl	%r15d, -472(%rbp)
	.p2align 4,,10
	.p2align 3
.L68:
	movl	%eax, %eax
	movq	0(%r13,%rax,8), %rdi
	salq	$4, %rax
	movq	8(%rdi), %r15
	movq	%r15, 8(%r14,%rax)
	addq	%r15, %rbx
	call	free@PLT
	movq	%r12, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, -280(%rbp)
	movl	-288(%rbp), %eax
	jne	.L68
	movq	-464(%rbp), %r14
	movl	-472(%rbp), %r15d
.L67:
	movl	-424(%rbp), %ecx
	cmpl	%ecx, -428(%rbp)
	jle	.L136
.L69:
	addl	$1, -424(%rbp)
	movq	-456(%rbp), %rsp
	movl	-424(%rbp), %eax
	cmpl	-508(%rbp), %eax
	jne	.L72
.L29:
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm6, %xmm6
	movsd	-96(%rbp), %xmm0
	imull	$1000, -520(%rbp), %eax
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdl	%eax, %xmm6
	movl	$1, %eax
	divsd	%xmm6, %xmm0
	movsd	%xmm6, -424(%rbp)
	call	__printf_chk@PLT
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-88(%rbp), %xmm0
	divsd	-424(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-80(%rbp), %xmm0
	divsd	-424(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-72(%rbp), %xmm0
	divsd	-424(%rbp), %xmm0
	call	__printf_chk@PLT
	cmpq	%rbx, -440(%rbp)
	je	.L137
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	pushq	%rcx
	pushq	-384(%rbp)
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L88
.L74:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	movl	$258, %r8d
	pushq	%rdx
	pushq	%rax
.L121:
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	movl	-432(%rbp), %eax
	movq	A(%rip), %rcx
	testl	%eax, %eax
	jne	.L83
	movq	$0, -440(%rbp)
	jmp	.L38
.L85:
	movq	$0, -440(%rbp)
.L34:
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-160(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-224(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-152(%rbp), %rax
	subq	-216(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	call	__printf_chk@PLT
	movl	-424(%rbp), %ecx
	cmpl	%ecx, -428(%rbp)
	jne	.L40
	movq	$0x000000000, -88(%rbp)
.L40:
	leaq	-208(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L82
.L131:
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-144(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-208(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-136(%rbp), %rax
	subq	-200(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	call	__printf_chk@PLT
	movl	-424(%rbp), %esi
	cmpl	%esi, -428(%rbp)
	jne	.L53
	movq	$0x000000000, -80(%rbp)
.L53:
	leaq	-192(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	pushq	-384(%rbp)
	movl	$1, %edi
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L80
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-128(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-192(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-120(%rbp), %rax
	subq	-184(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	call	__printf_chk@PLT
	movl	-404(%rbp), %eax
	movq	%rsp, %rcx
	movq	%rsp, -456(%rbp)
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	cmpq	%rdx, %rsp
	je	.L56
.L138:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L138
.L56:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L57
	orq	$0, -8(%rsp,%rax)
.L57:
	movq	%rsp, -472(%rbp)
	movl	-424(%rbp), %esi
	cmpl	%esi, -428(%rbp)
	jne	.L58
	movq	$0x000000000, -72(%rbp)
.L58:
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	-404(%rbp), %eax
	jmp	.L79
.L136:
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-112(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-176(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-104(%rbp), %rax
	subq	-168(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L69
.L86:
	movq	$0, -440(%rbp)
	xorl	%eax, %eax
	jmp	.L35
.L125:
	movl	-404(%rbp), %eax
	imull	%r12d, %eax
	movl	%eax, -432(%rbp)
	jmp	.L26
.L137:
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	pushq	%rsi
	pushq	-384(%rbp)
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L74
.L75:
	movq	-56(%rbp), %rsi
	xorq	%fs:40, %rsi
	jne	.L139
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L127:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r13
	leaq	__func__.3578(%rip), %r9
	pushq	%rax
	movl	$122, %r8d
	jmp	.L121
.L129:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%rbx
	leaq	__func__.3578(%rip), %r9
	pushq	%rax
	movl	$126, %r8d
	jmp	.L121
.L134:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$172, %r8d
	pushq	%r9
	leaq	__func__.3578(%rip), %r9
	pushq	%rax
	jmp	.L121
.L139:
	call	__stack_chk_fail@PLT
.L124:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	movl	$66, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L121
.L123:
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	movl	$65, %r8d
	pushq	%rcx
	pushq	%rax
	jmp	.L121
.L122:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	movl	$64, %r8d
	pushq	%rsi
	pushq	%rax
	jmp	.L121
.L128:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r12
	leaq	__func__.3578(%rip), %r9
	pushq	%rax
	movl	$124, %r8d
	jmp	.L121
.L135:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	pushq	%r8
	movl	$174, %r8d
	pushq	%rax
	jmp	.L121
.L80:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	movl	$141, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L121
.L130:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3578(%rip), %r9
	movl	$128, %r8d
	pushq	%r11
	pushq	%rax
	jmp	.L121
.L88:
	orl	$-1, %eax
	jmp	.L75
.L126:
	movq	$0, -440(%rbp)
	xorl	%ebx, %ebx
	jmp	.L29
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3578, @object
	.size	__func__.3578, 5
__func__.3578:
	.string	"main"
	.local	A
	.comm	A,8,8
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
