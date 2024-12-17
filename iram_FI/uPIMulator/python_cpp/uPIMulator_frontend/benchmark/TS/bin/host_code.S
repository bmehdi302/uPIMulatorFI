	.file	"app.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.ascii	"\nUsage:  ./program [options]\n\nGeneral options:\n    -h   "
	.ascii	"  "
	.string	"   help\n    -w <W>    # of untimed warmup iterations (default=1)\n    -e <E>    # of timed repetition iterations (default=3)\n\nBenchmark-specific options:\n    -n <n>    n (TS length. Default=64K elements)\n    -m <m>    m (Query length. Default=256 elements)\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LFB37:
	.cfi_startproc
	endbr64
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	jmp	__fprintf_chk@PLT
	.cfi_endproc
.LFE37:
	.size	usage, .-usage
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\nUnrecognized option!\n"
.LC2:
	.string	"hw:e:n:m:"
	.text
	.p2align 4
	.globl	input_params
	.type	input_params, @function
input_params:
.LFB38:
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
	leaq	.L7(%rip), %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	$256, (%rsp)
	movq	$65536, 8(%rsp)
.L4:
	leaq	.LC2(%rip), %rdx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt@PLT
	testl	%eax, %eax
	js	.L16
	subl	$101, %eax
	cmpl	$18, %eax
	ja	.L5
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L11-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L15-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L9-.L7
	.long	.L8-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L6-.L7
	.text
.L5:
	movq	stderr(%rip), %rdi
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L15:
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%edi, %edi
	call	exit@PLT
.L6:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r15d
	jmp	.L4
.L8:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movq	%rax, 8(%rsp)
	jmp	.L4
.L9:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movq	%rax, (%rsp)
	jmp	.L4
.L11:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r14d
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L16:
	movq	8(%rsp), %xmm0
	movl	%r15d, 16(%r13)
	movq	%r13, %rax
	movl	%r14d, 20(%r13)
	movhps	(%rsp), %xmm0
	movups	%xmm0, 0(%r13)
	addq	$24, %rsp
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
.LFE38:
	.size	input_params, .-input_params
	.p2align 4
	.globl	start
	.type	start, @function
start:
.LFB39:
	.cfi_startproc
	endbr64
	movslq	%esi, %rsi
	testl	%edx, %edx
	jne	.L18
	movq	$0x000000000, 160(%rdi,%rsi,8)
.L18:
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	jmp	gettimeofday@PLT
	.cfi_endproc
.LFE39:
	.size	start, .-start
	.p2align 4
	.globl	stop
	.type	stop, @function
