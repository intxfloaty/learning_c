	.file	"helloWorld..c"
 # GNU C17 (Rev1, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.0-p13, MPC version 1.2.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=x86-64
	.text
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __format, __format
	movq	%rdx, 40(%rbp)	 #,
	movq	%r8, 48(%rbp)	 #,
	movq	%r9, 56(%rbp)	 #,
 # C:/msys64/mingw64/include/stdio.h:371:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	leaq	40(%rbp), %rax	 #, tmp86
	movq	%rax, -16(%rbp)	 # tmp86, MEM[(char * *)&__local_argv]
 # C:/msys64/mingw64/include/stdio.h:372:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	movq	-16(%rbp), %rbx	 # __local_argv, __local_argv.0_1
	movl	$1, %ecx	 #,
	movq	__imp___acrt_iob_func(%rip), %rax	 #, tmp87
	call	*%rax	 # tmp87
	movq	%rax, %rcx	 #, _2
	movq	32(%rbp), %rax	 # __format, tmp88
	movq	%rbx, %r8	 # __local_argv.0_1,
	movq	%rax, %rdx	 # tmp88,
	call	__mingw_vfprintf	 #
	movl	%eax, -4(%rbp)	 # tmp89, __retval
 # C:/msys64/mingw64/include/stdio.h:374:   return __retval;
	movl	-4(%rbp), %eax	 # __retval, _10
 # C:/msys64/mingw64/include/stdio.h:375: }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%d %d\12\0"
.LC1:
	.ascii "hello world\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # .\helloWorld..c:4: {
	call	__main	 #
 # .\helloWorld..c:5:     int a=1,b=1;
	movl	$1, -4(%rbp)	 #, a
 # .\helloWorld..c:5:     int a=1,b=1;
	movl	$1, -8(%rbp)	 #, b
 # .\helloWorld..c:6:     for (int i = 0; i < 10; ++i) {
	movl	$0, -12(%rbp)	 #, i
 # .\helloWorld..c:6:     for (int i = 0; i < 10; ++i) {
	jmp	.L4	 #
.L5:
 # .\helloWorld..c:8:         a+=b;
	movl	-8(%rbp), %eax	 # b, tmp84
	addl	%eax, -4(%rbp)	 # tmp84, a
 # .\helloWorld..c:9:         b+=a;
	movl	-4(%rbp), %eax	 # a, tmp85
	addl	%eax, -8(%rbp)	 # tmp85, b
 # .\helloWorld..c:6:     for (int i = 0; i < 10; ++i) {
	addl	$1, -12(%rbp)	 #, i
.L4:
 # .\helloWorld..c:6:     for (int i = 0; i < 10; ++i) {
	cmpl	$9, -12(%rbp)	 #, i
	jle	.L5	 #,
 # .\helloWorld..c:11:     printf("%d %d\n", a, b);
	movl	-8(%rbp), %edx	 # b, tmp86
	movl	-4(%rbp), %eax	 # a, tmp87
	movl	%edx, %r8d	 # tmp86,
	movl	%eax, %edx	 # tmp87,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	printf	 #
 # .\helloWorld..c:12:     printf("hello world\n");
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
	movl	$0, %eax	 #, _10
 # .\helloWorld..c:13: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef