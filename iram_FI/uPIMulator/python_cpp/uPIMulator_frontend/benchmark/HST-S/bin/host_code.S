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
	.section	.rodata.str1.1
.LC3:
	.string	"./input/image_VanHateren.iml"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.ascii	"\nUsage:  ./program [options]\n\nGeneral options:\n    -h   "
	.ascii	"     help\n    -w <W>    # of untimed warmup iterations (def"
	.ascii	"ault=1)\n    -e <E>    # of timed repetition iterations (def"
	.ascii	"ault=3)\n    -x"
	.string	" <X>    Weak (0) or strong (1, 2) scaling (default=0)\n\nBenchmark-specific options:\n    -i <I>    input size (default=1536*1024 elements)\n    -b <B>    histogram size (default=256 bins)\n    -f <F>    input image file (default=../input/image_VanHateren.iml)\n"
	.section	.rodata.str1.1
.LC5:
	.string	"\nUnrecognized option!\n"
.LC6:
	.string	"hi:b:w:e:f:x:z:"
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
	leaq	.LC3(%rip), %rax
	movl	$1572864, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$256, %r14d
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
	movl	$64, 8(%rsp)
	movl	$0, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	$3, 28(%rsp)
	movl	$1, 12(%rsp)
.L9:
	leaq	.LC6(%rip), %rdx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt@PLT
	testl	%eax, %eax
	js	.L24
	subl	$98, %eax
	cmpl	$24, %eax
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
	.long	.L18-.L12
	.long	.L17-.L12
	.long	.L10-.L12
	.long	.L23-.L12
	.long	.L15-.L12
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
	.long	.L14-.L12
	.long	.L13-.L12
	.long	.L10-.L12
	.long	.L11-.L12
	.text