stop:
.LFB40:
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
	leaq	5(%rbp), %rdi
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
	movq	80(%rdi), %rax
	subq	(%rdi), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	88(%rdi), %rax
	mulsd	.LC4(%rip), %xmm0
	subq	8(%rdi), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	160(%rdx), %xmm0
	movsd	%xmm0, 160(%rdx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	stop, .-stop
	.section	.rodata.str1.1
.LC5:
	.string	"%f\t"
	.text
	.p2align 4
	.globl	print
	.type	print, @function
print:
.LFB41:
	.cfi_startproc
	endbr64
	imull	$1000, %edx, %edx
	pxor	%xmm1, %xmm1
	movslq	%esi, %rsi
	movl	$1, %eax
	movsd	160(%rdi,%rsi,8), %xmm0
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE41:
	.size	print, .-print
	.section	.rodata.str1.1
.LC6:
	.string	"host/app.c"
.LC7:
	.string	"%s:%d(%s): DPU Error (%s)\n"
.LC8:
	.string	"./bin/ts_dpu"
.LC9:
	.string	"DPU_INPUT_ARGUMENTS"
.LC10:
	.string	"__sys_used_mram_end"
.LC11:
	.string	"DPU_RESULTS"
.LC12:
	.string	"CPU Version Time (ms): "
.LC13:
	.string	"Inter-DPU Time (ms): "
.LC14:
	.string	"CPU-DPU Time (ms): "
.LC15:
	.string	"DPU Kernel Time (ms): "
.LC16:
	.string	"DPU-CPU Time (ms): "
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"[\033[32mOK\033[0m] results are equal\n"
	.align 8
.LC18:
	.string	"[\033[31mERROR\033[0m] results differ!\n"
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
	movl	%edi, %r8d
	movq	%rsi, %rdx
	movl	%r8d, %esi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	leaq	-480(%rbp), %rdi
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
	movl	-464(%rbp), %eax
	xorl	%esi, %esi
	movl	$1, %edi
	movl	%eax, -564(%rbp)
	movl	-460(%rbp), %eax
	movl	%eax, -652(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdx
	movq	%rax, -536(%rbp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L308
	subq	$8, %rsp
	pushq	-432(%rbp)
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	pushq	-440(%rbp)
	pushq	-448(%rbp)
	call	dpu_load@PLT
	addq	$32, %rsp
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L309
	subq	$8, %rsp
	pushq	-432(%rbp)
	leaq	-484(%rbp), %rdi
	pushq	-440(%rbp)
	pushq	-448(%rbp)
	call	dpu_get_nr_dpus@PLT
	addq	$32, %rsp
	movl	%eax, -544(%rbp)
	testl	%eax, %eax
	jne	.L310
	movq	-472(%rbp), %rcx
	movq	-480(%rbp), %rax
	xorl	%edx, %edx
	movq	%rcx, -512(%rbp)
	movq	%rax, %rbx
	movl	%ecx, -548(%rbp)
	imull	-484(%rbp), %ecx
	sall	$4, %ecx
	divq	%rcx
	movq	%rbx, %rax
	addq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rdx, %rdx
	movq	%rax, %rsi
	cmove	%rbx, %rsi
	xorl	%edi, %edi
	movq	%rsi, %rbx
	movq	%rsi, -560(%rbp)
	movl	%esi, -552(%rbp)
	call	srand@PLT
	movq	%rbx, %rsi
	andl	$4294967295, %esi
	movq	%rsi, %r14
	je	.L28
	xorl	%ecx, %ecx
	leaq	tSeries(%rip), %r15
	movabsq	$4647998506761461825, %rdi
.L29:
	movq	%rcx, %rax
	movq	%rcx, %rsi
	imulq	%rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	sarq	$63, %rdx
	sarq	$5, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	subq	%rax, %rdx
	subq	%rdx, %rsi
	movl	%esi, (%r15,%rcx,4)
	addq	$1, %rcx
	cmpq	%r14, %rcx
	jne	.L29
.L28:
	movq	-512(%rbp), %r8
	andl	$4294967295, %r8d
	movq	%r8, -504(%rbp)
	je	.L30
	xorl	%ecx, %ecx
	leaq	query(%rip), %rdi
	movabsq	$4647998506761461825, %rsi
.L31:
	movq	%rcx, %rax
	movq	%rcx, %rbx
	imulq	%rsi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	sarq	$63, %rdx
	sarq	$5, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	subq	%rax, %rdx
	subq	%rdx, %rbx
	movl	%ebx, (%rdi,%rcx,4)
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jne	.L31
.L30:
	leaq	0(,%r14,8), %r12
	movl	-552(%rbp), %eax
	subl	-512(%rbp), %eax
	movq	%r12, %rdi
	movl	%eax, -568(%rbp)
	call	malloc@PLT
	movl	tSeries(%rip), %ebx
	pxor	%xmm0, %xmm0
	movq	%rax, %r13
	cvtsi2sdl	%ebx, %xmm0
	imull	%ebx, %ebx
	movsd	%xmm0, (%rax)
	cmpq	$1, %r14
	jbe	.L32
	movl	$1, %eax
	leaq	tSeries(%rip), %r15
.L33:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	(%r15,%rax,4), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%r13,%rax,8)
	addq	$1, %rax
	cmpq	%r14, %rax
	jne	.L33
	movq	%r12, %rdi
	call	malloc@PLT
	pxor	%xmm1, %xmm1
	movl	$1, %edx
	cvtsi2sdl	%ebx, %xmm1
	movq	%rax, %r12
	movsd	%xmm1, (%rax)
.L35:
	movl	(%r15,%rdx,4), %eax
	pxor	%xmm0, %xmm0
	imull	%eax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	%r14, %rdx
	jne	.L35
.L162:
	movl	-568(%rbp), %r15d
	leaq	0(,%r15,8), %rdi
	movq	%rdi, -520(%rbp)
	call	malloc@PLT
	movq	%rax, %r14
	movl	-512(%rbp), %eax
	subl	$1, %eax
	movsd	0(%r13,%rax,8), %xmm0
	movl	%eax, -540(%rbp)
	leaq	(%r12,%rax,8), %rcx
	movq	%rax, -576(%rbp)
	movsd	%xmm0, (%r14)
	testl	%r15d, %r15d
	je	.L36
	cmpl	$1, %r15d
	movq	-520(%rbp), %rdi
	je	.L169
	movq	-504(%rbp), %rax
	movq	%r15, %rsi
	shrq	%rsi
	leaq	0(%r13,%rax,8), %r8
	salq	$4, %rsi
	xorl	%eax, %eax
.L38:
	movupd	(%r8,%rax), %xmm0
	movupd	0(%r13,%rax), %xmm4
	subpd	%xmm4, %xmm0
	movups	%xmm0, 8(%r14,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L38
	movq	%r15, %rax
	andq	$-2, %rax
	cmpq	%rax, %r15
	je	.L311
.L37:
	movq	-504(%rbp), %rsi
	movq	%rcx, -528(%rbp)
	movq	%rdi, -520(%rbp)
	addq	%rax, %rsi
	movsd	0(%r13,%rsi,8), %xmm0
	subsd	0(%r13,%rax,8), %xmm0
	movsd	%xmm0, 8(%r14,%rax,8)
	call	malloc@PLT
	movq	-528(%rbp), %rcx
	cmpl	$1, -568(%rbp)
	movq	-520(%rbp), %rdi
	movq	%rax, %rbx
	movsd	(%rcx), %xmm0
	movsd	%xmm0, (%rax)
	je	.L312
.L41:
	movq	-504(%rbp), %rax
	movq	%r15, %rcx
	shrq	%rcx
	leaq	(%r12,%rax,8), %rsi
	salq	$4, %rcx
	xorl	%eax, %eax
.L47:
	movupd	(%rsi,%rax), %xmm0
	movupd	(%r12,%rax), %xmm4
	subpd	%xmm4, %xmm0
	movups	%xmm0, 8(%rbx,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jne	.L47
	movq	%r15, %rax
	andq	$-2, %rax
	cmpq	%rax, %r15
	je	.L313
.L40:
	movq	-504(%rbp), %rcx
	movq	%rdi, -520(%rbp)
	addq	%rax, %rcx
	movsd	(%r12,%rcx,8), %xmm0
	subsd	(%r12,%rax,8), %xmm0
	movsd	%xmm0, 8(%rbx,%rax,8)
	call	malloc@PLT
	pxor	%xmm3, %xmm3
	cmpl	$1, -568(%rbp)
	movq	-520(%rbp), %rdi
	cvtsi2sdq	-504(%rbp), %xmm3
	movq	%rax, %r9
	je	.L314
.L46:
	movq	%r15, %rcx
	movapd	%xmm3, %xmm1
	xorl	%eax, %eax
	shrq	%rcx
	unpcklpd	%xmm1, %xmm1
	salq	$4, %rcx
.L50:
	movupd	(%r14,%rax), %xmm0
	divpd	%xmm1, %xmm0
	movups	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jne	.L50
	movq	%r15, %rax
	andq	$-2, %rax
	cmpq	%rax, %r15
	je	.L49
.L45:
	movsd	(%r14,%rax,8), %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, (%r9,%rax,8)
.L49:
	movq	%r9, -520(%rbp)
	movsd	%xmm3, -528(%rbp)
	call	malloc@PLT
	movq	-520(%rbp), %r9
	movsd	-528(%rbp), %xmm3
	movq	%rax, %r10
	leaq	-1(%r15), %rax
	cmpq	$2, %rax
	jbe	.L175
	movq	%r15, %rcx
	movapd	%xmm3, %xmm4
	leaq	AMean(%rip), %rsi
	xorl	%eax, %eax
	shrq	$2, %rcx
	unpcklpd	%xmm4, %xmm4
	salq	$4, %rcx
.L53:
	movdqa	(%rsi,%rax), %xmm0
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm0, %xmm1
	psrlq	$32, %xmm0
	pmuludq	%xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movupd	16(%rbx,%rax,2), %xmm1
	pshufd	$238, %xmm0, %xmm2
	cvtdq2pd	%xmm0, %xmm0
	divpd	%xmm4, %xmm1
	cvtdq2pd	%xmm2, %xmm2
	subpd	%xmm2, %xmm1
	movupd	(%rbx,%rax,2), %xmm2
	divpd	%xmm4, %xmm2
	movups	%xmm1, 16(%r10,%rax,2)
	subpd	%xmm0, %xmm2
	movups	%xmm2, (%r10,%rax,2)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jne	.L53
	movq	%r15, %rax
	andq	$-4, %rax
	cmpq	%rax, %r15
	je	.L52
.L161:
	movsd	(%rbx,%rax,8), %xmm0
	movl	(%rsi,%rax,4), %ecx
	leaq	1(%rax), %rdi
	movapd	%xmm0, %xmm1
	imull	%ecx, %ecx
	pxor	%xmm0, %xmm0
	divsd	%xmm3, %xmm1
	cvtsi2sdl	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10,%rax,8)
	cmpq	%rdi, %r15
	jbe	.L52
	movsd	(%rbx,%rdi,8), %xmm0
	movl	(%rsi,%rdi,4), %ecx
	addq	$2, %rax
	movapd	%xmm0, %xmm1
	imull	%ecx, %ecx
	pxor	%xmm0, %xmm0
	divsd	%xmm3, %xmm1
	cvtsi2sdl	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10,%rdi,8)
	cmpq	%rax, %r15
	jbe	.L52
	movsd	(%rbx,%rax,8), %xmm0
	movl	(%rsi,%rax,4), %ecx
	movapd	%xmm0, %xmm1
	imull	%ecx, %ecx
	pxor	%xmm0, %xmm0
	divsd	%xmm3, %xmm1
	cvtsi2sdl	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10,%rax,8)
.L52:
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	leaq	ASigma(%rip), %rdi
.L58:
	movsd	(%r10,%rax,8), %xmm0
	ucomisd	%xmm0, %xmm3
	movapd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm1
	ja	.L315
	cvttsd2sil	%xmm1, %edx
	movl	%edx, (%rdi,%rax,4)
	cvttsd2sil	(%r9,%rax,8), %edx
	movl	%edx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L58
.L57:
	movq	%r13, %rdi
	movsd	%xmm3, -584(%rbp)
	movq	%r9, -528(%rbp)
	movq	%r10, -520(%rbp)
	call	free@PLT
	movq	%r12, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
	call	free@PLT
	movq	-520(%rbp), %r10
	movq	%r10, %rdi
	call	free@PLT
	movq	-528(%rbp), %r9
	movq	%r9, %rdi
	call	free@PLT
	movq	-512(%rbp), %rax
	movsd	-584(%rbp), %xmm3
	testl	%eax, %eax
	movl	%eax, -640(%rbp)
	je	.L59
	leaq	query(%rip), %rax
	movq	-576(%rbp), %rcx
	movapd	%xmm3, %xmm0
	leaq	4(%rax), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rax, %rdx
.L60:
	pxor	%xmm1, %xmm1
	addq	$4, %rdx
	cvtsi2sdl	-4(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rdx, %rcx
	jne	.L60
	pxor	%xmm4, %xmm4
	movapd	%xmm0, %xmm2
	movapd	%xmm3, %xmm1
	cvtsi2sdl	-512(%rbp), %xmm4
	divsd	%xmm4, %xmm2
	cvttsd2sil	%xmm2, %esi
	movl	%esi, -520(%rbp)
.L62:
	pxor	%xmm0, %xmm0
	addq	$4, %rax
	cvtsi2sdl	-4(%rax), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	cmpq	%rax, %rcx
	jne	.L62
.L160:
	divsd	%xmm4, %xmm1
	movapd	%xmm1, %xmm0
	sqrtsd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm3
	ja	.L316
.L63:
	movl	-484(%rbp), %ecx
	xorl	%edx, %edx
	cvttsd2sil	%xmm1, %esi
	movl	-520(%rbp), %ebx
	movq	-560(%rbp), %rax
	movq	$0, -364(%rbp)
	movl	%ebx, -376(%rbp)
	divq	%rcx
	movl	-552(%rbp), %ecx
	movl	%esi, -528(%rbp)
	movl	%ecx, -384(%rbp)
	movq	-512(%rbp), %rcx
	movl	%esi, -372(%rbp)
	movl	-564(%rbp), %esi
	movl	%ecx, -380(%rbp)
	addl	-652(%rbp), %esi
	movl	%esi, -636(%rbp)
	movl	%eax, -368(%rbp)
	movl	%eax, %r14d
	testl	%esi, %esi
	jle	.L172
	movq	-504(%rbp), %rsi
	leal	(%rax,%rcx), %edx
	movl	$2147483647, -584(%rbp)
	leaq	-352(%rbp), %r15
	movq	%rdx, %rax
	leaq	query(%rip), %r13
	salq	$2, %rsi
	movq	%rsi, -616(%rbp)
	movl	%ecx, %esi
	sall	$2, %esi
	movl	%esi, -620(%rbp)
	leaq	0(,%rdx,4), %rsi
	leal	(%rdx,%rcx), %edx
	movq	%rsi, -576(%rbp)
	leal	0(,%rdx,4), %esi
	leal	(%rsi,%rax,4), %eax
	movl	%esi, -628(%rbp)
	movl	%eax, -632(%rbp)
	movl	-568(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -624(%rbp)
	movl	%ecx, %eax
	shrl	$2, %eax
	salq	$4, %rax
	movq	%rax, -648(%rbp)
	movl	%ecx, %eax
	andl	$-4, %eax
	movl	%eax, -552(%rbp)
.L152:
	movl	-544(%rbp), %ecx
	cmpl	%ecx, -564(%rbp)
	jg	.L65
	jne	.L66
	movq	$0x000000000, -88(%rbp)
.L66:
	leaq	-240(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L65:
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	leaq	-384(%rbp), %rbx
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-288(%rbp), %xmm5
	movq	-272(%rbp), %rax
	cmpb	$0, -296(%rbp)
	movq	%rax, -400(%rbp)
	movaps	%xmm5, -416(%rbp)
	je	.L71
	.p2align 4,,10
	.p2align 3
.L67:
	subq	$8, %rsp
	movl	$28, %ecx
	movq	%rbx, %rdx
	xorl	%esi, %esi
	movl	$0, -364(%rbp)
	leaq	.LC9(%rip), %rdi
	pushq	-400(%rbp)
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	call	dpu_copy_to@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L317
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-288(%rbp), %xmm5
	movq	-272(%rbp), %rax
	cmpb	$0, -296(%rbp)
	movq	%rax, -400(%rbp)
	movaps	%xmm5, -416(%rbp)
	jne	.L67
.L71:
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-288(%rbp), %xmm4
	movq	-272(%rbp), %rax
	cmpb	$0, -296(%rbp)
	movq	%rax, -400(%rbp)
	movaps	%xmm4, -416(%rbp)
	je	.L69
	.p2align 4,,10
	.p2align 3
.L68:
	subq	$8, %rsp
	pushq	-400(%rbp)
	movq	%r13, %rdi
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L318
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-288(%rbp), %xmm6
	movq	-272(%rbp), %rax
	cmpb	$0, -296(%rbp)
	movq	%rax, -400(%rbp)
	movaps	%xmm6, -416(%rbp)
	jne	.L68
.L69:
	subq	$8, %rsp
	pushq	-432(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-440(%rbp)
	leaq	.LC10(%rip), %rsi
	xorl	%edi, %edi
	pushq	-448(%rbp)
	movq	-616(%rbp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L319
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	leaq	tSeries(%rip), %rbx
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-288(%rbp), %xmm5
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm5, -416(%rbp)
	je	.L79
	.p2align 4,,10
	.p2align 3
.L75:
	imull	%r14d, %eax
	subq	$8, %rsp
	pushq	-400(%rbp)
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	leaq	(%rbx,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L320
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-288(%rbp), %xmm7
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm7, -416(%rbp)
	jne	.L75
.L79:
	subq	$8, %rsp
	pushq	-432(%rbp)
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	pushq	-440(%rbp)
	leaq	.LC10(%rip), %rsi
	pushq	-448(%rbp)
	movq	-576(%rbp), %rcx
	movl	-620(%rbp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L321
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	leaq	AMean(%rip), %r12
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-288(%rbp), %xmm4
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm4, -416(%rbp)
	je	.L84
	.p2align 4,,10
	.p2align 3
.L80:
	imull	%r14d, %eax
	subq	$8, %rsp
	pushq	-400(%rbp)
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	leaq	(%r12,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L322
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-288(%rbp), %xmm4
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm4, -416(%rbp)
	jne	.L80
.L84:
	subq	$8, %rsp
	pushq	-432(%rbp)
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	pushq	-440(%rbp)
	leaq	.LC10(%rip), %rsi
	pushq	-448(%rbp)
	movq	-576(%rbp), %rcx
	movl	-628(%rbp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L323
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	leaq	ASigma(%rip), %rbx
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-288(%rbp), %xmm5
	movq	-272(%rbp), %rdx
	leaq	ASigma(%rip), %rcx
	cmpb	$0, -296(%rbp)
	movq	%rcx, -512(%rbp)
	movq	%rdx, -400(%rbp)
	movl	-304(%rbp), %eax
	movaps	%xmm5, -416(%rbp)
	je	.L89
	.p2align 4,,10
	.p2align 3
.L85:
	imull	%r14d, %eax
	subq	$8, %rsp
	pushq	-400(%rbp)
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	leaq	(%rbx,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L324
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-288(%rbp), %xmm7
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm7, -416(%rbp)
	jne	.L85
.L89:
	subq	$8, %rsp
	pushq	-432(%rbp)
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	pushq	-440(%rbp)
	leaq	.LC10(%rip), %rsi
	pushq	-448(%rbp)
	movq	-576(%rbp), %rcx
	movl	-632(%rbp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L325
	movl	-544(%rbp), %esi
	cmpl	%esi, -564(%rbp)
	jle	.L326
	subq	$8, %rsp
	pushq	-432(%rbp)
	movl	$1, %edi
	pushq	-440(%rbp)
	pushq	-448(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L164
	movl	-484(%rbp), %eax
	movq	%rsp, %rcx
	movq	%rsp, -592(%rbp)
	leaq	15(,%rax,8), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	cmpq	%rdx, %rsp
	je	.L157
.L327:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L327
.L157:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L158
	orq	$0, -8(%rsp,%rax)
.L158:
	movq	%rsp, %rbx
.L159:
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %r12d
	je	.L100
	.p2align 4,,10
	.p2align 3
.L97:
	movl	$256, %edi
	movl	%r12d, %r12d
	call	malloc@PLT
	movq	%r15, %rdi
	movq	%rax, (%rbx,%r12,8)
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %r12d
	jne	.L97
.L100:
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movdqa	-288(%rbp), %xmm4
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm4, -416(%rbp)
	je	.L99
	.p2align 4,,10
	.p2align 3
.L98:
	subq	$8, %rsp
	movq	(%rbx,%rax,8), %rdi
	pushq	-400(%rbp)
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L328
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movdqa	-288(%rbp), %xmm6
	movq	-272(%rbp), %rdx
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	movq	%rdx, -400(%rbp)
	movaps	%xmm6, -416(%rbp)
	jne	.L98
.L99:
	subq	$8, %rsp
	pushq	-432(%rbp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	pushq	-440(%rbp)
	movl	$256, %ecx
	movl	$1, %edi
	leaq	.LC11(%rip), %rsi
	pushq	-448(%rbp)
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L329
	movq	-536(%rbp), %rsi
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	je	.L104
	movl	-584(%rbp), %r12d
	.p2align 4,,10
	.p2align 3
.L137:
	movq	(%rbx,%rax,8), %rdi
	movl	(%rdi), %eax
	cmpl	%r12d, %eax
	jge	.L176
	testl	%eax, %eax
	jle	.L176
.L105:
	movl	16(%rdi), %edx
	cmpl	%edx, %eax
	jle	.L177
	testl	%edx, %edx
	jle	.L177
.L107:
	movl	32(%rdi), %eax
	testl	%eax, %eax
	jle	.L178
	cmpl	%eax, %edx
	jle	.L178
.L109:
	movl	48(%rdi), %edx
	testl	%edx, %edx
	jle	.L179
	cmpl	%edx, %eax
	jle	.L179
	movl	64(%rdi), %eax
	cmpl	%eax, %edx
	jle	.L180
.L332:
	testl	%eax, %eax
	jle	.L180
	movl	80(%rdi), %edx
	cmpl	%edx, %eax
	jle	.L181
.L333:
	testl	%edx, %edx
	jle	.L181
	movl	96(%rdi), %eax
	testl	%eax, %eax
	jle	.L182
.L334:
	cmpl	%eax, %edx
	jle	.L182
	movl	112(%rdi), %edx
	testl	%edx, %edx
	jle	.L183
.L335:
	cmpl	%edx, %eax
	jle	.L183
.L119:
	movl	128(%rdi), %eax
	testl	%eax, %eax
	jle	.L184
	cmpl	%eax, %edx
	jle	.L184
.L121:
	movl	144(%rdi), %edx
	cmpl	%edx, %eax
	jle	.L185
	testl	%edx, %edx
	jle	.L185
.L123:
	movl	160(%rdi), %eax
	testl	%eax, %eax
	jle	.L186
	cmpl	%eax, %edx
	jle	.L186
.L125:
	movl	176(%rdi), %edx
	cmpl	%edx, %eax
	jle	.L187
	testl	%edx, %edx
	jle	.L187
.L127:
	movl	192(%rdi), %eax
	cmpl	%eax, %edx
	jle	.L188
	testl	%eax, %eax
	jle	.L188
.L129:
	movl	208(%rdi), %edx
	cmpl	%edx, %eax
	jle	.L189
	testl	%edx, %edx
	jle	.L189
	movl	224(%rdi), %eax
	cmpl	%eax, %edx
	jle	.L190
.L331:
	testl	%eax, %eax
	jle	.L190
.L133:
	movl	240(%rdi), %r12d
	cmpl	%r12d, %eax
	jle	.L191
	testl	%r12d, %r12d
	jle	.L191
.L135:
	call	free@PLT
	movq	%r15, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, -296(%rbp)
	movl	-304(%rbp), %eax
	jne	.L137
	movl	%r12d, -584(%rbp)
.L104:
	movl	-544(%rbp), %ecx
	cmpl	%ecx, -564(%rbp)
	jle	.L330
	movl	$2147483647, minHost(%rip)
	movl	-624(%rbp), %eax
	testl	%eax, %eax
	jle	.L150
.L163:
	movl	-568(%rbp), %eax
	movb	$0, -560(%rbp)
	xorl	%esi, %esi
	leaq	tSeries(%rip), %rbx
	movl	%r14d, -600(%rbp)
	movl	-640(%rbp), %r11d
	movq	%rbx, %rcx
	movl	$2147483647, %r8d
	leal	-2(%rax), %r9d
	leaq	ASigma(%rip), %rax
	movq	%r15, -608(%rbp)
	movq	%rax, -512(%rbp)
	movq	-648(%rbp), %rax
	leaq	AMean(%rip), %r12
	movq	%rax, -504(%rbp)
	.p2align 4,,10
	.p2align 3
.L141:
	movl	%esi, %r14d
	xorl	%eax, %eax
	testl	%r11d, %r11d
	jle	.L148
	cmpl	$2, -540(%rbp)
	jbe	.L173
	movq	-504(%rbp), %rdi
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L143:
	movdqu	(%rcx,%rax), %xmm0
	movdqa	0(%r13,%rax), %xmm2
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm2
	pmuludq	0(%r13,%rax), %xmm1
	pshufd	$8, %xmm1, %xmm1
	psrlq	$32, %xmm0
	addq	$16, %rax
	pmuludq	%xmm2, %xmm0
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm1
	paddd	%xmm1, %xmm3
	cmpq	%rdi, %rax
	jne	.L143
	movdqa	%xmm3, %xmm0
	movq	%rdi, -504(%rbp)
	movl	-552(%rbp), %edx
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm3
	movd	%xmm3, %eax
	cmpl	%edx, -548(%rbp)
	je	.L148
.L142:
	leal	(%r14,%rdx), %r10d
	movslq	%edx, %r15
	movslq	%r10d, %r10
	movl	(%rbx,%r10,4), %r10d
	imull	0(%r13,%r15,4), %r10d
	addl	%r10d, %eax
	leal	1(%rdx), %r10d
	cmpl	%r11d, %r10d
	jge	.L148
	addl	%r14d, %r10d
	leaq	4+query(%rip), %rdi
	addl	$2, %edx
	movslq	%r10d, %r10
	movl	(%rbx,%r10,4), %r10d
	imull	(%rdi,%r15,4), %r10d
	addl	%r10d, %eax
	cmpl	%r11d, %edx
	jge	.L148
	addl	%r14d, %edx
	addq	$4, %rdi
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %edx
	imull	(%rdi,%r15,4), %edx
	addl	%edx, %eax
.L148:
	movl	(%r12,%rsi,4), %edx
	movl	-528(%rbp), %r10d
	imull	%r11d, %edx
	imull	-520(%rbp), %edx
	subl	%edx, %eax
	movq	-512(%rbp), %rdx
	imull	(%rdx,%rsi,4), %r10d
	cltd
	idivl	%r10d
	movl	%r11d, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	cmpl	%r8d, %eax
	jge	.L145
	movb	$1, -560(%rbp)
	movl	%eax, %r8d
.L145:
	leaq	1(%rsi), %rax
	addq	$4, %rcx
	cmpq	%rsi, %r9
	je	.L146
	movq	%rax, %rsi
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L191:
	movl	%eax, %r12d
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L189:
	movl	%eax, %edx
	movl	224(%rdi), %eax
	cmpl	%eax, %edx
	jg	.L331
	.p2align 4,,10
	.p2align 3
.L190:
	movl	%edx, %eax
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L188:
	movl	%edx, %eax
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L187:
	movl	%eax, %edx
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L186:
	movl	%edx, %eax
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L185:
	movl	%eax, %edx
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L184:
	movl	%edx, %eax
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L179:
	movl	%eax, %edx
	movl	64(%rdi), %eax
	cmpl	%eax, %edx
	jg	.L332
	.p2align 4,,10
	.p2align 3
.L180:
	movl	%edx, %eax
	movl	80(%rdi), %edx
	cmpl	%edx, %eax
	jg	.L333
	.p2align 4,,10
	.p2align 3
.L181:
	movl	%eax, %edx
	movl	96(%rdi), %eax
	testl	%eax, %eax
	jg	.L334
	.p2align 4,,10
	.p2align 3
.L182:
	movl	%edx, %eax
	movl	112(%rdi), %edx
	testl	%edx, %edx
	jg	.L335
	.p2align 4,,10
	.p2align 3
.L183:
	movl	%eax, %edx
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L178:
	movl	%edx, %eax
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L177:
	movl	%eax, %edx
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L176:
	movl	%r12d, %eax
	jmp	.L105
.L146:
	cmpb	$0, -560(%rbp)
	movl	-600(%rbp), %r14d
	movq	-608(%rbp), %r15
	je	.L149
	movl	%r8d, minHost(%rip)
.L149:
	movl	-544(%rbp), %esi
	cmpl	%esi, -564(%rbp)
	jle	.L336
.L150:
	addl	$1, -544(%rbp)
	movq	-592(%rbp), %rsp
	movl	-544(%rbp), %eax
	cmpl	-636(%rbp), %eax
	jne	.L152
.L64:
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm5, %xmm5
	movsd	-64(%rbp), %xmm0
	imull	$1000, -652(%rbp), %eax
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdl	%eax, %xmm5
	movl	$1, %eax
	divsd	%xmm5, %xmm0
	movsd	%xmm5, -504(%rbp)
	call	__printf_chk@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC5(%rip), %rsi
	movsd	-96(%rbp), %xmm0
	divsd	-504(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC5(%rip), %rsi
	movsd	-88(%rbp), %xmm0
	divsd	-504(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC5(%rip), %rsi
	movsd	-80(%rbp), %xmm0
	divsd	-504(%rbp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC5(%rip), %rsi
	movsd	-72(%rbp), %xmm0
	divsd	-504(%rbp), %xmm0
	call	__printf_chk@PLT
	movl	-584(%rbp), %eax
	cmpl	%eax, minHost(%rip)
	je	.L337
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L154:
	pushq	%rcx
	pushq	-432(%rbp)
	pushq	-440(%rbp)
	pushq	-448(%rbp)
	call	dpu_free@PLT
	addq	$32, %rsp
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L338
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L339
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
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
.L173:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L142
.L330:
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-128(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-208(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-120(%rbp), %rax
	movsd	.LC4(%rip), %xmm4
	subq	-200(%rbp), %rax
	movl	-544(%rbp), %ecx
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm4, -504(%rbp)
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	cmpl	%ecx, -564(%rbp)
	jne	.L139
	movq	$0x000000000, -64(%rbp)
.L139:
	xorl	%esi, %esi
	leaq	-192(%rbp), %rdi
	call	gettimeofday@PLT
	movl	-624(%rbp), %esi
	movl	$2147483647, minHost(%rip)
	testl	%esi, %esi
	jg	.L163
.L140:
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-112(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-192(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	-104(%rbp), %rax
	subq	-184(%rbp), %rax
	mulsd	-504(%rbp), %xmm0
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-592(%rbp), %rsp
	addl	$1, -544(%rbp)
	movl	-544(%rbp), %eax
	cmpl	%eax, -636(%rbp)
	jne	.L152
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L326:
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	movq	-160(%rbp), %rax
	pxor	%xmm0, %xmm0
	subq	-240(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movsd	.LC4(%rip), %xmm5
	movq	-152(%rbp), %rax
	subq	-232(%rbp), %rax
	movl	-544(%rbp), %ecx
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm5, -504(%rbp)
	mulsd	%xmm5, %xmm0
	addsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	cmpl	%ecx, -564(%rbp)
	jne	.L91
	movq	$0x000000000, -80(%rbp)
.L91:
	leaq	-224(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	pushq	-432(%rbp)
	movl	$1, %edi
	pushq	-440(%rbp)
	pushq	-448(%rbp)
	call	dpu_launch@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L164
	xorl	%esi, %esi
	leaq	-144(%rbp), %rdi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	%rsp, %rsi
	movq	-144(%rbp), %rax
	subq	-224(%rbp), %rax
	movq	%rsp, -592(%rbp)
	cvtsi2sdq	%rax, %xmm0
	movq	-136(%rbp), %rax
	subq	-216(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	-484(%rbp), %eax
	mulsd	-504(%rbp), %xmm0
	leaq	15(,%rax,8), %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	addsd	%xmm1, %xmm0
	addsd	-80(%rbp), %xmm0
	andq	$-4096, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rdx
	movsd	%xmm0, -80(%rbp)
	cmpq	%rdx, %rsp
	je	.L94
.L340:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L340
.L94:
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L95
	orq	$0, -8(%rsp,%rax)
.L95:
	movl	-544(%rbp), %ecx
	movq	%rsp, %rbx
	cmpl	%ecx, -564(%rbp)
	jne	.L96
	movq	$0x000000000, -72(%rbp)
.L96:
	leaq	-208(%rbp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	jmp	.L159
.L336:
	movsd	.LC4(%rip), %xmm4
	movsd	%xmm4, -504(%rbp)
	jmp	.L140
.L314:
	xorl	%eax, %eax
	jmp	.L45
.L312:
	xorl	%eax, %eax
	jmp	.L40
.L313:
	movq	%rdi, -520(%rbp)
	call	malloc@PLT
	pxor	%xmm3, %xmm3
	movq	-520(%rbp), %rdi
	cvtsi2sdq	-504(%rbp), %xmm3
	movq	%rax, %r9
	jmp	.L46
.L311:
	movq	%rcx, -528(%rbp)
	movq	%rdi, -520(%rbp)
	call	malloc@PLT
	movq	-528(%rbp), %rcx
	movq	-520(%rbp), %rdi
	movq	%rax, %rbx
	movsd	(%rcx), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L41
.L337:
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L154
.L32:
	movq	%r12, %rdi
	call	malloc@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movq	%rax, %r12
	movsd	%xmm0, (%rax)
	jmp	.L162
.L36:
	xorl	%edi, %edi
	movq	%rcx, -520(%rbp)
	call	malloc@PLT
	movq	-520(%rbp), %rcx
	xorl	%edi, %edi
	movq	%rax, %rbx
	movsd	(%rcx), %xmm0
	movsd	%xmm0, (%rax)
	call	malloc@PLT
	xorl	%edi, %edi
	movq	%rax, -520(%rbp)
	call	malloc@PLT
	movq	-520(%rbp), %r9
	pxor	%xmm3, %xmm3
	movq	%rax, %r10
	jmp	.L57
.L59:
	pxor	%xmm4, %xmm4
	movapd	%xmm3, %xmm0
	movapd	%xmm3, %xmm1
	cvtsi2sdl	-512(%rbp), %xmm4
	divsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -520(%rbp)
	jmp	.L160
.L317:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$194, %r8d
	pushq	%rsi
	pushq	%rax
.L307:
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L318:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$202, %r8d
	pushq	%rcx
	pushq	%rax
	jmp	.L307
.L320:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r15
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	movl	$211, %r8d
	jmp	.L307
.L322:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r13
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	movl	$220, %r8d
	jmp	.L307
.L324:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%rbx
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	movl	$230, %r8d
	jmp	.L307
.L169:
	xorl	%eax, %eax
	jmp	.L37
.L328:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$268, %r8d
	pushq	%r9
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	jmp	.L307
.L175:
	xorl	%eax, %eax
	leaq	AMean(%rip), %rsi
	jmp	.L161
.L321:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r14
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	movl	$214, %r8d
	jmp	.L307
.L329:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	pushq	%r8
	movl	$270, %r8d
	pushq	%rax
	jmp	.L307
.L325:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$233, %r8d
	pushq	%r11
	pushq	%rax
	jmp	.L307
.L164:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$247, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L307
.L319:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$205, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L307
.L172:
	movl	$2147483647, -584(%rbp)
	jmp	.L64
.L323:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	pushq	%r12
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	movl	$223, %r8d
	jmp	.L307
.L308:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$131, %r8d
	pushq	%r10
	pushq	%rax
	jmp	.L307
.L316:
	movsd	%xmm1, -528(%rbp)
	call	sqrt@PLT
	movsd	-528(%rbp), %xmm1
	jmp	.L63
.L315:
	movq	%rdi, -616(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rax, -592(%rbp)
	movq	%r10, -584(%rbp)
	movsd	%xmm3, -528(%rbp)
	movsd	%xmm1, -520(%rbp)
	call	sqrt@PLT
	movsd	-520(%rbp), %xmm1
	movq	-592(%rbp), %rax
	movq	-616(%rbp), %rdi
	movq	-600(%rbp), %r9
	cvttsd2sil	%xmm1, %edx
	movq	-608(%rbp), %rsi
	movsd	-528(%rbp), %xmm3
	movq	-584(%rbp), %r10
	movl	%edx, (%rdi,%rax,4)
	cvttsd2sil	(%r9,%rax,8), %edx
	movl	%edx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L58
	jmp	.L57
.L338:
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	movl	$335, %r8d
	pushq	%rdx
	pushq	%rax
	jmp	.L307
.L339:
	call	__stack_chk_fail@PLT
.L310:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	leaq	__func__.4560(%rip), %r9
	pushq	%r8
	movl	$133, %r8d
	pushq	%rax
	jmp	.L307
.L309:
	call	dpu_error_to_string@PLT
	movq	stderr(%rip), %rdi
	movl	$132, %r8d
	pushq	%r9
	leaq	__func__.4560(%rip), %r9
	pushq	%rax
	jmp	.L307
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.section	.rodata
	.type	__func__.4560, @object
	.size	__func__.4560, 5
__func__.4560:
	.string	"main"
	.local	minHost
	.comm	minHost,4,4
	.local	ASigma
	.comm	ASigma,268435456,32
	.local	AMean
	.comm	AMean,268435456,32
	.local	query
	.comm	query,131072,32
	.local	tSeries
	.comm	tSeries,268435456,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
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
