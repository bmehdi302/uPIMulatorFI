	.file	"app.c"
	.text
	.p2align 4
	.globl	pred
	.type	pred, @function
pred:
.LFB37:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	notq	%rax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE37:
	.size	pred, .-pred
	.p2align 4
	.globl	start
	.type	start, @function
start:
.LFB38:
	.cfi_startproc
	endbr64
	movslq	%esi, %rsi
	testl	%edx, %edx
	jne	.L4
	movq	$0x000000000, 224(%rdi,%rsi,8)
.L4:
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	jmp	gettimeofday@PLT
	.cfi_endproc
.LFE38:
	.size	start, .-start
	.p2align 4
	.globl	stop
	.type	stop, @function
stop:
.LFB39:
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
.LFE39:
	.size	stop, .-stop
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Time (ms): %f\t"
	.text
	.p2align 4
	.globl	print
	.type	print, @function
print:
.LFB40:
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
.LFE40:
	.size	print, .-print
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.ascii	"\nUsage:  ./program [options]\n\nGeneral options:\n    -h   "
	.ascii	"     hel"
	.string	"p\n    -w <W>    # of untimed warmup iterations (default=1)\n    -e <E>    # of timed repetition iterations (default=3)\n    -x <X>    Weak (0) or strong (1) scaling (default=0)\n\nBenchmark-specific options:\n    -i <I>    input size (default=3932160 elements)\n"
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
.LFB42:
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
	movl	$3932160, %r13d
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
	leaq	.L13(%rip), %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	$3, 12(%rsp)
.L10:
	leaq	.LC5(%rip), %rdx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt@PLT
	testl	%eax, %eax
	js	.L22
	subl	$101, %eax
	cmpl	$19, %eax
	ja	.L11
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L13:
	.long	.L17-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L21-.L13
	.long	.L15-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L14-.L13
	.long	.L12-.L13
	.text
