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
	movq	%rax, %rbx
	movl	%eax, -564(%rbp)
	movq	%rax, %r12
	leaq	-496(%rbp), %rax
	sarq	$32, %rbx
	movq	%rdx, -624(%rbp)
	movq	%rax, %rdx
	movl	%ebx, -552(%rbp)
	movq	%rax, -560(%rbp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L166
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
	jne	.L167
	subq	$8, %rsp
	pushq	-480(%rbp)
	leaq	-508(%rbp), %rdi
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	movl	%eax, -548(%rbp)
	testl	%eax, %eax
	jne	.L168
	movl	-508(%rbp), %edx
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	-624(%rbp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L169
.L26:
	movl	-564(%rbp), %r15d
	movl	-508(%rbp), %r12d
	xorl	%edx, %edx
	leal	-1(%r15), %r13d
	movl	%r13d, %eax
	divl	%r12d
	leal	1(%rax), %ecx
	movl	%ecx, %eax
	andl	$-2048, %eax
	addl	$2048, %eax
	testl	$2047, %ecx
	cmove	%ecx, %eax
	imull	%eax, %r12d
	movl	%eax, -592(%rbp)
	movl	%r12d, %r14d
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
	movq	%rax, -536(%rbp)
	movq	%rax, C2(%rip)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	testl	%r15d, %r15d
	je	.L34
	cmpl	$2, %r13d
	jbe	.L111
	movl	-564(%rbp), %eax
	movq	-576(%rbp), %rcx
	pxor	%xmm2, %xmm2
	movdqa	.LC6(%rip), %xmm3
	movdqa	.LC12(%rip), %xmm5
	shrl	$2, %eax
	movdqa	.LC13(%rip), %xmm4
	movq	%rcx, %rdx
	salq	$5, %rax
	addq	%rcx, %rax
.L32:
	movdqa	%xmm3, %xmm1
	addq	$32, %rdx
	paddd	%xmm5, %xmm3
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm6
	pand	%xmm4, %xmm0
	paddd	%xmm4, %xmm6
	pcmpeqd	%xmm2, %xmm0
	pand	%xmm0, %xmm1
	pandn	%xmm6, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckhdq	%xmm2, %xmm0
	punpckldq	%xmm2, %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, -32(%rdx)
	cmpq	%rdx, %rax
	jne	.L32
	movl	-564(%rbp), %eax
	movl	%eax, %edx
	andl	$-4, %edx
	testb	$3, %al
	je	.L34
	leal	1(%rdx), %eax
.L31:
	movq	-576(%rbp), %rcx
	movq	%rdx, (%rcx,%rdx,8)
	cmpl	%eax, -564(%rbp)
	jbe	.L34
	leal	1(%rax), %edx
	movl	%eax, %ecx
	movl	%edx, %esi
	testb	$1, %al
	je	.L170
.L37:
	movq	-576(%rbp), %rdi
	movq	%rsi, (%rdi,%rcx,8)
	cmpl	%edx, -564(%rbp)
	jbe	.L34
	addl	$2, %eax
	movl	%edx, %ecx
	andb	$1, %dl
	je	.L151
.L40:
	movq	-576(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
.L34:
	cmpl	-564(%rbp), %r12d
	jbe	.L30
	movl	-564(%rbp), %esi
	movl	%r13d, %r13d
	movq	-576(%rbp), %r10
	salq	$3, %r13
	movl	%esi, %edx
	leaq	(%r10,%r13), %rcx
	leaq	0(,%rsi,8), %rax
	notl	%edx
	addl	%r12d, %edx
	subl	%esi, %r12d
	movl	%r12d, %edi
	addq	%rsi, %rdi
	salq	$3, %rdi
	cmpq	%rdi, %r13
	setge	%r8b
	addq	$8, %r13
	cmpq	%r13, %rax
	setge	%dil
	orb	%dil, %r8b
	je	.L43
	cmpl	$3, %edx
	jbe	.L43
	leaq	(%r10,%rax), %rdx
	movl	%r12d, %eax
	movq	(%rcx), %xmm0
	shrl	%eax
	salq	$4, %rax
	punpcklqdq	%xmm0, %xmm0
	addq	%rdx, %rax
.L44:
	movups	%xmm0, (%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rax
	jne	.L44
	movl	-564(%rbp), %eax
	movl	%r12d, %edx
	andl	$-2, %edx
	addl	%edx, %eax
	cmpl	%r12d, %edx
	je	.L30
	movq	(%rcx), %rdx
	movq	-576(%rbp), %rcx
	movq	%rdx, (%rcx,%rax,8)
.L30:
	movl	$10, %ecx
	movl	$16, %edx
	leaq	.LC14(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	-624(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -604(%rbp)
	testl	%eax, %eax
	jle	.L171
	movl	-592(%rbp), %eax
	leaq	-432(%rbp), %r14
	leal	0(,%rax,8), %r13d
	salq	$3, %rax
	movq	%rax, -600(%rbp)
	movl	-564(%rbp), %eax
	movl	%r13d, %r15d
	subl	$2, %eax
	salq	$3, %rax
	movq	%rax, -616(%rbp)
.L95:
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jg	.L48
	jne	.L49
	movq	$0x000000000, -112(%rbp)
.L49:
	leaq	-336(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	A(%rip), %rax
	movq	C(%rip), %rdi
	cmpl	$1, -564(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	jbe	.L112
.L109:
	movq	-616(%rbp), %rbx
	movl	$1, %ecx
	leaq	8(%rax,%rbx), %rsi
	.p2align 4,,10
	.p2align 3
.L52:
	movq	8(%rax), %rdx
	cmpq	(%rax), %rdx
	je	.L51
	movl	%ecx, %r8d
	addl	$1, %ecx
	movq	%rdx, (%rdi,%r8,8)
.L51:
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.L52
	movl	%ecx, -588(%rbp)
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jle	.L50
.L53:
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L108:
	movq	-560(%rbp), %rsi
	movq	%r14, %rdi
	movl	%r15d, -504(%rbp)
	leaq	-504(%rbp), %rbx
	movl	$0, -500(%rbp)
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm4
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm4, -464(%rbp)
	je	.L59
	.p2align 4,,10
	.p2align 3
.L55:
	subq	$8, %rsp
	pushq	-448(%rbp)
	movq	%rbx, %rdi
	pushq	-456(%rbp)
	pushq	-464(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L172
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm7
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm7, -464(%rbp)
	jne	.L55
.L59:
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
	jne	.L173
	movq	-560(%rbp), %rsi
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm2
	movq	-352(%rbp), %rdx
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %eax
	movq	%rdx, -448(%rbp)
	movaps	%xmm2, -464(%rbp)
	je	.L64
	movq	-576(%rbp), %rbx
	movl	-592(%rbp), %r12d
	.p2align 4,,10
	.p2align 3
.L60:
	imull	%r12d, %eax
	subq	$8, %rsp
	pushq	-448(%rbp)
	pushq	-456(%rbp)
	pushq	-464(%rbp)
	leaq	(%rbx,%rax,8), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L174
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm5
	movq	-352(%rbp), %rdx
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %eax
	movq	%rdx, -448(%rbp)
	movaps	%xmm5, -464(%rbp)
	jne	.L60
.L64:
	subq	$8, %rsp
	pushq	-480(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-488(%rbp)
	leaq	.LC17(%rip), %rsi
	xorl	%edi, %edi
	pushq	-496(%rbp)
	movq	-600(%rbp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L175
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jle	.L176
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
	jne	.L106
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	-508(%rbp), %ebx
	movq	%rsp, %rcx
	movq	%rsp, -584(%rbp)
	leaq	(%rbx,%rbx,2), %rax
	leaq	15(,%rax,8), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	cmpq	%rdx, %rsp
	je	.L103
.L177:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L177
.L103:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L104
	orq	$0, -8(%rsp,%rax)
.L104:
	leaq	0(,%rbx,4), %rdi
	movq	%rsp, %r12
	call	malloc@PLT
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%rax, -520(%rbp)
	call	calloc@PLT
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%rax, -544(%rbp)
	call	calloc@PLT
	movq	%rax, -528(%rbp)
.L105:
	leaq	15(,%rbx,8), %rax
	movq	%rsp, %rbx
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	cmpq	%rdx, %rsp
	je	.L73
.L178:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L178
.L73:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L74
	orq	$0, -8(%rsp,%rax)
.L74:
	movq	-560(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rsp, %rbx
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm1
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %r13d
	movq	%rax, -448(%rbp)
	movaps	%xmm1, -464(%rbp)
	je	.L79
	.p2align 4,,10
	.p2align 3
.L75:
	movl	$384, %edi
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
	jne	.L179
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm6
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %r13d
	movq	%rax, -448(%rbp)
	movaps	%xmm6, -464(%rbp)
	jne	.L75
.L79:
	subq	$8, %rsp
	pushq	-480(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-488(%rbp)
	movl	$384, %ecx
	movl	$1, %edi
	leaq	.LC20(%rip), %rsi
	pushq	-496(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L180
	movq	-560(%rbp), %rsi
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, -376(%rbp)
	movl	$0, -568(%rbp)
	movl	-384(%rbp), %esi
	je	.L81
	movl	%r15d, -568(%rbp)
	xorl	%r13d, %r13d
	movq	-528(%rbp), %r15
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L181:
	movl	(%r10), %ecx
.L85:
	movq	-520(%rbp), %rsi
	subl	%ecx, %edx
	movl	%r13d, (%rsi,%rax,4)
	addl	%edx, %r13d
	call	free@PLT
	movq	%r14, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, -376(%rbp)
	movl	-384(%rbp), %esi
	je	.L162
.L80:
	movl	%esi, %eax
	movq	-544(%rbp), %r11
	movq	(%rbx,%rax,8), %rdi
	leaq	(%rax,%rax,2), %rdx
	leaq	(%r12,%rdx,8), %rcx
	movq	8(%rdi), %rdx
	movq	376(%rdi), %r9
	movq	%rdx, 8(%rcx)
	movl	360(%rdi), %edx
	movq	%r9, 16(%rcx)
	leaq	0(,%rax,4), %r9
	movl	%edx, (%rcx)
	leaq	(%r11,%r9), %r10
	testl	%esi, %esi
	je	.L181
	subl	$1, %esi
	leaq	(%rsi,%rsi,2), %rsi
	movq	16(%r12,%rsi,8), %rsi
	cmpq	%rsi, 8(%rcx)
	je	.L82
	movl	(%r10), %ecx
.L83:
	addl	%ecx, (%r15,%r9)
	jmp	.L85
.L82:
	movl	$1, (%r10)
	movl	$1, %ecx
	jmp	.L83
.L162:
	movl	-568(%rbp), %r15d
	movl	%r13d, -568(%rbp)
.L81:
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jle	.L182
.L86:
	movq	-560(%rbp), %rsi
	movq	%r14, %rdi
	xorl	%ebx, %ebx
	leaq	.LC17(%rip), %r13
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-368(%rbp), %xmm4
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm4, -464(%rbp)
	je	.L92
	.p2align 4,,10
	.p2align 3
.L88:
	movq	-520(%rbp), %rsi
	movl	%ebx, %eax
	subq	$8, %rsp
	movq	%r13, %rdi
	leaq	(%rax,%rax,2), %rdx
	movl	(%r12,%rdx,8), %ecx
	movl	(%rsi,%rax,4), %edx
	movq	-528(%rbp), %rsi
	salq	$3, %rcx
	movl	(%rsi,%rax,4), %eax
	movq	-536(%rbp), %rsi
	pushq	-448(%rbp)
	pushq	-456(%rbp)
	pushq	-464(%rbp)
	subq	%rax, %rdx
	leaq	(%rsi,%rdx,8), %rdx
	movl	%r15d, %esi
	call	dpu_copy_from@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L183
	movq	%r14, %rdi
	addl	$1, %ebx
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-368(%rbp), %xmm3
	movq	-352(%rbp), %rax
	cmpb	$0, -376(%rbp)
	movq	%rax, -448(%rbp)
	movaps	%xmm3, -464(%rbp)
	jne	.L88
.L92:
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jle	.L184
.L155:
	movq	-520(%rbp), %rdi
	call	free@PLT
	movq	-544(%rbp), %rdi
	call	free@PLT
	movq	-528(%rbp), %rdi
	call	free@PLT
	addl	$1, -548(%rbp)
	movq	-584(%rbp), %rsp
	movl	-548(%rbp), %eax
	cmpl	%eax, -604(%rbp)
	jne	.L95
.L42:
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm2, %xmm2
	movsd	-112(%rbp), %xmm0
	imull	$1000, -624(%rbp), %eax
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
	movl	-568(%rbp), %eax
	movl	-588(%rbp), %ebx
	cmpl	%ebx, %eax
	sete	%dl
	testl	%eax, %eax
	je	.L96
	leal	-1(%rax), %esi
	movq	C(%rip), %rdi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	-536(%rbp), %rbx
	jmp	.L98
.L115:
	movq	%r8, %rax
.L98:
	movq	(%rdi,%rax,8), %r11
	cmpq	%r11, (%rbx,%rax,8)
	leaq	1(%rax), %r8
	cmovne	%ecx, %edx
	cmpq	%rsi, %rax
	jne	.L115
.L96:
	testb	%dl, %dl
	je	.L99
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
	pushq	%rsi
	pushq	-480(%rbp)
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L100
.L101:
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L185
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
.L48:
	.cfi_restore_state
	movq	A(%rip), %rax
	movq	C(%rip), %rdi
	cmpl	$1, -564(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	ja	.L109
	movl	$1, -588(%rbp)
	jmp	.L53
.L112:
	movl	$1, -588(%rbp)
.L50:
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
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jne	.L54
	movq	$0x000000000, -104(%rbp)
.L54:
	leaq	-320(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L108
.L176:
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
	movl	-548(%rbp), %ebx
	cmpl	%ebx, -552(%rbp)
	jne	.L66
	movq	$0x000000000, -96(%rbp)
.L66:
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
	jne	.L106
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
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rsi
	addsd	%xmm1, %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	call	__printf_chk@PLT
	movl	-508(%rbp), %r13d
	movq	%rsp, -584(%rbp)
	leaq	0(%r13,%r13,2), %rax
	leaq	15(,%rax,8), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	cmpq	%rdx, %rsp
	je	.L69
.L186:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L186
.L69:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L70
	orq	$0, -8(%rsp,%rax)
.L70:
	leaq	0(,%r13,4), %rdi
	movq	%rsp, %r12
	call	malloc@PLT
	movl	$4, %esi
	movq	%r13, %rdi
	movq	%rax, -520(%rbp)
	call	calloc@PLT
	movl	$4, %esi
	movq	%r13, %rdi
	movq	%rax, -544(%rbp)
	call	calloc@PLT
	movl	-548(%rbp), %ebx
	movq	%rax, -528(%rbp)
	cmpl	%ebx, -552(%rbp)
	jne	.L71
	movq	$0x000000000, -88(%rbp)
.L71:
	leaq	-288(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movl	-508(%rbp), %ebx
	jmp	.L105
.L182:
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
	movl	-548(%rbp), %ebx
	addsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	cmpl	%ebx, -552(%rbp)
	jne	.L87
	movq	$0x000000000, -80(%rbp)
.L87:
	leaq	-272(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L86
.L184:
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
	jmp	.L155
.L169:
	movl	-508(%rbp), %eax
	imull	%r12d, %eax
	movl	%eax, -564(%rbp)
	jmp	.L26
.L151:
	movq	%rcx, %rax
	jmp	.L40
.L170:
	movl	%eax, %ecx
	movq	%rcx, %rsi
	jmp	.L37
.L99:
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
	pushq	%rcx
	pushq	-480(%rbp)
	pushq	-488(%rbp)
	pushq	-496(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L116
.L100:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3591(%rip), %r9
	movl	$274, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L165
.L172:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r14
	leaq	__func__.3591(%rip), %r9
	pushq	%rax
	movl	$124, %r8d
.L165:
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L174:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r12
	leaq	__func__.3591(%rip), %r9
	pushq	%rax
	movl	$128, %r8d
	jmp	.L165
.L43:
	movq	-576(%rbp), %rdi
	addq	%rsi, %rdx
	addq	%rdi, %rax
	leaq	8(%rdi,%rdx,8), %rdx
.L46:
	movq	(%rcx), %rsi
	addq	$8, %rax
	movq	%rsi, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L46
	jmp	.L30
.L111:
	movl	$1, %eax
	xorl	%edx, %edx
	jmp	.L31
.L179:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3591(%rip), %r9
	movl	$177, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L165
.L183:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3591(%rip), %r9
	pushq	%r8
	movl	$218, %r8d
	pushq	%rax
	jmp	.L165
.L168:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r15
	leaq	__func__.3591(%rip), %r9
	pushq	%rax
	movl	$77, %r8d
	jmp	.L165
.L167:
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3591(%rip), %r9
	movl	$76, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L165
.L166:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3591(%rip), %r9
	movl	$75, %r8d
	pushq	%rcx
	pushq	%rax
	jmp	.L165
.L180:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$179, %r8d
	pushq	%r9
	leaq	__func__.3591(%rip), %r9
	pushq	%rax
	jmp	.L165
.L106:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.3591(%rip), %r9
	movl	$142, %r8d
	pushq	%r11
	pushq	%rax
	jmp	.L165
.L175:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%rbx
	leaq	__func__.3591(%rip), %r9
	pushq	%rax
	movl	$130, %r8d
	jmp	.L165
.L116:
	orl	$-1, %eax
	jmp	.L101
.L171:
	movl	$0, -568(%rbp)
	movl	$0, -588(%rbp)
	jmp	.L42
.L173:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r13
	leaq	__func__.3591(%rip), %r9
	pushq	%rax
	movl	$126, %r8d
	jmp	.L165
.L185:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3591, @object
	.size	__func__.3591, 5
__func__.3591:
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