.L10:
	movq	stderr(%rip), %rdi
	leaq	.LC5(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L23:
	movq	stderr(%rip), %rdi
	leaq	.LC4(%rip), %rdx
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
	movl	%eax, 8(%rsp)
	jmp	.L9
.L13:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 24(%rsp)
	jmp	.L9
.L14:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 12(%rsp)
	jmp	.L9
.L15:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r15d
	jmp	.L9
.L17:
	movq	optarg(%rip), %rax
	movq	%rax, 16(%rsp)
	jmp	.L9
.L18:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 28(%rsp)
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
	movl	12(%rsp), %eax
	movl	%r15d, 0(%r13)
	movl	%r14d, 4(%r13)
	movl	%eax, 8(%r13)
	movl	28(%rsp), %eax
	movl	%eax, 12(%r13)
	movq	16(%rsp), %rax
	movq	%rax, 16(%r13)
	movl	24(%rsp), %eax
	movl	%eax, 24(%r13)
	movl	8(%rsp), %eax
	movl	%eax, 28(%r13)
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
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
.LC7:
	.string	"host/app.c"
.LC8:
	.string	"%s:%d(%s): DPU Error (%s)\n"
.LC9:
	.string	"./bin/dpu_code"
.LC10:
	.string	"Allocated %d DPU(s)\n"
.LC11:
	.string	"rb"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"NR_TASKLETS\t%d\tBL\t%d\tinput_size\t%u\n"
	.section	.rodata.str1.1
.LC13:
	.string	"%s does not exist\n"
.LC14:
	.string	"CPU "
.LC15:
	.string	"CPU-DPU "
.LC16:
	.string	"DPU Kernel "
.LC17:
	.string	"DPU-CPU "
.LC18:
	.string	"Load input data\n"
.LC19:
	.string	"DPU_INPUT_ARGUMENTS"
.LC20:
	.string	"__sys_used_mram_end"
.LC21:
	.string	"Run program on DPU(s) \n"
.LC22:
	.string	"Retrieve results\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"[\033[32mOK\033[0m] Outputs are equal\n"
	.align 8
.LC24:
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
	subq	$600, %rsp
	.cfi_def_cfa_offset 656
	movq	%fs:40, %rax
	movq	%rax, 584(%rsp)
	xorl	%eax, %eax
	leaq	176(%rsp), %rdi
	call	input_params
	movl	176(%rsp), %eax
	xorl	%esi, %esi
	movl	$1, %edi
	movl	180(%rsp), %ebp
	movl	%eax, 44(%rsp)
	movl	184(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	188(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	200(%rsp), %eax
	movl	%eax, 76(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 24(%rsp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L148
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_load@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L149
	leaq	108(%rsp), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.L150
	movl	108(%rsp), %edx
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	204(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	76(%rsp), %eax
	testl	%eax, %eax
	je	.L151
	cmpl	$1, 76(%rsp)
	je	.L102
	movl	88(%rsp), %r13d
	imull	44(%rsp), %r13d
.L30:
	movl	%r13d, %eax
	movl	108(%rsp), %ebx
	andl	$-8, %eax
	addl	$8, %eax
	testb	$1, %r13b
	movl	%ebx, %edi
	cmove	%r13d, %eax
	xorl	%edx, %edx
	movl	%eax, 64(%rsp)
	leal	-1(%r13), %eax
	divl	%ebx
	leal	1(%rax), %r12d
	movl	%r12d, %eax
	andl	$-8, %eax
	addl	$8, %eax
	testb	$1, %r12b
	cmovne	%eax, %r12d
	imull	%r12d, %edi
	salq	$2, %rdi
	call	malloc@PLT
	movq	%rax, A(%rip)
	movq	%rax, %r14
	movl	%ebp, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	call	malloc@PLT
	movl	%ebx, %edi
	leaq	480(%rsp), %rbx
	imull	%ebp, %edi
	movq	%rax, histo_host(%rip)
	salq	$2, %rdi
	call	malloc@PLT
	movq	192(%rsp), %rcx
	movl	$100, %edx
	movq	%rbx, %rdi
	movq	%rax, histo(%rip)
	movl	$1, %esi
	xorl	%eax, %eax
	call	__sprintf_chk@PLT
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	fopen@PLT
	movq	%rax, %r9
	testq	%rax, %rax
	je	.L33
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.L39
	movl	44(%rsp), %eax
	leaq	208(%rsp), %rbx
	movl	%r12d, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movq	%rbx, %r12
	movq	%r9, %rbp
	movq	%r14, %rbx
	subl	$1, %eax
	leaq	4(%r14,%rax,4), %rax
	movq	%rax, 16(%rsp)
.L40:
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$2, %esi
	movq	%r12, %rdi
	call	fread@PLT
	movzwl	208(%rsp), %eax
	rolw	$8, %ax
	movzwl	%ax, %edx
	cmpw	$4095, %ax
	jbe	.L37
	movl	$4095, (%rbx)
	addq	$4, %rbx
	cmpq	16(%rsp), %rbx
	jne	.L40
.L146:
	movq	%rbp, %r9
	movl	56(%rsp), %r12d
	movl	48(%rsp), %ebp
.L39:
	movq	%r9, %rdi
	call	fclose@PLT
	movl	76(%rsp), %eax
	testl	%eax, %eax
	jne	.L152
	cmpl	$1, 108(%rsp)
	jbe	.L45
	movq	A(%rip), %rsi
	movl	%r12d, %edx
	movq	%r14, 16(%rsp)
	movl	$1, %ebx
	salq	$2, %rdx
	movl	%r13d, 56(%rsp)
	movl	%r12d, %r13d
	movl	%ebp, 48(%rsp)
	movq	%rsi, %r14
	movq	%rdx, %rbp
.L44:
	movl	%r13d, %eax
	movq	%rbp, %rdx
	movq	%r14, %rsi
	addl	$1, %ebx
	leaq	(%r14,%rax,4), %rdi
	addl	%r12d, %r13d
	call	memcpy@PLT
	cmpl	%ebx, 108(%rsp)
	ja	.L44
	movq	16(%rsp), %r14
	movl	56(%rsp), %r13d
	movl	48(%rsp), %ebp
.L45:
	movl	%r13d, %r8d
	movl	$10, %ecx
	movl	$16, %edx
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	8(%rsp), %eax
	addl	92(%rsp), %eax
	movl	%eax, 60(%rsp)
	testl	%eax, %eax
	jle	.L43
	leal	0(,%r12,4), %eax
	leaq	208(%rsp), %rbx
	movl	%eax, 16(%rsp)
	movl	64(%rsp), %eax
	sall	$2, %eax
	movl	%eax, 56(%rsp)
	movl	%r12d, %eax
	salq	$2, %rax
	movq	%rax, 48(%rsp)
	movl	44(%rsp), %eax
	subl	$1, %eax
	salq	$2, %rax
	movq	%rax, 64(%rsp)
	leal	(%rbp,%rbp), %eax
	movl	%eax, 72(%rsp)
	leaq	384(%rsp), %rax
	movq	%rax, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L83:
	movq	histo_host(%rip), %r13
	movq	32(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
	movl	%ebp, %edx
	imull	108(%rsp), %edx
	xorl	%esi, %esi
	movq	histo(%rip), %rdi
	salq	$2, %rdx
	call	memset@PLT
	cmpl	%r15d, 8(%rsp)
	jg	.L49
	jne	.L50
	movq	$0x000000000, 448(%rsp)
.L50:
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	44(%rsp), %eax
	movq	A(%rip), %rdx
	testl	%eax, %eax
	je	.L52
.L51:
	movq	64(%rsp), %rax
	leaq	4(%rdx,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L54:
	movl	(%rdx), %eax
	addq	$4, %rdx
	imull	%ebp, %eax
	shrl	$12, %eax
	addl	$1, 0(%r13,%rax,4)
	cmpq	%rcx, %rdx
	jne	.L54
	cmpl	%r15d, 8(%rsp)
	jle	.L52
.L53:
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L100:
	movl	108(%rsp), %eax
	subl	$1, %eax
	je	.L57
	movl	16(%rsp), %esi
	movl	%ebp, 312(%rsp)
	movl	%esi, 304(%rsp)
	movl	%esi, 308(%rsp)
.L57:
	movl	56(%rsp), %esi
	movl	%eax, %eax
	movq	%rbx, %rdi
	leaq	304(%rsp), %r13
	salq	$4, %rax
	movl	%esi, 304(%rsp,%rax)
	movl	16(%rsp), %esi
	movl	%ebp, 312(%rsp,%rax)
	movl	%esi, 308(%rsp,%rax)
	movq	24(%rsp), %rsi
	movl	$0, 316(%rsp,%rax)
	call	dpu_set_dpu_iterator_from@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm5
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm5, 144(%rsp)
	je	.L62
	.p2align 4,,10
	.p2align 3
.L58:
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	movl	%eax, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 672
	movq	%rdi, %rax
	pushq	168(%rsp)
	.cfi_def_cfa_offset 680
	salq	$4, %rax
	pushq	168(%rsp)
	.cfi_def_cfa_offset 688
	leaq	0(%r13,%rax), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L153
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm2
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	jne	.L58
.L62:
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	xorl	%r8d, %r8d
	movl	$16, %ecx
	xorl	%edx, %edx
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	leaq	.LC19(%rip), %rsi
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L154
	movq	24(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm6
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm6, 144(%rsp)
	je	.L67
	.p2align 4,,10
	.p2align 3
.L63:
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	imull	%r12d, %eax
	pushq	168(%rsp)
	.cfi_def_cfa_offset 672
	pushq	168(%rsp)
	.cfi_def_cfa_offset 680
	pushq	168(%rsp)
	.cfi_def_cfa_offset 688
	leaq	(%r14,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L155
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm3
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm3, 144(%rsp)
	jne	.L63
.L67:
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	leaq	.LC20(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	movq	80(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L156
	cmpl	%r15d, 8(%rsp)
	jle	.L157
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L98
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L97:
	movq	24(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm7
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm7, 144(%rsp)
	je	.L76
	.p2align 4,,10
	.p2align 3
.L72:
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	imull	%ebp, %eax
	movq	histo(%rip), %rdx
	pushq	168(%rsp)
	.cfi_def_cfa_offset 672
	pushq	168(%rsp)
	.cfi_def_cfa_offset 680
	pushq	168(%rsp)
	.cfi_def_cfa_offset 688
	leaq	(%rdx,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L158
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm4
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm4, 144(%rsp)
	jne	.L72
.L76:
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	xorl	%r8d, %r8d
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	leaq	.LC20(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	movq	64(%rsp), %rcx
	movl	48(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L159
	cmpl	$1, 108(%rsp)
	jbe	.L77
	movq	histo(%rip), %rdi
	movl	72(%rsp), %esi
	movl	%ebp, %r9d
	movl	$1, %r8d
	testl	%ebp, %ebp
	je	.L77
	.p2align 4,,10
	.p2align 3
.L78:
	movq	%rdi, %rdx
	movl	%r9d, %eax
	.p2align 4,,10
	.p2align 3
.L80:
	movl	%eax, %ecx
	addl	$1, %eax
	movl	(%rdi,%rcx,4), %ecx
	addl	%ecx, (%rdx)
	addq	$4, %rdx
	cmpl	%esi, %eax
	jne	.L80
	addl	$1, %r8d
	addl	%ebp, %r9d
	addl	%ebp, %esi
	cmpl	108(%rsp), %r8d
	jb	.L78
.L77:
	cmpl	%r15d, 8(%rsp)
	jle	.L160
	addl	$1, %r15d
	cmpl	60(%rsp), %r15d
	jne	.L83
.L43:
	leaq	.LC14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm5, %xmm5
	movl	$1, %edi
	movsd	448(%rsp), %xmm0
	imull	$1000, 92(%rsp), %eax
	leaq	.LC2(%rip), %rsi
	cvtsi2sdl	%eax, %xmm5
	movl	$1, %eax
	divsd	%xmm5, %xmm0
	movsd	%xmm5, 8(%rsp)
	call	__printf_chk@PLT
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	456(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	464(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	472(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	cmpl	$1, 76(%rsp)
	je	.L161
	cmpl	$2, 76(%rsp)
	je	.L88
	testl	%ebp, %ebp
	je	.L84
	movq	histo_host(%rip), %r9
	movl	108(%rsp), %r8d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	histo(%rip), %rdi
	leal	-1(%rbp), %esi
	movl	$1, %eax
	jmp	.L93
.L107:
	movq	%r10, %rdx
.L93:
	movl	(%r9,%rdx,4), %r10d
	imull	%r8d, %r10d
	cmpl	%r10d, (%rdi,%rdx,4)
	leaq	1(%rdx), %r10
	cmovne	%ecx, %eax
	cmpq	%rsi, %rdx
	jne	.L107
.L87:
	testb	%al, %al
	jne	.L84
	leaq	.LC24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	histo_host(%rip), %rdi
	call	free@PLT
	movq	histo(%rip), %rdi
	call	free@PLT
	pushq	%rcx
	.cfi_def_cfa_offset 664
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	je	.L108
.L95:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$282, %r8d
	pushq	%rdx
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
.L147:
	movq	stderr(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L151:
	.cfi_def_cfa_offset 656
	movl	44(%rsp), %r13d
	imull	108(%rsp), %r13d
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L49:
	movl	44(%rsp), %eax
	movq	A(%rip), %rdx
	testl	%eax, %eax
	jne	.L51
	jmp	.L53
.L52:
	movq	80(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	384(%rsp), %rax
	subq	320(%rsp), %rax
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	392(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	328(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	addsd	%xmm1, %xmm0
	addsd	448(%rsp), %xmm0
	movsd	%xmm0, 448(%rsp)
	call	__printf_chk@PLT
	cmpl	%r15d, 8(%rsp)
	jne	.L56
	movq	$0x000000000, 456(%rsp)
.L56:
	leaq	336(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L100
.L157:
	xorl	%esi, %esi
	leaq	400(%rsp), %rdi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	400(%rsp), %rax
	subq	336(%rsp), %rax
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	408(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	344(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	addsd	%xmm1, %xmm0
	addsd	456(%rsp), %xmm0
	movsd	%xmm0, 456(%rsp)
	call	__printf_chk@PLT
	cmpl	%r15d, 8(%rsp)
	jne	.L69
	movq	$0x000000000, 464(%rsp)
.L69:
	leaq	352(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 664
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L98
	xorl	%esi, %esi
	leaq	416(%rsp), %rdi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	416(%rsp), %rax
	subq	352(%rsp), %rax
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	424(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	360(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	addsd	%xmm1, %xmm0
	addsd	464(%rsp), %xmm0
	movsd	%xmm0, 464(%rsp)
	call	__printf_chk@PLT
	cmpl	%r15d, 8(%rsp)
	jne	.L71
	movq	$0x000000000, 472(%rsp)
.L71:
	leaq	368(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L97
.L160:
	leaq	432(%rsp), %rdi
	xorl	%esi, %esi
	addl	$1, %r15d
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	432(%rsp), %rax
	subq	368(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	440(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	376(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	472(%rsp), %xmm0
	movsd	%xmm0, 472(%rsp)
	cmpl	%r15d, 60(%rsp)
	jne	.L83
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L37:
	movl	%edx, (%rbx)
	addq	$4, %rbx
	cmpq	%rbx, 16(%rsp)
	jne	.L40
	jmp	.L146
.L152:
	cmpl	$2, 76(%rsp)
	jne	.L45
	cmpl	$1, 88(%rsp)
	jbe	.L45
	movl	44(%rsp), %edx
	movq	A(%rip), %rsi
	movl	%r12d, 16(%rsp)
	movl	$1, %ebx
	movl	%ebp, 56(%rsp)
	movq	%rdx, %rcx
	salq	$2, %rdx
	movl	%r15d, 48(%rsp)
	movq	%rsi, %r12
	movl	%r13d, %r15d
	movl	%ecx, %ebp
	movq	%rdx, %r13
.L46:
	movl	%ebp, %eax
	movq	%r13, %rdx
	movq	%r12, %rsi
	addl	$1, %ebx
	leaq	(%r12,%rax,4), %rdi
	call	memcpy@PLT
	addl	44(%rsp), %ebp
	cmpl	%ebx, 88(%rsp)
	jne	.L46
	movl	%r15d, %r13d
	movl	16(%rsp), %r12d
	movl	56(%rsp), %ebp
	movl	48(%rsp), %r15d
	jmp	.L45
.L84:
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	histo_host(%rip), %rdi
	call	free@PLT
	movq	histo(%rip), %rdi
	call	free@PLT
	pushq	%rsi
	.cfi_def_cfa_offset 664
	pushq	136(%rsp)
	.cfi_def_cfa_offset 672
	pushq	136(%rsp)
	.cfi_def_cfa_offset 680
	pushq	136(%rsp)
	.cfi_def_cfa_offset 688
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 656
	testl	%eax, %eax
	jne	.L95
.L25:
	movq	584(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L162
	addq	$600, %rsp
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
.L88:
	.cfi_restore_state
	testl	%ebp, %ebp
	je	.L84
	movq	histo_host(%rip), %r8
	leal	-1(%rbp), %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	histo(%rip), %rdi
	movl	$1, %eax
	jmp	.L91
.L106:
	movq	%r9, %rdx
.L91:
	movl	88(%rsp), %r9d
	imull	(%r8,%rdx,4), %r9d
	cmpl	%r9d, (%rdi,%rdx,4)
	leaq	1(%rdx), %r9
	cmovne	%ecx, %eax
	cmpq	%rdx, %rsi
	jne	.L106
	jmp	.L87
.L161:
	testl	%ebp, %ebp
	je	.L84
	movq	histo_host(%rip), %r8
	leal	-1(%rbp), %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	histo(%rip), %rdi
	movl	$1, %eax
	jmp	.L86
.L105:
	movq	%r9, %rdx
.L86:
	movl	(%rdi,%rdx,4), %ebx
	cmpl	%ebx, (%r8,%rdx,4)
	leaq	1(%rdx), %r9
	cmovne	%ecx, %eax
	cmpq	%rsi, %rdx
	jne	.L105
	jmp	.L87
.L158:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	movl	$212, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L155:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$171, %r8d
	pushq	%r11
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L153:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	movl	$167, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L102:
	.cfi_restore_state
	movl	44(%rsp), %r13d
	jmp	.L30
.L108:
	orl	$-1, %eax
	jmp	.L25
.L150:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$92, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L162:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L149:
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$91, %r8d
	pushq	%rcx
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L156:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$173, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L98:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movl	$186, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	leaq	__func__.4471(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L154:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	movl	$169, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L159:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$214, %r8d
	pushq	%rdi
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L148:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.4471(%rip), %r9
	movl	$90, %r8d
	pushq	%rsi
	.cfi_remember_state
	.cfi_def_cfa_offset 664
	pushq	%rax
	.cfi_def_cfa_offset 672
	jmp	.L147
.L33:
	.cfi_restore_state
	movl	$1, %edi
	movq	%rbx, %rdx
	leaq	.LC13(%rip), %rsi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.4471, @object
	.size	__func__.4471, 5
__func__.4471:
	.string	"main"
	.local	histo
	.comm	histo,8,8
	.local	histo_host
	.comm	histo_host,8,8
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