.L11:
	movq	stderr(%rip), %rdi
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L21:
	movq	stderr(%rip), %rdi
	leaq	.LC3(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%edi, %edi
	call	exit@PLT
.L12:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r14d
	jmp	.L10
.L14:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r15d
	jmp	.L10
.L15:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r13d
	jmp	.L10
.L17:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, 12(%rsp)
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L22:
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
.LFE42:
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
	.string	"nr_elements\t%u\t"
.LC14:
	.string	"NR_TASKLETS\t%d\tBL\t%d\n"
.LC15:
	.string	"Load input data\n"
.LC16:
	.string	"DPU_INPUT_ARGUMENTS"
.LC17:
	.string	"__sys_used_mram_end"
.LC18:
	.string	"Run program on DPU(s) \n"
.LC19:
	.string	"Retrieve results\n"
.LC20:
	.string	"DPU_RESULTS"
.LC21:
	.string	"CPU "
.LC22:
	.string	"CPU-DPU "
.LC23:
	.string	"DPU Kernel "
.LC24:
	.string	"Inter-DPU "
.LC25:
	.string	"DPU-CPU "
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"[\033[32mOK\033[0m] Outputs are equal\n"
	.align 8
.LC27:
	.string	"[\033[31mERROR\033[0m] Outputs differ!\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB45:
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
	subq	$584, %rsp
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
	movq	%rax, %r12
	movl	%eax, -548(%rbp)
	movq	%rax, %rbx
	leaq	-496(%rbp), %rax
	sarq	$32, %r12
	movq	%rdx, -616(%rbp)
	movq	%rax, %rdx
	movl	%r12d, -536(%rbp)
	movq	%rax, -544(%rbp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L144
	subq	$8, %rsp
	pushq	-480(%rbp)
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_load@PLT
	addq	$32, %rsp
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L145
	subq	$8, %rsp
	pushq	-480(%rbp)
	leaq	-508(%rbp), %rdi
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	movl	%eax, -532(%rbp)
	testl	%eax, %eax
	jne	.L146
	movl	-508(%rbp), %edx
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	-616(%rbp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L147
.L27:
	movl	-548(%rbp), %r15d
	movl	-508(%rbp), %r13d
	xorl	%edx, %edx
	leal	-1(%r15), %ebx
	movl	%ebx, %eax
	divl	%r13d
	leal	1(%rax), %esi
	movl	%esi, %eax
	andl	$-2048, %eax
	addl	$2048, %eax
	testl	$2047, %esi
	cmove	%esi, %eax
	imull	%eax, %r13d
	movl	%eax, -584(%rbp)
	movl	%r13d, %r14d
	salq	$3, %r14
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, -576(%rbp)
	movq	%rax, A(%rip)
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, C(%rip)
	call	malloc@PLT
	movl	%r15d, %edx
	movl	$1, %edi
	leaq	.LC11(%rip), %rsi
	movq	%rax, -528(%rbp)
	movq	%rax, C2(%rip)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	testl	%r15d, %r15d
	je	.L35
	cmpl	$2, %ebx
	jbe	.L98
	movl	-548(%rbp), %eax
	movq	-576(%rbp), %rsi
	pxor	%xmm2, %xmm2
	movdqa	.LC6(%rip), %xmm1
	movdqa	.LC12(%rip), %xmm4
	shrl	$2, %eax
	movdqa	.LC13(%rip), %xmm3
	movq	%rsi, %rdx
	salq	$5, %rax
	addq	%rsi, %rax
.L33:
	movdqa	%xmm1, %xmm0
	addq	$32, %rdx
	paddd	%xmm4, %xmm1
	paddd	%xmm3, %xmm0
	movdqa	%xmm0, %xmm5
	punpckhdq	%xmm2, %xmm0
	punpckldq	%xmm2, %xmm5
	movups	%xmm0, -16(%rdx)
	movups	%xmm5, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L33
	movl	-548(%rbp), %esi
	movl	%esi, %eax
	andl	$-4, %eax
	andl	$3, %esi
	je	.L35
.L32:
	movq	-576(%rbp), %rdi
	movl	-548(%rbp), %r10d
	leal	1(%rax), %esi
	movl	%eax, %ecx
	movq	%rsi, (%rdi,%rcx,8)
	cmpl	%esi, %r10d
	jbe	.L35
	leal	2(%rax), %edx
	movq	%rdx, (%rdi,%rsi,8)
	cmpl	%edx, %r10d
	jbe	.L35
	addl	$3, %eax
	movq	%rax, (%rdi,%rdx,8)
.L35:
	cmpl	-548(%rbp), %r13d
	jbe	.L31
	movl	-548(%rbp), %ecx
	xorl	%esi, %esi
	movl	%ecx, %eax
	notl	%eax
	addl	%r13d, %eax
	leaq	8(,%rax,8), %rdx
	movl	%ecx, %eax
	movq	-576(%rbp), %rcx
	leaq	(%rcx,%rax,8), %rdi
	call	memset@PLT
.L31:
	movl	$10, %ecx
	movl	$16, %edx
	leaq	.LC14(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	-616(%rbp), %eax
	addl	%r12d, %eax
	movl	%eax, -604(%rbp)
	testl	%eax, %eax
	jle	.L148
	movl	-584(%rbp), %eax
	movl	%ebx, %ebx
	leaq	-432(%rbp), %r14
	leal	0(,%rax,8), %r13d
	salq	$3, %rax
	movq	%rax, -592(%rbp)
	leaq	0(,%rbx,8), %rax
	movl	%r13d, %r12d
	movq	%rax, -600(%rbp)
.L82:
	movl	-532(%rbp), %ebx
	cmpl	%ebx, -536(%rbp)
	jg	.L39
	jne	.L40
	movq	$0x000000000, -112(%rbp)
.L40:
	leaq	-336(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	-548(%rbp), %r15d
	movq	A(%rip), %rax
	movq	C(%rip), %rdi
	testl	%r15d, %r15d
	je	.L99
.L96:
	movq	-600(%rbp), %rbx
	xorl	%esi, %esi
	leaq	8(%rax,%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L43:
	movq	(%rax), %rdx
	testb	$1, %dl
	je	.L42
	movl	%esi, %r8d
	addl	$1, %esi
	movq	%rdx, (%rdi,%r8,8)
.L42:
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L43
	movl	%esi, -580(%rbp)
	movl	-532(%rbp), %esi
	cmpl	%esi, -536(%rbp)
	jle	.L41
.L44:
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L95:
	movq	-544(%rbp), %rsi
	movq	%r14, %rdi
	movl	%r12d, -504(%rbp)
	leaq	-504(%rbp), %rbx
	movl	$0, -500(%rbp)
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm5
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm5, -464(%rbp)
	je	.L50
	.p2align 4,,10
	.p2align 3
.L46:
	subq	$8, %rsp
	pushq	-448(%rbp)
	movq	%rbx, %rdi
	pushq	-456(%rbp)
	pushq	-464(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L149
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm6
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm6, -464(%rbp)
	jne	.L46
.L50:
	subq	$8, %rsp
	pushq	-480(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-488(%rbp)
	movl	$8, %ecx
	leaq	.LC16(%rip), %rsi
	xorl	%edi, %edi
	pushq	-496(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L150
	movq	-544(%rbp), %rsi
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm2
	movq	-352(%rbp), %rdx
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %eax
	movq	%rdx, -448(%rbp)
	movaps	%xmm2, -464(%rbp)
	je	.L55
	movq	-576(%rbp), %rbx
	movl	-584(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
.L51:
	imull	%r13d, %eax
	subq	$8, %rsp
	pushq	-448(%rbp)
	pushq	-456(%rbp)
	pushq	-464(%rbp)
	leaq	(%rbx,%rax,8), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L151
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm7
	movq	-352(%rbp), %rdx
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %eax
	movq	%rdx, -448(%rbp)
	movaps	%xmm7, -464(%rbp)
	jne	.L51
.L55:
	subq	$8, %rsp
	pushq	-480(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-488(%rbp)
	leaq	.LC17(%rip), %rsi
	xorl	%edi, %edi
	pushq	-496(%rbp)
	movq	-592(%rbp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L152
	movl	-532(%rbp), %esi
	cmpl	%esi, -536(%rbp)
	jle	.L153
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	subq	$8, %rsp
	pushq	-480(%rbp)
	movl	$1, %edi
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L93
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	-508(%rbp), %ebx
	movq	%rsp, %rsi
	movq	%rsp, -568(%rbp)
	leaq	0(,%rbx,4), %rdi
	leaq	15(%rdi), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rdx
	cmpq	%rdx, %rsp
	je	.L90
.L154:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L154
.L90:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L91
	orq	$0, -8(%rsp,%rax)
.L91:
	movq	%rsp, -560(%rbp)
	call	malloc@PLT
	movq	%rax, -520(%rbp)
.L92:
	leaq	15(,%rbx,8), %rax
	movq	%rsp, %rbx
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	cmpq	%rdx, %rsp
	je	.L64
.L155:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L155
.L64:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L65
	orq	$0, -8(%rsp,%rax)
.L65:
	movq	-544(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rsp, %rbx
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm1
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %r13d
	movq	%rax, -448(%rbp)
	movaps	%xmm1, -464(%rbp)
	je	.L70
	.p2align 4,,10
	.p2align 3
.L66:
	movl	$64, %edi
	call	malloc@PLT
	subq	$8, %rsp
	movq	%rax, (%rbx,%r13,8)
	movq	%rax, %rdi
	pushq	-448(%rbp)
	pushq	-456(%rbp)
	pushq	-464(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L156
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm3
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %r13d
	movq	%rax, -448(%rbp)
	movaps	%xmm3, -464(%rbp)
	jne	.L66
.L70:
	subq	$8, %rsp
	pushq	-480(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-488(%rbp)
	movl	$64, %ecx
	movl	$1, %edi
	leaq	.LC20(%rip), %rsi
	pushq	-496(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L157
	movq	-544(%rbp), %rsi
	movq	%r14, %rdi
	xorl	%r13d, %r13d
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %eax
	je	.L71
	movl	%r12d, -552(%rbp)
	movq	-560(%rbp), %r15
	movq	%rbx, %r12
	movq	-520(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L72:
	movl	%eax, %eax
	movq	(%r12,%rax,8), %rdi
	movl	%r13d, (%rbx,%rax,4)
	movl	60(%rdi), %ecx
	movl	%ecx, (%r15,%rax,4)
	addl	%ecx, %r13d
	call	free@PLT
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %eax
	jne	.L72
	movl	-552(%rbp), %r12d
.L71:
	movl	-532(%rbp), %ebx
	cmpl	%ebx, -536(%rbp)
	jle	.L158
.L73:
	movq	-544(%rbp), %rsi
	movq	%r14, %rdi
	xorl	%ebx, %ebx
	leaq	.LC17(%rip), %r15
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm5
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm5, -464(%rbp)
	je	.L79
	movl	%r13d, -552(%rbp)
	movq	-560(%rbp), %r13
	.p2align 4,,10
	.p2align 3
.L75:
	movq	-520(%rbp), %rsi
	movl	%ebx, %eax
	subq	$8, %rsp
	movq	%r15, %rdi
	movl	0(%r13,%rax,4), %ecx
	movl	(%rsi,%rax,4), %eax
	movq	-528(%rbp), %rsi
	pushq	-448(%rbp)
	pushq	-456(%rbp)
	salq	$3, %rcx
	pushq	-464(%rbp)
	leaq	(%rsi,%rax,8), %rdx
	movl	%r12d, %esi
	call	dpu_copy_from@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L159
	movq	%r14, %rdi
	addl	$1, %ebx
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm4
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm4, -464(%rbp)
	jne	.L75
	movl	-552(%rbp), %r13d
.L79:
	movl	-532(%rbp), %esi
	cmpl	%esi, -536(%rbp)
	jle	.L160
.L133:
	movq	-520(%rbp), %rdi
	call	free@PLT
	addl	$1, -532(%rbp)
	movq	-568(%rbp), %rsp
	movl	-532(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jne	.L82
	movl	%r13d, %r15d
.L38:
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm2, %xmm2
	movsd	-112(%rbp), %xmm0
	imull	$1000, -616(%rbp), %eax
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdl	%eax, %xmm2
	movl	$1, %eax
	divsd	%xmm2, %xmm0
	movsd	%xmm2, -520(%rbp)
	call	__printf_chk@PLT
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-104(%rbp), %xmm0
	divsd	-520(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-96(%rbp), %xmm0
	divsd	-520(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-88(%rbp), %xmm0
	divsd	-520(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-80(%rbp), %xmm0
	divsd	-520(%rbp), %xmm0
	call	__printf_chk@PLT
	cmpl	%r15d, -580(%rbp)
	sete	%dl
	testl	%r15d, %r15d
	je	.L83
	movq	C(%rip), %rdi
	leal	-1(%r15), %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L85
.L102:
	movq	%r8, %rax
.L85:
	movq	-528(%rbp), %rbx
	leaq	1(%rax), %r8
	movq	(%rbx,%rax,8), %rbx
	cmpq	%rbx, (%rdi,%rax,8)
	cmovne	%ecx, %edx
	cmpq	%rax, %rsi
	jne	.L102
.L83:
	testb	%dl, %dl
	je	.L86
	leaq	.LC26(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C2(%rip), %rdi
	call	free@PLT
	pushq	%rdi
	pushq	-480(%rbp)
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L87
.L88:
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L161
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
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
	movl	-548(%rbp), %edx
	movq	A(%rip), %rax
	movq	C(%rip), %rdi
	testl	%edx, %edx
	jne	.L96
	movl	$0, -580(%rbp)
	jmp	.L44
.L99:
	movl	$0, -580(%rbp)
.L41:
	leaq	-224(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-224(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-336(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-216(%rbp), %rax
	subq	-328(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	call	__printf_chk@PLT
	movl	-532(%rbp), %ebx
	cmpl	%ebx, -536(%rbp)
	jne	.L45
	movq	$0x000000000, -104(%rbp)
.L45:
	leaq	-320(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L95
.L158:
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-176(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-288(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-168(%rbp), %rax
	subq	-280(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	-532(%rbp), %ebx
	addsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	cmpl	%ebx, -536(%rbp)
	jne	.L74
	movq	$0x000000000, -80(%rbp)
.L74:
	leaq	-272(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L73
.L153:
	leaq	-208(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-208(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-320(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-200(%rbp), %rax
	subq	-312(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	call	__printf_chk@PLT
	movl	-532(%rbp), %ebx
	cmpl	%ebx, -536(%rbp)
	jne	.L57
	movq	$0x000000000, -96(%rbp)
.L57:
	leaq	-304(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	pushq	-480(%rbp)
	movl	$1, %edi
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L93
	leaq	-192(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rsp, %rbx
	call	gettimeofday@PLT
	movq	-192(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-304(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-184(%rbp), %rax
	subq	-296(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	movl	$1, %edi
	leaq	.LC19(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	call	__printf_chk@PLT
	movl	-508(%rbp), %edi
	movq	%rsp, -568(%rbp)
	salq	$2, %rdi
	leaq	15(%rdi), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	cmpq	%rdx, %rsp
	je	.L60
.L162:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L162
.L60:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L61
	orq	$0, -8(%rsp,%rax)
.L61:
	movq	%rsp, -560(%rbp)
	call	malloc@PLT
	movl	-532(%rbp), %ebx
	movq	%rax, -520(%rbp)
	cmpl	%ebx, -536(%rbp)
	jne	.L62
	movq	$0x000000000, -88(%rbp)
.L62:
	leaq	-288(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	-508(%rbp), %ebx
	jmp	.L92
.L160:
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-160(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-272(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-152(%rbp), %rax
	subq	-264(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.L133
.L147:
	movl	-508(%rbp), %eax
	imull	%ebx, %eax
	movl	%eax, -548(%rbp)
	jmp	.L27
.L86:
	leaq	.LC27(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C2(%rip), %rdi
	call	free@PLT
	pushq	%rsi
	pushq	-480(%rbp)
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L103
.L87:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	movl	$252, %r8d
	pushq	%rcx
	pushq	%rax
	jmp	.L142
.L149:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r14
	leaq	__func__.3587(%rip), %r9
	pushq	%rax
	movl	$122, %r8d
.L142:
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L151:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r12
	leaq	__func__.3587(%rip), %r9
	pushq	%rax
	movl	$126, %r8d
	jmp	.L142
.L159:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	pushq	%r8
	movl	$202, %r8d
	pushq	%rax
	jmp	.L142
.L98:
	xorl	%eax, %eax
	jmp	.L32
.L156:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	movl	$173, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L142
.L152:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%rbx
	leaq	__func__.3587(%rip), %r9
	pushq	%rax
	movl	$128, %r8d
	jmp	.L142
.L93:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	movl	$140, %r8d
	pushq	%r11
	pushq	%rax
	jmp	.L142
.L146:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	movl	$75, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L142
.L103:
	orl	$-1, %eax
	jmp	.L88
.L150:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r13
	leaq	__func__.3587(%rip), %r9
	pushq	%rax
	movl	$124, %r8d
	jmp	.L142
.L148:
	movl	$0, -580(%rbp)
	xorl	%r15d, %r15d
	jmp	.L38
.L145:
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	movl	$74, %r8d
	pushq	%rcx
	pushq	%rax
	jmp	.L142
.L157:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$175, %r8d
	pushq	%r9
	leaq	__func__.3587(%rip), %r9
	pushq	%rax
	jmp	.L142
.L144:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3587(%rip), %r9
	movl	$73, %r8d
	pushq	%rsi
	pushq	%rax
	jmp	.L142
.L161:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3587, @object
	.size	__func__.3587, 5
__func__.3587:
	.string	"main"
	.local	C2
	.comm	C2,8,8
	.local	C
	.comm	C,8,8
	.local	A
	.comm	A,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC6:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC12:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC13:
	.long	1
	.long	1
	.long	1
	.long	1
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
