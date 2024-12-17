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
	movq	$0x000000000, 160(%rdi,%rsi,8)
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
	mulsd	.LC1(%rip), %xmm0
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
	movsd	160(%rdi,%rsi,8), %xmm0
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
	.string	":\n    -h        help\n    -w <W>    # of untimed warmup iterations (default=1)\n    -e <E>    # of timed repetition iterations (default=3)\n\nBenchmark-specific options:\n    -m <I>    m_size (default=2048 elements)\n    -n <I>    n_size (default=2048 elements)\n"
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
	movl	$4096, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$3, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$163840, %r13d
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
.LC7:
	.string	"host/app.c"
.LC8:
	.string	"%s:%d(%s): DPU Error (%s)\n"
.LC9:
	.string	"./bin/mlp_dpu"
.LC15:
	.string	"CPU Version Time (ms): "
.LC17:
	.string	"CPU-DPU Time (ms): "
.LC18:
	.string	"DPU Kernel Time (ms): "
.LC19:
	.string	"Inter-DPU Time (ms): "
.LC20:
	.string	"DPU-CPU Time (ms): "
.LC21:
	.string	"\n\n"
.LC22:
	.string	"DPU_INPUT_ARGUMENTS"
.LC23:
	.string	"__sys_used_mram_end"
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
	subq	$488, %rsp
	.cfi_def_cfa_offset 544
	movq	%fs:40, %rax
	movq	%rax, 472(%rsp)
	xorl	%eax, %eax
	call	input_params
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, 24(%rsp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rdx, 56(%rsp)
	movq	%rax, 80(%rsp)
	leaq	112(%rsp), %rax
	movl	%edx, 40(%rsp)
	movq	%rax, %rdx
	movq	%rax, 16(%rsp)
	call	dpu_alloc@PLT
	testl	%eax, %eax
	jne	.L203
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_load@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L204
	leaq	108(%rsp), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_get_nr_dpus@PLT
	movl	%eax, 64(%rsp)
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L205
	movl	108(%rsp), %ebx
	movq	24(%rsp), %rax
	leaq	(%rbx,%rbx,2), %rdi
	movl	%eax, 8(%rsp)
	salq	$4, %rbx
	shrq	$32, %rax
	salq	$2, %rdi
	movq	%rax, %r13
	movl	%eax, %r12d
	call	malloc@PLT
	movq	%rbx, %rdi
	movl	%r13d, %r15d
	leaq	176(%rsp), %rbx
	movq	%rax, dpu_info(%rip)
	call	malloc@PLT
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rax, 64(%rsp)
	movl	%r13d, %eax
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	$-1, %r15d
	xorl	%ebp, %ebp
	movl	%r15d, 44(%rsp)
	call	dpu_set_dpu_iterator_from@PLT
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %ecx
	je	.L27
	movq	%rbx, %r14
	movq	64(%rsp), %rbx
	jmp	.L31
.L207:
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
	cmpl	%edi, %ebp
	leaq	(%rcx,%r9,4), %rcx
	cmovb	%edi, %ebp
	salq	$4, %rdx
	movl	%edi, 4(%rcx)
	movq	%r14, %rdi
	addq	%rbx, %rdx
	movl	%eax, (%rcx)
	movl	%r8d, 8(%rcx)
	movl	%r12d, (%rdx)
	movl	%r15d, 4(%rdx)
	movl	%eax, 8(%rdx)
	call	dpu_set_dpu_iterator_next@PLT
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %ecx
	je	.L206
.L31:
	movl	8(%rsp), %eax
	xorl	%edx, %edx
	divl	108(%rsp)
	cmpl	%ecx, %edx
	ja	.L207
	testl	%edx, %edx
	jne	.L208
	movl	%eax, %r8d
	imull	%ecx, %r8d
	jmp	.L29
.L208:
	movl	%ecx, %esi
	leal	1(%rax), %r8d
	subl	%edx, %esi
	imull	%edx, %r8d
	movl	%esi, %edx
	imull	%eax, %edx
	addl	%edx, %r8d
	jmp	.L29
.L206:
	movq	%r14, %rbx
.L27:
	movl	$24, %edi
	call	malloc@PLT
	movl	108(%rsp), %edx
	movl	44(%rsp), %r14d
	movq	%rax, %r15
	movq	%rax, A(%rip)
	imull	%ebp, %edx
	imull	%edx, %r14d
	movl	%edx, 72(%rsp)
	salq	$2, %r14
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, (%r15)
	call	malloc@PLT
	movq	%r14, %rdi
	leaq	0(,%r13,4), %r14
	movq	%rax, 8(%r15)
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, 16(%r15)
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, B(%rip)
	movq	%rax, 88(%rsp)
	call	malloc@PLT
	movl	24(%rsp), %edi
	movq	%rax, B_host(%rip)
	movq	%rax, %r14
	salq	$2, %rdi
	call	malloc@PLT
	movl	72(%rsp), %edx
	movq	%rax, 48(%rsp)
	leaq	0(,%rdx,4), %rdi
	movq	%rax, C(%rip)
	movq	%rdi, 72(%rsp)
	call	malloc@PLT
	movq	72(%rsp), %rdi
	movq	%rax, C_dpu(%rip)
	call	malloc@PLT
	movq	88(%rsp), %rsi
	movq	%rax, B_tmp(%rip)
	movl	24(%rsp), %eax
	imull	%r13d, %eax
	testl	%eax, %eax
	je	.L32
	movq	%r15, %r9
	xorl	%r8d, %r8d
	leal	-1(%rax), %ecx
.L33:
	movq	(%r9), %rdi
	xorl	%edx, %edx
	jmp	.L36
.L210:
	movl	$0, (%rdi,%rdx,4)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %rcx
	je	.L209
.L137:
	movq	%rax, %rdx
.L36:
	movl	%edx, %eax
	movl	%edx, %r11d
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	imull	$100, %eax, %eax
	subl	%eax, %r11d
	cmpl	$97, %r11d
	jbe	.L210
	leal	(%r8,%rdx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi,%rdx,4)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %rcx
	jne	.L137
.L209:
	addl	$1, %r8d
	addq	$8, %r9
	cmpl	$3, %r8d
	jne	.L33
.L32:
	testl	%r13d, %r13d
	je	.L211
	leal	-1(%r13), %r8d
	cmpl	$2, %r8d
	jbe	.L138
	movdqa	.LC14(%rip), %xmm5
	movq	%r13, %rdx
	movdqa	.LC13(%rip), %xmm4
	xorl	%eax, %eax
	shrq	$2, %rdx
	movdqa	.LC6(%rip), %xmm2
	movdqa	.LC10(%rip), %xmm7
	movdqa	.LC11(%rip), %xmm3
	movdqa	.LC12(%rip), %xmm6
	salq	$4, %rdx
	psubd	%xmm5, %xmm4
.L40:
	movdqa	%xmm2, %xmm8
	paddd	%xmm7, %xmm2
	movdqa	%xmm8, %xmm0
	movdqa	%xmm8, %xmm1
	punpckldq	%xmm8, %xmm0
	punpckhdq	%xmm8, %xmm1
	pmuludq	%xmm3, %xmm1
	pmuludq	%xmm3, %xmm0
	shufps	$221, %xmm1, %xmm0
	psrld	$4, %xmm0
	movdqa	%xmm0, %xmm1
	pslld	$1, %xmm0
	paddd	%xmm1, %xmm0
	pslld	$3, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	pand	%xmm6, %xmm8
	pslld	$1, %xmm0
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psubd	%xmm5, %xmm0
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm8, %xmm0
	movups	%xmm0, (%rsi,%rax)
	movups	%xmm0, (%r14,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L40
	movl	%r13d, %ecx
	andl	$-4, %ecx
	testb	$3, %r13b
	je	.L42
	movl	$50, %r10d
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	%ecx, %edi
	divl	%r10d
	salq	$2, %rdi
	leaq	(%rsi,%rdi), %r9
	cmpl	$47, %edx
	jbe	.L39
	movl	$0, (%r9)
	xorl	%eax, %eax
.L45:
	movl	%eax, (%r14,%rdi)
	leal	1(%rcx), %edi
	cmpl	%r13d, %edi
	jnb	.L42
	movl	$50, %r10d
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	%edi, %r11d
	divl	%r10d
	leaq	(%rsi,%r11,4), %r9
	cmpl	$47, %edx
	ja	.L46
	movl	$0, (%r9)
	xorl	%edi, %edi
.L47:
	addl	$2, %ecx
	movl	%edi, (%r14,%r11,4)
	cmpl	%ecx, %r13d
	jbe	.L42
	movl	$50, %r9d
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	%ecx, %edi
	divl	%r9d
	leaq	(%rsi,%rdi,4), %rsi
	cmpl	$47, %edx
	ja	.L212
	movl	$0, (%rsi)
.L50:
	movl	32(%rsp), %eax
	movl	%eax, (%r14,%rdi,4)
.L42:
	leaq	272(%rsp), %rax
	xorl	%esi, %esi
	movl	%r8d, 88(%rsp)
	movq	%r15, %r13
	movq	%rax, %rdi
	movq	%rax, 72(%rsp)
	movq	$0x000000000, 432(%rsp)
	call	gettimeofday@PLT
	leaq	24(%r15), %rax
	movl	88(%rsp), %r8d
	movq	%rbx, 88(%rsp)
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	leaq	4(,%r8,4), %rsi
	subl	$1, %eax
	leaq	4(,%rax,4), %r15
	movq	48(%rsp), %rax
	movq	%rsi, 48(%rsp)
	movq	%r15, 24(%rsp)
	movq	%rax, %rbx
	addq	%rax, %r15
.L38:
	movl	8(%rsp), %eax
	testl	%eax, %eax
	je	.L53
	movq	24(%rsp), %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	memset@PLT
	movl	%r12d, %r8d
	movq	%rbx, %rdi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L51:
	movl	(%rdi), %ecx
	testl	%r12d, %r12d
	je	.L55
	movq	0(%r13), %r9
	movq	%r14, %rsi
	movl	%r10d, %eax
	.p2align 4,,10
	.p2align 3
.L52:
	movl	%eax, %edx
	addl	$1, %eax
	addq	$4, %rsi
	movl	(%r9,%rdx,4), %edx
	imull	-4(%rsi), %edx
	addl	%edx, %ecx
	movl	%ecx, (%rdi)
	cmpl	%eax, %r8d
	jne	.L52
.L55:
	testl	%ecx, %ecx
	cmovs	%r11d, %ecx
	addq	$4, %rdi
	addl	%r12d, %r10d
	addl	%r12d, %r8d
	movl	%ecx, -4(%rdi)
	cmpq	%rdi, %r15
	jne	.L51
.L53:
	testl	%r12d, %r12d
	je	.L58
	movq	48(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	memcpy@PLT
.L58:
	addq	$8, %r13
	cmpq	%r13, 32(%rsp)
	jne	.L38
	movq	72(%rsp), %rdi
	xorl	%esi, %esi
	movq	88(%rsp), %rbx
	call	stop
	movl	56(%rsp), %eax
	addl	80(%rsp), %eax
	movl	%eax, 72(%rsp)
	je	.L121
	movl	44(%rsp), %esi
	movl	$0, 8(%rsp)
	movl	%esi, %eax
	imull	%ebp, %eax
	movl	%eax, %edx
	sall	$2, %eax
	movl	%eax, 44(%rsp)
	movl	%ebp, %eax
	leaq	0(,%rdx,4), %rcx
	movl	%esi, %edx
	salq	$2, %rax
	movq	%rcx, 24(%rsp)
	leaq	0(,%rdx,4), %rcx
	movq	%rax, 48(%rsp)
	leal	1(%rbp), %eax
	imull	%esi, %eax
	movq	%rcx, 32(%rsp)
	sall	$2, %eax
	movl	%eax, 56(%rsp)
.L120:
	movl	8(%rsp), %esi
	cmpl	%esi, 40(%rsp)
	ja	.L63
	jne	.L64
	movq	$0x000000000, 440(%rsp)
.L64:
	leaq	288(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L63:
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rax
	movq	64(%rsp), %r13
	movdqa	240(%rsp), %xmm2
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movl	224(%rsp), %edi
	movaps	%xmm2, 144(%rsp)
	je	.L69
	.p2align 4,,10
	.p2align 3
.L65:
	salq	$4, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	addq	%r13, %rdi
	movl	%ebp, 12(%rdi)
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L213
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm4
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %edi
	movq	%rax, 160(%rsp)
	movaps	%xmm4, 144(%rsp)
	jne	.L65
.L69:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	movl	$16, %ecx
	xorl	%edx, %edx
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	leaq	.LC22(%rip), %rsi
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L214
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm4
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm4, 144(%rsp)
	je	.L74
	.p2align 4,,10
	.p2align 3
.L70:
	movq	dpu_info(%rip), %r11
	leaq	(%rax,%rax,2), %rax
	movl	%r12d, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	leaq	(%r11,%rax,4), %rax
	imull	8(%rax), %edx
	movq	A(%rip), %rax
	movq	(%rax), %rax
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	(%rax,%rdx,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L215
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm2
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	jne	.L70
.L74:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	leaq	.LC23(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	movq	56(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L216
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm0
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	je	.L79
	.p2align 4,,10
	.p2align 3
.L75:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	movq	B(%rip), %rdi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L217
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm3
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movaps	%xmm3, 144(%rsp)
	jne	.L75
.L79:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	leaq	.LC23(%rip), %rsi
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	movq	64(%rsp), %rcx
	movl	76(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L218
	movl	8(%rsp), %esi
	cmpl	%esi, 40(%rsp)
	jbe	.L219
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L82
.L84:
	movl	$8, %r13d
.L111:
	movl	8(%rsp), %esi
	cmpl	%esi, 40(%rsp)
	ja	.L85
	jne	.L86
	movq	$0x000000000, 464(%rsp)
.L86:
	leaq	336(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L85:
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm0
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	je	.L91
	.p2align 4,,10
	.p2align 3
.L87:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	imull	%ebp, %eax
	movq	C_dpu(%rip), %rdx
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	(%rdx,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L220
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm6
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm6, 144(%rsp)
	jne	.L87
.L91:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	leaq	.LC23(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	movq	80(%rsp), %rcx
	movl	88(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L221
	movl	108(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L92
	movq	dpu_info(%rip), %r15
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%esi, %esi
	movq	C_dpu(%rip), %r10
	movq	B_tmp(%rip), %r9
	.p2align 4,,10
	.p2align 3
.L93:
	movl	%r11d, %eax
	movl	%r14d, %r8d
	xorl	%edx, %edx
	leaq	(%rax,%rax,2), %rax
	subl	%esi, %r8d
	leaq	(%r15,%rax,4), %rdi
	movl	%esi, %eax
	cmpl	$0, (%rdi)
	je	.L95
	.p2align 4,,10
	.p2align 3
.L94:
	leal	(%r8,%rax), %ecx
	addl	$1, %edx
	movl	(%r10,%rcx,4), %esi
	movl	%eax, %ecx
	addl	$1, %eax
	movl	%esi, (%r9,%rcx,4)
	cmpl	%edx, (%rdi)
	ja	.L94
	movl	108(%rsp), %ecx
	movl	%eax, %esi
.L95:
	addl	$1, %r11d
	addl	%ebp, %r14d
	cmpl	%ecx, %r11d
	jb	.L93
.L92:
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm0
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	je	.L100
	.p2align 4,,10
	.p2align 3
.L96:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	movq	B_tmp(%rip), %rdi
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L222
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rax
	movdqa	240(%rsp), %xmm7
	cmpb	$0, 232(%rsp)
	movq	%rax, 160(%rsp)
	movaps	%xmm7, 144(%rsp)
	jne	.L96
.L100:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	leaq	.LC23(%rip), %rsi
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	movq	64(%rsp), %rcx
	movl	76(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L223
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm3
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm3, 144(%rsp)
	je	.L105
	.p2align 4,,10
	.p2align 3
.L101:
	movq	dpu_info(%rip), %r11
	leaq	(%rax,%rax,2), %rax
	movl	%r12d, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	leaq	(%r11,%rax,4), %rax
	imull	8(%rax), %edx
	movq	A(%rip), %rax
	movq	(%rax,%r13), %rax
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	(%rax,%rdx,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L224
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm5
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm5, 144(%rsp)
	jne	.L101
.L105:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	xorl	%edi, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	leaq	.LC23(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	movq	56(%rsp), %rcx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L225
	movl	8(%rsp), %esi
	cmpl	%esi, 40(%rsp)
	jbe	.L226
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L108
.L110:
	addq	$8, %r13
	cmpq	$24, %r13
	jne	.L111
	movl	8(%rsp), %esi
	cmpl	%esi, 40(%rsp)
	ja	.L112
	jne	.L113
	movq	$0x000000000, 456(%rsp)
.L113:
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.L112:
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_from@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm2
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	je	.L118
	.p2align 4,,10
	.p2align 3
.L114:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	imull	%ebp, %eax
	movq	C_dpu(%rip), %rdx
	pushq	168(%rsp)
	.cfi_def_cfa_offset 560
	pushq	168(%rsp)
	.cfi_def_cfa_offset 568
	pushq	168(%rsp)
	.cfi_def_cfa_offset 576
	leaq	(%rdx,%rax,4), %rdi
	call	dpu_prepare_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L227
	movq	%rbx, %rdi
	call	dpu_set_dpu_iterator_next@PLT
	movq	256(%rsp), %rdx
	movdqa	240(%rsp), %xmm1
	cmpb	$0, 232(%rsp)
	movl	224(%rsp), %eax
	movq	%rdx, 160(%rsp)
	movaps	%xmm1, 144(%rsp)
	jne	.L114
.L118:
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	xorl	%r8d, %r8d
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	leaq	.LC23(%rip), %rsi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	movq	80(%rsp), %rcx
	movl	88(%rsp), %edx
	call	dpu_push_xfer@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L228
	movl	8(%rsp), %esi
	cmpl	%esi, 40(%rsp)
	jbe	.L229
.L119:
	addl	$1, 8(%rsp)
	movl	8(%rsp), %eax
	cmpl	72(%rsp), %eax
	jne	.L120
.L121:
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	432(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	call	__printf_chk@PLT
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	pxor	%xmm4, %xmm4
	movl	$1, %edi
	movsd	440(%rsp), %xmm0
	imull	$1000, 80(%rsp), %eax
	leaq	.LC2(%rip), %rsi
	cvtsi2sdl	%eax, %xmm4
	movl	$1, %eax
	divsd	%xmm4, %xmm0
	movsd	%xmm4, 8(%rsp)
	call	__printf_chk@PLT
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	448(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	464(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC2(%rip), %rsi
	movsd	456(%rsp), %xmm0
	divsd	8(%rsp), %xmm0
	call	__printf_chk@PLT
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	108(%rsp), %edx
	testl	%edx, %edx
	je	.L62
	leal	-1(%rdx), %r11d
	movq	dpu_info(%rip), %rax
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	imulq	$12, %r11, %r11
	movq	C(%rip), %r9
	movq	C_dpu(%rip), %r8
	xorl	%edi, %edi
	leaq	12(%rax), %r13
	movl	$1, %ebx
	addq	%r13, %r11
.L122:
	movl	(%rax), %ecx
	movl	%r12d, %r10d
	movl	%edx, %eax
	subl	%edx, %r10d
	leal	(%rcx,%rdx), %esi
	testl	%ecx, %ecx
	je	.L127
.L124:
	leal	(%r10,%rax), %ecx
	movl	%eax, %edx
	movl	(%r9,%rdx,4), %edx
	cmpl	%edx, (%r8,%rcx,4)
	cmovne	%edi, %ebx
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	.L124
	movl	%esi, %edx
.L127:
	movq	%r13, %rax
	addl	%ebp, %r12d
	cmpq	%r11, %r13
	je	.L125
	addq	$12, %r13
	jmp	.L122
.L226:
	xorl	%esi, %esi
	leaq	416(%rsp), %rdi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	416(%rsp), %rax
	subq	336(%rsp), %rax
	movl	8(%rsp), %esi
	cvtsi2sdq	%rax, %xmm0
	movq	424(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	344(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	464(%rsp), %xmm0
	movsd	%xmm0, 464(%rsp)
	cmpl	%esi, 40(%rsp)
	jne	.L107
	movq	$0x000000000, 448(%rsp)
.L107:
	leaq	304(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L108
	leaq	384(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	384(%rsp), %rax
	subq	304(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	392(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	312(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	448(%rsp), %xmm0
	movsd	%xmm0, 448(%rsp)
	jmp	.L110
.L219:
	xorl	%esi, %esi
	leaq	368(%rsp), %rdi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	368(%rsp), %rax
	subq	288(%rsp), %rax
	movl	8(%rsp), %esi
	cvtsi2sdq	%rax, %xmm0
	movq	376(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	296(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	440(%rsp), %xmm0
	movsd	%xmm0, 440(%rsp)
	cmpl	%esi, 40(%rsp)
	jne	.L81
	movq	$0x000000000, 448(%rsp)
.L81:
	leaq	304(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 552
	movl	$1, %edi
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_launch@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	testl	%eax, %eax
	jne	.L82
	leaq	384(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	384(%rsp), %rax
	subq	304(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	392(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	312(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	448(%rsp), %xmm0
	movsd	%xmm0, 448(%rsp)
	jmp	.L84
.L229:
	leaq	400(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	400(%rsp), %rax
	subq	320(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	408(%rsp), %rax
	mulsd	.LC1(%rip), %xmm0
	subq	328(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	addsd	456(%rsp), %xmm0
	movsd	%xmm0, 456(%rsp)
	jmp	.L119
.L138:
	movq	%rsi, %r9
	xorl	%edi, %edi
	xorl	%ecx, %ecx
.L39:
	movl	$0, (%r9)
	xorl	%eax, %eax
	jmp	.L45
.L212:
	andl	$1, %ecx
	movl	%ecx, 32(%rsp)
	movl	%ecx, (%rsi)
	jmp	.L50
.L46:
	andl	$1, %edi
	movl	%edi, (%r9)
	jmp	.L47
.L125:
	testb	%bl, %bl
	jne	.L62
	leaq	.LC25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L129:
	movq	A(%rip), %rbp
	movq	0(%rbp), %rdi
	call	free@PLT
	movq	8(%rbp), %rdi
	call	free@PLT
	movq	16(%rbp), %rdi
	call	free@PLT
	movq	%rbp, %rdi
	call	free@PLT
	movq	B(%rip), %rdi
	call	free@PLT
	movq	C(%rip), %rdi
	call	free@PLT
	movq	C_dpu(%rip), %rdi
	call	free@PLT
	pushq	%rcx
	.cfi_def_cfa_offset 552
	pushq	136(%rsp)
	.cfi_def_cfa_offset 560
	pushq	136(%rsp)
	.cfi_def_cfa_offset 568
	pushq	136(%rsp)
	.cfi_def_cfa_offset 576
	call	dpu_free@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 544
	movl	%eax, %edi
	testl	%eax, %eax
	jne	.L230
	movl	%ebx, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	negl	%eax
	movq	472(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L231
	addq	$488, %rsp
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
.L62:
	.cfi_restore_state
	leaq	.LC24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movl	$1, %ebx
	call	__printf_chk@PLT
	jmp	.L129
.L220:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$216, %r8d
	pushq	%rcx
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
.L202:
	movq	stderr(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L222:
	.cfi_def_cfa_offset 544
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	movl	$231, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L224:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$238, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L211:
	.cfi_restore_state
	orl	$-1, %r8d
	jmp	.L42
.L215:
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$179, %r8d
	pushq	%r10
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L217:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	movl	$184, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L227:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$276, %r8d
	pushq	%rdi
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L213:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	pushq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	movl	$171, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L230:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$336, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L214:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	movl	$173, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L225:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movl	$240, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	leaq	__func__.3611(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L108:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	pushq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	movl	$253, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L82:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$199, %r8d
	pushq	%rsi
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L218:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$186, %r8d
	pushq	%rdi
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L221:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$218, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L223:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	pushq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	movl	$233, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L228:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$278, %r8d
	pushq	%rsi
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L216:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	movl	$181, %r8d
	pushq	%r9
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	leaq	__func__.3611(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L205:
	.cfi_restore_state
	movl	32(%rsp), %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$88, %r8d
	pushq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L204:
	.cfi_restore_state
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$87, %r8d
	pushq	%rcx
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L203:
	.cfi_restore_state
	movl	%eax, %edi
	call	dpu_error_to_string@PLT
	leaq	__func__.3611(%rip), %r9
	movl	$86, %r8d
	pushq	%rsi
	.cfi_remember_state
	.cfi_def_cfa_offset 552
	pushq	%rax
	.cfi_def_cfa_offset 560
	jmp	.L202
.L231:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3611, @object
	.size	__func__.3611, 5
__func__.3611:
	.string	"main"
	.local	C_dpu
	.comm	C_dpu,8,8
	.local	C
	.comm	C,8,8
	.local	B_tmp
	.comm	B_tmp,8,8
	.local	B_host
	.comm	B_host,8,8
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC6:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC10:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC11:
	.long	1374389535
	.long	1374389535
	.long	1374389535
	.long	1374389535
	.align 16
.LC12:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC13:
	.long	47
	.long	47
	.long	47
	.long	47
	.align 16
.LC14:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.section	.rodata.cst8
	.align 8
.LC16:
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
