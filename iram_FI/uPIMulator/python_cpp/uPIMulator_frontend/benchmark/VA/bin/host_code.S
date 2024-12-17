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
	.string	"p\n    -w <W>    # of untimed warmup iterations (default=1)\n    -e <E>    # of timed repetition iterations (default=3)\n    -x <X>    Weak (0) or strong (1) scaling (default=0)\n\nBenchmark-specific options:\n    -i <I>    input size (default=2621440 elements)\n"
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
	movl	$2621440, %r13d
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
	.string	"CPU "
.LC13:
	.string	"CPU-DPU "
.LC14:
	.string	"DPU Kernel "
.LC15:
	.string	"DPU-CPU "
.LC16:
	.string	"Load input data\n"
.LC17:
	.string	"DPU_INPUT_ARGUMENTS"
.LC18:
	.string	"__sys_used_mram_end"
.LC19:
	.string	"Run program on DPU(s) \n"
.LC20:
	.string	"Display DPU Logs\n"
.LC21:
	.string	"Retrieve results\n"
.LC22:
	.string	"DPU#%d:\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"[\033[32mOK\033[0m] Outputs are equal\n"
	.section	.rodata.str1.1
.LC24:
	.string	"%d: %u -- %u\n"
	.section	.rodata.str1.8
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
	subq	$504, %rsp
	.cfi_def_cfa_offset 560
	movq	%fs:40, %rax
	movq	%rax, 488(%rsp)
	xorl	%eax, %eax
	call	input_params
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rbp
	movl	%eax, 44(%rsp)
	movq	%rax, %rbx
	leaq	144(%rsp), %rax
	sarq	$32, %rbp
	movq	%rdx, 120(%rsp)
	movq	%rax, %rdx
	movl	%ebp, 40(%rsp)
	movq	%rax, 16(%rsp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L141
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	xorl	%esi, %esi
	leaq	.LC8(%rip), %rdi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_load@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L142
	leaq	140(%rsp), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_get_nr_dpus@PLT
	movl	%eax, 40(%rsp)
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L143
	movl	140(%rsp), %edx
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	120(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L144
.L26:
	movl	44(%rsp), %eax
	movl	140(%rsp), %ebx
	movl	%eax, %r15d
	leal	-1(%rax), %ecx
	andl	$-8, %r15d
	movl	%ecx, 48(%rsp)
	addl	$8, %r15d
	testb	$1, %al
	cmove	%eax, %r15d
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%r15d, %r14d
	leal	1(%rax), %r12d
	movl	%r12d, %esi
	andl	$-8, %esi
	movl	%esi, %eax
	addl	$8, %eax
	testb	$1, %r12b
	cmovne	%eax, %r12d
	imull	%r12d, %ebx
	leaq	0(,%rbx,4), %r15
	movq	%r15, %rdi
	call	malloc@PLT
	movq	%r15, %rdi
	movq	%rax, A(%rip)
	movq	%rax, %r13
	call	malloc@PLT
	movq	%r15, %rdi
	movq	%rax, 56(%rsp)
	movq	%rax, B(%rip)
	call	malloc@PLT
	movq	%r15, %rdi
	xorl	%r15d, %r15d
	movq	%rax, C(%rip)
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, 64(%rsp)
	movq	%rax, C2(%rip)
	call	srand@PLT
	movl	44(%rsp), %edx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC10(%rip), %rsi
	call	__printf_chk@PLT
	movl	44(%rsp), %eax
	movl	48(%rsp), %ebx
	testl	%eax, %eax
	je	.L33
	movq	%rbp, 24(%rsp)
	movq	%r15, %rbp
	movq	%rbx, %r15
	movq	56(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L32:
	call	rand@PLT
	movl	%eax, 0(%r13,%rbp,4)
	call	rand@PLT
	movl	%eax, (%rbx,%rbp,4)
	movq	%rbp, %rax
	addq	$1, %rbp
	cmpq	%rax, %r15
	jne	.L32
	movq	24(%rsp), %rbp
.L33:
	movl	$10, %ecx
	movl	$16, %edx
	leaq	.LC11(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	120(%rsp), %eax
	addl	%ebp, %eax
	movl	%eax, 72(%rsp)
	testl	%eax, %eax
	jle	.L31
	leal	0(,%r12,4), %eax
	movl	44(%rsp), %ecx
	leaq	208(%rsp), %rbx
	movl	%eax, 24(%rsp)
	leal	0(,%r14,4), %eax
	leaq	.LC22(%rip), %r15
	movl	%eax, 52(%rsp)
	movl	%r12d, %eax
	salq	$2, %rax
	movq	%rax, 32(%rsp)
	movl	%ecx, %eax
	andl	$-4, %ecx
	shrl	$2, %eax
	movl	%ecx, 76(%rsp)
	salq	$4, %rax
	movq	%rax, 80(%rsp)
	movl	%ecx, %eax
	salq	$2, %rax
	movq	%rax, 88(%rsp)
	leal	1(%rcx), %eax
	movl	%eax, 96(%rsp)
	salq	$2, %rax
	movq	%rax, 104(%rsp)
	leal	2(%rcx), %eax
	movl	%eax, 100(%rsp)
	salq	$2, %rax
	movq	%rax, 112(%rsp)
	.p2align 4,,10
	.p2align 3
.L84:
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jg	.L36
	jne	.L37
	movq	$0x000000000, 448(%rsp)
.L37:
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L36:
	movl	44(%rsp), %eax
	movq	B(%rip), %rcx
	movq	A(%rip), %rsi
	movq	C(%rip), %rdx
	testl	%eax, %eax
	je	.L44
	leaq	15(%rsi), %rax
	subq	%rdx, %rax
	cmpq	$30, %rax
	leaq	15(%rcx), %rax
	seta	%dil
	subq	%rdx, %rax
	cmpq	$30, %rax
	seta	%al
	testb	%al, %dil
	je	.L41
	cmpl	$2, 48(%rsp)
	jbe	.L41
	movq	80(%rsp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L42:
	movdqu	(%rcx,%rax), %xmm0
	movdqu	(%rsi,%rax), %xmm6
	paddd	%xmm6, %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L42
	movl	44(%rsp), %edi
	movl	76(%rsp), %eax
	cmpl	%eax, %edi
	je	.L44
	movq	88(%rsp), %r10
	movl	(%rcx,%r10), %eax
	addl	(%rsi,%r10), %eax
	movl	%eax, (%rdx,%r10)
	movl	96(%rsp), %eax
	cmpl	%eax, %edi
	jbe	.L44
	movq	104(%rsp), %r11
	movl	(%rsi,%r11), %eax
	addl	(%rcx,%r11), %eax
	movl	%eax, (%rdx,%r11)
	cmpl	%edi, 100(%rsp)
	jnb	.L44
	movq	112(%rsp), %rdi
	movl	(%rsi,%rdi), %eax
	addl	(%rcx,%rdi), %eax
	movl	%eax, (%rdx,%rdi)
.L44:
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jle	.L145
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L91:
	movl	140(%rsp), %eax
	subl	$1, %eax
	je	.L49
	movl	24(%rsp), %ecx
	movl	%ecx, 308(%rsp)
	movl	%ecx, 312(%rsp)
.L49:
	movl	%eax, %eax
	movl	52(%rsp), %ecx
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	(%rax,%rax,2), %rax
	leaq	308(%rsp), %rbp
	salq	$2, %rax
	movl	%ecx, 308(%rsp,%rax)
	movl	24(%rsp), %ecx
	movl	$0, 316(%rsp,%rax)
	movl	%ecx, 312(%rsp,%rax)
	call	dpu_set_dpu_iterator_from@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm7
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 192(%rsp)
	movq	280(%rsp), %rdx
	movaps	%xmm7, 176(%rsp)
	je	.L54
	.p2align 4,,10
	.p2align 3
.L50:
	movq	%rdx, 184(%rsp)
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	leaq	(%rax,%rax,2), %rax
	pushq	200(%rsp)
	.cfi_def_cfa_offset 576
	leaq	0(%rbp,%rax,4), %rdi
	pushq	200(%rsp)
	.cfi_def_cfa_offset 584
	pushq	200(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L146
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm2
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 192(%rsp)
	movq	280(%rsp), %rdx
	movaps	%xmm2, 176(%rsp)
	jne	.L50
.L54:
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	xorl	%r8d, %r8d
	movl	$12, %ecx
	xorl	%edx, %edx
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	.LC17(%rip), %rsi
	xorl	%edi, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L147
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movl	256(%rsp), %eax
	movdqa	272(%rsp), %xmm7
	movaps	%xmm7, 176(%rsp)
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L55:
	movq	%rdx, 184(%rsp)
	imull	%r12d, %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	pushq	200(%rsp)
	.cfi_def_cfa_offset 576
	pushq	200(%rsp)
	.cfi_def_cfa_offset 584
	pushq	200(%rsp)
	.cfi_def_cfa_offset 592
	leaq	0(%r13,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L148
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movl	256(%rsp), %eax
	movdqa	272(%rsp), %xmm3
	movaps	%xmm3, 176(%rsp)
.L139:
	movq	288(%rsp), %rdx
	cmpb	$0, 264(%rsp)
	movq	%rdx, 192(%rsp)
	movq	280(%rsp), %rdx
	jne	.L55
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	xorl	%edi, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	.LC18(%rip), %rsi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	movq	64(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L149
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	288(%rsp), %rdx
	movq	56(%rsp), %rbp
	movdqa	272(%rsp), %xmm1
	cmpb	$0, 264(%rsp)
	movq	%rdx, 192(%rsp)
	movl	256(%rsp), %eax
	movq	280(%rsp), %rdx
	movaps	%xmm1, 176(%rsp)
	je	.L64
	.p2align 4,,10
	.p2align 3
.L60:
	movq	%rdx, 184(%rsp)
	imull	%r12d, %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	pushq	200(%rsp)
	.cfi_def_cfa_offset 576
	pushq	200(%rsp)
	.cfi_def_cfa_offset 584
	pushq	200(%rsp)
	.cfi_def_cfa_offset 592
	leaq	0(%rbp,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L150
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm4
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 192(%rsp)
	movq	280(%rsp), %rdx
	movaps	%xmm4, 176(%rsp)
	jne	.L60
.L64:
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	xorl	%r8d, %r8d
	leaq	.LC18(%rip), %rsi
	xorl	%edi, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	movq	64(%rsp), %rcx
	movl	56(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L151
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jle	.L152
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	movl	$1, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L89
	leaq	.LC20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, 264(%rsp)
	movq	280(%rsp), %r14
	je	.L153
.L69:
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L74:
	movq	%r15, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%ebp, %edx
	call	__printf_chk@PLT
	movq	stdout(%rip), %rsi
	movq	%r14, %rdi
	call	dpulog_read_for_dpu@PLT
	testl	%eax, %eax
	jne	.L154
	movq	%rbx, %rdi
	addl	$1, %ebp
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, 264(%rsp)
	movq	280(%rsp), %r14
	jne	.L74
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jg	.L72
.L71:
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jne	.L76
	movq	$0x000000000, 472(%rsp)
.L76:
	leaq	368(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L72:
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	288(%rsp), %rdx
	movq	64(%rsp), %rbp
	movdqa	272(%rsp), %xmm7
	cmpb	$0, 264(%rsp)
	movq	%rdx, 192(%rsp)
	movl	256(%rsp), %eax
	movq	280(%rsp), %rdx
	movaps	%xmm7, 176(%rsp)
	je	.L81
	.p2align 4,,10
	.p2align 3
.L77:
	movq	%rdx, 184(%rsp)
	imull	%r12d, %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	pushq	200(%rsp)
	.cfi_def_cfa_offset 576
	pushq	200(%rsp)
	.cfi_def_cfa_offset 584
	pushq	200(%rsp)
	.cfi_def_cfa_offset 592
	leaq	0(%rbp,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L155
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	288(%rsp), %rdx
	movdqa	272(%rsp), %xmm5
	cmpb	$0, 264(%rsp)
	movl	256(%rsp), %eax
	movq	%rdx, 192(%rsp)
	movq	280(%rsp), %rdx
	movaps	%xmm5, 176(%rsp)
	jne	.L77
.L81:
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	xorl	%r8d, %r8d
	movl	$1, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	.LC18(%rip), %rsi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	movq	64(%rsp), %rcx
	movl	56(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L156
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jle	.L157
	addl	$1, 8(%rsp)
	movl	8(%rsp), %eax
	cmpl	72(%rsp), %eax
	jne	.L84
.L31:
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm1, %xmm1
	movl	$1, %edi
	movsd	448(%rsp), %xmm0
	imull	$1000, 120(%rsp), %eax
	leaq	.LC2(%rip), %rsi
	cvtsi2sdl	%eax, %xmm1
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	__printf_chk@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	456(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	464(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	472(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	cmpl	$0, 44(%rsp)
	je	.L35
	movl	48(%rsp), %ebx
	movq	64(%rsp), %r13
	xorl	%ebp, %ebp
	movl	$1, %edx
	leaq	.LC24(%rip), %r12
	jmp	.L88
.L95:
	movq	%rax, %rbp
.L88:
	movq	C(%rip), %rax
	movl	0(%r13,%rbp,4), %r8d
	movl	(%rax,%rbp,4), %ecx
	cmpl	%r8d, %ecx
	je	.L87
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edx, %edx
.L87:
	leaq	1(%rbp), %rax
	cmpq	%rbx, %rbp
	jne	.L95
	testb	%dl, %dl
	jne	.L35
	leaq	.LC25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	B(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C2(%rip), %rdi
	call	free@PLT
	pushq	%rcx
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	je	.L96
.L85:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$221, %r8d
	pushq	%rdx
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
.L140:
	movq	stderr(%rip), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L153:
	.cfi_def_cfa_offset 560
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L145:
	leaq	384(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	384(%rsp), %rax
	subq	320(%rsp), %rax
	leaq	.LC16(%rip), %rsi
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
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jne	.L48
	movq	$0x000000000, 456(%rsp)
.L48:
	leaq	336(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L152:
	leaq	400(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	400(%rsp), %rax
	subq	336(%rsp), %rax
	leaq	.LC19(%rip), %rsi
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
	movl	8(%rsp), %ecx
	cmpl	%ecx, 40(%rsp)
	jne	.L66
	movq	$0x000000000, 464(%rsp)
.L66:
	leaq	352(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 568
	movl	$1, %edi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L89
	xorl	%esi, %esi
	leaq	416(%rsp), %rdi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	416(%rsp), %rax
	subq	352(%rsp), %rax
	leaq	.LC20(%rip), %rsi
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
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, 264(%rsp)
	movq	280(%rsp), %r14
	jne	.L69
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L157:
	leaq	432(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	432(%rsp), %rax
	subq	368(%rsp), %rax
	addl	$1, 8(%rsp)
	cvtsi2sdq	%rax, %xmm0
	movq	440(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	376(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	8(%rsp), %eax
	addsd	%xmm1, %xmm0
	addsd	472(%rsp), %xmm0
	movsd	%xmm0, 472(%rsp)
	cmpl	72(%rsp), %eax
	jne	.L84
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L41:
	movl	48(%rsp), %r8d
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L46:
	movl	(%rsi,%rax,4), %edi
	addl	(%rcx,%rax,4), %edi
	movl	%edi, (%rdx,%rax,4)
	movq	%rax, %rdi
	addq	$1, %rax
	cmpq	%rdi, %r8
	jne	.L46
	jmp	.L44
.L144:
	movl	140(%rsp), %eax
	imull	%ebx, %eax
	movl	%eax, 44(%rsp)
	jmp	.L26
.L35:
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	B(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C2(%rip), %rdi
	call	free@PLT
	pushq	%rsi
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	pushq	168(%rsp)
	.cfi_def_cfa_offset 584
	pushq	168(%rsp)
	.cfi_def_cfa_offset 592
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 560
	testl	%eax, %eax
	jne	.L85
.L86:
	movq	488(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L158
	addq	$504, %rsp
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
.L150:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	movl	$134, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L148:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	pushq	%r12
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	movl	$129, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L154:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movl	$164, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	leaq	__func__.3579(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L155:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	movl	$176, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L146:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	pushq	%r14
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	movl	$124, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L96:
	.cfi_restore_state
	orl	$-1, %eax
	jmp	.L86
.L149:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	movl	$131, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L89:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$150, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L147:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	pushq	%r13
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	movl	$126, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L141:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$66, %r8d
	pushq	%rsi
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L151:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$136, %r8d
	pushq	%r11
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L143:
	.cfi_restore_state
	movl	8(%rsp), %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$68, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L156:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$178, %r8d
	pushq	%rdi
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L142:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3579(%rip), %r9
	movl	$67, %r8d
	pushq	%rcx
	.cfi_remember_state
	.cfi_def_cfa_offset 568
	pushq	%rax
	.cfi_def_cfa_offset 576
	jmp	.L140
.L158:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3579, @object
	.size	__func__.3579, 5
__func__.3579:
	.string	"main"
	.local	C2
	.comm	C2,8,8
	.local	C
	.comm	C,8,8
	.local	B
	.comm	B,8,8
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
