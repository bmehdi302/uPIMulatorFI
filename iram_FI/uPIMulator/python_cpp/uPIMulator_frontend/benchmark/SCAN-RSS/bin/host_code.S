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
	.string	"DPU Kernel Reduction "
.LC15:
	.string	"Inter-DPU (Scan) "
.LC16:
	.string	"DPU Kernel Scan "
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
.LC23:
	.string	"DPU_RESULTS"
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
	subq	$616, %rsp
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
	movl	%eax, -584(%rbp)
	movq	%rax, %rbx
	sarq	$32, %rax
	movq	%rax, -552(%rbp)
	movl	%eax, -560(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rdx, -640(%rbp)
	movq	%rax, %rdx
	movq	%rax, -576(%rbp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L155
	subq	$8, %rsp
	pushq	-496(%rbp)
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_load@PLT
	addq	$32, %rsp
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L156
	subq	$8, %rsp
	pushq	-496(%rbp)
	leaq	-532(%rbp), %rdi
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	movl	%eax, -556(%rbp)
	testl	%eax, %eax
	jne	.L157
	movl	-532(%rbp), %edx
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	-640(%rbp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L158
.L26:
	movl	-584(%rbp), %r14d
	movl	-532(%rbp), %ebx
	xorl	%edx, %edx
	leal	-1(%r14), %eax
	movl	%eax, -644(%rbp)
	divl	%ebx
	leal	1(%rax), %r13d
	movl	%r13d, %eax
	andl	$-2048, %eax
	addl	$2048, %eax
	testl	$2047, %r13d
	cmovne	%eax, %r13d
	imull	%r13d, %ebx
	movl	%ebx, %r12d
	salq	$3, %r12
	movq	%r12, %rdi
	call	malloc@PLT
	movq	%r12, %rdi
	movq	%rax, A(%rip)
	movq	%rax, %r15
	call	malloc@PLT
	movq	%r12, %rdi
	movq	%rax, C(%rip)
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, -624(%rbp)
	movq	%rax, C2(%rip)
	call	srand@PLT
	xorl	%eax, %eax
	movl	%r14d, %edx
	movl	$1, %edi
	leaq	.LC10(%rip), %rsi
	call	__printf_chk@PLT
	testl	%r14d, %r14d
	je	.L32
	movl	-644(%rbp), %eax
	movq	%r15, %r14
	leaq	8(%r15,%rax,8), %r12
.L31:
	call	rand@PLT
	addq	$8, %r14
	cltq
	movq	%rax, -8(%r14)
	cmpq	%r14, %r12
	jne	.L31
.L32:
	cmpl	-584(%rbp), %ebx
	jbe	.L30
	movl	-584(%rbp), %ecx
	xorl	%esi, %esi
	movl	%ecx, %eax
	notl	%eax
	addl	%ebx, %eax
	leaq	8(,%rax,8), %rdx
	movl	%ecx, %eax
	leaq	(%r15,%rax,8), %rdi
	call	memset@PLT
.L30:
	movl	$10, %ecx
	movl	$16, %edx
	leaq	.LC11(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	-552(%rbp), %eax
	addl	-640(%rbp), %eax
	movl	%eax, -616(%rbp)
	testl	%eax, %eax
	jle	.L34
	leal	0(,%r13,8), %eax
	leaq	-448(%rbp), %r14
	movl	%eax, -580(%rbp)
	movl	%r13d, %eax
	salq	$3, %rax
	movq	%rax, -592(%rbp)
	movl	-584(%rbp), %eax
	subl	$2, %eax
	addq	$2, %rax
	movq	%rax, -632(%rbp)
.L90:
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jg	.L37
	jne	.L38
	movq	$0x000000000, -112(%rbp)
.L38:
	xorl	%esi, %esi
	leaq	-336(%rbp), %rdi
	call	gettimeofday@PLT
	movq	A(%rip), %rsi
	movq	C(%rip), %rcx
	cmpl	$1, -584(%rbp)
	movq	(%rsi), %rdx
	movq	%rdx, (%rcx)
	jbe	.L40
.L39:
	movq	-632(%rbp), %rdi
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L42:
	addq	(%rsi,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rdi, %rax
	jne	.L42
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jle	.L40
.L41:
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L105:
	movl	-580(%rbp), %eax
	movq	%r14, %rdi
	movq	-576(%rbp), %rsi
	movl	$0, -524(%rbp)
	movq	$0, -520(%rbp)
	leaq	-528(%rbp), %rbx
	movl	%eax, -528(%rbp)
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-384(%rbp), %xmm7
	movq	-368(%rbp), %rax
	cmpb	$0, -392(%rbp)
	movq	%rax, -464(%rbp)
	movaps	%xmm7, -480(%rbp)
	je	.L49
	.p2align 4,,10
	.p2align 3
.L45:
	subq	$8, %rsp
	pushq	-464(%rbp)
	movq	%rbx, %rdi
	pushq	-472(%rbp)
	pushq	-480(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L159
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-384(%rbp), %xmm2
	movq	-368(%rbp), %rax
	cmpb	$0, -392(%rbp)
	movq	%rax, -464(%rbp)
	movaps	%xmm2, -480(%rbp)
	jne	.L45
.L49:
	subq	$8, %rsp
	pushq	-496(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-504(%rbp)
	movl	$16, %ecx
	leaq	.LC19(%rip), %rsi
	xorl	%edi, %edi
	pushq	-512(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L160
	movq	-576(%rbp), %rsi
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-384(%rbp), %xmm7
	movq	-368(%rbp), %rdx
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	movq	%rdx, -464(%rbp)
	movaps	%xmm7, -480(%rbp)
	je	.L54
	.p2align 4,,10
	.p2align 3
.L50:
	imull	%r13d, %eax
	subq	$8, %rsp
	pushq	-464(%rbp)
	pushq	-472(%rbp)
	pushq	-480(%rbp)
	leaq	(%r15,%rax,8), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L161
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-384(%rbp), %xmm3
	movq	-368(%rbp), %rdx
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	movq	%rdx, -464(%rbp)
	movaps	%xmm3, -480(%rbp)
	jne	.L50
.L54:
	subq	$8, %rsp
	pushq	-496(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-504(%rbp)
	leaq	.LC20(%rip), %rsi
	xorl	%edi, %edi
	pushq	-512(%rbp)
	movq	-592(%rbp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L162
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jle	.L163
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	subq	$8, %rsp
	pushq	-496(%rbp)
	movl	$1, %edi
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L103
	movl	$1, %edi
	leaq	.LC22(%rip), %rsi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	-532(%rbp), %edi
	movq	%rsp, %rcx
	movq	%rsp, -600(%rbp)
	salq	$3, %rdi
	leaq	15(%rdi), %rbx
	movq	%rbx, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	cmpq	%rdx, %rsp
	je	.L100
.L164:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L164
.L100:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L101
	orq	$0, -8(%rsp,%rax)
.L101:
	movq	%rsp, -568(%rbp)
	call	malloc@PLT
	movq	%rax, -552(%rbp)
.L102:
	shrq	$4, %rbx
	movq	%rsp, %rcx
	salq	$4, %rbx
	movq	%rbx, %rax
	andq	$-4096, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rsp
	je	.L63
.L165:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L165
.L63:
	andl	$4095, %ebx
	subq	%rbx, %rsp
	testq	%rbx, %rbx
	je	.L64
	orq	$0, -8(%rsp,%rbx)
.L64:
	movq	-576(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rsp, %r12
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-384(%rbp), %xmm7
	movq	-368(%rbp), %rax
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %ebx
	movq	%rax, -464(%rbp)
	movaps	%xmm7, -480(%rbp)
	je	.L69
	.p2align 4,,10
	.p2align 3
.L65:
	movl	$128, %edi
	call	malloc@PLT
	subq	$8, %rsp
	movq	%rax, (%r12,%rbx,8)
	movq	%rax, %rdi
	pushq	-464(%rbp)
	pushq	-472(%rbp)
	pushq	-480(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L166
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-384(%rbp), %xmm4
	movq	-368(%rbp), %rax
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %ebx
	movq	%rax, -464(%rbp)
	movaps	%xmm4, -480(%rbp)
	jne	.L65
.L69:
	subq	$8, %rsp
	pushq	-496(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-504(%rbp)
	movl	$128, %ecx
	movl	$1, %edi
	leaq	.LC23(%rip), %rsi
	pushq	-512(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L167
	movq	-576(%rbp), %rsi
	movq	%r14, %rdi
	xorl	%ebx, %ebx
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	je	.L73
	movq	%r15, -608(%rbp)
	movl	%r13d, -612(%rbp)
	movq	%r12, %r13
	.p2align 4,,10
	.p2align 3
.L70:
	movl	%eax, %r15d
	movq	-568(%rbp), %rax
	movq	0(%r13,%r15,8), %rdi
	movq	(%rdi), %r12
	movq	%r12, (%rax,%r15,8)
	call	free@PLT
	movq	-552(%rbp), %rax
	movq	%r14, %rdi
	movq	%rbx, (%rax,%r15,8)
	addq	%r12, %rbx
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	jne	.L70
	movq	-608(%rbp), %r15
	movl	-612(%rbp), %r13d
.L73:
	movl	-532(%rbp), %r12d
	testl	%r12d, %r12d
	je	.L72
	movl	$1, -348(%rbp)
	movl	-580(%rbp), %eax
	movl	%eax, -352(%rbp)
	movq	-552(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
.L72:
	movq	-576(%rbp), %rsi
	movq	%r14, %rdi
	leaq	-352(%rbp), %rbx
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-384(%rbp), %xmm1
	movq	-368(%rbp), %rdx
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	movq	%rdx, -464(%rbp)
	movaps	%xmm1, -480(%rbp)
	je	.L75
	.p2align 4,,10
	.p2align 3
.L74:
	movl	%eax, %edi
	subq	$8, %rsp
	pushq	-464(%rbp)
	movq	%rdi, %rax
	pushq	-472(%rbp)
	pushq	-480(%rbp)
	salq	$4, %rax
	leaq	(%rbx,%rax), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L168
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-384(%rbp), %xmm5
	movq	-368(%rbp), %rdx
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	movq	%rdx, -464(%rbp)
	movaps	%xmm5, -480(%rbp)
	jne	.L74
.L75:
	subq	$8, %rsp
	pushq	-496(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-504(%rbp)
	movl	$16, %ecx
	leaq	.LC19(%rip), %rsi
	xorl	%edi, %edi
	pushq	-512(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L169
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jle	.L170
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	subq	$8, %rsp
	pushq	-496(%rbp)
	movl	$1, %edi
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L97
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L96:
	movq	-576(%rbp), %rsi
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-384(%rbp), %xmm7
	movq	-368(%rbp), %rdx
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	movq	%rdx, -464(%rbp)
	movq	-624(%rbp), %rbx
	movaps	%xmm7, -480(%rbp)
	je	.L87
	.p2align 4,,10
	.p2align 3
.L83:
	imull	%r13d, %eax
	subq	$8, %rsp
	pushq	-464(%rbp)
	pushq	-472(%rbp)
	pushq	-480(%rbp)
	leaq	(%rbx,%rax,8), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L171
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-384(%rbp), %xmm6
	movq	-368(%rbp), %rdx
	cmpb	$0, -392(%rbp)
	movl	-400(%rbp), %eax
	movq	%rdx, -464(%rbp)
	movaps	%xmm6, -480(%rbp)
	jne	.L83
.L87:
	subq	$8, %rsp
	pushq	-496(%rbp)
	xorl	%r8d, %r8d
	leaq	.LC20(%rip), %rsi
	pushq	-504(%rbp)
	movl	$1, %edi
	pushq	-512(%rbp)
	movq	-592(%rbp), %rcx
	movl	-580(%rbp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L172
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jle	.L173
.L88:
	movq	-552(%rbp), %rdi
	call	free@PLT
	addl	$1, -556(%rbp)
	movq	-600(%rbp), %rsp
	movl	-556(%rbp), %eax
	cmpl	-616(%rbp), %eax
	jne	.L90
.L34:
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm1, %xmm1
	movsd	-112(%rbp), %xmm0
	imull	$1000, -640(%rbp), %eax
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdl	%eax, %xmm1
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	movsd	%xmm1, -552(%rbp)
	call	__printf_chk@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-104(%rbp), %xmm0
	divsd	-552(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-96(%rbp), %xmm0
	divsd	-552(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-88(%rbp), %xmm0
	divsd	-552(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-80(%rbp), %xmm0
	divsd	-552(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	-72(%rbp), %xmm0
	divsd	-552(%rbp), %xmm0
	call	__printf_chk@PLT
	cmpl	$0, -584(%rbp)
	je	.L36
	movq	C(%rip), %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	-644(%rbp), %eax
	jmp	.L92
.L108:
	movq	%r8, %rdx
.L92:
	movq	-624(%rbp), %rbx
	leaq	1(%rdx), %r8
	movq	(%rbx,%rdx,8), %rbx
	cmpq	%rbx, (%rdi,%rdx,8)
	cmovne	%esi, %ecx
	cmpq	%rax, %rdx
	jne	.L108
	testb	%cl, %cl
	jne	.L36
	leaq	.LC25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	A(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C2(%rip), %rdi
	call	free@PLT
	pushq	%rcx
	pushq	-496(%rbp)
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L109
.L94:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$287, %r8d
	pushq	%rdx
	pushq	%rax
.L154:
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L37:
	movq	A(%rip), %rsi
	movq	C(%rip), %rcx
	cmpl	$1, -584(%rbp)
	movq	(%rsi), %rdx
	movq	%rdx, (%rcx)
	ja	.L39
	jmp	.L41
.L40:
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
	leaq	.LC18(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	call	__printf_chk@PLT
	movl	-556(%rbp), %esi
	cmpl	%esi, -560(%rbp)
	jne	.L44
	movq	$0x000000000, -104(%rbp)
.L44:
	leaq	-320(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L105
.L173:
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-144(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-256(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-136(%rbp), %rax
	subq	-248(%rbp), %rax
	mulsd	.LC1(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L88
.L170:
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-176(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-288(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	movl	$1, %edi
	movq	-168(%rbp), %rax
	subq	-280(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movsd	%xmm1, -568(%rbp)
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	addsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	call	__printf_chk@PLT
	movl	-556(%rbp), %esi
	cmpl	%esi, -560(%rbp)
	jne	.L80
	movq	$0x000000000, -80(%rbp)
.L80:
	leaq	-272(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	pushq	-496(%rbp)
	movl	$1, %edi
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L97
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
	mulsd	-568(%rbp), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	call	__printf_chk@PLT
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jne	.L82
	movq	$0x000000000, -72(%rbp)
.L82:
	leaq	-256(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L96
.L163:
	leaq	-208(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-208(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-320(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movsd	.LC1(%rip), %xmm7
	movq	-200(%rbp), %rax
	subq	-312(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	movsd	%xmm7, -568(%rbp)
	mulsd	%xmm7, %xmm0
	addsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	call	__printf_chk@PLT
	movl	-556(%rbp), %ecx
	cmpl	%ecx, -560(%rbp)
	jne	.L56
	movq	$0x000000000, -96(%rbp)
.L56:
	leaq	-304(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	pushq	-496(%rbp)
	movl	$1, %edi
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L103
	leaq	-192(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-192(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-304(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-184(%rbp), %rax
	subq	-296(%rbp), %rax
	mulsd	-568(%rbp), %xmm0
	cvtsi2sdq	%rax, %xmm1
	xorl	%eax, %eax
	movl	$1, %edi
	leaq	.LC22(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	call	__printf_chk@PLT
	movl	-532(%rbp), %edi
	movq	%rsp, %rcx
	movq	%rsp, -600(%rbp)
	salq	$3, %rdi
	leaq	15(%rdi), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	cmpq	%rdx, %rsp
	je	.L59
.L174:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L174
.L59:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L60
	orq	$0, -8(%rsp,%rax)
.L60:
	movq	%rsp, -568(%rbp)
	call	malloc@PLT
	movl	-556(%rbp), %ecx
	movq	%rax, -552(%rbp)
	cmpl	%ecx, -560(%rbp)
	jne	.L61
	movq	$0x000000000, -88(%rbp)
.L61:
	leaq	-288(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	-532(%rbp), %eax
	leaq	15(,%rax,8), %rbx
	jmp	.L102
.L158:
	movl	-532(%rbp), %eax
	imull	%ebx, %eax
	movl	%eax, -584(%rbp)
	jmp	.L26
.L36:
	leaq	.LC24(%rip), %rsi
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
	pushq	-496(%rbp)
	pushq	-504(%rbp)
	pushq	-512(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L94
.L95:
	movq	-56(%rbp), %rcx
	xorq	%fs:40, %rcx
	jne	.L175
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
.L161:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$120, %r8d
	pushq	%rcx
	pushq	%rax
	jmp	.L154
.L159:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	pushq	%r8
	movl	$116, %r8d
	pushq	%rax
	jmp	.L154
.L168:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%rbx
	leaq	__func__.3585(%rip), %r9
	pushq	%rax
	movl	$197, %r8d
	jmp	.L154
.L171:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$236, %r8d
	pushq	%r9
	leaq	__func__.3585(%rip), %r9
	pushq	%rax
	jmp	.L154
.L166:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r14
	leaq	__func__.3585(%rip), %r9
	pushq	%rax
	movl	$168, %r8d
	jmp	.L154
.L109:
	orl	$-1, %eax
	jmp	.L95
.L103:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r15
	leaq	__func__.3585(%rip), %r9
	pushq	%rax
	movl	$135, %r8d
	jmp	.L154
.L162:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$122, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L154
.L157:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$70, %r8d
	pushq	%r9
	leaq	__func__.3585(%rip), %r9
	pushq	%rax
	jmp	.L154
.L160:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$118, %r8d
	pushq	%rsi
	pushq	%rax
	jmp	.L154
.L167:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r13
	leaq	__func__.3585(%rip), %r9
	pushq	%rax
	movl	$170, %r8d
	jmp	.L154
.L97:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$211, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L154
.L169:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$199, %r8d
	pushq	%r11
	pushq	%rax
	jmp	.L154
.L156:
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$69, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L154
.L155:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	movl	$68, %r8d
	pushq	%r11
	pushq	%rax
	jmp	.L154
.L172:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3585(%rip), %r9
	pushq	%r8
	movl	$238, %r8d
	pushq	%rax
	jmp	.L154
.L175:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3585, @object
	.size	__func__.3585, 5
__func__.3585:
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
