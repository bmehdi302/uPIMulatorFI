	$text,
	$file,	"stdio.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/stdlib/stdio.c"
	$file,	2 "/root" "uPIMulator_frontend/sdk/stdlib/stdint.h"
	$section,	%text, printf,"ax",@progbits
	$globl,	printf                          //  -  -  Begin function printf
	$type,	printf,@function
printf:                                 // @printf
stdio..Lfunc_begin0:
	$loc,	1 102 0                         // uPIMulator_frontend/sdk/stdlib/stdio.c:102:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: printf:format < -  $r0
	$cfi_def_cfa_offset,  - 48
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 40, d22
	$add , r22, r22, 48
	$cfi_offset, 15,  - 32
	$cfi_offset, 14,  - 28
	$sd , r22,  - 32, d14
	$cfi_offset, 17,  - 40
	$cfi_offset, 16,  - 36
	$sd , r22,  - 40, d16
	$cfi_offset, 19,  - 48
	$cfi_offset, 18,  - 44
	$sd , r22,  - 48, d18
	$move , r14, r0
stdio..Ltmp0:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  undef
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	//DEBUG_VALUE: printf:insert_string_arg < -  1
	//DEBUG_VALUE: printf:format < -  $r14
	$loc,	1 107 5 prologue_end            // uPIMulator_frontend/sdk/stdlib/stdio.c:107:5
	$call , r23, stdio.__open_print_sequence
stdio..Ltmp1:
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	$loc,	1 110 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:110:5
	$sub , r0, r22, 56, false
	$sw , r22,  - 24, r0
	$move , r0, 1
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:0
	$move , r15, r14, true, stdio..LBB0_1
stdio..Ltmp2:
stdio..LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	//DEBUG_VALUE: printf:insert_string_arg < -  undef
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	$loc,	1 112 46 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:112:46
	$add , r15, r15, 1
stdio..Ltmp3:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	$loc,	1 0 46 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:46
	$move , r0, r16
stdio..Ltmp4:
stdio..LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	//DEBUG_VALUE: printf:insert_string_arg < -  undef
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	$loc,	1 112 12                        // uPIMulator_frontend/sdk/stdlib/stdio.c:112:12
	$lbu , r1, r15, 0
stdio..Ltmp5:
	$loc,	1 112 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:112:5
	$jeq , r1, 37, stdio..LBB0_6
stdio..Ltmp6:
// %bb.2:                               //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 5                           // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$jneq , r1, 0, stdio..LBB0_3
	$jump , stdio..LBB0_20
stdio..Ltmp7:
stdio..LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 115 17 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:115:17
	$lbu , r1, r15, 1
stdio..Ltmp8:
	$loc,	1 114 13                        // uPIMulator_frontend/sdk/stdlib/stdio.c:114:13
	$add , r15, r15, 1
stdio..Ltmp9:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	$loc,	1 115 17                        // uPIMulator_frontend/sdk/stdlib/stdio.c:115:17
	$jeq , r1, 37, stdio..LBB0_3
stdio..Ltmp10:
// %bb.7:                               //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$jeq , r1, 0, stdio..LBB0_20
stdio..Ltmp11:
// %bb.8:                               //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 17 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:17
	$move , r0, 37
	$loc,	1 120 13 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:120:13
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp12:
	$loc,	1 0 13 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:13
	$jump , stdio..LBB0_9
stdio..Ltmp13:
stdio..LBB0_18:                               //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 136 17 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:136:17
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp14:
	$loc,	1 138 23                        // uPIMulator_frontend/sdk/stdlib/stdio.c:138:23
	$lbu , r0, r15, 0
	$loc,	1 138 56 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:138:56
	$and , r0, r0, 223
	$add , r0, r0,  - 65
	$and , r0, r0, 255
	$jltu , r0, 26, stdio..LBB0_19
stdio..Ltmp15:
stdio..LBB0_17:                               //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 0                           // uPIMulator_frontend/sdk/stdlib/stdio.c:0:0
	$add , r15, r15, 1
stdio..Ltmp16:
stdio..LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	$loc,	1 122 20 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:122:20
	$lbu , r0, r15, 0
	$move , r16, 1
	$loc,	1 122 13 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:122:13
	$jles , r0, 107, stdio..LBB0_10
stdio..Ltmp17:
// %bb.14:                              //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$jeq , r0, 122, stdio..LBB0_17
stdio..Ltmp18:
// %bb.15:                              //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$jneq , r0, 108, stdio..LBB0_18
stdio..Ltmp19:
// %bb.16:                              //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 13                          // uPIMulator_frontend/sdk/stdlib/stdio.c:0:13
	$move , r0, 108
stdio..Ltmp20:
	$loc,	1 124 21 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:124:21
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp21:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] $r15
	$loc,	1 0 21 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:21
	$jump , stdio..LBB0_17
stdio..Ltmp22:
stdio..LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 122 13 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:122:13
	$jeq , r0, 76, stdio..LBB0_17
stdio..Ltmp23:
// %bb.11:                              //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$jeq , r0, 0, stdio..LBB0_19
stdio..Ltmp24:
// %bb.12:                              //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$jneq , r0, 105, stdio..LBB0_18
stdio..Ltmp25:
// %bb.13:                              //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 13 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:13
	$move , r0, 100
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp26:
	//DEBUG_VALUE: printf:insert_string_arg < -  0
	$jump , stdio..LBB0_19
stdio..Ltmp27:
stdio..LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_LABEL: standard_character_format_process
	$move , r16, 0
stdio..Ltmp28:
	$loc,	1 149 17 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:149:17
	$and , r0, r0, 1, z, stdio..LBB0_19
stdio..Ltmp29:
// %bb.4:                               //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 17 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:17
	$move , r0, 37
stdio..Ltmp30:
	$loc,	1 150 17 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:150:17
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp31:
	$loc,	1 0 17 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:17
	$move , r0, 115
stdio..Ltmp32:
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp33:
	//DEBUG_VALUE: printf:insert_string_arg < -  0
	$jump , stdio..LBB0_19
stdio..Ltmp34:
stdio..LBB0_20:
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r15
	//DEBUG_VALUE: printf:format < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$move , r15, 0
stdio..Ltmp35:
	$loc,	1 157 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:157:5
	$move , r0, r15
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp36:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$add , r0, r22,  - 16
stdio..Ltmp37:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 160 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:160:5
	$or , r16, r0, 1, true, stdio..LBB0_21
stdio..Ltmp38:
stdio..LBB0_22:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 160 5 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/stdio.c:160:5
	$jeq , r0, 0, stdio..LBB0_52
stdio..Ltmp39:
stdio..LBB0_23:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_LABEL: standard_character_process
	$loc,	1 243 13 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:243:13
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp40:
	$loc,	1 0 13 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:13
	$move , r15, 1
stdio..Ltmp41:
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  undef
	$loc,	1 160 46 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:160:46
	$add , r14, r14, 1
stdio..Ltmp42:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
stdio..LBB0_21:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_30 Depth 2
                                        //     Child Loop BB0_41 Depth 2
                                        //     Child Loop BB0_50 Depth 2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  undef
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 160 12 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:160:12
	$lbu , r0, r14, 0
stdio..Ltmp43:
	$loc,	1 160 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:160:5
	$jneq , r0, 37, stdio..LBB0_22
stdio..Ltmp44:
// %bb.24:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 164 17 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:164:17
	$lbu , r1, r14, 1
stdio..Ltmp45:
	$loc,	1 162 13                        // uPIMulator_frontend/sdk/stdlib/stdio.c:162:13
	$add , r14, r14, 1
stdio..Ltmp46:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 164 17                        // uPIMulator_frontend/sdk/stdlib/stdio.c:164:17
	$jeq , r1, 37, stdio..LBB0_23
stdio..Ltmp47:
// %bb.25:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$jeq , r1, 0, stdio..LBB0_52
stdio..Ltmp48:
// %bb.26:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 169 17                        // uPIMulator_frontend/sdk/stdlib/stdio.c:169:17
	$and , r0, r15, 1, z, stdio..LBB0_28
stdio..Ltmp49:
// %bb.27:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  0
	$loc,	1 0 17 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:17
	$move , r0, 0
stdio..Ltmp50:
	$loc,	1 171 17 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:171:17
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp51:
stdio..LBB0_28:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 17 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:17
	$move , r0, 0
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
stdio..Ltmp52:
	//DEBUG_VALUE: arg_is_64_bits < -  undef
	$loc,	1 176 20 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:176:20
	$lbu , r1, r14, 0
	$loc,	1 176 13 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:176:13
	$jgts , r1, 121, stdio..LBB0_35
	$jump , stdio..LBB0_30
stdio..Ltmp53:
stdio..LBB0_36:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 186 56 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:186:56
	$and , r2, r1, 223
	$add , r2, r2,  - 65
	$and , r2, r2, 255
	$jleu , r2, 25, stdio..LBB0_37
stdio..Ltmp54:
stdio..LBB0_34:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:0
	$add , r14, r14, 1
stdio..Ltmp55:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: arg_is_64_bits < -  undef
	$loc,	1 176 20 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:176:20
	$lbu , r1, r14, 0
	$loc,	1 176 13 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:176:13
	$jles , r1, 121, stdio..LBB0_30
stdio..Ltmp56:
stdio..LBB0_35:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 13                          // uPIMulator_frontend/sdk/stdlib/stdio.c:0:13
	$jeq , r1, 122, stdio..LBB0_34
	$jump , stdio..LBB0_36
stdio..Ltmp57:
stdio..LBB0_30:                               //   Parent Loop BB0_21 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 176 13                        // uPIMulator_frontend/sdk/stdlib/stdio.c:176:13
	$jeq , r1, 0, stdio..LBB0_46
stdio..Ltmp58:
// %bb.31:                              //   in Loop: Header=BB0_30 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$jeq , r1, 76, stdio..LBB0_33
stdio..Ltmp59:
// %bb.32:                              //   in Loop: Header=BB0_30 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$jneq , r1, 108, stdio..LBB0_36
stdio..Ltmp60:
stdio..LBB0_33:                               //   in Loop: Header=BB0_30 Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: printf:current_format_char_ptr < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] $r14
	//DEBUG_VALUE: arg_is_64_bits < -  1
	$loc,	1 180 21 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:180:21
	$add , r14, r14, 1
stdio..Ltmp61:
	$loc,	1 0 21 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:21
	$move , r0, 1
stdio..Ltmp62:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: arg_is_64_bits < -  undef
	$loc,	1 176 20 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:176:20
	$lbu , r1, r14, 0
	$loc,	1 176 13 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:176:13
	$jgts , r1, 121, stdio..LBB0_35
	$jump , stdio..LBB0_30
stdio..Ltmp63:
stdio..LBB0_37:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 193 13 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:193:13
	$add , r1, r1,  - 69
	$jgtu , r1, 46, stdio..LBB0_46
stdio..Ltmp64:
// %bb.38:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 13 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:13
	$lsl , r1, r1, 2
	$lw , r1, r1, stdio..LJTI0_0
	$jump , r1
stdio..Ltmp65:
stdio..LBB0_45:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 213 21 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:213:21
	// inline asm
	$nop ,
	// inline asm
	$loc,	1 214 34                        // uPIMulator_frontend/sdk/stdlib/stdio.c:214:34
	$lw , r0, r22,  - 24
	$add , r0, r0,  - 8
	$and , r0, r0,  - 8
	$sw , r22,  - 24, r0
	$ld , d18, r0, 0
stdio..Ltmp66:
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: arg < -  undef
	//DEBUG_VALUE: val < -  undef
	$loc,	1 218 25                        // uPIMulator_frontend/sdk/stdlib/stdio.c:218:25
	$and , r0, r19, 255
stdio..Ltmp67:
	//DEBUG_VALUE: arg_byte < -  $r0
	//DEBUG_VALUE: i < -  3
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp68:
	//DEBUG_VALUE: i < -  1
	$lsr , r0, r19, 8
stdio..Ltmp69:
	$and , r0, r0, 255
stdio..Ltmp70:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp71:
	//DEBUG_VALUE: i < -  2
	$lsr , r0, r19, 16
stdio..Ltmp72:
	$and , r0, r0, 255
stdio..Ltmp73:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp74:
	$lsr , r0, r19, 24
stdio..Ltmp75:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp76:
	//DEBUG_VALUE: i < -  4
	$and , r0, r18, 255
stdio..Ltmp77:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp78:
	//DEBUG_VALUE: i < -  5
	$loc,	1 217 41                        // uPIMulator_frontend/sdk/stdlib/stdio.c:217:41
	$lsr .u, d0, r18, 8
stdio..Ltmp79:
	$loc,	1 218 25                        // uPIMulator_frontend/sdk/stdlib/stdio.c:218:25
	$and , r0, r1, 255
stdio..Ltmp80:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp81:
	//DEBUG_VALUE: i < -  6
	$loc,	1 217 41                        // uPIMulator_frontend/sdk/stdlib/stdio.c:217:41
	$lsr .u, d0, r18, 16
stdio..Ltmp82:
	$loc,	1 218 25                        // uPIMulator_frontend/sdk/stdlib/stdio.c:218:25
	$and , r0, r1, 255
stdio..Ltmp83:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp84:
	//DEBUG_VALUE: i < -  7
	$loc,	1 217 41                        // uPIMulator_frontend/sdk/stdlib/stdio.c:217:41
	$lsr .u, d0, r18, 24
stdio..Ltmp85:
	//DEBUG_VALUE: arg_byte < -  undef
	$loc,	1 218 25                        // uPIMulator_frontend/sdk/stdlib/stdio.c:218:25
	$move , r0, r1
stdio..Ltmp86:
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp87:
	$jump , stdio..LBB0_51
stdio..Ltmp88:
stdio..LBB0_46:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 226 25 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:226:25
	$and , r0, r0, 1, z, stdio..LBB0_48
stdio..Ltmp89:
// %bb.47:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 227 31                        // uPIMulator_frontend/sdk/stdlib/stdio.c:227:31
	$lw , r0, r22,  - 24
	$add , r0, r0,  - 8
	$and , r0, r0,  - 8
	$sw , r22,  - 24, r0
	$ld , d0, r0, 0
stdio..Ltmp90:
	//DEBUG_VALUE: val < -  $d0
	//DEBUG_VALUE: arg_size_in_bytes < -  8
	$loc,	1 0 31 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:31
	$move , r15, 8, true, stdio..LBB0_49
stdio..Ltmp91:
stdio..LBB0_48:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 230 37 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:230:37
	$lw , r0, r22,  - 24
	$add , r1, r0,  - 4
	$sw , r22,  - 24, r1
	$lw .s, d0, r0,  - 4
stdio..Ltmp92:
	//DEBUG_VALUE: val < -  $d0
	$loc,	1 0 37 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:37
	$move , r15, 4
stdio..Ltmp93:
	//DEBUG_VALUE: arg_size_in_bytes < -  4
stdio..LBB0_49:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: val < -  $d0
	$sd , r22,  - 16, d0
stdio..Ltmp94:
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: arg < -  [DW_OP_constu 16, DW_OP_minus, DW_OP_stack_value] $r22
	//DEBUG_VALUE: arg_size_in_bytes < -  $r15
	$loc,	1 237 25 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:237:25
	$and , r0, r1, 255
stdio..Ltmp95:
	//DEBUG_VALUE: arg_byte < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp96:
	//DEBUG_VALUE: i < -  1
	$loc,	1 235 21                        // uPIMulator_frontend/sdk/stdlib/stdio.c:235:21
	$add , r15, r15,  - 1
stdio..Ltmp97:
	$loc,	1 0 21 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:21
	$move , r17, r16
stdio..Ltmp98:
stdio..LBB0_50:                               //   Parent Loop BB0_21 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: arg < -  [DW_OP_constu 16, DW_OP_minus, DW_OP_stack_value] $r22
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 236 41 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:236:41
	$lbu , r0, r17, 0
stdio..Ltmp99:
	//DEBUG_VALUE: arg_byte < -  undef
	//DEBUG_VALUE: i < -  undef
	$loc,	1 237 25                        // uPIMulator_frontend/sdk/stdlib/stdio.c:237:25
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp100:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	1 235 48                        // uPIMulator_frontend/sdk/stdlib/stdio.c:235:48
	$add , r17, r17, 1
	$add , r15, r15,  - 1, nz, stdio..LBB0_50
stdio..Ltmp101:
stdio..LBB0_51:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 48 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/stdio.c:0:48
	$move , r15, 0
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
stdio..Ltmp102:
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  undef
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 160 46 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:160:46
	$add , r14, r14, 1, true, stdio..LBB0_21
stdio..Ltmp103:
stdio..LBB0_43:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 204 46                        // uPIMulator_frontend/sdk/stdlib/stdio.c:204:46
	$lw , r0, r22,  - 24
	$add , r1, r0,  - 4
	$sw , r22,  - 24, r1
	$lbu , r0, r0,  - 4
stdio..Ltmp104:
	//DEBUG_VALUE: arg_as_char < -  $r0
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp105:
	$jump , stdio..LBB0_51
stdio..Ltmp106:
stdio..LBB0_39:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 195 41 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:195:41
	$lw , r0, r22,  - 24
	$add , r1, r0,  - 4
	$sw , r22,  - 24, r1
	$lw , r1, r0,  - 4
stdio..Ltmp107:
	//DEBUG_VALUE: arg < -  $r1
	$loc,	1 196 28                        // uPIMulator_frontend/sdk/stdlib/stdio.c:196:28
	$lbu , r0, r1, 0
	$loc,	1 196 21 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:196:21
	$jeq , r0, 0, stdio..LBB0_42
stdio..Ltmp108:
// %bb.40:                              //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: arg < -  $r1
	$add , r15, r1, 1
stdio..Ltmp109:
stdio..LBB0_41:                               //   Parent Loop BB0_21 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: arg < -  [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r15
	$loc,	1 197 25 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:197:25
	$and , r0, r0, 255
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp110:
	//DEBUG_VALUE: arg < -  $r15
	$loc,	1 196 28                        // uPIMulator_frontend/sdk/stdlib/stdio.c:196:28
	$lbu , r0, r15, 0
	$loc,	1 196 21 is_stmt 0              // uPIMulator_frontend/sdk/stdlib/stdio.c:196:21
	$add , r15, r15, 1
stdio..Ltmp111:
	$jneq , r0, 0, stdio..LBB0_41
stdio..Ltmp112:
stdio..LBB0_42:                               //   in Loop: Header=BB0_21 Depth=1
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 21                          // uPIMulator_frontend/sdk/stdlib/stdio.c:0:21
	$move , r15, 0
	$loc,	1 200 21 is_stmt 1              // uPIMulator_frontend/sdk/stdlib/stdio.c:200:21
	$move , r0, r15
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp113:
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: printf:insert_string_arg_end_character < -  undef
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 160 46                        // uPIMulator_frontend/sdk/stdlib/stdio.c:160:46
	$add , r14, r14, 1, true, stdio..LBB0_21
stdio..Ltmp114:
stdio..LBB0_52:
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 248 9                         // uPIMulator_frontend/sdk/stdlib/stdio.c:248:9
	$and , r0, r15, 1, z, stdio..LBB0_54
stdio..Ltmp115:
// %bb.53:
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	$loc,	1 0 9 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:9
	$move , r0, 0
stdio..Ltmp116:
	$loc,	1 249 9 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:249:9
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp117:
stdio..LBB0_54:
	//DEBUG_VALUE: printf:args < -  [DW_OP_plus_uconst 24, DW_OP_deref] $r22
	//DEBUG_VALUE: printf:current_format_char_ptr < -  $r14
	//DEBUG_VALUE: printf:args < -  [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $r22
	$loc,	1 254 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:254:5
	$call , r23, stdio.__finalized_print_sequence
stdio..Ltmp118:
	$loc,	1 255 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:255:5
	$call , r23, stdio.__close_print_sequence
stdio..Ltmp119:
	$loc,	1 256 1                         // uPIMulator_frontend/sdk/stdlib/stdio.c:256:1
	$ld , d18, r22,  - 48
	$ld , d16, r22,  - 40
	$ld , d14, r22,  - 32
stdio..Ltmp120:
	$ld , d22, r22,  - 8
stdio..Ltmp121:
	$jump , r23
stdio..Ltmp122:
stdio..Lfunc_end0:
	$size,	printf, stdio..Lfunc_end0 - printf
	$cfi_endproc,
	$section,	%rodata, printf,"a",@progbits
	$p2align,	2
stdio..LJTI0_0:
	$long,	stdio..LBB0_45
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_45
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_43
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_45
	$long,	stdio..LBB0_45
	$long,	stdio..LBB0_45
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_46
	$long,	stdio..LBB0_39
	$section,	%stack_sizes,"o",@progbits,%rodata, printf
	$long,	stdio..Lfunc_begin0
	$byte,	48
	$section,	%rodata, printf,"a",@progbits
                                        //  -  -  End function
	$section,	%text, stdio.__write_byte_and_flush_if_needed,"ax",@progbits
	$type,	stdio.__write_byte_and_flush_if_needed,@function //  -  -  Begin function stdio.__write_byte_and_flush_if_needed
stdio.__write_byte_and_flush_if_needed:       // @stdio.__write_byte_and_flush_if_needed
stdio..Lfunc_begin1:
	$loc,	1 64 0                          // uPIMulator_frontend/sdk/stdlib/stdio.c:64:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: stdio.__write_byte_and_flush_if_needed:byte < -  $r0
	$cfi_def_cfa_offset,  - 8
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 0, d22
	$add , r22, r22, 8
stdio..Ltmp123:
	$loc,	1 65 53 prologue_end            // uPIMulator_frontend/sdk/stdlib/stdio.c:65:53
	$lw , r1, zero, stdio.__stdout_cache_write_index
	//DEBUG_VALUE: stdio.__write_byte_and_flush_if_needed:byte < -  $r0
	$loc,	1 65 57 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/stdio.c:65:57
	$sb , r1, stdio.__stdout_cache_buffer, r0
	$loc,	1 65 53                         // uPIMulator_frontend/sdk/stdlib/stdio.c:65:53
	$add , r0, r1, 1
stdio..Ltmp124:
	$sw , zero, stdio.__stdout_cache_write_index, r0
	$loc,	1 66 9 is_stmt 1                // uPIMulator_frontend/sdk/stdlib/stdio.c:66:9
	$jneq , r0, 8, stdio..LBB1_2
// %bb.1:
stdio..Ltmp125:
	$loc,	1 67 9                          // uPIMulator_frontend/sdk/stdlib/stdio.c:67:9
	$call , r23, stdio.__transfer_cache_to_mram
stdio..Ltmp126:
	$loc,	1 68 36                         // uPIMulator_frontend/sdk/stdlib/stdio.c:68:36
	$move , r0, stdio.__stdout_cache_write_index
	$sw , r0, 0, 0
stdio..Ltmp127:
stdio..LBB1_2:
	$loc,	1 70 1                          // uPIMulator_frontend/sdk/stdlib/stdio.c:70:1
	$ld , d22, r22,  - 8
	$jump , r23
stdio..Ltmp128:
stdio..Lfunc_end1:
	$size,	stdio.__write_byte_and_flush_if_needed, stdio..Lfunc_end1 - stdio.__write_byte_and_flush_if_needed
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, stdio.__write_byte_and_flush_if_needed
	$long,	stdio..Lfunc_begin1
	$byte,	8
	$section,	%text, stdio.__write_byte_and_flush_if_needed,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, puts,"ax",@progbits
	$globl,	puts                            //  -  -  Begin function puts
	$type,	puts,@function
puts:                                   // @puts
stdio..Lfunc_begin2:
	$loc,	1 260 0                         // uPIMulator_frontend/sdk/stdlib/stdio.c:260:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: puts:str < -  $r0
	$cfi_def_cfa_offset,  - 16
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 8, d22
	$add , r22, r22, 16
	$cfi_offset, 15,  - 16
	$cfi_offset, 14,  - 12
	$sd , r22,  - 16, d14
	$move , r14, r0
stdio..Ltmp129:
	//DEBUG_VALUE: puts:str < -  $r14
	$loc,	1 261 5 prologue_end            // uPIMulator_frontend/sdk/stdlib/stdio.c:261:5
	$call , r23, stdio.__open_print_sequence
stdio..Ltmp130:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 37
	$loc,	1 263 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:263:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp131:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 115
	$loc,	1 264 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:264:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp132:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 0
	$loc,	1 265 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:265:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp133:
	//DEBUG_VALUE: current_char_ptr < -  $r14
	$loc,	1 267 48                        // uPIMulator_frontend/sdk/stdlib/stdio.c:267:48
	$lbu , r0, r14, 0
stdio..Ltmp134:
	$loc,	1 267 5 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/stdio.c:267:5
	$jeq , r0, 0, stdio..LBB2_3
stdio..Ltmp135:
// %bb.1:
	//DEBUG_VALUE: current_char_ptr < -  $r14
	//DEBUG_VALUE: puts:str < -  $r14
	$add , r14, r14, 1
stdio..Ltmp136:
stdio..LBB2_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: current_char_ptr < -  [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r14
	$loc,	1 268 9 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:268:9
	$and , r0, r0, 255
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp137:
	//DEBUG_VALUE: current_char_ptr < -  $r14
	$loc,	1 267 48                        // uPIMulator_frontend/sdk/stdlib/stdio.c:267:48
	$lbu , r0, r14, 0
stdio..Ltmp138:
	$loc,	1 267 5 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/stdio.c:267:5
	$add , r14, r14, 1
stdio..Ltmp139:
	$jneq , r0, 0, stdio..LBB2_2
stdio..Ltmp140:
stdio..LBB2_3:
	$loc,	1 0 5                           // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 10
	$loc,	1 271 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:271:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp141:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 0
	$loc,	1 272 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:272:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp142:
	$loc,	1 274 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:274:5
	$call , r23, stdio.__finalized_print_sequence
stdio..Ltmp143:
	$loc,	1 275 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:275:5
	$call , r23, stdio.__close_print_sequence
stdio..Ltmp144:
	$loc,	1 276 1                         // uPIMulator_frontend/sdk/stdlib/stdio.c:276:1
	$ld , d14, r22,  - 16
	$ld , d22, r22,  - 8
	$jump , r23
stdio..Ltmp145:
stdio..Lfunc_end2:
	$size,	puts, stdio..Lfunc_end2 - puts
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, puts
	$long,	stdio..Lfunc_begin2
	$byte,	16
	$section,	%text, puts,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, putchar,"ax",@progbits
	$globl,	putchar                         //  -  -  Begin function putchar
	$type,	putchar,@function
putchar:                                // @putchar
stdio..Lfunc_begin3:
	$loc,	1 280 0                         // uPIMulator_frontend/sdk/stdlib/stdio.c:280:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: putchar:c < -  $r0
	$cfi_def_cfa_offset,  - 16
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 8, d22
	$add , r22, r22, 16
	$cfi_offset, 15,  - 16
	$cfi_offset, 14,  - 12
	$sd , r22,  - 16, d14
	$move , r14, r0
stdio..Ltmp146:
	//DEBUG_VALUE: putchar:c < -  $r14
	$loc,	1 281 5 prologue_end            // uPIMulator_frontend/sdk/stdlib/stdio.c:281:5
	$call , r23, stdio.__open_print_sequence
stdio..Ltmp147:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 37
	$loc,	1 283 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:283:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp148:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 99
	$loc,	1 284 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:284:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp149:
	$loc,	1 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/stdio.c:0:5
	$move , r0, 0
	$loc,	1 285 5 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/stdio.c:285:5
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp150:
	$loc,	1 288 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:288:5
	$and , r0, r14, 255
stdio..Ltmp151:
	//DEBUG_VALUE: putchar:arg_as_char < -  $r0
	$call , r23, stdio.__write_byte_and_flush_if_needed
stdio..Ltmp152:
	$loc,	1 290 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:290:5
	$call , r23, stdio.__finalized_print_sequence
stdio..Ltmp153:
	$loc,	1 291 5                         // uPIMulator_frontend/sdk/stdlib/stdio.c:291:5
	$call , r23, stdio.__close_print_sequence
stdio..Ltmp154:
	$loc,	1 292 1                         // uPIMulator_frontend/sdk/stdlib/stdio.c:292:1
	$ld , d14, r22,  - 16
stdio..Ltmp155:
	$ld , d22, r22,  - 8
	$jump , r23
stdio..Ltmp156:
stdio..Lfunc_end3:
	$size,	putchar, stdio..Lfunc_end3 - putchar
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, putchar
	$long,	stdio..Lfunc_begin3
	$byte,	16
	$section,	%text, putchar,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, stdio.__open_print_sequence,"ax",@progbits
	$type,	stdio.__open_print_sequence,@function //  -  -  Begin function stdio.__open_print_sequence
stdio.__open_print_sequence:                  // @stdio.__open_print_sequence
stdio..Lfunc_begin4:
	$loc,	1 85 0                          // uPIMulator_frontend/sdk/stdlib/stdio.c:85:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset, 0
	$loc,	1 86 5 prologue_end             // uPIMulator_frontend/sdk/stdlib/stdio.c:86:5
	// inline asm
stdio..Ltmp157:
	$acquire , zero, __atomic_bit___stdout_buffer_lock, nz, stdio..Ltmp157
	// inline asm
	$loc,	1 87 32                         // uPIMulator_frontend/sdk/stdlib/stdio.c:87:32
	$move , r0, stdio.__stdout_cache_write_index
	$loc,	1 89 67                         // uPIMulator_frontend/sdk/stdlib/stdio.c:89:67
	$lw , r1, zero, __stdout_buffer_state
	$loc,	1 87 32                         // uPIMulator_frontend/sdk/stdlib/stdio.c:87:32
	$sw , r0, 0, 0
	$loc,	1 88 29                         // uPIMulator_frontend/sdk/stdlib/stdio.c:88:29
	$move , r0, stdio.__stdout_nr_of_wrapping
	$sw , r0, 0, 0
	$loc,	1 89 43                         // uPIMulator_frontend/sdk/stdlib/stdio.c:89:43
	$sw , zero, stdio.__stdout_buffer_write_pointer_initial, r1
	$loc,	1 90 1                          // uPIMulator_frontend/sdk/stdlib/stdio.c:90:1
	$jump , r23
stdio..Ltmp158:
stdio..Lfunc_end4:
	$size,	stdio.__open_print_sequence, stdio..Lfunc_end4 - stdio.__open_print_sequence
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, stdio.__open_print_sequence
	$long,	stdio..Lfunc_begin4
	$byte,	0
	$section,	%text, stdio.__open_print_sequence,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, stdio.__transfer_cache_to_mram,"ax",@progbits
	$type,	stdio.__transfer_cache_to_mram,@function //  -  -  Begin function stdio.__transfer_cache_to_mram
stdio.__transfer_cache_to_mram:               // @stdio.__transfer_cache_to_mram
stdio..Lfunc_begin5:
	$loc,	1 47 0                          // uPIMulator_frontend/sdk/stdlib/stdio.c:47:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset, 0
	$loc,	1 48 81 prologue_end            // uPIMulator_frontend/sdk/stdlib/stdio.c:48:81
	$lw , r0, zero, __stdout_buffer_state
stdio..Ltmp159:
	//DEBUG_VALUE: stdio.__transfer_cache_to_mram:offset_in_mram < -  undef
	$loc,	1 51 37                         // uPIMulator_frontend/sdk/stdlib/stdio.c:51:37
	$lw , r1, zero, stdio.__stdout_buffer_size
stdio..Ltmp160:
	$loc,	1 50 30                         // uPIMulator_frontend/sdk/stdlib/stdio.c:50:30
	$add , r2, r0, 8
	$sw , zero, __stdout_buffer_state, r2
	$loc,	1 51 9                          // uPIMulator_frontend/sdk/stdlib/stdio.c:51:9
	$jltu , r2, r1, stdio..LBB5_2
stdio..Ltmp161:
// %bb.1:
	$loc,	1 54 32                         // uPIMulator_frontend/sdk/stdlib/stdio.c:54:32
	$lw , r1, zero, stdio.__stdout_nr_of_wrapping
	$move , r3, 0
	$move , r2, 1
	$loc,	1 52 34                         // uPIMulator_frontend/sdk/stdlib/stdio.c:52:34
	$sd , zero, __stdout_buffer_state, d2
	$loc,	1 54 32                         // uPIMulator_frontend/sdk/stdlib/stdio.c:54:32
	$add , r1, r1, 1
	$sw , zero, stdio.__stdout_nr_of_wrapping, r1
stdio..Ltmp162:
stdio..LBB5_2:
	$loc,	1 48 84                         // uPIMulator_frontend/sdk/stdlib/stdio.c:48:84
	$move , r1, stdio.__stdout_buffer
	$add , r0, r0, r1
stdio..Ltmp163:
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	//DEBUG_VALUE: mram_write:to < -  $r0
	//DEBUG_VALUE: stdio.__transfer_cache_to_mram:offset_in_mram < -  $r0
	$file,	3 "/root" "uPIMulator_frontend/sdk/syslib/mram.h"
	$loc,	3 53 24                         // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$move , r1, stdio.__stdout_cache_buffer
stdio..Ltmp164:
	//DEBUG_VALUE: mram_write:from < -  $r1
	$sdma , r1, r0, 0
stdio..Ltmp165:
	$loc,	1 58 1                          // uPIMulator_frontend/sdk/stdlib/stdio.c:58:1
	$jump , r23
stdio..Ltmp166:
stdio..Lfunc_end5:
	$size,	stdio.__transfer_cache_to_mram, stdio..Lfunc_end5 - stdio.__transfer_cache_to_mram
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, stdio.__transfer_cache_to_mram
	$long,	stdio..Lfunc_begin5
	$byte,	0
	$section,	%text, stdio.__transfer_cache_to_mram,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, stdio.__finalized_print_sequence,"ax",@progbits
	$type,	stdio.__finalized_print_sequence,@function //  -  -  Begin function stdio.__finalized_print_sequence
stdio.__finalized_print_sequence:             // @stdio.__finalized_print_sequence
stdio..Lfunc_begin6:
	$loc,	1 74 0                          // uPIMulator_frontend/sdk/stdlib/stdio.c:74:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset,  - 8
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 0, d22
	$add , r22, r22, 8
stdio..Ltmp167:
	$loc,	1 75 36 prologue_end            // uPIMulator_frontend/sdk/stdlib/stdio.c:75:36
	$lw , r1, zero, stdio.__stdout_cache_write_index
	$loc,	1 75 34 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/stdio.c:75:34
	$move , r0, stdio.__stdout_cache_buffer
	$add , r0, r0, r1
	$loc,	1 75 92                         // uPIMulator_frontend/sdk/stdlib/stdio.c:75:92
	$sub , r2, 8, r1
	$move , r1, 0
	$loc,	1 75 5                          // uPIMulator_frontend/sdk/stdlib/stdio.c:75:5
	$call , r23, memset
stdio..Ltmp168:
	$loc,	1 76 5 is_stmt 1                // uPIMulator_frontend/sdk/stdlib/stdio.c:76:5
	$call , r23, stdio.__transfer_cache_to_mram
stdio..Ltmp169:
	$loc,	1 78 9                          // uPIMulator_frontend/sdk/stdlib/stdio.c:78:9
	$lw , r0, zero, stdio.__stdout_nr_of_wrapping
	$loc,	1 79 9                          // uPIMulator_frontend/sdk/stdlib/stdio.c:79:9
	$jgtu , r0, 1, stdio..LBB6_3
// %bb.1:
	$loc,	1 79 42 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/stdio.c:79:42
	$jneq , r0, 1, stdio..LBB6_4
// %bb.2:
	$loc,	1 79 67                         // uPIMulator_frontend/sdk/stdlib/stdio.c:79:67
	$lw , r0, zero, __stdout_buffer_state
	$loc,	1 79 72                         // uPIMulator_frontend/sdk/stdlib/stdio.c:79:72
	$lw , r1, zero, stdio.__stdout_buffer_write_pointer_initial
stdio..Ltmp170:
	$loc,	1 78 9 is_stmt 1                // uPIMulator_frontend/sdk/stdlib/stdio.c:78:9
	$jleu , r0, r1, stdio..LBB6_4
stdio..LBB6_3:
stdio..Ltmp171:
	$loc,	1 80 9                          // uPIMulator_frontend/sdk/stdlib/stdio.c:80:9
	// inline asm
	$fault , 5
	// inline asm
stdio..Ltmp172:
stdio..LBB6_4:
	$loc,	1 81 1                          // uPIMulator_frontend/sdk/stdlib/stdio.c:81:1
	$ld , d22, r22,  - 8
	$jump , r23
stdio..Ltmp173:
stdio..Lfunc_end6:
	$size,	stdio.__finalized_print_sequence, stdio..Lfunc_end6 - stdio.__finalized_print_sequence
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, stdio.__finalized_print_sequence
	$long,	stdio..Lfunc_begin6
	$byte,	8
	$section,	%text, stdio.__finalized_print_sequence,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, stdio.__close_print_sequence,"ax",@progbits
	$type,	stdio.__close_print_sequence,@function //  -  -  Begin function stdio.__close_print_sequence
stdio.__close_print_sequence:                 // @stdio.__close_print_sequence
stdio..Lfunc_begin7:
	$loc,	1 96 0                          // uPIMulator_frontend/sdk/stdlib/stdio.c:96:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset, 0
	$loc,	1 97 5 prologue_end             // uPIMulator_frontend/sdk/stdlib/stdio.c:97:5
	// inline asm
stdio..Ltmp174:
	$release , zero, __atomic_bit___stdout_buffer_lock, nz, stdio..Ltmp174 + 1
	// inline asm
	$loc,	1 98 1                          // uPIMulator_frontend/sdk/stdlib/stdio.c:98:1
	$jump , r23
stdio..Ltmp175:
stdio..Lfunc_end7:
	$size,	stdio.__close_print_sequence, stdio..Lfunc_end7 - stdio.__close_print_sequence
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, stdio.__close_print_sequence
	$long,	stdio..Lfunc_begin7
	$byte,	0
	$section,	%text, stdio.__close_print_sequence,"ax",@progbits
                                        //  -  -  End function
	$type,	stdio.__stdout_buffer_size,@object    // @stdio.__stdout_buffer_size
	$section,	%data, stdio.__stdout_buffer_size,"aw",@progbits
	$weak,	stdio.__stdout_buffer_size
	$p2align,	2
stdio.__stdout_buffer_size:
	$long,	1048576                         // 0x100000
	$size,	stdio.__stdout_buffer_size, 4

	$type,	stdio.__stdout_buffer,@object         // @stdio.__stdout_buffer
	$section,	%mram, noinit,"aw",@progbits
	$weak,	stdio.__stdout_buffer
	$p2align,	3
stdio.__stdout_buffer:
	$zero,	1048576
	$size,	stdio.__stdout_buffer, 1048576

	$type,	__stdout_buffer_state,@object   // @__stdout_buffer_state
	$section,	%data, immediate_memory.__stdout_buffer_state,"aw",@progbits
	$globl,	__stdout_buffer_state
	$p2align,	3
__stdout_buffer_state:
	$zero,	8
	$size,	__stdout_buffer_state, 8

	$type,	__atomic_bit___stdout_buffer_lock,@object // @__atomic_bit___stdout_buffer_lock
	$section,	%atomic,"aw",@progbits
	$globl,	__atomic_bit___stdout_buffer_lock
__atomic_bit___stdout_buffer_lock:
	$byte,	0                               // 0x0
	$size,	__atomic_bit___stdout_buffer_lock, 1

	$type,	stdio.__stdout_cache_write_index,@object // @stdio.__stdout_cache_write_index
	$section,	%bss, stdio.__stdout_cache_write_index,"aw",@nobits
	$p2align,	2
stdio.__stdout_cache_write_index:
	$long,	0                               // 0x0
	$size,	stdio.__stdout_cache_write_index, 4

	$type,	stdio.__stdout_nr_of_wrapping,@object // @stdio.__stdout_nr_of_wrapping
	$section,	%bss, stdio.__stdout_nr_of_wrapping,"aw",@nobits
	$p2align,	2
stdio.__stdout_nr_of_wrapping:
	$long,	0                               // 0x0
	$size,	stdio.__stdout_nr_of_wrapping, 4

	$type,	stdio.__stdout_buffer_write_pointer_initial,@object // @stdio.__stdout_buffer_write_pointer_initial
	$section,	%bss, stdio.__stdout_buffer_write_pointer_initial,"aw",@nobits
	$p2align,	2
stdio.__stdout_buffer_write_pointer_initial:
	$long,	0                               // 0x0
	$size,	stdio.__stdout_buffer_write_pointer_initial, 4

	$type,	stdio.__stdout_cache_buffer,@object   // @stdio.__stdout_cache_buffer
	$section,	%bss, stdio.__stdout_cache_buffer,"aw",@nobits
	$p2align,	3
stdio.__stdout_cache_buffer:
	$zero,	8
	$size,	stdio.__stdout_cache_buffer, 8

	$file,	4 "/root" "uPIMulator_frontend/sdk/stdlib/stdarg.h"
	$section,	%debug_loc,"",@progbits
stdio..Ldebug_loc0:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Lfunc_begin0 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp0 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp0 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp38 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
stdio..Ldebug_loc1:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp2 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp15 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	stdio..Ltmp16 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp21 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	stdio..Ltmp21 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp22 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	127                             // DW_OP_breg15
	$byte,	1                               // 1
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp22 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp35 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	stdio..Ltmp37 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp60 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	stdio..Ltmp60 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp61 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	126                             // DW_OP_breg14
	$byte,	1                               // 1
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp62 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp120 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
stdio..Ldebug_loc2:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp0 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp38 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp49 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp51 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
stdio..Ldebug_loc3:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp0 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp2 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp26 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp27 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp33 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp34 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
stdio..Ldebug_loc4:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp1 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp117 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	134                             // DW_OP_breg22
	$byte,	24                              // 24
	$long,	stdio..Ltmp117 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp121 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	134                             // DW_OP_breg22
	$byte,	104                             //  - 24
	$long,	0
	$long,	0
stdio..Ldebug_loc5:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp60 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp62 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
stdio..Ldebug_loc6:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp66 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp67 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	0                               // 0
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp67 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp68 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	3                               // 3
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp68 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp71 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	1                               // 1
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp71 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp76 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	2                               // 2
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp76 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp78 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	4                               // 4
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp78 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp81 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	5                               // 5
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp81 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp84 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	6                               // 6
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp84 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp88 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	17                              // DW_OP_consts
	$byte,	7                               // 7
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
stdio..Ldebug_loc7:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp67 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp69 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp70 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp72 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp73 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp79 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp80 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp82 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp83 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp85 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
stdio..Ldebug_loc8:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp90 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp91 - stdio..Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	81                              // sub - register DW_OP_reg1
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	80                              // sub - register DW_OP_reg0
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	stdio..Ltmp92 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp95 - stdio..Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	81                              // sub - register DW_OP_reg1
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	80                              // sub - register DW_OP_reg0
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
stdio..Ldebug_loc9:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp90 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp91 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	56                              // DW_OP_lit8
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp94 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp97 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	0
	$long,	0
stdio..Ldebug_loc10:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp94 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp96 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp96 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp98 - stdio..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
stdio..Ldebug_loc11:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp94 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp101 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	134                             // DW_OP_breg22
	$byte,	112                             //  - 16
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
stdio..Ldebug_loc12:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp95 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp98 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
stdio..Ldebug_loc13:
	$long,	 - 1
	$long,	stdio..Lfunc_begin0                   //   base address
	$long,	stdio..Ltmp107 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp109 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	stdio..Ltmp109 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp110 - stdio..Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	127                             // DW_OP_breg15
	$byte,	127                             //  - 1
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp110 - stdio..Lfunc_begin0
	$long,	stdio..Ltmp111 - stdio..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	0
	$long,	0
stdio..Ldebug_loc14:
	$long,	 - 1
	$long,	stdio..Lfunc_begin1                   //   base address
	$long,	stdio..Lfunc_begin1 - stdio..Lfunc_begin1
	$long,	stdio..Ltmp124 - stdio..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
stdio..Ldebug_loc15:
	$long,	 - 1
	$long,	stdio..Lfunc_begin2                   //   base address
	$long,	stdio..Lfunc_begin2 - stdio..Lfunc_begin2
	$long,	stdio..Ltmp129 - stdio..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp129 - stdio..Lfunc_begin2
	$long,	stdio..Ltmp136 - stdio..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
stdio..Ldebug_loc16:
	$long,	 - 1
	$long,	stdio..Lfunc_begin2                   //   base address
	$long,	stdio..Ltmp133 - stdio..Lfunc_begin2
	$long,	stdio..Ltmp136 - stdio..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	stdio..Ltmp136 - stdio..Lfunc_begin2
	$long,	stdio..Ltmp137 - stdio..Lfunc_begin2
	$short,	3                               // Loc expr size
	$byte,	126                             // DW_OP_breg14
	$byte,	127                             //  - 1
	$byte,	159                             // DW_OP_stack_value
	$long,	stdio..Ltmp137 - stdio..Lfunc_begin2
	$long,	stdio..Ltmp139 - stdio..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
stdio..Ldebug_loc17:
	$long,	 - 1
	$long,	stdio..Lfunc_begin3                   //   base address
	$long,	stdio..Lfunc_begin3 - stdio..Lfunc_begin3
	$long,	stdio..Ltmp146 - stdio..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	stdio..Ltmp146 - stdio..Lfunc_begin3
	$long,	stdio..Ltmp155 - stdio..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
stdio..Ldebug_loc18:
	$long,	 - 1
	$long,	stdio..Lfunc_begin3                   //   base address
	$long,	stdio..Ltmp151 - stdio..Lfunc_begin3
	$long,	stdio..Lfunc_end3 - stdio..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
stdio..Ldebug_loc19:
	$long,	 - 1
	$long,	stdio..Lfunc_begin5                   //   base address
	$long,	stdio..Ltmp163 - stdio..Lfunc_begin5
	$long,	stdio..Lfunc_end5 - stdio..Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
stdio..Ldebug_loc20:
	$long,	 - 1
	$long,	stdio..Lfunc_begin5                   //   base address
	$long,	stdio..Ltmp164 - stdio..Lfunc_begin5
	$long,	stdio..Lfunc_end5 - stdio..Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$ascii,	"\210\001"                      // DW_AT_alignment
	$byte,	15                              // DW_FORM_udata
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	19                              // DW_TAG_structure_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	13                              // DW_TAG_member
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	56                              // DW_AT_data_member_location
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	11                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	12                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$ascii,	"\210\001"                      // DW_AT_alignment
	$byte,	15                              // DW_FORM_udata
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	13                              // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	14                              // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	15                              // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	16                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	17                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	18                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	19                              // Abbreviation Code
	$byte,	10                              // DW_TAG_label
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	20                              // Abbreviation Code
	$byte,	11                              // DW_TAG_lexical_block
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	21                              // Abbreviation Code
	$byte,	11                              // DW_TAG_lexical_block
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	22                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	23                              // Abbreviation Code
	$byte,	24                              // DW_TAG_unspecified_parameters
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	24                              // Abbreviation Code
	$ascii,	"\211\202\001"                  // DW_TAG_GNU_call_site
	$byte,	0                               // DW_CHILDREN_no
	$ascii,	"\223B"                         // DW_AT_GNU_call_site_target
	$byte,	24                              // DW_FORM_exprloc
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	25                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	26                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	5                               // DW_FORM_data2
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	27                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	5                               // DW_FORM_data2
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	28                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	5                               // DW_FORM_data2
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	29                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	0                               // DW_CHILDREN_no
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	30                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	31                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	32                              // Abbreviation Code
	$byte,	38                              // DW_TAG_const_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	33                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	34                              // Abbreviation Code
	$byte,	29                              // DW_TAG_inlined_subroutine
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	88                              // DW_AT_call_file
	$byte,	11                              // DW_FORM_data1
	$byte,	89                              // DW_AT_call_line
	$byte,	11                              // DW_FORM_data1
	$byte,	87                              // DW_AT_call_column
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	35                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	36                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	37                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	28                              // DW_AT_const_value
	$byte,	15                              // DW_FORM_udata
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	38                              // Abbreviation Code
	$byte,	55                              // DW_TAG_restrict_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	39                              // Abbreviation Code
	$byte,	38                              // DW_TAG_const_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	40                              // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
stdio..Lcu_begin0:
	$long,	stdio..Ldebug_info_end0 - stdio..Ldebug_info_start0 // Length of Unit
stdio..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x547 DW_TAG_compile_unit
	$long,	stdio..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	stdio..Linfo_string1                  // DW_AT_name
	$long,	stdio..Lline_table_start0             // DW_AT_stmt_list
	$long,	stdio..Linfo_string2                  // DW_AT_comp_dir
	$long,	0                               // DW_AT_low_pc
	$long,	stdio..Ldebug_ranges2                 // DW_AT_ranges
	$byte,	2                               // Abbrev [2] 0x26:0x11 DW_TAG_variable
	$long,	stdio..Linfo_string3                  // DW_AT_name
	$long,	55                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	19                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	stdio.__stdout_buffer_size
	$byte,	3                               // Abbrev [3] 0x37:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string4                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	4                               // Abbrev [4] 0x3e:0x12 DW_TAG_variable
	$long,	stdio..Linfo_string5                  // DW_AT_name
	$long,	80                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	18                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	stdio.__stdout_buffer
	$byte,	5                               // Abbrev [5] 0x50:0xf DW_TAG_array_type
	$long,	95                              // DW_AT_type
	$byte,	6                               // Abbrev [6] 0x55:0x9 DW_TAG_subrange_type
	$long,	102                             // DW_AT_type
	$long,	1048576                         // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	3                               // Abbrev [3] 0x5f:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string6                  // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	7                               // Abbrev [7] 0x66:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string7                  // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // Abbrev [4] 0x6d:0x12 DW_TAG_variable
	$long,	stdio..Linfo_string8                  // DW_AT_name
	$long,	127                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	31                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__stdout_buffer_state
	$byte,	8                               // Abbrev [8] 0x7f:0x1d DW_TAG_structure_type
	$byte,	8                               // DW_AT_byte_size
	$byte,	1                               // DW_AT_decl_file
	$byte,	28                              // DW_AT_decl_line
	$byte,	9                               // Abbrev [9] 0x83:0xc DW_TAG_member
	$long,	stdio..Linfo_string9                  // DW_AT_name
	$long,	156                             // DW_AT_type
	$byte,	1                               // DW_AT_decl_file
	$byte,	29                              // DW_AT_decl_line
	$byte,	0                               // DW_AT_data_member_location
	$byte,	9                               // Abbrev [9] 0x8f:0xc DW_TAG_member
	$long,	stdio..Linfo_string11                 // DW_AT_name
	$long,	156                             // DW_AT_type
	$byte,	1                               // DW_AT_decl_file
	$byte,	30                              // DW_AT_decl_line
	$byte,	4                               // DW_AT_data_member_location
	$byte,	0                               // End Of Children Mark
	$byte,	10                              // Abbrev [10] 0x9c:0xb DW_TAG_typedef
	$long,	55                              // DW_AT_type
	$long,	stdio..Linfo_string10                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	48                              // DW_AT_decl_line
	$byte,	2                               // Abbrev [2] 0xa7:0x11 DW_TAG_variable
	$long,	stdio..Linfo_string12                 // DW_AT_name
	$long,	184                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	43                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__atomic_bit___stdout_buffer_lock
	$byte,	10                              // Abbrev [10] 0xb8:0xb DW_TAG_typedef
	$long,	95                              // DW_AT_type
	$long,	stdio..Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	11                              // Abbrev [11] 0xc3:0x11 DW_TAG_variable
	$long,	stdio..Linfo_string14                 // DW_AT_name
	$long,	55                              // DW_AT_type
	$byte,	1                               // DW_AT_decl_file
	$byte,	41                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	stdio.__stdout_cache_write_index
	$byte,	11                              // Abbrev [11] 0xd4:0x11 DW_TAG_variable
	$long,	stdio..Linfo_string15                 // DW_AT_name
	$long,	156                             // DW_AT_type
	$byte,	1                               // DW_AT_decl_file
	$byte,	34                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	stdio.__stdout_nr_of_wrapping
	$byte,	11                              // Abbrev [11] 0xe5:0x11 DW_TAG_variable
	$long,	stdio..Linfo_string16                 // DW_AT_name
	$long,	156                             // DW_AT_type
	$byte,	1                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	stdio.__stdout_buffer_write_pointer_initial
	$byte,	12                              // Abbrev [12] 0xf6:0x12 DW_TAG_variable
	$long,	stdio..Linfo_string17                 // DW_AT_name
	$long,	264                             // DW_AT_type
	$byte,	1                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	stdio.__stdout_cache_buffer
	$byte,	5                               // Abbrev [5] 0x108:0xc DW_TAG_array_type
	$long,	276                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x10d:0x6 DW_TAG_subrange_type
	$long,	102                             // DW_AT_type
	$byte,	8                               // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	3                               // Abbrev [3] 0x114:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string18                 // DW_AT_name
	$byte,	6                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	14                              // Abbrev [14] 0x11b:0x5 DW_TAG_pointer_type
	$long,	276                             // DW_AT_type
	$byte,	3                               // Abbrev [3] 0x120:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string19                 // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	8                               // DW_AT_byte_size
	$byte,	15                              // Abbrev [15] 0x127:0x1 DW_TAG_pointer_type
	$byte,	10                              // Abbrev [10] 0x128:0xb DW_TAG_typedef
	$long,	55                              // DW_AT_type
	$long,	stdio..Linfo_string20                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	144                             // DW_AT_decl_line
	$byte,	16                              // Abbrev [16] 0x133:0x224 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin0                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end0 - stdio..Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string25                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	$byte,	17                              // Abbrev [17] 0x144:0xf DW_TAG_formal_parameter
	$long,	stdio..Ldebug_loc0                    // DW_AT_location
	$long,	stdio..Linfo_string33                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
	$long,	1305                            // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x153:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc1                    // DW_AT_location
	$long,	stdio..Linfo_string34                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	105                             // DW_AT_decl_line
	$long,	283                             // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x162:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc2                    // DW_AT_location
	$long,	stdio..Linfo_string35                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	104                             // DW_AT_decl_line
	$long,	1320                            // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x171:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc3                    // DW_AT_location
	$long,	stdio..Linfo_string37                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	103                             // DW_AT_decl_line
	$long,	1320                            // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x180:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc4                    // DW_AT_location
	$long,	stdio..Linfo_string38                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	109                             // DW_AT_decl_line
	$long,	1327                            // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x18f:0xb DW_TAG_label
	$long,	stdio..Linfo_string49                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	148                             // DW_AT_decl_line
	$long,	stdio..Ltmp27                         // DW_AT_low_pc
	$byte,	19                              // Abbrev [19] 0x19a:0xb DW_TAG_label
	$long,	stdio..Linfo_string50                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	242                             // DW_AT_decl_line
	$long,	stdio..Ltmp39                         // DW_AT_low_pc
	$byte,	20                              // Abbrev [20] 0x1a5:0xfa DW_TAG_lexical_block
	$long,	stdio..Ldebug_ranges1                 // DW_AT_ranges
	$byte,	18                              // Abbrev [18] 0x1aa:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc5                    // DW_AT_location
	$long,	stdio..Linfo_string41                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	174                             // DW_AT_decl_line
	$long,	1320                            // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x1b9:0x52 DW_TAG_lexical_block
	$long,	stdio..Ltmp65                         // DW_AT_low_pc
	$long,	stdio..Ltmp86 - stdio..Ltmp65                 // DW_AT_high_pc
	$byte,	22                              // Abbrev [22] 0x1c2:0xb DW_TAG_variable
	$long,	stdio..Linfo_string44                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	215                             // DW_AT_decl_line
	$long,	283                             // DW_AT_type
	$byte,	22                              // Abbrev [22] 0x1cd:0xb DW_TAG_variable
	$long,	stdio..Linfo_string45                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	214                             // DW_AT_decl_line
	$long,	1354                            // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x1d8:0x32 DW_TAG_lexical_block
	$long,	stdio..Ltmp66                         // DW_AT_low_pc
	$long,	stdio..Ltmp86 - stdio..Ltmp66                 // DW_AT_high_pc
	$byte,	18                              // Abbrev [18] 0x1e1:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc6                    // DW_AT_location
	$long,	stdio..Linfo_string42                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	216                             // DW_AT_decl_line
	$long,	1347                            // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x1f0:0x19 DW_TAG_lexical_block
	$long,	stdio..Ltmp66                         // DW_AT_low_pc
	$long,	stdio..Ltmp86 - stdio..Ltmp66                 // DW_AT_high_pc
	$byte,	18                              // Abbrev [18] 0x1f9:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc7                    // DW_AT_location
	$long,	stdio..Linfo_string47                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	217                             // DW_AT_decl_line
	$long,	276                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	21                              // Abbrev [21] 0x20b:0x65 DW_TAG_lexical_block
	$long,	stdio..Ltmp88                         // DW_AT_low_pc
	$long,	stdio..Ltmp101 - stdio..Ltmp88                // DW_AT_high_pc
	$byte,	18                              // Abbrev [18] 0x214:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc8                    // DW_AT_location
	$long,	stdio..Linfo_string45                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	224                             // DW_AT_decl_line
	$long,	288                             // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x223:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc9                    // DW_AT_location
	$long,	stdio..Linfo_string48                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	223                             // DW_AT_decl_line
	$long,	55                              // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x232:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc11                   // DW_AT_location
	$long,	stdio..Linfo_string44                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	234                             // DW_AT_decl_line
	$long,	283                             // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x241:0x2e DW_TAG_lexical_block
	$long,	stdio..Ltmp94                         // DW_AT_low_pc
	$long,	stdio..Ltmp101 - stdio..Ltmp94                // DW_AT_high_pc
	$byte,	18                              // Abbrev [18] 0x24a:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc10                   // DW_AT_location
	$long,	stdio..Linfo_string42                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	235                             // DW_AT_decl_line
	$long,	55                              // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x259:0x15 DW_TAG_lexical_block
	$long,	stdio..Ldebug_ranges0                 // DW_AT_ranges
	$byte,	18                              // Abbrev [18] 0x25e:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc12                   // DW_AT_location
	$long,	stdio..Linfo_string47                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	236                             // DW_AT_decl_line
	$long,	276                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	21                              // Abbrev [21] 0x270:0x15 DW_TAG_lexical_block
	$long,	stdio..Ltmp103                        // DW_AT_low_pc
	$long,	stdio..Ltmp104 - stdio..Ltmp103               // DW_AT_high_pc
	$byte,	22                              // Abbrev [22] 0x279:0xb DW_TAG_variable
	$long,	stdio..Linfo_string51                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	204                             // DW_AT_decl_line
	$long,	276                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	21                              // Abbrev [21] 0x285:0x19 DW_TAG_lexical_block
	$long,	stdio..Ltmp106                        // DW_AT_low_pc
	$long,	stdio..Ltmp113 - stdio..Ltmp106               // DW_AT_high_pc
	$byte,	18                              // Abbrev [18] 0x28e:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc13                   // DW_AT_location
	$long,	stdio..Linfo_string44                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	195                             // DW_AT_decl_line
	$long,	283                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	23                              // Abbrev [23] 0x29f:0x1 DW_TAG_unspecified_parameters
	$byte,	24                              // Abbrev [24] 0x2a0:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp1                          // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2a7:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp12                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2ae:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp14                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2b5:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp21                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2bc:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp26                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2c3:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp31                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2ca:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp33                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2d1:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp36                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2d8:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp40                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2df:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp51                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2e6:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp68                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2ed:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp71                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2f4:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp74                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x2fb:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp76                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x302:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp78                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x309:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp81                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x310:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp84                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x317:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp87                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x31e:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp96                         // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x325:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp100                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x32c:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp105                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x333:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp110                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x33a:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp113                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x341:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp117                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x348:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp118                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x34f:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp119                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	25                              // Abbrev [25] 0x357:0x28 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin1                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end1 - stdio..Lfunc_begin1       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string26                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	63                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$byte,	17                              // Abbrev [17] 0x368:0xf DW_TAG_formal_parameter
	$long,	stdio..Ldebug_loc14                   // DW_AT_location
	$long,	stdio..Linfo_string52                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	63                              // DW_AT_decl_line
	$long,	184                             // DW_AT_type
	$byte,	24                              // Abbrev [24] 0x377:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp126                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	26                              // Abbrev [26] 0x37f:0x7c DW_TAG_subprogram
	$long,	stdio..Lfunc_begin2                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end2 - stdio..Lfunc_begin2       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string27                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$short,	259                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	$byte,	27                              // Abbrev [27] 0x391:0x10 DW_TAG_formal_parameter
	$long,	stdio..Ldebug_loc15                   // DW_AT_location
	$long,	stdio..Linfo_string53                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$short,	259                             // DW_AT_decl_line
	$long,	1310                            // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x3a1:0x1a DW_TAG_lexical_block
	$long,	stdio..Ltmp133                        // DW_AT_low_pc
	$long,	stdio..Ltmp140 - stdio..Ltmp133               // DW_AT_high_pc
	$byte,	28                              // Abbrev [28] 0x3aa:0x10 DW_TAG_variable
	$long,	stdio..Ldebug_loc16                   // DW_AT_location
	$long,	stdio..Linfo_string54                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$short,	267                             // DW_AT_decl_line
	$long,	283                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	24                              // Abbrev [24] 0x3bb:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp130                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3c2:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp131                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3c9:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp132                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3d0:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp133                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3d7:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp137                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3de:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp141                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3e5:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp142                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3ec:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp143                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x3f3:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp144                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	26                              // Abbrev [26] 0x3fb:0x64 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin3                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end3 - stdio..Lfunc_begin3       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string28                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$short,	279                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	$byte,	27                              // Abbrev [27] 0x40d:0x10 DW_TAG_formal_parameter
	$long,	stdio..Ldebug_loc17                   // DW_AT_location
	$long,	stdio..Linfo_string55                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$short,	279                             // DW_AT_decl_line
	$long,	1347                            // DW_AT_type
	$byte,	28                              // Abbrev [28] 0x41d:0x10 DW_TAG_variable
	$long,	stdio..Ldebug_loc18                   // DW_AT_location
	$long,	stdio..Linfo_string51                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$short,	287                             // DW_AT_decl_line
	$long,	276                             // DW_AT_type
	$byte,	24                              // Abbrev [24] 0x42d:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp147                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x434:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp148                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x43b:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp149                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x442:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp150                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x449:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp152                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x450:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp153                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x457:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp154                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	29                              // Abbrev [29] 0x45f:0x11 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin4                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end4 - stdio..Lfunc_begin4       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string29                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	84                              // DW_AT_decl_line
	$byte,	30                              // Abbrev [30] 0x470:0x2a DW_TAG_subprogram
	$long,	stdio..Linfo_string21                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$byte,	1                               // DW_AT_inline
	$byte,	31                              // Abbrev [31] 0x478:0xb DW_TAG_formal_parameter
	$long,	stdio..Linfo_string22                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	1178                            // DW_AT_type
	$byte,	31                              // Abbrev [31] 0x483:0xb DW_TAG_formal_parameter
	$long,	stdio..Linfo_string23                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	295                             // DW_AT_type
	$byte,	31                              // Abbrev [31] 0x48e:0xb DW_TAG_formal_parameter
	$long,	stdio..Linfo_string24                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	55                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	14                              // Abbrev [14] 0x49a:0x5 DW_TAG_pointer_type
	$long,	1183                            // DW_AT_type
	$byte,	32                              // Abbrev [32] 0x49f:0x1 DW_TAG_const_type
	$byte,	33                              // Abbrev [33] 0x4a0:0x48 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin5                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end5 - stdio..Lfunc_begin5       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string30                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	46                              // DW_AT_decl_line
	$byte,	18                              // Abbrev [18] 0x4b1:0xf DW_TAG_variable
	$long,	stdio..Ldebug_loc19                   // DW_AT_location
	$long,	stdio..Linfo_string56                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	48                              // DW_AT_decl_line
	$long,	295                             // DW_AT_type
	$byte,	34                              // Abbrev [34] 0x4c0:0x27 DW_TAG_inlined_subroutine
	$long,	1136                            // DW_AT_abstract_origin
	$long,	stdio..Ltmp163                        // DW_AT_low_pc
	$long,	stdio..Ltmp165 - stdio..Ltmp163               // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	57                              // DW_AT_call_line
	$byte,	5                               // DW_AT_call_column
	$byte,	35                              // Abbrev [35] 0x4d0:0x9 DW_TAG_formal_parameter
	$long,	stdio..Ldebug_loc20                   // DW_AT_location
	$long,	1144                            // DW_AT_abstract_origin
	$byte,	36                              // Abbrev [36] 0x4d9:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	1155                            // DW_AT_abstract_origin
	$byte,	37                              // Abbrev [37] 0x4e0:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	1166                            // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	33                              // Abbrev [33] 0x4e8:0x20 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin6                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end6 - stdio..Lfunc_begin6       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string31                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	73                              // DW_AT_decl_line
	$byte,	24                              // Abbrev [24] 0x4f9:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp168                        // DW_AT_low_pc
	$byte,	24                              // Abbrev [24] 0x500:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	stdio..Ltmp169                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	29                              // Abbrev [29] 0x508:0x11 DW_TAG_subprogram
	$long,	stdio..Lfunc_begin7                   // DW_AT_low_pc
	$long,	stdio..Lfunc_end7 - stdio..Lfunc_begin7       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	stdio..Linfo_string32                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	95                              // DW_AT_decl_line
	$byte,	38                              // Abbrev [38] 0x519:0x5 DW_TAG_restrict_type
	$long,	1310                            // DW_AT_type
	$byte,	14                              // Abbrev [14] 0x51e:0x5 DW_TAG_pointer_type
	$long,	1315                            // DW_AT_type
	$byte,	39                              // Abbrev [39] 0x523:0x5 DW_TAG_const_type
	$long,	276                             // DW_AT_type
	$byte,	3                               // Abbrev [3] 0x528:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string36                 // DW_AT_name
	$byte,	2                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	10                              // Abbrev [10] 0x52f:0xb DW_TAG_typedef
	$long,	1338                            // DW_AT_type
	$long,	stdio..Linfo_string40                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	30                              // DW_AT_decl_line
	$byte,	40                              // Abbrev [40] 0x53a:0x9 DW_TAG_typedef
	$long,	295                             // DW_AT_type
	$long,	stdio..Linfo_string39                 // DW_AT_name
	$byte,	3                               // Abbrev [3] 0x543:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string43                 // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	3                               // Abbrev [3] 0x54a:0x7 DW_TAG_base_type
	$long,	stdio..Linfo_string46                 // DW_AT_name
	$byte,	4                               // DW_AT_encoding
	$byte,	8                               // DW_AT_byte_size
	$byte,	0                               // End Of Children Mark
stdio..Ldebug_info_end0:
	$section,	%debug_ranges,"",@progbits
stdio..Ldebug_ranges0:
	$long,	stdio..Ltmp94
	$long,	stdio..Ltmp96
	$long,	stdio..Ltmp98
	$long,	stdio..Ltmp100
	$long,	0
	$long,	0
stdio..Ldebug_ranges1:
	$long,	stdio..Ltmp44
	$long,	stdio..Ltmp101
	$long,	stdio..Ltmp103
	$long,	stdio..Ltmp113
	$long,	0
	$long,	0
stdio..Ldebug_ranges2:
	$long,	stdio..Lfunc_begin0
	$long,	stdio..Lfunc_end0
	$long,	stdio..Lfunc_begin1
	$long,	stdio..Lfunc_end1
	$long,	stdio..Lfunc_begin2
	$long,	stdio..Lfunc_end2
	$long,	stdio..Lfunc_begin3
	$long,	stdio..Lfunc_end3
	$long,	stdio..Lfunc_begin4
	$long,	stdio..Lfunc_end4
	$long,	stdio..Lfunc_begin5
	$long,	stdio..Lfunc_end5
	$long,	stdio..Lfunc_begin6
	$long,	stdio..Lfunc_end6
	$long,	stdio..Lfunc_begin7
	$long,	stdio..Lfunc_end7
	$long,	0
	$long,	0
	$section,	%debug_str,"MS",@progbits,1
stdio..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
stdio..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/stdlib/stdio.c" // string offset=106
stdio..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=151
stdio..Linfo_string3:
	$asciz,	"__stdout_buffer_size"          // string offset=172
stdio..Linfo_string4:
	$asciz,	"unsigned int"                  // string offset=193
stdio..Linfo_string5:
	$asciz,	"__stdout_buffer"               // string offset=206
stdio..Linfo_string6:
	$asciz,	"unsigned char"                 // string offset=222
stdio..Linfo_string7:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=236
stdio..Linfo_string8:
	$asciz,	"__stdout_buffer_state"         // string offset=256
stdio..Linfo_string9:
	$asciz,	"wp"                            // string offset=278
stdio..Linfo_string10:
	$asciz,	"uint32_t"                      // string offset=281
stdio..Linfo_string11:
	$asciz,	"has_wrapped"                   // string offset=290
stdio..Linfo_string12:
	$asciz,	"__atomic_bit___stdout_buffer_lock" // string offset=302
stdio..Linfo_string13:
	$asciz,	"uint8_t"                       // string offset=336
stdio..Linfo_string14:
	$asciz,	"__stdout_cache_write_index"    // string offset=344
stdio..Linfo_string15:
	$asciz,	"__stdout_nr_of_wrapping"       // string offset=371
stdio..Linfo_string16:
	$asciz,	"__stdout_buffer_write_pointer_initial" // string offset=395
stdio..Linfo_string17:
	$asciz,	"__stdout_cache_buffer"         // string offset=433
stdio..Linfo_string18:
	$asciz,	"char"                          // string offset=455
stdio..Linfo_string19:
	$asciz,	"long int"                      // string offset=460
stdio..Linfo_string20:
	$asciz,	"uintptr_t"                     // string offset=469
stdio..Linfo_string21:
	$asciz,	"mram_write"                    // string offset=479
stdio..Linfo_string22:
	$asciz,	"from"                          // string offset=490
stdio..Linfo_string23:
	$asciz,	"to"                            // string offset=495
stdio..Linfo_string24:
	$asciz,	"nb_of_bytes"                   // string offset=498
stdio..Linfo_string25:
	$asciz,	"printf"                        // string offset=510
stdio..Linfo_string26:
	$asciz,	"__write_byte_and_flush_if_needed" // string offset=517
stdio..Linfo_string27:
	$asciz,	"puts"                          // string offset=550
stdio..Linfo_string28:
	$asciz,	"putchar"                       // string offset=555
stdio..Linfo_string29:
	$asciz,	"__open_print_sequence"         // string offset=563
stdio..Linfo_string30:
	$asciz,	"__transfer_cache_to_mram"      // string offset=585
stdio..Linfo_string31:
	$asciz,	"__finalized_print_sequence"    // string offset=610
stdio..Linfo_string32:
	$asciz,	"__close_print_sequence"        // string offset=637
stdio..Linfo_string33:
	$asciz,	"format"                        // string offset=660
stdio..Linfo_string34:
	$asciz,	"current_format_char_ptr"       // string offset=667
stdio..Linfo_string35:
	$asciz,	"insert_string_arg_end_character" // string offset=691
stdio..Linfo_string36:
	$asciz,	"_Bool"                         // string offset=723
stdio..Linfo_string37:
	$asciz,	"insert_string_arg"             // string offset=729
stdio..Linfo_string38:
	$asciz,	"args"                          // string offset=747
stdio..Linfo_string39:
	$asciz,	"__builtin_va_list"             // string offset=752
stdio..Linfo_string40:
	$asciz,	"va_list"                       // string offset=770
stdio..Linfo_string41:
	$asciz,	"arg_is_64_bits"                // string offset=778
stdio..Linfo_string42:
	$asciz,	"i"                             // string offset=793
stdio..Linfo_string43:
	$asciz,	"int"                           // string offset=795
stdio..Linfo_string44:
	$asciz,	"arg"                           // string offset=799
stdio..Linfo_string45:
	$asciz,	"val"                           // string offset=803
stdio..Linfo_string46:
	$asciz,	"double"                        // string offset=807
stdio..Linfo_string47:
	$asciz,	"arg_byte"                      // string offset=814
stdio..Linfo_string48:
	$asciz,	"arg_size_in_bytes"             // string offset=823
stdio..Linfo_string49:
	$asciz,	"standard_character_format_process" // string offset=841
stdio..Linfo_string50:
	$asciz,	"standard_character_process"    // string offset=875
stdio..Linfo_string51:
	$asciz,	"arg_as_char"                   // string offset=902
stdio..Linfo_string52:
	$asciz,	"byte"                          // string offset=914
stdio..Linfo_string53:
	$asciz,	"str"                           // string offset=919
stdio..Linfo_string54:
	$asciz,	"current_char_ptr"              // string offset=923
stdio..Linfo_string55:
	$asciz,	"c"                             // string offset=940
stdio..Linfo_string56:
	$asciz,	"offset_in_mram"                // string offset=942
	$addrsig,
	$addrsig_sym, stdio.__stdout_buffer
	$addrsig_sym, __stdout_buffer_state
	$addrsig_sym, __atomic_bit___stdout_buffer_lock
	$addrsig_sym, stdio.__stdout_cache_buffer
	$section,	%debug_line,"",@progbits
stdio..Lline_table_start0:
	$text,
	$file,	"barrier.c"
	$section,	%text, barrier_wait,"ax",@progbits
	$globl,	barrier_wait                    //  -  -  Begin function barrier_wait
	$type,	barrier_wait,@function
barrier_wait:                           // @barrier_wait
barrier..Lfunc_begin0:
	$file,	1 "/root" "uPIMulator_frontend/sdk/syslib/barrier.c"
	$loc,	1 13 0                          // uPIMulator_frontend/sdk/syslib/barrier.c:13:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$cfi_def_cfa_offset, 0
	$loc,	1 14 35 prologue_end            // uPIMulator_frontend/sdk/syslib/barrier.c:14:35
	$lbs , r1, r0, 3
barrier..Ltmp0:
	//DEBUG_VALUE: barrier_wait:lock < -  undef
	$loc,	1 15 5                          // uPIMulator_frontend/sdk/syslib/barrier.c:15:5
	// inline asm
barrier..Ltmp1:
	$acquire , r1, 0, nz, barrier..Ltmp1 + 0
	// inline asm
	$loc,	1 16 36                         // uPIMulator_frontend/sdk/syslib/barrier.c:16:36
	$lbu , r3, r0, 1
barrier..Ltmp2:
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	$loc,	1 17 35                         // uPIMulator_frontend/sdk/syslib/barrier.c:17:35
	$lbu , r2, r0, 0
barrier..Ltmp3:
	//DEBUG_VALUE: barrier_wait:tid < -  undef
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	$loc,	1 23 9                          // uPIMulator_frontend/sdk/syslib/barrier.c:23:9
	$jeq , r3, 1, barrier..LBB0_1
barrier..Ltmp4:
// %bb.6:
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/syslib/barrier.c:0:0
	$move , r4, id
barrier..Ltmp5:
	//DEBUG_VALUE: barrier_wait:tid < -  $r4
	$loc,	1 36 13 is_stmt 1               // uPIMulator_frontend/sdk/syslib/barrier.c:36:13
	$jeq , r2, 255, barrier..LBB0_7
barrier..Ltmp6:
// %bb.8:
	//DEBUG_VALUE: barrier_wait:tid < -  $r4
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 39 21                         // uPIMulator_frontend/sdk/syslib/barrier.c:39:21
	$lbs , r5, r2, __sys_wq_table
barrier..Ltmp7:
	//DEBUG_VALUE: barrier_wait:first < -  $r5
	$loc,	1 40 37                         // uPIMulator_frontend/sdk/syslib/barrier.c:40:37
	$sb , r4, __sys_wq_table, r5
	$loc,	1 41 38                         // uPIMulator_frontend/sdk/syslib/barrier.c:41:38
	$sb , r2, __sys_wq_table, r4
barrier..Ltmp8:
barrier..LBB0_9:
	//DEBUG_VALUE: barrier_wait:tid < -  $r4
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 44 29                         // uPIMulator_frontend/sdk/syslib/barrier.c:44:29
	$sb , r0, 0, r4
	$loc,	1 45 26                         // uPIMulator_frontend/sdk/syslib/barrier.c:45:26
	$add , r2, r3,  - 1
barrier..Ltmp9:
	//DEBUG_VALUE: barrier_wait:count < -  $r2
	$loc,	1 45 24 is_stmt 0               // uPIMulator_frontend/sdk/syslib/barrier.c:45:24
	$sb , r0, 1, r2
	$loc,	1 46 9 is_stmt 1                // uPIMulator_frontend/sdk/syslib/barrier.c:46:9
	// inline asm
barrier..Ltmp10:
	$release , r1, 0, nz, barrier..Ltmp10 + 1
	// inline asm
	$loc,	1 47 9                          // uPIMulator_frontend/sdk/syslib/barrier.c:47:9
	// inline asm
	$stop , false, 0x0
	// inline asm
barrier..Ltmp11:
	$loc,	1 49 1                          // uPIMulator_frontend/sdk/syslib/barrier.c:49:1
	$jump , r23
barrier..Ltmp12:
barrier..LBB0_1:
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 24 13                         // uPIMulator_frontend/sdk/syslib/barrier.c:24:13
	$jeq , r2, 255, barrier..LBB0_5
barrier..Ltmp13:
// %bb.2:
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/syslib/barrier.c:0:0
	$lbu , r3, r2, __sys_wq_table
barrier..Ltmp14:
	//DEBUG_VALUE: barrier_wait:first < -  $r3
	$loc,	1 26 13 is_stmt 1               // uPIMulator_frontend/sdk/syslib/barrier.c:26:13
	$jeq , r3, r2, barrier..LBB0_4
barrier..Ltmp15:
barrier..LBB0_3:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: barrier_wait:first < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 27 17                         // uPIMulator_frontend/sdk/syslib/barrier.c:27:17
	// inline asm
barrier..Ltmp16:
	$resume , r3, 0, nz, barrier..Ltmp16 + 0
	// inline asm
barrier..Ltmp17:
	//DEBUG_VALUE: barrier_wait:first < -  undef
	$loc,	1 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/syslib/barrier.c:0:0
	$and , r3, r3, 255
barrier..Ltmp18:
	$lbu , r3, r3, __sys_wq_table
barrier..Ltmp19:
	//DEBUG_VALUE: barrier_wait:first < -  $r3
	$loc,	1 26 13 is_stmt 1               // uPIMulator_frontend/sdk/syslib/barrier.c:26:13
	$jneq , r3, r2, barrier..LBB0_3
barrier..Ltmp20:
barrier..LBB0_4:
	//DEBUG_VALUE: barrier_wait:first < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 30 13                         // uPIMulator_frontend/sdk/syslib/barrier.c:30:13
	// inline asm
barrier..Ltmp21:
	$resume , r2, 0, nz, barrier..Ltmp21 + 0
	// inline asm
	$loc,	1 31 33                         // uPIMulator_frontend/sdk/syslib/barrier.c:31:33
	$sb , r0, 0, 255
	$loc,	1 32 39                         // uPIMulator_frontend/sdk/syslib/barrier.c:32:39
	$lbs , r2, r0, 2
barrier..Ltmp22:
	$loc,	1 32 28 is_stmt 0               // uPIMulator_frontend/sdk/syslib/barrier.c:32:28
	$sb , r0, 1, r2
barrier..Ltmp23:
barrier..LBB0_5:
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 34 9 is_stmt 1                // uPIMulator_frontend/sdk/syslib/barrier.c:34:9
	// inline asm
barrier..Ltmp24:
	$release , r1, 0, nz, barrier..Ltmp24 + 1
	// inline asm
barrier..Ltmp25:
	$loc,	1 49 1                          // uPIMulator_frontend/sdk/syslib/barrier.c:49:1
	$jump , r23
barrier..Ltmp26:
barrier..LBB0_7:
	//DEBUG_VALUE: barrier_wait:tid < -  $r4
	//DEBUG_VALUE: barrier_wait:count < -  $r3
	//DEBUG_VALUE: barrier_wait:last < -  $r2
	//DEBUG_VALUE: barrier_wait:barrier < -  $r0
	$loc,	1 37 37                         // uPIMulator_frontend/sdk/syslib/barrier.c:37:37
	$sb , r4, __sys_wq_table, r4
	$jump , barrier..LBB0_9
barrier..Ltmp27:
barrier..Lfunc_end0:
	$size,	barrier_wait, barrier..Lfunc_end0 - barrier_wait
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, barrier_wait
	$long,	barrier..Lfunc_begin0
	$byte,	0
	$section,	%text, barrier_wait,"ax",@progbits
                                        //  -  -  End function
	$file,	2 "/root" "uPIMulator_frontend/sdk/stdlib/stdint.h"
	$file,	3 "/root" "uPIMulator_frontend/sdk/syslib/barrier.h"
	$file,	4 "/root" "uPIMulator_frontend/sdk/syslib/sysdef.h"
	$section,	%debug_loc,"",@progbits
barrier..Ldebug_loc0:
	$long,	barrier..Ltmp2 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp9 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	barrier..Ltmp9 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp12 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	barrier..Ltmp12 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp14 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	barrier..Ltmp26 - barrier..Lfunc_begin0
	$long,	barrier..Lfunc_end0 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
barrier..Ldebug_loc1:
	$long,	barrier..Ltmp5 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp12 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	84                              // DW_OP_reg4
	$long,	barrier..Ltmp26 - barrier..Lfunc_begin0
	$long,	barrier..Lfunc_end0 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	84                              // DW_OP_reg4
	$long,	0
	$long,	0
barrier..Ldebug_loc2:
	$long,	barrier..Ltmp3 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp9 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	barrier..Ltmp12 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp22 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	barrier..Ltmp26 - barrier..Lfunc_begin0
	$long,	barrier..Lfunc_end0 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	0
	$long,	0
barrier..Ldebug_loc3:
	$long,	barrier..Ltmp7 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp8 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	85                              // DW_OP_reg5
	$long,	barrier..Ltmp14 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp17 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	barrier..Ltmp19 - barrier..Lfunc_begin0
	$long,	barrier..Ltmp23 - barrier..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	19                              // DW_TAG_structure_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	13                              // DW_TAG_member
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	56                              // DW_AT_data_member_location
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
barrier..Lcu_begin0:
	$long,	barrier..Ldebug_info_end0 - barrier..Ldebug_info_start0 // Length of Unit
barrier..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0xe4 DW_TAG_compile_unit
	$long,	barrier..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	barrier..Linfo_string1                  // DW_AT_name
	$long,	barrier..Lline_table_start0             // DW_AT_stmt_list
	$long,	barrier..Linfo_string2                  // DW_AT_comp_dir
	$long,	barrier..Lfunc_begin0                   // DW_AT_low_pc
	$long,	barrier..Lfunc_end0 - barrier..Lfunc_begin0       // DW_AT_high_pc
	$byte,	2                               // Abbrev [2] 0x26:0x66 DW_TAG_subprogram
	$long,	barrier..Lfunc_begin0                   // DW_AT_low_pc
	$long,	barrier..Lfunc_end0 - barrier..Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	barrier..Linfo_string3                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	$byte,	3                               // Abbrev [3] 0x37:0xd DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	barrier..Linfo_string4                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
	$long,	140                             // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x44:0xb DW_TAG_variable
	$long,	barrier..Linfo_string10                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	14                              // DW_AT_decl_line
	$long,	213                             // DW_AT_type
	$byte,	5                               // Abbrev [5] 0x4f:0xf DW_TAG_variable
	$long,	barrier..Ldebug_loc0                    // DW_AT_location
	$long,	barrier..Linfo_string8                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	16                              // DW_AT_decl_line
	$long,	213                             // DW_AT_type
	$byte,	5                               // Abbrev [5] 0x5e:0xf DW_TAG_variable
	$long,	barrier..Ldebug_loc1                    // DW_AT_location
	$long,	barrier..Linfo_string12                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	19                              // DW_AT_decl_line
	$long,	220                             // DW_AT_type
	$byte,	5                               // Abbrev [5] 0x6d:0xf DW_TAG_variable
	$long,	barrier..Ldebug_loc2                    // DW_AT_location
	$long,	barrier..Linfo_string15                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	17                              // DW_AT_decl_line
	$long,	213                             // DW_AT_type
	$byte,	5                               // Abbrev [5] 0x7c:0xf DW_TAG_variable
	$long,	barrier..Ldebug_loc3                    // DW_AT_location
	$long,	barrier..Linfo_string16                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	18                              // DW_AT_decl_line
	$long,	213                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	6                               // Abbrev [6] 0x8c:0x5 DW_TAG_pointer_type
	$long,	145                             // DW_AT_type
	$byte,	7                               // Abbrev [7] 0x91:0x39 DW_TAG_structure_type
	$long,	barrier..Linfo_string11                 // DW_AT_name
	$byte,	4                               // DW_AT_byte_size
	$byte,	3                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$byte,	8                               // Abbrev [8] 0x99:0xc DW_TAG_member
	$long,	barrier..Linfo_string5                  // DW_AT_name
	$long,	202                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	34                              // DW_AT_decl_line
	$byte,	0                               // DW_AT_data_member_location
	$byte,	8                               // Abbrev [8] 0xa5:0xc DW_TAG_member
	$long,	barrier..Linfo_string8                  // DW_AT_name
	$long,	202                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	35                              // DW_AT_decl_line
	$byte,	1                               // DW_AT_data_member_location
	$byte,	8                               // Abbrev [8] 0xb1:0xc DW_TAG_member
	$long,	barrier..Linfo_string9                  // DW_AT_name
	$long,	202                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	36                              // DW_AT_decl_line
	$byte,	2                               // DW_AT_data_member_location
	$byte,	8                               // Abbrev [8] 0xbd:0xc DW_TAG_member
	$long,	barrier..Linfo_string10                 // DW_AT_name
	$long,	202                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	37                              // DW_AT_decl_line
	$byte,	3                               // DW_AT_data_member_location
	$byte,	0                               // End Of Children Mark
	$byte,	9                               // Abbrev [9] 0xca:0xb DW_TAG_typedef
	$long,	213                             // DW_AT_type
	$long,	barrier..Linfo_string7                  // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	10                              // Abbrev [10] 0xd5:0x7 DW_TAG_base_type
	$long,	barrier..Linfo_string6                  // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	9                               // Abbrev [9] 0xdc:0xb DW_TAG_typedef
	$long,	231                             // DW_AT_type
	$long,	barrier..Linfo_string14                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	18                              // DW_AT_decl_line
	$byte,	10                              // Abbrev [10] 0xe7:0x7 DW_TAG_base_type
	$long,	barrier..Linfo_string13                 // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	0                               // End Of Children Mark
barrier..Ldebug_info_end0:
	$section,	%debug_str,"MS",@progbits,1
barrier..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
barrier..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/syslib/barrier.c" // string offset=106
barrier..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=153
barrier..Linfo_string3:
	$asciz,	"barrier_wait"                  // string offset=174
barrier..Linfo_string4:
	$asciz,	"barrier"                       // string offset=187
barrier..Linfo_string5:
	$asciz,	"wait_queue"                    // string offset=195
barrier..Linfo_string6:
	$asciz,	"unsigned char"                 // string offset=206
barrier..Linfo_string7:
	$asciz,	"uint8_t"                       // string offset=220
barrier..Linfo_string8:
	$asciz,	"count"                         // string offset=228
barrier..Linfo_string9:
	$asciz,	"initial_count"                 // string offset=234
barrier..Linfo_string10:
	$asciz,	"lock"                          // string offset=248
barrier..Linfo_string11:
	$asciz,	"barrier_t"                     // string offset=253
barrier..Linfo_string12:
	$asciz,	"tid"                           // string offset=263
barrier..Linfo_string13:
	$asciz,	"unsigned int"                  // string offset=267
barrier..Linfo_string14:
	$asciz,	"thread_id_t"                   // string offset=280
barrier..Linfo_string15:
	$asciz,	"last"                          // string offset=292
barrier..Linfo_string16:
	$asciz,	"first"                         // string offset=297
	$addrsig,
	$section,	%debug_line,"",@progbits
barrier..Lline_table_start0:
	$text,
	$file,	"errno.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/stdlib/errno.c"
	$type,	__errno,@object                 // @__errno
	$section,	%bss, __errno,"aw",@nobits
	$globl,	__errno
	$p2align,	2
__errno:
	$zero,	96
	$size,	__errno, 96

	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
errno..Lcu_begin0:
	$long,	errno..Ldebug_info_end0 - errno..Ldebug_info_start0 // Length of Unit
errno..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x3f DW_TAG_compile_unit
	$long,	errno..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	errno..Linfo_string1                  // DW_AT_name
	$long,	errno..Lline_table_start0             // DW_AT_stmt_list
	$long,	errno..Linfo_string2                  // DW_AT_comp_dir
	$byte,	2                               // Abbrev [2] 0x1e:0x11 DW_TAG_variable
	$long,	errno..Linfo_string3                  // DW_AT_name
	$long,	47                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	6                               // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__errno
	$byte,	3                               // Abbrev [3] 0x2f:0xc DW_TAG_array_type
	$long,	59                              // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x34:0x6 DW_TAG_subrange_type
	$long,	66                              // DW_AT_type
	$byte,	24                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x3b:0x7 DW_TAG_base_type
	$long,	errno..Linfo_string4                  // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	6                               // Abbrev [6] 0x42:0x7 DW_TAG_base_type
	$long,	errno..Linfo_string5                  // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	0                               // End Of Children Mark
errno..Ldebug_info_end0:
	$section,	%debug_str,"MS",@progbits,1
errno..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
errno..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/stdlib/errno.c" // string offset=106
errno..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=151
errno..Linfo_string3:
	$asciz,	"__errno"                       // string offset=172
errno..Linfo_string4:
	$asciz,	"int"                           // string offset=180
errno..Linfo_string5:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=184
	$addrsig,
	$section,	%debug_line,"",@progbits
errno..Lline_table_start0:
	$text,
	$file,	"alloc.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/syslib/alloc.c"
	$file,	2 "/root" "uPIMulator_frontend/sdk/stdlib/stdint.h"
	$section,	%text, mem_alloc_nolock,"ax",@progbits
	$globl,	mem_alloc_nolock                //  -  -  Begin function mem_alloc_nolock
	$type,	mem_alloc_nolock,@function
mem_alloc_nolock:                       // @mem_alloc_nolock
alloc..Lfunc_begin0:
	$loc,	1 20 0                          // uPIMulator_frontend/sdk/syslib/alloc.c:20:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: mem_alloc_nolock:size < -  $r0
	$cfi_def_cfa_offset, 0
	$loc,	1 21 28 prologue_end            // uPIMulator_frontend/sdk/syslib/alloc.c:21:28
	$lw , r1, zero, __sys_heap_pointer
alloc..Ltmp0:
	//DEBUG_VALUE: mem_alloc_nolock:pointer < -  $r1
	//DEBUG_VALUE: mem_alloc_nolock:size < -  $r0
	$loc,	1 23 9                          // uPIMulator_frontend/sdk/syslib/alloc.c:23:9
	$jeq , r0, 0, alloc..LBB0_2
alloc..Ltmp1:
// %bb.1:
	//DEBUG_VALUE: mem_alloc_nolock:pointer < -  $r1
	//DEBUG_VALUE: mem_alloc_nolock:size < -  $r0
	$loc,	1 24 28                         // uPIMulator_frontend/sdk/syslib/alloc.c:24:28
	$add , r1, r1, 7
alloc..Ltmp2:
	$loc,	1 24 33 is_stmt 0               // uPIMulator_frontend/sdk/syslib/alloc.c:24:33
	$and , r1, r1,  - 8
alloc..Ltmp3:
	//DEBUG_VALUE: mem_alloc_nolock:pointer < -  $r1
	$loc,	1 28 9 is_stmt 1                // uPIMulator_frontend/sdk/syslib/alloc.c:28:9
	// inline asm
alloc..Ltmp4:
	$add , r0, r1, r0, nc, alloc..Ltmp4 + 2
	$fault , 1
	$lbu , r2, r0,  - 1

	// inline asm
alloc..Ltmp5:
	//DEBUG_VALUE: dummy < -  undef
	//DEBUG_VALUE: new_heap_pointer < -  $r0
	$loc,	1 34 24                         // uPIMulator_frontend/sdk/syslib/alloc.c:34:24
	$sw , zero, __sys_heap_pointer, r0
alloc..Ltmp6:
alloc..LBB0_2:
	//DEBUG_VALUE: mem_alloc_nolock:pointer < -  $r1
	//DEBUG_VALUE: mem_alloc_nolock:pointer < -  $r1
	$loc,	1 36 5                          // uPIMulator_frontend/sdk/syslib/alloc.c:36:5
	$move , r0, r1
	$jump , r23
alloc..Ltmp7:
alloc..Lfunc_end0:
	$size,	mem_alloc_nolock, alloc..Lfunc_end0 - mem_alloc_nolock
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, mem_alloc_nolock
	$long,	alloc..Lfunc_begin0
	$byte,	0
	$section,	%text, mem_alloc_nolock,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, mem_alloc,"ax",@progbits
	$globl,	mem_alloc                       //  -  -  Begin function mem_alloc
	$type,	mem_alloc,@function
mem_alloc:                              // @mem_alloc
alloc..Lfunc_begin1:
	$loc,	1 41 0                          // uPIMulator_frontend/sdk/syslib/alloc.c:41:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: mem_alloc:size < -  $r0
	$cfi_def_cfa_offset,  - 8
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 0, d22
	$add , r22, r22, 8
alloc..Ltmp8:
	$loc,	1 42 5 prologue_end             // uPIMulator_frontend/sdk/syslib/alloc.c:42:5
	// inline asm
alloc..Ltmp9:
	$acquire , zero, __atomic_bit___heap_pointer, nz, alloc..Ltmp9
	// inline asm
	//DEBUG_VALUE: mem_alloc:size < -  $r0
	//DEBUG_VALUE: mem_alloc:size < -  $r0
	$loc,	1 43 21                         // uPIMulator_frontend/sdk/syslib/alloc.c:43:21
	$call , r23, mem_alloc_nolock
alloc..Ltmp10:
	$loc,	1 44 5                          // uPIMulator_frontend/sdk/syslib/alloc.c:44:5
	// inline asm
alloc..Ltmp11:
	$release , zero, __atomic_bit___heap_pointer, nz, alloc..Ltmp11 + 1
	// inline asm
alloc..Ltmp12:
	//DEBUG_VALUE: mem_alloc:pointer < -  $r0
	$loc,	1 45 5                          // uPIMulator_frontend/sdk/syslib/alloc.c:45:5
	$ld , d22, r22,  - 8
	$jump , r23
alloc..Ltmp13:
alloc..Lfunc_end1:
	$size,	mem_alloc, alloc..Lfunc_end1 - mem_alloc
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, mem_alloc
	$long,	alloc..Lfunc_begin1
	$byte,	8
	$section,	%text, mem_alloc,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, mem_reset,"ax",@progbits
	$globl,	mem_reset                       //  -  -  Begin function mem_reset
	$type,	mem_reset,@function
mem_reset:                              // @mem_reset
alloc..Lfunc_begin2:
	$loc,	1 50 0                          // uPIMulator_frontend/sdk/syslib/alloc.c:50:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset, 0
	$loc,	1 51 5 prologue_end             // uPIMulator_frontend/sdk/syslib/alloc.c:51:5
	// inline asm
alloc..Ltmp14:
	$acquire , zero, __atomic_bit___heap_pointer, nz, alloc..Ltmp14
	// inline asm
	$loc,	1 55 24                         // uPIMulator_frontend/sdk/syslib/alloc.c:55:24
	$move , r0, __sys_heap_pointer_reset
alloc..Ltmp15:
	//DEBUG_VALUE: mem_reset:initial < -  $r0
	$sw , zero, __sys_heap_pointer, r0
	$loc,	1 57 5                          // uPIMulator_frontend/sdk/syslib/alloc.c:57:5
	// inline asm
alloc..Ltmp16:
	$release , zero, __atomic_bit___heap_pointer, nz, alloc..Ltmp16 + 1
	// inline asm
	$loc,	1 59 5                          // uPIMulator_frontend/sdk/syslib/alloc.c:59:5
	$jump , r23
alloc..Ltmp17:
alloc..Lfunc_end2:
	$size,	mem_reset, alloc..Lfunc_end2 - mem_reset
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, mem_reset
	$long,	alloc..Lfunc_begin2
	$byte,	0
	$section,	%text, mem_reset,"ax",@progbits
                                        //  -  -  End function
	$type,	__sys_heap_pointer,@object      // @__sys_heap_pointer
	$section,	%data, __sys_heap_pointer,"aw",@progbits
	$globl,	__sys_heap_pointer
	$p2align,	2
__sys_heap_pointer:
	$long,	__sys_heap_pointer_reset
	$size,	__sys_heap_pointer, 4

	$type,	__atomic_bit___heap_pointer,@object // @__atomic_bit___heap_pointer
	$section,	%atomic,"aw",@progbits
	$globl,	__atomic_bit___heap_pointer
__atomic_bit___heap_pointer:
	$byte,	0                               // 0x0
	$size,	__atomic_bit___heap_pointer, 1

	$file,	3 "/root" "uPIMulator_frontend/sdk/stdlib/stddef.h"
	$section,	%debug_loc,"",@progbits
alloc..Ldebug_loc0:
	$long,	 - 1
	$long,	alloc..Lfunc_begin0                   //   base address
	$long,	alloc..Lfunc_begin0 - alloc..Lfunc_begin0
	$long,	alloc..Ltmp5 - alloc..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
alloc..Ldebug_loc1:
	$long,	 - 1
	$long,	alloc..Lfunc_begin0                   //   base address
	$long,	alloc..Ltmp0 - alloc..Lfunc_begin0
	$long,	alloc..Ltmp2 - alloc..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	alloc..Ltmp3 - alloc..Lfunc_begin0
	$long,	alloc..Lfunc_end0 - alloc..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
alloc..Ldebug_loc2:
	$long,	 - 1
	$long,	alloc..Lfunc_begin0                   //   base address
	$long,	alloc..Ltmp5 - alloc..Lfunc_begin0
	$long,	alloc..Ltmp6 - alloc..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
alloc..Ldebug_loc3:
	$long,	 - 1
	$long,	alloc..Lfunc_begin1                   //   base address
	$long,	alloc..Ltmp12 - alloc..Lfunc_begin1
	$long,	alloc..Lfunc_end1 - alloc..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
alloc..Ldebug_loc4:
	$long,	 - 1
	$long,	alloc..Lfunc_begin2                   //   base address
	$long,	alloc..Ltmp15 - alloc..Lfunc_begin2
	$long,	alloc..Lfunc_end2 - alloc..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	53                              // DW_TAG_volatile_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	11                              // DW_TAG_lexical_block
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	11                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	12                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	13                              // Abbreviation Code
	$ascii,	"\211\202\001"                  // DW_TAG_GNU_call_site
	$byte,	0                               // DW_CHILDREN_no
	$ascii,	"\223B"                         // DW_AT_GNU_call_site_target
	$byte,	24                              // DW_FORM_exprloc
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	14                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
alloc..Lcu_begin0:
	$long,	alloc..Ldebug_info_end0 - alloc..Ldebug_info_start0 // Length of Unit
alloc..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x11e DW_TAG_compile_unit
	$long,	alloc..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	alloc..Linfo_string1                  // DW_AT_name
	$long,	alloc..Lline_table_start0             // DW_AT_stmt_list
	$long,	alloc..Linfo_string2                  // DW_AT_comp_dir
	$long,	0                               // DW_AT_low_pc
	$long,	alloc..Ldebug_ranges0                 // DW_AT_ranges
	$byte,	2                               // Abbrev [2] 0x26:0x11 DW_TAG_variable
	$long,	alloc..Linfo_string3                  // DW_AT_name
	$long,	55                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	11                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__sys_heap_pointer
	$byte,	3                               // Abbrev [3] 0x37:0x5 DW_TAG_volatile_type
	$long,	60                              // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x3c:0x7 DW_TAG_base_type
	$long,	alloc..Linfo_string4                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	2                               // Abbrev [2] 0x43:0x11 DW_TAG_variable
	$long,	alloc..Linfo_string5                  // DW_AT_name
	$long,	84                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	13                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__atomic_bit___heap_pointer
	$byte,	5                               // Abbrev [5] 0x54:0xb DW_TAG_typedef
	$long,	95                              // DW_AT_type
	$long,	alloc..Linfo_string7                  // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	4                               // Abbrev [4] 0x5f:0x7 DW_TAG_base_type
	$long,	alloc..Linfo_string6                  // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	6                               // Abbrev [6] 0x66:0x1 DW_TAG_pointer_type
	$byte,	7                               // Abbrev [7] 0x67:0x58 DW_TAG_subprogram
	$long,	alloc..Lfunc_begin0                   // DW_AT_low_pc
	$long,	alloc..Lfunc_end0 - alloc..Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	alloc..Linfo_string8                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	19                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	102                             // DW_AT_type
                                        // DW_AT_external
	$byte,	8                               // Abbrev [8] 0x7c:0xf DW_TAG_formal_parameter
	$long,	alloc..Ldebug_loc0                    // DW_AT_location
	$long,	alloc..Linfo_string11                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	19                              // DW_AT_decl_line
	$long,	285                             // DW_AT_type
	$byte,	9                               // Abbrev [9] 0x8b:0xf DW_TAG_variable
	$long,	alloc..Ldebug_loc1                    // DW_AT_location
	$long,	alloc..Linfo_string13                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	21                              // DW_AT_decl_line
	$long,	60                              // DW_AT_type
	$byte,	10                              // Abbrev [10] 0x9a:0x24 DW_TAG_lexical_block
	$long,	alloc..Ltmp1                          // DW_AT_low_pc
	$long,	alloc..Ltmp6 - alloc..Ltmp1                   // DW_AT_high_pc
	$byte,	11                              // Abbrev [11] 0xa3:0xb DW_TAG_variable
	$long,	alloc..Linfo_string14                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$long,	60                              // DW_AT_type
	$byte,	9                               // Abbrev [9] 0xae:0xf DW_TAG_variable
	$long,	alloc..Ldebug_loc2                    // DW_AT_location
	$long,	alloc..Linfo_string15                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$long,	60                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	7                               // Abbrev [7] 0xbf:0x39 DW_TAG_subprogram
	$long,	alloc..Lfunc_begin1                   // DW_AT_low_pc
	$long,	alloc..Lfunc_end1 - alloc..Lfunc_begin1       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	alloc..Linfo_string9                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	102                             // DW_AT_type
                                        // DW_AT_external
	$byte,	12                              // Abbrev [12] 0xd4:0xd DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	alloc..Linfo_string11                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$long,	285                             // DW_AT_type
	$byte,	9                               // Abbrev [9] 0xe1:0xf DW_TAG_variable
	$long,	alloc..Ldebug_loc3                    // DW_AT_location
	$long,	alloc..Linfo_string13                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	43                              // DW_AT_decl_line
	$long,	102                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0xf0:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	alloc..Ltmp10                         // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	14                              // Abbrev [14] 0xf8:0x25 DW_TAG_subprogram
	$long,	alloc..Lfunc_begin2                   // DW_AT_low_pc
	$long,	alloc..Lfunc_end2 - alloc..Lfunc_begin2       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	alloc..Linfo_string10                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	49                              // DW_AT_decl_line
	$long,	102                             // DW_AT_type
                                        // DW_AT_external
	$byte,	9                               // Abbrev [9] 0x10d:0xf DW_TAG_variable
	$long,	alloc..Ldebug_loc4                    // DW_AT_location
	$long,	alloc..Linfo_string16                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	53                              // DW_AT_decl_line
	$long,	102                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x11d:0xb DW_TAG_typedef
	$long,	60                              // DW_AT_type
	$long,	alloc..Linfo_string12                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$byte,	0                               // End Of Children Mark
alloc..Ldebug_info_end0:
	$section,	%debug_ranges,"",@progbits
alloc..Ldebug_ranges0:
	$long,	alloc..Lfunc_begin0
	$long,	alloc..Lfunc_end0
	$long,	alloc..Lfunc_begin1
	$long,	alloc..Lfunc_end1
	$long,	alloc..Lfunc_begin2
	$long,	alloc..Lfunc_end2
	$long,	0
	$long,	0
	$section,	%debug_str,"MS",@progbits,1
alloc..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
alloc..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/syslib/alloc.c" // string offset=106
alloc..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=151
alloc..Linfo_string3:
	$asciz,	"__sys_heap_pointer"            // string offset=172
alloc..Linfo_string4:
	$asciz,	"unsigned int"                  // string offset=191
alloc..Linfo_string5:
	$asciz,	"__atomic_bit___heap_pointer"   // string offset=204
alloc..Linfo_string6:
	$asciz,	"unsigned char"                 // string offset=232
alloc..Linfo_string7:
	$asciz,	"uint8_t"                       // string offset=246
alloc..Linfo_string8:
	$asciz,	"mem_alloc_nolock"              // string offset=254
alloc..Linfo_string9:
	$asciz,	"mem_alloc"                     // string offset=271
alloc..Linfo_string10:
	$asciz,	"mem_reset"                     // string offset=281
alloc..Linfo_string11:
	$asciz,	"size"                          // string offset=291
alloc..Linfo_string12:
	$asciz,	"size_t"                        // string offset=296
alloc..Linfo_string13:
	$asciz,	"pointer"                       // string offset=303
alloc..Linfo_string14:
	$asciz,	"dummy"                         // string offset=311
alloc..Linfo_string15:
	$asciz,	"new_heap_pointer"              // string offset=317
alloc..Linfo_string16:
	$asciz,	"initial"                       // string offset=334
	$addrsig,
	$addrsig_sym, __sys_heap_pointer_reset
	$addrsig_sym, __sys_heap_pointer
	$addrsig_sym, __atomic_bit___heap_pointer
	$section,	%debug_line,"",@progbits
alloc..Lline_table_start0:
	$text,
	$file,	"task.c"
                                        // Start of file scope inline assembly
	$section,	%data, my_barrier,"aw",@progbits
	$type,	my_barrier,@object
	$globl,	my_barrier
	$p2align,	2
my_barrier:
	$byte,	255
	$byte,	16
	$byte,	16
	$byte,	__atomic_bit_barrier_my_barrier
	$size,	my_barrier, 4
	$text,

                                        // End of file scope inline assembly
	$file,	1 "/root/uPIMulator_frontend/benchmark/SCAN - RSS" "dpu/task.c"
	$file,	2 "/root" "upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/stdlib/stdint.h"
	$file,	3 "/root/uPIMulator_frontend/benchmark/SCAN - RSS" "dpu/../support/common.h"
	$section,	%text, reduction,"ax",@progbits
	$globl,	reduction                       //  -  -  Begin function reduction
	$type,	reduction,@function
reduction:                              // @reduction
.Lfunc_begin0:
	$loc,	1 24 0                          // dpu/task.c:24:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: reduction:input < -  $r0
	//DEBUG_VALUE: reduction:input < -  $r0
	$cfi_def_cfa_offset, 0
	//DEBUG_VALUE: reduction:output < -  0
	//DEBUG_VALUE: j < -  0
	$loc,	1 28 19 prologue_end            // dpu/task.c:28:19
	$ld , d2, r0, 0
.Ltmp0:
	//DEBUG_VALUE: j < -  1
	//DEBUG_VALUE: reduction:output < -  $d2
	$ld , d4, r0, 8
	$ld , d6, r0, 16
	$ld , d8, r0, 24
	$loc,	1 28 16 is_stmt 0               // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp1:
	$addc , r2, r4, r2
.Ltmp2:
	//DEBUG_VALUE: j < -  2
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp3:
	$addc , r2, r6, r2
.Ltmp4:
	//DEBUG_VALUE: j < -  3
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp5:
	$addc , r2, r8, r2
.Ltmp6:
	//DEBUG_VALUE: j < -  4
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 32
	$ld , d6, r0, 40
	$ld , d8, r0, 48
	$ld , d10, r0, 56
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp7:
	$addc , r2, r4, r2
.Ltmp8:
	//DEBUG_VALUE: j < -  5
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp9:
	$addc , r2, r6, r2
.Ltmp10:
	//DEBUG_VALUE: j < -  6
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp11:
	$addc , r2, r8, r2
.Ltmp12:
	//DEBUG_VALUE: j < -  7
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp13:
	$addc , r2, r10, r2
.Ltmp14:
	//DEBUG_VALUE: j < -  8
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 64
	$ld , d6, r0, 72
	$ld , d8, r0, 80
	$ld , d10, r0, 88
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp15:
	$addc , r2, r4, r2
.Ltmp16:
	//DEBUG_VALUE: j < -  9
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp17:
	$addc , r2, r6, r2
.Ltmp18:
	//DEBUG_VALUE: j < -  10
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp19:
	$addc , r2, r8, r2
.Ltmp20:
	//DEBUG_VALUE: j < -  11
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp21:
	$addc , r2, r10, r2
.Ltmp22:
	//DEBUG_VALUE: j < -  12
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 96
	$ld , d6, r0, 104
	$ld , d8, r0, 112
	$ld , d10, r0, 120
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp23:
	$addc , r2, r4, r2
.Ltmp24:
	//DEBUG_VALUE: j < -  13
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp25:
	$addc , r2, r6, r2
.Ltmp26:
	//DEBUG_VALUE: j < -  14
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp27:
	$addc , r2, r8, r2
.Ltmp28:
	//DEBUG_VALUE: j < -  15
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp29:
	$addc , r2, r10, r2
.Ltmp30:
	//DEBUG_VALUE: j < -  16
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 128
	$ld , d6, r0, 136
	$ld , d8, r0, 144
	$ld , d10, r0, 152
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp31:
	$addc , r2, r4, r2
.Ltmp32:
	//DEBUG_VALUE: j < -  17
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp33:
	$addc , r2, r6, r2
.Ltmp34:
	//DEBUG_VALUE: j < -  18
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp35:
	$addc , r2, r8, r2
.Ltmp36:
	//DEBUG_VALUE: j < -  19
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp37:
	$addc , r2, r10, r2
.Ltmp38:
	//DEBUG_VALUE: j < -  20
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 160
	$ld , d6, r0, 168
	$ld , d8, r0, 176
	$ld , d10, r0, 184
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp39:
	$addc , r2, r4, r2
.Ltmp40:
	//DEBUG_VALUE: j < -  21
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp41:
	$addc , r2, r6, r2
.Ltmp42:
	//DEBUG_VALUE: j < -  22
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp43:
	$addc , r2, r8, r2
.Ltmp44:
	//DEBUG_VALUE: j < -  23
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp45:
	$addc , r2, r10, r2
.Ltmp46:
	//DEBUG_VALUE: j < -  24
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 192
	$ld , d6, r0, 200
	$ld , d8, r0, 208
	$ld , d10, r0, 216
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp47:
	$addc , r2, r4, r2
.Ltmp48:
	//DEBUG_VALUE: j < -  25
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp49:
	$addc , r2, r6, r2
.Ltmp50:
	//DEBUG_VALUE: j < -  26
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp51:
	$addc , r2, r8, r2
.Ltmp52:
	//DEBUG_VALUE: j < -  27
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp53:
	$addc , r2, r10, r2
.Ltmp54:
	//DEBUG_VALUE: j < -  28
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 224
	$ld , d6, r0, 232
	$ld , d8, r0, 240
	$ld , d10, r0, 248
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp55:
	$addc , r2, r4, r2
.Ltmp56:
	//DEBUG_VALUE: j < -  29
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp57:
	$addc , r2, r6, r2
.Ltmp58:
	//DEBUG_VALUE: j < -  30
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp59:
	$addc , r2, r8, r2
.Ltmp60:
	//DEBUG_VALUE: j < -  31
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp61:
	$addc , r2, r10, r2
.Ltmp62:
	//DEBUG_VALUE: j < -  32
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 256
	$ld , d6, r0, 264
	$ld , d8, r0, 272
	$ld , d10, r0, 280
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp63:
	$addc , r2, r4, r2
.Ltmp64:
	//DEBUG_VALUE: j < -  33
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp65:
	$addc , r2, r6, r2
.Ltmp66:
	//DEBUG_VALUE: j < -  34
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp67:
	$addc , r2, r8, r2
.Ltmp68:
	//DEBUG_VALUE: j < -  35
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp69:
	$addc , r2, r10, r2
.Ltmp70:
	//DEBUG_VALUE: j < -  36
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 288
	$ld , d6, r0, 296
	$ld , d8, r0, 304
	$ld , d10, r0, 312
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp71:
	$addc , r2, r4, r2
.Ltmp72:
	//DEBUG_VALUE: j < -  37
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp73:
	$addc , r2, r6, r2
.Ltmp74:
	//DEBUG_VALUE: j < -  38
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp75:
	$addc , r2, r8, r2
.Ltmp76:
	//DEBUG_VALUE: j < -  39
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp77:
	$addc , r2, r10, r2
.Ltmp78:
	//DEBUG_VALUE: j < -  40
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 320
	$ld , d6, r0, 328
	$ld , d8, r0, 336
	$ld , d10, r0, 344
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp79:
	$addc , r2, r4, r2
.Ltmp80:
	//DEBUG_VALUE: j < -  41
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp81:
	$addc , r2, r6, r2
.Ltmp82:
	//DEBUG_VALUE: j < -  42
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp83:
	$addc , r2, r8, r2
.Ltmp84:
	//DEBUG_VALUE: j < -  43
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp85:
	$addc , r2, r10, r2
.Ltmp86:
	//DEBUG_VALUE: j < -  44
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 352
	$ld , d6, r0, 360
	$ld , d8, r0, 368
	$ld , d10, r0, 376
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp87:
	$addc , r2, r4, r2
.Ltmp88:
	//DEBUG_VALUE: j < -  45
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp89:
	$addc , r2, r6, r2
.Ltmp90:
	//DEBUG_VALUE: j < -  46
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp91:
	$addc , r2, r8, r2
.Ltmp92:
	//DEBUG_VALUE: j < -  47
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp93:
	$addc , r2, r10, r2
.Ltmp94:
	//DEBUG_VALUE: j < -  48
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 384
	$ld , d6, r0, 392
	$ld , d8, r0, 400
	$ld , d10, r0, 408
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp95:
	$addc , r2, r4, r2
.Ltmp96:
	//DEBUG_VALUE: j < -  49
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp97:
	$addc , r2, r6, r2
.Ltmp98:
	//DEBUG_VALUE: j < -  50
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp99:
	$addc , r2, r8, r2
.Ltmp100:
	//DEBUG_VALUE: j < -  51
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp101:
	$addc , r2, r10, r2
.Ltmp102:
	//DEBUG_VALUE: j < -  52
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 416
	$ld , d6, r0, 424
	$ld , d8, r0, 432
	$ld , d10, r0, 440
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp103:
	$addc , r2, r4, r2
.Ltmp104:
	//DEBUG_VALUE: j < -  53
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp105:
	$addc , r2, r6, r2
.Ltmp106:
	//DEBUG_VALUE: j < -  54
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp107:
	$addc , r2, r8, r2
.Ltmp108:
	//DEBUG_VALUE: j < -  55
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp109:
	$addc , r2, r10, r2
.Ltmp110:
	//DEBUG_VALUE: j < -  56
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 448
	$ld , d6, r0, 456
	$ld , d8, r0, 464
	$ld , d10, r0, 472
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp111:
	$addc , r2, r4, r2
.Ltmp112:
	//DEBUG_VALUE: j < -  57
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp113:
	$addc , r2, r6, r2
.Ltmp114:
	//DEBUG_VALUE: j < -  58
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp115:
	$addc , r2, r8, r2
.Ltmp116:
	//DEBUG_VALUE: j < -  59
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp117:
	$addc , r2, r10, r2
.Ltmp118:
	//DEBUG_VALUE: j < -  60
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 480
	$ld , d6, r0, 488
	$ld , d8, r0, 496
	$ld , d10, r0, 504
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp119:
	$addc , r2, r4, r2
.Ltmp120:
	//DEBUG_VALUE: j < -  61
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp121:
	$addc , r2, r6, r2
.Ltmp122:
	//DEBUG_VALUE: j < -  62
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp123:
	$addc , r2, r8, r2
.Ltmp124:
	//DEBUG_VALUE: j < -  63
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp125:
	$addc , r2, r10, r2
.Ltmp126:
	//DEBUG_VALUE: j < -  64
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 512
	$ld , d6, r0, 520
	$ld , d8, r0, 528
	$ld , d10, r0, 536
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp127:
	$addc , r2, r4, r2
.Ltmp128:
	//DEBUG_VALUE: j < -  65
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp129:
	$addc , r2, r6, r2
.Ltmp130:
	//DEBUG_VALUE: j < -  66
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp131:
	$addc , r2, r8, r2
.Ltmp132:
	//DEBUG_VALUE: j < -  67
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp133:
	$addc , r2, r10, r2
.Ltmp134:
	//DEBUG_VALUE: j < -  68
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 544
	$ld , d6, r0, 552
	$ld , d8, r0, 560
	$ld , d10, r0, 568
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp135:
	$addc , r2, r4, r2
.Ltmp136:
	//DEBUG_VALUE: j < -  69
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp137:
	$addc , r2, r6, r2
.Ltmp138:
	//DEBUG_VALUE: j < -  70
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp139:
	$addc , r2, r8, r2
.Ltmp140:
	//DEBUG_VALUE: j < -  71
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp141:
	$addc , r2, r10, r2
.Ltmp142:
	//DEBUG_VALUE: j < -  72
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 576
	$ld , d6, r0, 584
	$ld , d8, r0, 592
	$ld , d10, r0, 600
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp143:
	$addc , r2, r4, r2
.Ltmp144:
	//DEBUG_VALUE: j < -  73
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp145:
	$addc , r2, r6, r2
.Ltmp146:
	//DEBUG_VALUE: j < -  74
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp147:
	$addc , r2, r8, r2
.Ltmp148:
	//DEBUG_VALUE: j < -  75
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp149:
	$addc , r2, r10, r2
.Ltmp150:
	//DEBUG_VALUE: j < -  76
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 608
	$ld , d6, r0, 616
	$ld , d8, r0, 624
	$ld , d10, r0, 632
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp151:
	$addc , r2, r4, r2
.Ltmp152:
	//DEBUG_VALUE: j < -  77
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp153:
	$addc , r2, r6, r2
.Ltmp154:
	//DEBUG_VALUE: j < -  78
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp155:
	$addc , r2, r8, r2
.Ltmp156:
	//DEBUG_VALUE: j < -  79
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp157:
	$addc , r2, r10, r2
.Ltmp158:
	//DEBUG_VALUE: j < -  80
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 640
	$ld , d6, r0, 648
	$ld , d8, r0, 656
	$ld , d10, r0, 664
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp159:
	$addc , r2, r4, r2
.Ltmp160:
	//DEBUG_VALUE: j < -  81
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp161:
	$addc , r2, r6, r2
.Ltmp162:
	//DEBUG_VALUE: j < -  82
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp163:
	$addc , r2, r8, r2
.Ltmp164:
	//DEBUG_VALUE: j < -  83
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp165:
	$addc , r2, r10, r2
.Ltmp166:
	//DEBUG_VALUE: j < -  84
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 672
	$ld , d6, r0, 680
	$ld , d8, r0, 688
	$ld , d10, r0, 696
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp167:
	$addc , r2, r4, r2
.Ltmp168:
	//DEBUG_VALUE: j < -  85
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp169:
	$addc , r2, r6, r2
.Ltmp170:
	//DEBUG_VALUE: j < -  86
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp171:
	$addc , r2, r8, r2
.Ltmp172:
	//DEBUG_VALUE: j < -  87
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp173:
	$addc , r2, r10, r2
.Ltmp174:
	//DEBUG_VALUE: j < -  88
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 704
	$ld , d6, r0, 712
	$ld , d8, r0, 720
	$ld , d10, r0, 728
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp175:
	$addc , r2, r4, r2
.Ltmp176:
	//DEBUG_VALUE: j < -  89
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp177:
	$addc , r2, r6, r2
.Ltmp178:
	//DEBUG_VALUE: j < -  90
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp179:
	$addc , r2, r8, r2
.Ltmp180:
	//DEBUG_VALUE: j < -  91
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp181:
	$addc , r2, r10, r2
.Ltmp182:
	//DEBUG_VALUE: j < -  92
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 736
	$ld , d6, r0, 744
	$ld , d8, r0, 752
	$ld , d10, r0, 760
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp183:
	$addc , r2, r4, r2
.Ltmp184:
	//DEBUG_VALUE: j < -  93
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp185:
	$addc , r2, r6, r2
.Ltmp186:
	//DEBUG_VALUE: j < -  94
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp187:
	$addc , r2, r8, r2
.Ltmp188:
	//DEBUG_VALUE: j < -  95
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp189:
	$addc , r2, r10, r2
.Ltmp190:
	//DEBUG_VALUE: j < -  96
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 768
	$ld , d6, r0, 776
	$ld , d8, r0, 784
	$ld , d10, r0, 792
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp191:
	$addc , r2, r4, r2
.Ltmp192:
	//DEBUG_VALUE: j < -  97
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp193:
	$addc , r2, r6, r2
.Ltmp194:
	//DEBUG_VALUE: j < -  98
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp195:
	$addc , r2, r8, r2
.Ltmp196:
	//DEBUG_VALUE: j < -  99
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp197:
	$addc , r2, r10, r2
.Ltmp198:
	//DEBUG_VALUE: j < -  100
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 800
	$ld , d6, r0, 808
	$ld , d8, r0, 816
	$ld , d10, r0, 824
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp199:
	$addc , r2, r4, r2
.Ltmp200:
	//DEBUG_VALUE: j < -  101
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp201:
	$addc , r2, r6, r2
.Ltmp202:
	//DEBUG_VALUE: j < -  102
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp203:
	$addc , r2, r8, r2
.Ltmp204:
	//DEBUG_VALUE: j < -  103
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp205:
	$addc , r2, r10, r2
.Ltmp206:
	//DEBUG_VALUE: j < -  104
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 832
	$ld , d6, r0, 840
	$ld , d8, r0, 848
	$ld , d10, r0, 856
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp207:
	$addc , r2, r4, r2
.Ltmp208:
	//DEBUG_VALUE: j < -  105
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp209:
	$addc , r2, r6, r2
.Ltmp210:
	//DEBUG_VALUE: j < -  106
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp211:
	$addc , r2, r8, r2
.Ltmp212:
	//DEBUG_VALUE: j < -  107
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp213:
	$addc , r2, r10, r2
.Ltmp214:
	//DEBUG_VALUE: j < -  108
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 864
	$ld , d6, r0, 872
	$ld , d8, r0, 880
	$ld , d10, r0, 888
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp215:
	$addc , r2, r4, r2
.Ltmp216:
	//DEBUG_VALUE: j < -  109
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp217:
	$addc , r2, r6, r2
.Ltmp218:
	//DEBUG_VALUE: j < -  110
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp219:
	$addc , r2, r8, r2
.Ltmp220:
	//DEBUG_VALUE: j < -  111
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp221:
	$addc , r2, r10, r2
.Ltmp222:
	//DEBUG_VALUE: j < -  112
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 896
	$ld , d6, r0, 904
	$ld , d8, r0, 912
	$ld , d10, r0, 920
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp223:
	$addc , r2, r4, r2
.Ltmp224:
	//DEBUG_VALUE: j < -  113
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp225:
	$addc , r2, r6, r2
.Ltmp226:
	//DEBUG_VALUE: j < -  114
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp227:
	$addc , r2, r8, r2
.Ltmp228:
	//DEBUG_VALUE: j < -  115
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp229:
	$addc , r2, r10, r2
.Ltmp230:
	//DEBUG_VALUE: j < -  116
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 928
	$ld , d6, r0, 936
	$ld , d8, r0, 944
	$ld , d10, r0, 952
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp231:
	$addc , r2, r4, r2
.Ltmp232:
	//DEBUG_VALUE: j < -  117
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp233:
	$addc , r2, r6, r2
.Ltmp234:
	//DEBUG_VALUE: j < -  118
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp235:
	$addc , r2, r8, r2
.Ltmp236:
	//DEBUG_VALUE: j < -  119
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp237:
	$addc , r2, r10, r2
.Ltmp238:
	//DEBUG_VALUE: j < -  120
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 960
	$ld , d6, r0, 968
	$ld , d8, r0, 976
	$ld , d10, r0, 984
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp239:
	$addc , r2, r4, r2
.Ltmp240:
	//DEBUG_VALUE: j < -  121
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp241:
	$addc , r2, r6, r2
.Ltmp242:
	//DEBUG_VALUE: j < -  122
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp243:
	$addc , r2, r8, r2
.Ltmp244:
	//DEBUG_VALUE: j < -  123
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r11, r3
.Ltmp245:
	$addc , r2, r10, r2
.Ltmp246:
	//DEBUG_VALUE: j < -  124
	//DEBUG_VALUE: reduction:output < -  $d2
	$loc,	1 28 19                         // dpu/task.c:28:19
	$ld , d4, r0, 992
	$ld , d6, r0, 1000
	$ld , d8, r0, 1008
	$ld , d0, r0, 1016
.Ltmp247:
	$loc,	1 28 16                         // dpu/task.c:28:16
	$add , r3, r5, r3
.Ltmp248:
	$addc , r2, r4, r2
.Ltmp249:
	//DEBUG_VALUE: j < -  125
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r7, r3
.Ltmp250:
	$addc , r2, r6, r2
.Ltmp251:
	//DEBUG_VALUE: j < -  126
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r3, r9, r3
.Ltmp252:
	$addc , r2, r8, r2
.Ltmp253:
	//DEBUG_VALUE: j < -  127
	//DEBUG_VALUE: reduction:output < -  $d2
	$add , r1, r1, r3
	$addc , r0, r0, r2
.Ltmp254:
	//DEBUG_VALUE: j < -  128
	//DEBUG_VALUE: reduction:output < -  $d0
	$loc,	1 30 5 is_stmt 1                // dpu/task.c:30:5
	$jump , r23
.Ltmp255:
.Lfunc_end0:
	$size,	reduction, .Lfunc_end0 - reduction
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, reduction
	$long,	.Lfunc_begin0
	$byte,	0
	$section,	%text, reduction,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, scan,"ax",@progbits
	$globl,	scan                            //  -  -  Begin function scan
	$type,	scan,@function
scan:                                   // @scan
.Lfunc_begin1:
	$loc,	1 33 0                          // dpu/task.c:33:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: scan:output < -  $r0
	//DEBUG_VALUE: scan:input < -  $r1
	//DEBUG_VALUE: scan:input < -  $r1
	$cfi_def_cfa_offset, 0
	$loc,	1 34 17 prologue_end            // dpu/task.c:34:17
	$ld , d2, r1, 0
	//DEBUG_VALUE: scan:output < -  $r0
	$loc,	1 34 15 is_stmt 0               // dpu/task.c:34:15
	$sd , r0, 0, d2
.Ltmp256:
	//DEBUG_VALUE: j < -  1
	$loc,	1 37 37 is_stmt 1               // dpu/task.c:37:37
	$ld , d4, r1, 8
	$loc,	1 37 35 is_stmt 0               // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 8, d2
.Ltmp257:
	//DEBUG_VALUE: j < -  2
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 16
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 16, d2
.Ltmp258:
	//DEBUG_VALUE: j < -  3
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 24
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 24, d2
.Ltmp259:
	//DEBUG_VALUE: j < -  4
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 32
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 32, d2
.Ltmp260:
	//DEBUG_VALUE: j < -  5
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 40
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 40, d2
.Ltmp261:
	//DEBUG_VALUE: j < -  6
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 48
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 48, d2
.Ltmp262:
	//DEBUG_VALUE: j < -  7
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 56
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 56, d2
.Ltmp263:
	//DEBUG_VALUE: j < -  8
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 64
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 64, d2
.Ltmp264:
	//DEBUG_VALUE: j < -  9
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 72
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 72, d2
.Ltmp265:
	//DEBUG_VALUE: j < -  10
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 80
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 80, d2
.Ltmp266:
	//DEBUG_VALUE: j < -  11
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 88
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 88, d2
.Ltmp267:
	//DEBUG_VALUE: j < -  12
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 96
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 96, d2
.Ltmp268:
	//DEBUG_VALUE: j < -  13
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 104
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 104, d2
.Ltmp269:
	//DEBUG_VALUE: j < -  14
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 112
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 112, d2
.Ltmp270:
	//DEBUG_VALUE: j < -  15
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 120
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 120, d2
.Ltmp271:
	//DEBUG_VALUE: j < -  16
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 128
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 128, d2
.Ltmp272:
	//DEBUG_VALUE: j < -  17
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 136
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 136, d2
.Ltmp273:
	//DEBUG_VALUE: j < -  18
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 144
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 144, d2
.Ltmp274:
	//DEBUG_VALUE: j < -  19
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 152
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 152, d2
.Ltmp275:
	//DEBUG_VALUE: j < -  20
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 160
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 160, d2
.Ltmp276:
	//DEBUG_VALUE: j < -  21
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 168
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 168, d2
.Ltmp277:
	//DEBUG_VALUE: j < -  22
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 176
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 176, d2
.Ltmp278:
	//DEBUG_VALUE: j < -  23
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 184
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 184, d2
.Ltmp279:
	//DEBUG_VALUE: j < -  24
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 192
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 192, d2
.Ltmp280:
	//DEBUG_VALUE: j < -  25
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 200
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 200, d2
.Ltmp281:
	//DEBUG_VALUE: j < -  26
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 208
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 208, d2
.Ltmp282:
	//DEBUG_VALUE: j < -  27
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 216
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 216, d2
.Ltmp283:
	//DEBUG_VALUE: j < -  28
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 224
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 224, d2
.Ltmp284:
	//DEBUG_VALUE: j < -  29
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 232
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 232, d2
.Ltmp285:
	//DEBUG_VALUE: j < -  30
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 240
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 240, d2
.Ltmp286:
	//DEBUG_VALUE: j < -  31
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 248
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 248, d2
.Ltmp287:
	//DEBUG_VALUE: j < -  32
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 256
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 256, d2
.Ltmp288:
	//DEBUG_VALUE: j < -  33
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 264
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 264, d2
.Ltmp289:
	//DEBUG_VALUE: j < -  34
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 272
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 272, d2
.Ltmp290:
	//DEBUG_VALUE: j < -  35
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 280
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 280, d2
.Ltmp291:
	//DEBUG_VALUE: j < -  36
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 288
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 288, d2
.Ltmp292:
	//DEBUG_VALUE: j < -  37
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 296
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 296, d2
.Ltmp293:
	//DEBUG_VALUE: j < -  38
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 304
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 304, d2
.Ltmp294:
	//DEBUG_VALUE: j < -  39
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 312
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 312, d2
.Ltmp295:
	//DEBUG_VALUE: j < -  40
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 320
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 320, d2
.Ltmp296:
	//DEBUG_VALUE: j < -  41
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 328
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 328, d2
.Ltmp297:
	//DEBUG_VALUE: j < -  42
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 336
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 336, d2
.Ltmp298:
	//DEBUG_VALUE: j < -  43
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 344
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 344, d2
.Ltmp299:
	//DEBUG_VALUE: j < -  44
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 352
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 352, d2
.Ltmp300:
	//DEBUG_VALUE: j < -  45
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 360
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 360, d2
.Ltmp301:
	//DEBUG_VALUE: j < -  46
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 368
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 368, d2
.Ltmp302:
	//DEBUG_VALUE: j < -  47
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 376
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 376, d2
.Ltmp303:
	//DEBUG_VALUE: j < -  48
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 384
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 384, d2
.Ltmp304:
	//DEBUG_VALUE: j < -  49
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 392
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 392, d2
.Ltmp305:
	//DEBUG_VALUE: j < -  50
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 400
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 400, d2
.Ltmp306:
	//DEBUG_VALUE: j < -  51
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 408
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 408, d2
.Ltmp307:
	//DEBUG_VALUE: j < -  52
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 416
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 416, d2
.Ltmp308:
	//DEBUG_VALUE: j < -  53
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 424
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 424, d2
.Ltmp309:
	//DEBUG_VALUE: j < -  54
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 432
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 432, d2
.Ltmp310:
	//DEBUG_VALUE: j < -  55
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 440
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 440, d2
.Ltmp311:
	//DEBUG_VALUE: j < -  56
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 448
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 448, d2
.Ltmp312:
	//DEBUG_VALUE: j < -  57
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 456
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 456, d2
.Ltmp313:
	//DEBUG_VALUE: j < -  58
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 464
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 464, d2
.Ltmp314:
	//DEBUG_VALUE: j < -  59
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 472
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 472, d2
.Ltmp315:
	//DEBUG_VALUE: j < -  60
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 480
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 480, d2
.Ltmp316:
	//DEBUG_VALUE: j < -  61
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 488
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 488, d2
.Ltmp317:
	//DEBUG_VALUE: j < -  62
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 496
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 496, d2
.Ltmp318:
	//DEBUG_VALUE: j < -  63
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 504
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 504, d2
.Ltmp319:
	//DEBUG_VALUE: j < -  64
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 512
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 512, d2
.Ltmp320:
	//DEBUG_VALUE: j < -  65
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 520
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 520, d2
.Ltmp321:
	//DEBUG_VALUE: j < -  66
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 528
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 528, d2
.Ltmp322:
	//DEBUG_VALUE: j < -  67
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 536
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 536, d2
.Ltmp323:
	//DEBUG_VALUE: j < -  68
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 544
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 544, d2
.Ltmp324:
	//DEBUG_VALUE: j < -  69
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 552
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 552, d2
.Ltmp325:
	//DEBUG_VALUE: j < -  70
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 560
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 560, d2
.Ltmp326:
	//DEBUG_VALUE: j < -  71
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 568
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 568, d2
.Ltmp327:
	//DEBUG_VALUE: j < -  72
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 576
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 576, d2
.Ltmp328:
	//DEBUG_VALUE: j < -  73
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 584
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 584, d2
.Ltmp329:
	//DEBUG_VALUE: j < -  74
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 592
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 592, d2
.Ltmp330:
	//DEBUG_VALUE: j < -  75
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 600
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 600, d2
.Ltmp331:
	//DEBUG_VALUE: j < -  76
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 608
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 608, d2
.Ltmp332:
	//DEBUG_VALUE: j < -  77
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 616
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 616, d2
.Ltmp333:
	//DEBUG_VALUE: j < -  78
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 624
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 624, d2
.Ltmp334:
	//DEBUG_VALUE: j < -  79
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 632
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 632, d2
.Ltmp335:
	//DEBUG_VALUE: j < -  80
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 640
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 640, d2
.Ltmp336:
	//DEBUG_VALUE: j < -  81
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 648
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 648, d2
.Ltmp337:
	//DEBUG_VALUE: j < -  82
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 656
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 656, d2
.Ltmp338:
	//DEBUG_VALUE: j < -  83
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 664
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 664, d2
.Ltmp339:
	//DEBUG_VALUE: j < -  84
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 672
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 672, d2
.Ltmp340:
	//DEBUG_VALUE: j < -  85
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 680
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 680, d2
.Ltmp341:
	//DEBUG_VALUE: j < -  86
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 688
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 688, d2
.Ltmp342:
	//DEBUG_VALUE: j < -  87
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 696
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 696, d2
.Ltmp343:
	//DEBUG_VALUE: j < -  88
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 704
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 704, d2
.Ltmp344:
	//DEBUG_VALUE: j < -  89
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 712
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 712, d2
.Ltmp345:
	//DEBUG_VALUE: j < -  90
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 720
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 720, d2
.Ltmp346:
	//DEBUG_VALUE: j < -  91
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 728
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 728, d2
.Ltmp347:
	//DEBUG_VALUE: j < -  92
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 736
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 736, d2
.Ltmp348:
	//DEBUG_VALUE: j < -  93
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 744
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 744, d2
.Ltmp349:
	//DEBUG_VALUE: j < -  94
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 752
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 752, d2
.Ltmp350:
	//DEBUG_VALUE: j < -  95
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 760
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 760, d2
.Ltmp351:
	//DEBUG_VALUE: j < -  96
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 768
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 768, d2
.Ltmp352:
	//DEBUG_VALUE: j < -  97
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 776
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 776, d2
.Ltmp353:
	//DEBUG_VALUE: j < -  98
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 784
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 784, d2
.Ltmp354:
	//DEBUG_VALUE: j < -  99
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 792
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 792, d2
.Ltmp355:
	//DEBUG_VALUE: j < -  100
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 800
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 800, d2
.Ltmp356:
	//DEBUG_VALUE: j < -  101
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 808
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 808, d2
.Ltmp357:
	//DEBUG_VALUE: j < -  102
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 816
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 816, d2
.Ltmp358:
	//DEBUG_VALUE: j < -  103
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 824
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 824, d2
.Ltmp359:
	//DEBUG_VALUE: j < -  104
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 832
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 832, d2
.Ltmp360:
	//DEBUG_VALUE: j < -  105
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 840
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 840, d2
.Ltmp361:
	//DEBUG_VALUE: j < -  106
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 848
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 848, d2
.Ltmp362:
	//DEBUG_VALUE: j < -  107
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 856
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 856, d2
.Ltmp363:
	//DEBUG_VALUE: j < -  108
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 864
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 864, d2
.Ltmp364:
	//DEBUG_VALUE: j < -  109
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 872
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 872, d2
.Ltmp365:
	//DEBUG_VALUE: j < -  110
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 880
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 880, d2
.Ltmp366:
	//DEBUG_VALUE: j < -  111
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 888
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 888, d2
.Ltmp367:
	//DEBUG_VALUE: j < -  112
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 896
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 896, d2
.Ltmp368:
	//DEBUG_VALUE: j < -  113
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 904
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 904, d2
.Ltmp369:
	//DEBUG_VALUE: j < -  114
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 912
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 912, d2
.Ltmp370:
	//DEBUG_VALUE: j < -  115
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 920
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 920, d2
.Ltmp371:
	//DEBUG_VALUE: j < -  116
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 928
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 928, d2
.Ltmp372:
	//DEBUG_VALUE: j < -  117
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 936
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 936, d2
.Ltmp373:
	//DEBUG_VALUE: j < -  118
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 944
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 944, d2
.Ltmp374:
	//DEBUG_VALUE: j < -  119
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 952
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 952, d2
.Ltmp375:
	//DEBUG_VALUE: j < -  120
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 960
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 960, d2
.Ltmp376:
	//DEBUG_VALUE: j < -  121
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 968
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 968, d2
.Ltmp377:
	//DEBUG_VALUE: j < -  122
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 976
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 976, d2
.Ltmp378:
	//DEBUG_VALUE: j < -  123
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 984
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 984, d2
.Ltmp379:
	//DEBUG_VALUE: j < -  124
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 992
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 992, d2
.Ltmp380:
	//DEBUG_VALUE: j < -  125
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 1000
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 1000, d2
.Ltmp381:
	//DEBUG_VALUE: j < -  126
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 1008
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 1008, d2
.Ltmp382:
	//DEBUG_VALUE: j < -  127
	$loc,	1 37 37                         // dpu/task.c:37:37
	$ld , d4, r1, 1016
	$loc,	1 37 35                         // dpu/task.c:37:35
	$add , r3, r5, r3
	$addc , r2, r4, r2
	$loc,	1 37 19                         // dpu/task.c:37:19
	$sd , r0, 1016, d2
.Ltmp383:
	//DEBUG_VALUE: j < -  128
	$loc,	1 39 5 is_stmt 1                // dpu/task.c:39:5
	$movd , d0, d2
.Ltmp384:
	$jump , r23
.Ltmp385:
.Lfunc_end1:
	$size,	scan, .Lfunc_end1 - scan
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, scan
	$long,	.Lfunc_begin1
	$byte,	0
	$section,	%text, scan,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, handshake_sync,"ax",@progbits
	$globl,	handshake_sync                  //  -  -  Begin function handshake_sync
	$type,	handshake_sync,@function
handshake_sync:                         // @handshake_sync
.Lfunc_begin2:
	$loc,	1 42 0                          // dpu/task.c:42:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: handshake_sync:l_count < -  $d0
	//DEBUG_VALUE: handshake_sync:tasklet_id < -  $r2
	$cfi_def_cfa_offset,  - 32
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 24, d22
	$add , r22, r22, 32
	$cfi_offset, 15,  - 16
	$cfi_offset, 14,  - 12
	$sd , r22,  - 16, d14
	$cfi_offset, 17,  - 24
	$cfi_offset, 16,  - 20
	$sd , r22,  - 24, d16
	$cfi_offset, 19,  - 32
	$cfi_offset, 18,  - 28
	$sd , r22,  - 32, d18
	$move , r14, r2
	$movd , d16, d0
.Ltmp386:
	//DEBUG_VALUE: handshake_sync:tasklet_id < -  $r14
	//DEBUG_VALUE: handshake_sync:l_count < -  $d16
	$loc,	1 45 8 prologue_end             // dpu/task.c:45:8
	$jeq , r14, 0, .LBB2_1
.Ltmp387:
// %bb.2:
	//DEBUG_VALUE: handshake_sync:tasklet_id < -  $r14
	//DEBUG_VALUE: handshake_sync:l_count < -  $d16
	$loc,	1 46 39                         // dpu/task.c:46:39
	$add , r0, r14,  - 1
	$loc,	1 46 9 is_stmt 0                // dpu/task.c:46:9
	$call , r23, handshake_wait_for
.Ltmp388:
	$loc,	1 47 19 is_stmt 1               // dpu/task.c:47:19
	$lsl , r0, r14, 3
	$ld , d18, r0, message
.Ltmp389:
	//DEBUG_VALUE: handshake_sync:p_count < -  $d18
	$loc,	1 52 8                          // dpu/task.c:52:8
	$jleu , r14, 14, .LBB2_3
	$jump , .LBB2_4
.Ltmp390:
.LBB2_1:
	//DEBUG_VALUE: handshake_sync:tasklet_id < -  $r14
	//DEBUG_VALUE: handshake_sync:l_count < -  $d16
	$loc,	1 0 8 is_stmt 0                 // dpu/task.c:0:8
	$move .s, d18, 0
.Ltmp391:
.LBB2_3:
	//DEBUG_VALUE: handshake_sync:tasklet_id < -  $r14
	//DEBUG_VALUE: handshake_sync:l_count < -  $d16
	$loc,	1 53 43 is_stmt 1               // dpu/task.c:53:43
	$add , r1, r19, r17
	$addc , r0, r18, r16
	$loc,	1 53 9 is_stmt 0                // dpu/task.c:53:9
	$move , r2, message
	$lsl_add , r2, r2, r14, 3
	$loc,	1 53 33                         // dpu/task.c:53:33
	$sd , r2, 8, d0
	$loc,	1 54 9 is_stmt 1                // dpu/task.c:54:9
	$call , r23, handshake_notify
.Ltmp392:
.LBB2_4:
	//DEBUG_VALUE: handshake_sync:tasklet_id < -  $r14
	//DEBUG_VALUE: handshake_sync:l_count < -  $d16
	$loc,	1 56 5                          // dpu/task.c:56:5
	$movd , d0, d18
	$ld , d18, r22,  - 32
	$ld , d16, r22,  - 24
.Ltmp393:
	$ld , d14, r22,  - 16
.Ltmp394:
	$ld , d22, r22,  - 8
	$jump , r23
.Ltmp395:
.Lfunc_end2:
	$size,	handshake_sync, .Lfunc_end2 - handshake_sync
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, handshake_sync
	$long,	.Lfunc_begin2
	$byte,	32
	$section,	%text, handshake_sync,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, add_,"ax",@progbits
	$globl,	add_                            //  -  -  Begin function add_
	$type,	add_,@function
add_:                                   // @add_
.Lfunc_begin3:
	$loc,	1 63 0                          // dpu/task.c:63:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: add_:output < -  $r0
	//DEBUG_VALUE: add_:output < -  $r0
	//DEBUG_VALUE: add_:p_count < -  $d2
	$cfi_def_cfa_offset, 0
	//DEBUG_VALUE: j < -  0
	$loc,	1 66 19 prologue_end            // dpu/task.c:66:19
	$ld , d4, r0, 0
	//DEBUG_VALUE: add_:p_count < -  $d2
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 0, d4
.Ltmp396:
	//DEBUG_VALUE: j < -  1
	$ld , d4, r0, 8
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 8, d4
.Ltmp397:
	//DEBUG_VALUE: j < -  2
	$ld , d4, r0, 16
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 16, d4
.Ltmp398:
	//DEBUG_VALUE: j < -  3
	$ld , d4, r0, 24
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 24, d4
.Ltmp399:
	//DEBUG_VALUE: j < -  4
	$ld , d4, r0, 32
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 32, d4
.Ltmp400:
	//DEBUG_VALUE: j < -  5
	$ld , d4, r0, 40
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 40, d4
.Ltmp401:
	//DEBUG_VALUE: j < -  6
	$ld , d4, r0, 48
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 48, d4
.Ltmp402:
	//DEBUG_VALUE: j < -  7
	$ld , d4, r0, 56
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 56, d4
.Ltmp403:
	//DEBUG_VALUE: j < -  8
	$ld , d4, r0, 64
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 64, d4
.Ltmp404:
	//DEBUG_VALUE: j < -  9
	$ld , d4, r0, 72
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 72, d4
.Ltmp405:
	//DEBUG_VALUE: j < -  10
	$ld , d4, r0, 80
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 80, d4
.Ltmp406:
	//DEBUG_VALUE: j < -  11
	$ld , d4, r0, 88
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 88, d4
.Ltmp407:
	//DEBUG_VALUE: j < -  12
	$ld , d4, r0, 96
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 96, d4
.Ltmp408:
	//DEBUG_VALUE: j < -  13
	$ld , d4, r0, 104
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 104, d4
.Ltmp409:
	//DEBUG_VALUE: j < -  14
	$ld , d4, r0, 112
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 112, d4
.Ltmp410:
	//DEBUG_VALUE: j < -  15
	$ld , d4, r0, 120
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 120, d4
.Ltmp411:
	//DEBUG_VALUE: j < -  16
	$ld , d4, r0, 128
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 128, d4
.Ltmp412:
	//DEBUG_VALUE: j < -  17
	$ld , d4, r0, 136
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 136, d4
.Ltmp413:
	//DEBUG_VALUE: j < -  18
	$ld , d4, r0, 144
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 144, d4
.Ltmp414:
	//DEBUG_VALUE: j < -  19
	$ld , d4, r0, 152
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 152, d4
.Ltmp415:
	//DEBUG_VALUE: j < -  20
	$ld , d4, r0, 160
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 160, d4
.Ltmp416:
	//DEBUG_VALUE: j < -  21
	$ld , d4, r0, 168
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 168, d4
.Ltmp417:
	//DEBUG_VALUE: j < -  22
	$ld , d4, r0, 176
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 176, d4
.Ltmp418:
	//DEBUG_VALUE: j < -  23
	$ld , d4, r0, 184
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 184, d4
.Ltmp419:
	//DEBUG_VALUE: j < -  24
	$ld , d4, r0, 192
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 192, d4
.Ltmp420:
	//DEBUG_VALUE: j < -  25
	$ld , d4, r0, 200
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 200, d4
.Ltmp421:
	//DEBUG_VALUE: j < -  26
	$ld , d4, r0, 208
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 208, d4
.Ltmp422:
	//DEBUG_VALUE: j < -  27
	$ld , d4, r0, 216
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 216, d4
.Ltmp423:
	//DEBUG_VALUE: j < -  28
	$ld , d4, r0, 224
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 224, d4
.Ltmp424:
	//DEBUG_VALUE: j < -  29
	$ld , d4, r0, 232
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 232, d4
.Ltmp425:
	//DEBUG_VALUE: j < -  30
	$ld , d4, r0, 240
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 240, d4
.Ltmp426:
	//DEBUG_VALUE: j < -  31
	$ld , d4, r0, 248
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 248, d4
.Ltmp427:
	//DEBUG_VALUE: j < -  32
	$ld , d4, r0, 256
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 256, d4
.Ltmp428:
	//DEBUG_VALUE: j < -  33
	$ld , d4, r0, 264
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 264, d4
.Ltmp429:
	//DEBUG_VALUE: j < -  34
	$ld , d4, r0, 272
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 272, d4
.Ltmp430:
	//DEBUG_VALUE: j < -  35
	$ld , d4, r0, 280
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 280, d4
.Ltmp431:
	//DEBUG_VALUE: j < -  36
	$ld , d4, r0, 288
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 288, d4
.Ltmp432:
	//DEBUG_VALUE: j < -  37
	$ld , d4, r0, 296
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 296, d4
.Ltmp433:
	//DEBUG_VALUE: j < -  38
	$ld , d4, r0, 304
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 304, d4
.Ltmp434:
	//DEBUG_VALUE: j < -  39
	$ld , d4, r0, 312
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 312, d4
.Ltmp435:
	//DEBUG_VALUE: j < -  40
	$ld , d4, r0, 320
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 320, d4
.Ltmp436:
	//DEBUG_VALUE: j < -  41
	$ld , d4, r0, 328
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 328, d4
.Ltmp437:
	//DEBUG_VALUE: j < -  42
	$ld , d4, r0, 336
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 336, d4
.Ltmp438:
	//DEBUG_VALUE: j < -  43
	$ld , d4, r0, 344
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 344, d4
.Ltmp439:
	//DEBUG_VALUE: j < -  44
	$ld , d4, r0, 352
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 352, d4
.Ltmp440:
	//DEBUG_VALUE: j < -  45
	$ld , d4, r0, 360
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 360, d4
.Ltmp441:
	//DEBUG_VALUE: j < -  46
	$ld , d4, r0, 368
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 368, d4
.Ltmp442:
	//DEBUG_VALUE: j < -  47
	$ld , d4, r0, 376
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 376, d4
.Ltmp443:
	//DEBUG_VALUE: j < -  48
	$ld , d4, r0, 384
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 384, d4
.Ltmp444:
	//DEBUG_VALUE: j < -  49
	$ld , d4, r0, 392
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 392, d4
.Ltmp445:
	//DEBUG_VALUE: j < -  50
	$ld , d4, r0, 400
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 400, d4
.Ltmp446:
	//DEBUG_VALUE: j < -  51
	$ld , d4, r0, 408
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 408, d4
.Ltmp447:
	//DEBUG_VALUE: j < -  52
	$ld , d4, r0, 416
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 416, d4
.Ltmp448:
	//DEBUG_VALUE: j < -  53
	$ld , d4, r0, 424
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 424, d4
.Ltmp449:
	//DEBUG_VALUE: j < -  54
	$ld , d4, r0, 432
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 432, d4
.Ltmp450:
	//DEBUG_VALUE: j < -  55
	$ld , d4, r0, 440
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 440, d4
.Ltmp451:
	//DEBUG_VALUE: j < -  56
	$ld , d4, r0, 448
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 448, d4
.Ltmp452:
	//DEBUG_VALUE: j < -  57
	$ld , d4, r0, 456
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 456, d4
.Ltmp453:
	//DEBUG_VALUE: j < -  58
	$ld , d4, r0, 464
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 464, d4
.Ltmp454:
	//DEBUG_VALUE: j < -  59
	$ld , d4, r0, 472
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 472, d4
.Ltmp455:
	//DEBUG_VALUE: j < -  60
	$ld , d4, r0, 480
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 480, d4
.Ltmp456:
	//DEBUG_VALUE: j < -  61
	$ld , d4, r0, 488
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 488, d4
.Ltmp457:
	//DEBUG_VALUE: j < -  62
	$ld , d4, r0, 496
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 496, d4
.Ltmp458:
	//DEBUG_VALUE: j < -  63
	$ld , d4, r0, 504
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 504, d4
.Ltmp459:
	//DEBUG_VALUE: j < -  64
	$ld , d4, r0, 512
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 512, d4
.Ltmp460:
	//DEBUG_VALUE: j < -  65
	$ld , d4, r0, 520
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 520, d4
.Ltmp461:
	//DEBUG_VALUE: j < -  66
	$ld , d4, r0, 528
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 528, d4
.Ltmp462:
	//DEBUG_VALUE: j < -  67
	$ld , d4, r0, 536
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 536, d4
.Ltmp463:
	//DEBUG_VALUE: j < -  68
	$ld , d4, r0, 544
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 544, d4
.Ltmp464:
	//DEBUG_VALUE: j < -  69
	$ld , d4, r0, 552
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 552, d4
.Ltmp465:
	//DEBUG_VALUE: j < -  70
	$ld , d4, r0, 560
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 560, d4
.Ltmp466:
	//DEBUG_VALUE: j < -  71
	$ld , d4, r0, 568
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 568, d4
.Ltmp467:
	//DEBUG_VALUE: j < -  72
	$ld , d4, r0, 576
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 576, d4
.Ltmp468:
	//DEBUG_VALUE: j < -  73
	$ld , d4, r0, 584
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 584, d4
.Ltmp469:
	//DEBUG_VALUE: j < -  74
	$ld , d4, r0, 592
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 592, d4
.Ltmp470:
	//DEBUG_VALUE: j < -  75
	$ld , d4, r0, 600
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 600, d4
.Ltmp471:
	//DEBUG_VALUE: j < -  76
	$ld , d4, r0, 608
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 608, d4
.Ltmp472:
	//DEBUG_VALUE: j < -  77
	$ld , d4, r0, 616
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 616, d4
.Ltmp473:
	//DEBUG_VALUE: j < -  78
	$ld , d4, r0, 624
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 624, d4
.Ltmp474:
	//DEBUG_VALUE: j < -  79
	$ld , d4, r0, 632
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 632, d4
.Ltmp475:
	//DEBUG_VALUE: j < -  80
	$ld , d4, r0, 640
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 640, d4
.Ltmp476:
	//DEBUG_VALUE: j < -  81
	$ld , d4, r0, 648
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 648, d4
.Ltmp477:
	//DEBUG_VALUE: j < -  82
	$ld , d4, r0, 656
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 656, d4
.Ltmp478:
	//DEBUG_VALUE: j < -  83
	$ld , d4, r0, 664
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 664, d4
.Ltmp479:
	//DEBUG_VALUE: j < -  84
	$ld , d4, r0, 672
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 672, d4
.Ltmp480:
	//DEBUG_VALUE: j < -  85
	$ld , d4, r0, 680
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 680, d4
.Ltmp481:
	//DEBUG_VALUE: j < -  86
	$ld , d4, r0, 688
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 688, d4
.Ltmp482:
	//DEBUG_VALUE: j < -  87
	$ld , d4, r0, 696
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 696, d4
.Ltmp483:
	//DEBUG_VALUE: j < -  88
	$ld , d4, r0, 704
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 704, d4
.Ltmp484:
	//DEBUG_VALUE: j < -  89
	$ld , d4, r0, 712
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 712, d4
.Ltmp485:
	//DEBUG_VALUE: j < -  90
	$ld , d4, r0, 720
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 720, d4
.Ltmp486:
	//DEBUG_VALUE: j < -  91
	$ld , d4, r0, 728
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 728, d4
.Ltmp487:
	//DEBUG_VALUE: j < -  92
	$ld , d4, r0, 736
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 736, d4
.Ltmp488:
	//DEBUG_VALUE: j < -  93
	$ld , d4, r0, 744
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 744, d4
.Ltmp489:
	//DEBUG_VALUE: j < -  94
	$ld , d4, r0, 752
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 752, d4
.Ltmp490:
	//DEBUG_VALUE: j < -  95
	$ld , d4, r0, 760
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 760, d4
.Ltmp491:
	//DEBUG_VALUE: j < -  96
	$ld , d4, r0, 768
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 768, d4
.Ltmp492:
	//DEBUG_VALUE: j < -  97
	$ld , d4, r0, 776
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 776, d4
.Ltmp493:
	//DEBUG_VALUE: j < -  98
	$ld , d4, r0, 784
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 784, d4
.Ltmp494:
	//DEBUG_VALUE: j < -  99
	$ld , d4, r0, 792
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 792, d4
.Ltmp495:
	//DEBUG_VALUE: j < -  100
	$ld , d4, r0, 800
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 800, d4
.Ltmp496:
	//DEBUG_VALUE: j < -  101
	$ld , d4, r0, 808
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 808, d4
.Ltmp497:
	//DEBUG_VALUE: j < -  102
	$ld , d4, r0, 816
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 816, d4
.Ltmp498:
	//DEBUG_VALUE: j < -  103
	$ld , d4, r0, 824
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 824, d4
.Ltmp499:
	//DEBUG_VALUE: j < -  104
	$ld , d4, r0, 832
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 832, d4
.Ltmp500:
	//DEBUG_VALUE: j < -  105
	$ld , d4, r0, 840
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 840, d4
.Ltmp501:
	//DEBUG_VALUE: j < -  106
	$ld , d4, r0, 848
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 848, d4
.Ltmp502:
	//DEBUG_VALUE: j < -  107
	$ld , d4, r0, 856
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 856, d4
.Ltmp503:
	//DEBUG_VALUE: j < -  108
	$ld , d4, r0, 864
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 864, d4
.Ltmp504:
	//DEBUG_VALUE: j < -  109
	$ld , d4, r0, 872
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 872, d4
.Ltmp505:
	//DEBUG_VALUE: j < -  110
	$ld , d4, r0, 880
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 880, d4
.Ltmp506:
	//DEBUG_VALUE: j < -  111
	$ld , d4, r0, 888
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 888, d4
.Ltmp507:
	//DEBUG_VALUE: j < -  112
	$ld , d4, r0, 896
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 896, d4
.Ltmp508:
	//DEBUG_VALUE: j < -  113
	$ld , d4, r0, 904
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 904, d4
.Ltmp509:
	//DEBUG_VALUE: j < -  114
	$ld , d4, r0, 912
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 912, d4
.Ltmp510:
	//DEBUG_VALUE: j < -  115
	$ld , d4, r0, 920
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 920, d4
.Ltmp511:
	//DEBUG_VALUE: j < -  116
	$ld , d4, r0, 928
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 928, d4
.Ltmp512:
	//DEBUG_VALUE: j < -  117
	$ld , d4, r0, 936
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 936, d4
.Ltmp513:
	//DEBUG_VALUE: j < -  118
	$ld , d4, r0, 944
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 944, d4
.Ltmp514:
	//DEBUG_VALUE: j < -  119
	$ld , d4, r0, 952
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 952, d4
.Ltmp515:
	//DEBUG_VALUE: j < -  120
	$ld , d4, r0, 960
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 960, d4
.Ltmp516:
	//DEBUG_VALUE: j < -  121
	$ld , d4, r0, 968
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 968, d4
.Ltmp517:
	//DEBUG_VALUE: j < -  122
	$ld , d4, r0, 976
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 976, d4
.Ltmp518:
	//DEBUG_VALUE: j < -  123
	$ld , d4, r0, 984
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 984, d4
.Ltmp519:
	//DEBUG_VALUE: j < -  124
	$ld , d4, r0, 992
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 992, d4
.Ltmp520:
	//DEBUG_VALUE: j < -  125
	$ld , d4, r0, 1000
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 1000, d4
.Ltmp521:
	//DEBUG_VALUE: j < -  126
	$ld , d4, r0, 1008
	$add , r5, r5, r3
	$addc , r4, r4, r2
	$sd , r0, 1008, d4
.Ltmp522:
	//DEBUG_VALUE: j < -  127
	$ld , d4, r0, 1016
	$add , r3, r5, r3
.Ltmp523:
	$addc , r2, r4, r2
	$sd , r0, 1016, d2
.Ltmp524:
	//DEBUG_VALUE: j < -  128
	$loc,	1 68 1                          // dpu/task.c:68:1
	$jump , r23
.Ltmp525:
.Lfunc_end3:
	$size,	add_, .Lfunc_end3 - add_
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, add_
	$long,	.Lfunc_begin3
	$byte,	0
	$section,	%text, add_,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, main_kernel1,"ax",@progbits
	$globl,	main_kernel1                    //  -  -  Begin function main_kernel1
	$type,	main_kernel1,@function
main_kernel1:                           // @main_kernel1
.Lfunc_begin4:
	$loc,	1 81 0                          // dpu/task.c:81:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset,  - 32
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 24, d22
	$add , r22, r22, 32
	$cfi_offset, 15,  - 16
	$cfi_offset, 14,  - 12
.Ltmp526:
	$sd , r22,  - 16, d14
	$cfi_offset, 17,  - 24
	$cfi_offset, 16,  - 20
	$sd , r22,  - 24, d16
	$cfi_offset, 19,  - 32
	$cfi_offset, 18,  - 28
	$sd , r22,  - 32, d18
.Ltmp527:
	//DEBUG_VALUE: main_kernel1:tasklet_id < -  $r15
	$file,	4 "/root" "upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/defs.h"
	$loc,	4 35 12 prologue_end            // upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/defs.h:35:12
	$move , r15, id, nz, .LBB4_2
.Ltmp528:
// %bb.1:
	$loc,	1 87 9                          // dpu/task.c:87:9
	$call , r23, mem_reset
.Ltmp529:
.LBB4_2:
	$loc,	1 90 5                          // dpu/task.c:90:5
	$move , r0, my_barrier
	$call , r23, barrier_wait
.Ltmp530:
	//DEBUG_VALUE: main_kernel1:result < -  undef
	$loc,	1 94 57                         // dpu/task.c:94:57
	$lw , r16, zero, DPU_INPUT_ARGUMENTS
.Ltmp531:
	//DEBUG_VALUE: main_kernel1:input_size_dpu_bytes < -  $r16
	$loc,	1 97 40                         // dpu/task.c:97:40
	$lsl , r17, r15, 10
.Ltmp532:
	//DEBUG_VALUE: main_kernel1:base_tasklet < -  $r17
	$loc,	1 0 40 is_stmt 0                // dpu/task.c:0:40
	$move , r0, 1024
	$loc,	1 101 24 is_stmt 1              // dpu/task.c:101:24
	$call , r23, mem_alloc
.Ltmp533:
	$move , r14, r0
.Ltmp534:
	//DEBUG_VALUE: main_kernel1:cache_A < -  $r14
	$loc,	1 0 24 is_stmt 0                // dpu/task.c:0:24
	$move .s, d18, 0
.Ltmp535:
	//DEBUG_VALUE: main_kernel1:mram_base_addr_A < -  undef
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel1:l_count < -  0
	$loc,	1 106 5 is_stmt 1               // dpu/task.c:106:5
	$jgeu , r17, r16, .LBB4_5
.Ltmp536:
// %bb.3:
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel1:base_tasklet < -  $r17
	//DEBUG_VALUE: main_kernel1:input_size_dpu_bytes < -  $r16
	//DEBUG_VALUE: main_kernel1:cache_A < -  $r14
	//DEBUG_VALUE: main_kernel1:l_count < -  0
	$loc,	1 0 5 is_stmt 0                 // dpu/task.c:0:5
	$move .s, d18, 0
.Ltmp537:
.LBB4_4:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel1:input_size_dpu_bytes < -  $r16
	//DEBUG_VALUE: main_kernel1:cache_A < -  $r14
	//DEBUG_VALUE: main_kernel1:l_count < -  $d18
	//DEBUG_VALUE: byte_index < -  $r17
	$loc,	1 109 61 is_stmt 1              // dpu/task.c:109:61
	$move , r0, __sys_used_mram_end
	$add , r0, r17, r0
.Ltmp538:
	//DEBUG_VALUE: mram_read:nb_of_bytes < -  1024
	//DEBUG_VALUE: mram_read:to < -  $r14
	//DEBUG_VALUE: mram_read:from < -  $r0
	$file,	5 "/root" "upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/mram.h"
	$loc,	5 35 24                         // upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/mram.h:35:24
	$ldma , r14, r0, 127
.Ltmp539:
	$loc,	1 112 20                        // dpu/task.c:112:20
	$move , r0, r14
.Ltmp540:
	$call , r23, reduction
.Ltmp541:
	$loc,	1 106 95                        // dpu/task.c:106:95
	$add , r17, r17, 16384
.Ltmp542:
	//DEBUG_VALUE: byte_index < -  $r17
	$loc,	1 112 17                        // dpu/task.c:112:17
	$add , r19, r1, r19
.Ltmp543:
	$addc , r18, r0, r18
.Ltmp544:
	//DEBUG_VALUE: main_kernel1:l_count < -  $d18
	$loc,	1 106 5                         // dpu/task.c:106:5
	$jltu , r17, r16, .LBB4_4
.Ltmp545:
.LBB4_5:
	//DEBUG_VALUE: main_kernel1:input_size_dpu_bytes < -  $r16
	//DEBUG_VALUE: main_kernel1:cache_A < -  $r14
	$loc,	1 117 5                         // dpu/task.c:117:5
	$lsl , r0, r15, 3
	$loc,	1 117 25 is_stmt 0              // dpu/task.c:117:25
	$sd , r0, message, d18
	$loc,	1 121 5 is_stmt 1               // dpu/task.c:121:5
	$move , r0, my_barrier
	$call , r23, barrier_wait
.Ltmp546:
	$loc,	1 122 8                         // dpu/task.c:122:8
	$jneq , r15, 0, .LBB4_7
.Ltmp547:
// %bb.6:
	//DEBUG_VALUE: main_kernel1:input_size_dpu_bytes < -  $r16
	//DEBUG_VALUE: main_kernel1:cache_A < -  $r14
	$loc,	1 0 8 is_stmt 0                 // dpu/task.c:0:8
	$ld , d0, zero, message
	$move , r2, message
.Ltmp548:
	//DEBUG_VALUE: each_tasklet < -  1
	$loc,	1 124 27 is_stmt 1              // dpu/task.c:124:27
	$ld , d4, r2, 8
	$ld , d6, r2, 16
	$ld , d8, r2, 24
	$loc,	1 124 24 is_stmt 0              // dpu/task.c:124:24
	$add , r1, r1, r5
	$addc , r0, r0, r4
.Ltmp549:
	//DEBUG_VALUE: each_tasklet < -  2
	$add , r1, r1, r7
	$addc , r0, r0, r6
.Ltmp550:
	//DEBUG_VALUE: each_tasklet < -  3
	$add , r1, r1, r9
	$addc , r0, r0, r8
.Ltmp551:
	//DEBUG_VALUE: each_tasklet < -  4
	$loc,	1 124 27                        // dpu/task.c:124:27
	$ld , d4, r2, 32
	$ld , d6, r2, 40
	$ld , d8, r2, 48
	$ld , d10, r2, 56
	$loc,	1 124 24                        // dpu/task.c:124:24
	$add , r1, r1, r5
	$addc , r0, r0, r4
.Ltmp552:
	//DEBUG_VALUE: each_tasklet < -  5
	$add , r1, r1, r7
	$addc , r0, r0, r6
.Ltmp553:
	//DEBUG_VALUE: each_tasklet < -  6
	$add , r1, r1, r9
	$addc , r0, r0, r8
.Ltmp554:
	//DEBUG_VALUE: each_tasklet < -  7
	$add , r1, r1, r11
	$addc , r0, r0, r10
.Ltmp555:
	//DEBUG_VALUE: each_tasklet < -  8
	$loc,	1 124 27                        // dpu/task.c:124:27
	$ld , d4, r2, 64
	$ld , d6, r2, 72
	$ld , d8, r2, 80
	$ld , d10, r2, 88
	$loc,	1 124 24                        // dpu/task.c:124:24
	$add , r1, r1, r5
	$addc , r0, r0, r4
.Ltmp556:
	//DEBUG_VALUE: each_tasklet < -  9
	$add , r1, r1, r7
	$addc , r0, r0, r6
.Ltmp557:
	//DEBUG_VALUE: each_tasklet < -  10
	$add , r1, r1, r9
	$addc , r0, r0, r8
.Ltmp558:
	//DEBUG_VALUE: each_tasklet < -  11
	$add , r1, r1, r11
	$addc , r0, r0, r10
.Ltmp559:
	//DEBUG_VALUE: each_tasklet < -  12
	$loc,	1 124 27                        // dpu/task.c:124:27
	$ld , d4, r2, 96
	$ld , d6, r2, 104
	$ld , d8, r2, 112
	$ld , d2, r2, 120
	$loc,	1 124 24                        // dpu/task.c:124:24
	$add , r1, r1, r5
	$addc , r0, r0, r4
.Ltmp560:
	//DEBUG_VALUE: each_tasklet < -  13
	$add , r1, r1, r7
	$addc , r0, r0, r6
.Ltmp561:
	//DEBUG_VALUE: each_tasklet < -  14
	$add , r1, r1, r9
	$addc , r0, r0, r8
.Ltmp562:
	//DEBUG_VALUE: each_tasklet < -  15
	$add , r1, r1, r3
	$addc , r0, r0, r2
.Ltmp563:
	//DEBUG_VALUE: each_tasklet < -  16
	$sd , zero, message, d0
.Ltmp564:
	$loc,	1 127 25 is_stmt 1              // dpu/task.c:127:25
	$sd , zero, DPU_RESULTS, d0
.Ltmp565:
.LBB4_7:
	//DEBUG_VALUE: main_kernel1:input_size_dpu_bytes < -  $r16
	//DEBUG_VALUE: main_kernel1:cache_A < -  $r14
	$loc,	1 0 25 is_stmt 0                // dpu/task.c:0:25
	$move , r0, 0
	$loc,	1 130 5 is_stmt 1               // dpu/task.c:130:5
	$ld , d18, r22,  - 32
	$ld , d16, r22,  - 24
.Ltmp566:
	$ld , d14, r22,  - 16
.Ltmp567:
	$ld , d22, r22,  - 8
	$jump , r23
.Ltmp568:
.Lfunc_end4:
	$size,	main_kernel1, .Lfunc_end4 - main_kernel1
	$cfi_endproc,
	$file,	6 "/root" "upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/sysdef.h"
	$section,	%stack_sizes,"o",@progbits,%text, main_kernel1
	$long,	.Lfunc_begin4
	$byte,	32
	$section,	%text, main_kernel1,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, main_kernel2,"ax",@progbits
	$globl,	main_kernel2                    //  -  -  Begin function main_kernel2
	$type,	main_kernel2,@function
main_kernel2:                           // @main_kernel2
.Lfunc_begin5:
	$loc,	1 134 0                         // dpu/task.c:134:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset,  - 48
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 40, d22
	$add , r22, r22, 48
	$cfi_offset, 15,  - 24
	$cfi_offset, 14,  - 20
.Ltmp569:
	$sd , r22,  - 24, d14
	$cfi_offset, 17,  - 32
	$cfi_offset, 16,  - 28
	$sd , r22,  - 32, d16
	$cfi_offset, 19,  - 40
	$cfi_offset, 18,  - 36
	$sd , r22,  - 40, d18
	$cfi_offset, 21,  - 48
	$cfi_offset, 20,  - 44
	$sd , r22,  - 48, d20
.Ltmp570:
	//DEBUG_VALUE: main_kernel2:tasklet_id < -  $r14
	$loc,	4 35 12 prologue_end            // upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/defs.h:35:12
	$move , r14, id, nz, .LBB5_2
.Ltmp571:
// %bb.1:
	$loc,	1 140 9                         // dpu/task.c:140:9
	$call , r23, mem_reset
.Ltmp572:
.LBB5_2:
	$loc,	1 143 5                         // dpu/task.c:143:5
	$move , r0, my_barrier
	$call , r23, barrier_wait
.Ltmp573:
	//DEBUG_VALUE: main_kernel2:result < -  undef
	$loc,	1 147 57                        // dpu/task.c:147:57
	$lw , r15, zero, DPU_INPUT_ARGUMENTS
.Ltmp574:
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	$loc,	1 150 40                        // dpu/task.c:150:40
	$lsl , r17, r14, 10
.Ltmp575:
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  undef
	//DEBUG_VALUE: main_kernel2:base_tasklet < -  $r17
	$loc,	1 0 40 is_stmt 0                // dpu/task.c:0:40
	$move , r16, 1024
	$loc,	1 155 24 is_stmt 1              // dpu/task.c:155:24
	$move , r0, r16
	$call , r23, mem_alloc
.Ltmp576:
	$sw , r22,  - 16, r0
.Ltmp577:
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	$loc,	1 156 24                        // dpu/task.c:156:24
	$move , r0, r16
	$call , r23, mem_alloc
.Ltmp578:
	$move , r16, r0
.Ltmp579:
	//DEBUG_VALUE: main_kernel2:mram_base_addr_A < -  undef
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	$loc,	1 159 8                         // dpu/task.c:159:8
	$jneq , r14, 15, .LBB5_4
.Ltmp580:
// %bb.3:
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: main_kernel2:base_tasklet < -  $r17
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	$loc,	1 160 53                        // dpu/task.c:160:53
	$move , r0, DPU_INPUT_ARGUMENTS
	$ld , d0, r0, 8
	$loc,	1 160 31 is_stmt 0              // dpu/task.c:160:31
	$sd , zero, message_partial_count, d0
.Ltmp581:
.LBB5_4:
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: main_kernel2:base_tasklet < -  $r17
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  undef
	$loc,	1 162 5 is_stmt 1               // dpu/task.c:162:5
	$move , r0, my_barrier
	$call , r23, barrier_wait
.Ltmp582:
	//DEBUG_VALUE: byte_index < -  $r17
	$loc,	1 164 5                         // dpu/task.c:164:5
	$jgeu , r17, r15, .LBB5_9
.Ltmp583:
// %bb.5:
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel2:base_tasklet < -  $r17
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	$loc,	1 0 5 is_stmt 0                 // dpu/task.c:0:5
	$move , r0, __sys_used_mram_end
	$add , r0, r0, r15
.Ltmp584:
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  $r0
	$sw , r22,  - 12, r0
.Ltmp585:
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  [DW_OP_constu 12, DW_OP_minus] [$r22 + 0]
	$jump , .LBB5_6
.Ltmp586:
.LBB5_8:                                //   in Loop: Header=BB5_6 Depth=1
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  [DW_OP_constu 12, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	$loc,	1 164 95                        // dpu/task.c:164:95
	$add , r17, r17, 16384
.Ltmp587:
	//DEBUG_VALUE: byte_index < -  $r17
	$loc,	1 164 5                         // dpu/task.c:164:5
	$jgeu , r17, r15, .LBB5_9
.Ltmp588:
.LBB5_6:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  [DW_OP_constu 12, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	//DEBUG_VALUE: byte_index < -  $r17
	$loc,	1 167 61 is_stmt 1              // dpu/task.c:167:61
	$move , r0, __sys_used_mram_end
	$add , r0, r17, r0
	$lw , r1, r22,  - 16
.Ltmp589:
	//DEBUG_VALUE: mram_read:nb_of_bytes < -  1024
	//DEBUG_VALUE: mram_read:to < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: mram_read:from < -  $r0
	$loc,	5 35 24                         // upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/mram.h:35:24
	$ldma , r1, r0, 127
.Ltmp590:
	$loc,	1 170 21                        // dpu/task.c:170:21
	$move , r0, r16
.Ltmp591:
	$call , r23, scan
.Ltmp592:
	$movd , d18, d0
.Ltmp593:
	//DEBUG_VALUE: l_count < -  $d18
	$loc,	1 173 21                        // dpu/task.c:173:21
	$move , r2, r14
	$call , r23, handshake_sync
.Ltmp594:
	$movd , d20, d0
.Ltmp595:
	//DEBUG_VALUE: p_count < -  $d20
	$loc,	1 176 9                         // dpu/task.c:176:9
	$move , r0, my_barrier
	$call , r23, barrier_wait
.Ltmp596:
	$loc,	1 179 23                        // dpu/task.c:179:23
	$ld , d0, zero, message_partial_count
	$loc,	1 179 45 is_stmt 0              // dpu/task.c:179:45
	$add , r3, r1, r21
	$addc , r2, r0, r20
	$loc,	1 179 9                         // dpu/task.c:179:9
	$move , r0, r16
	$call , r23, add_
.Ltmp597:
	$loc,	1 182 29 is_stmt 1              // dpu/task.c:182:29
	$lw , r0, r22,  - 12
	$add , r0, r0, r17
.Ltmp598:
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  1024
	//DEBUG_VALUE: mram_write:to < -  $r0
	//DEBUG_VALUE: mram_write:from < -  $r16
	$loc,	5 53 24                         // upmem - 2021.3.0 - Linux - x86_64/bin/../share/upmem/include/syslib/mram.h:53:24
	$sdma , r16, r0, 127
.Ltmp599:
	$loc,	1 185 12                        // dpu/task.c:185:12
	$jneq , r14, 15, .LBB5_8
.Ltmp600:
// %bb.7:                               //   in Loop: Header=BB5_6 Depth=1
	//DEBUG_VALUE: main_kernel2:mram_base_addr_B < -  [DW_OP_constu 12, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: byte_index < -  $r17
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	//DEBUG_VALUE: p_count < -  $d20
	//DEBUG_VALUE: l_count < -  $d18
	$loc,	1 186 31                        // dpu/task.c:186:31
	$ld , d0, zero, message_partial_count
	$loc,	1 186 53 is_stmt 0              // dpu/task.c:186:53
	$add , r3, r21, r19
	$addc , r2, r20, r18
	$loc,	1 186 63                        // dpu/task.c:186:63
	$add , r1, r3, r1
	$addc , r0, r2, r0
	$loc,	1 186 29                        // dpu/task.c:186:29
	$lsl , r2, r14, 3
	$sd , r2, DPU_RESULTS, d0
	$loc,	1 187 35 is_stmt 1              // dpu/task.c:187:35
	$sd , zero, message_partial_count, d0
	$jump , .LBB5_8
.Ltmp601:
.LBB5_9:
	//DEBUG_VALUE: main_kernel2:cache_A < -  [DW_OP_constu 16, DW_OP_minus] [$r22 + 0]
	//DEBUG_VALUE: main_kernel2:cache_B < -  $r16
	//DEBUG_VALUE: main_kernel2:input_size_dpu_bytes < -  $r15
	$loc,	1 0 35 is_stmt 0                // dpu/task.c:0:35
	$move , r0, 0
	$loc,	1 191 5 is_stmt 1               // dpu/task.c:191:5
	$ld , d20, r22,  - 48
	$ld , d18, r22,  - 40
	$ld , d16, r22,  - 32
.Ltmp602:
	$ld , d14, r22,  - 24
.Ltmp603:
	$ld , d22, r22,  - 8
.Ltmp604:
	$jump , r23
.Ltmp605:
.Lfunc_end5:
	$size,	main_kernel2, .Lfunc_end5 - main_kernel2
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, main_kernel2
	$long,	.Lfunc_begin5
	$byte,	48
	$section,	%text, main_kernel2,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, main,"ax",@progbits
	$globl,	main                            //  -  -  Begin function main
	$type,	main,@function
main:                                   // @main
.Lfunc_begin6:
	$loc,	1 75 0                          // dpu/task.c:75:0
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset,  - 8
	$cfi_offset, 23,  - 8
	$cfi_offset, 22,  - 4
	$sd , r22, 0, d22
	$add , r22, r22, 8
.Ltmp606:
	$loc,	1 77 40 prologue_end            // dpu/task.c:77:40
	$move , r0, DPU_INPUT_ARGUMENTS
	$lw , r0, r0, 4
	$loc,	1 77 12 is_stmt 0               // dpu/task.c:77:12
	$lsl , r0, r0, 2
	$lw , r0, r0, kernels
	$call , r23, r0
.Ltmp607:
	$loc,	1 77 5                          // dpu/task.c:77:5
	$ld , d22, r22,  - 8
	$jump , r23
.Ltmp608:
.Lfunc_end6:
	$size,	main, .Lfunc_end6 - main
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, main
	$long,	.Lfunc_begin6
	$byte,	8
	$section,	%text, main,"ax",@progbits
                                        //  -  -  End function
	$type,	message,@object                 // @message
	$section,	%bss, message,"aw",@nobits
	$globl,	message
	$p2align,	3
message:
	$zero,	128
	$size,	message, 128

	$type,	kernels,@object                 // @kernels
	$section,	%data, kernels,"aw",@progbits
	$globl,	kernels
	$p2align,	2
kernels:
	$long,	main_kernel1
	$long,	main_kernel2
	$size,	kernels, 8

	$type,	DPU_INPUT_ARGUMENTS,@object     // @DPU_INPUT_ARGUMENTS
	$section,	%dpu_host,"aw",@progbits
	$globl,	DPU_INPUT_ARGUMENTS
	$p2align,	3
DPU_INPUT_ARGUMENTS:
	$zero,	16
	$size,	DPU_INPUT_ARGUMENTS, 16

	$type,	DPU_RESULTS,@object             // @DPU_RESULTS
	$globl,	DPU_RESULTS
	$p2align,	3
DPU_RESULTS:
	$zero,	128
	$size,	DPU_RESULTS, 128

	$type,	message_partial_count,@object   // @message_partial_count
	$section,	%bss, message_partial_count,"aw",@nobits
	$globl,	message_partial_count
	$p2align,	3
message_partial_count:
	$quad,	0                               // 0x0
	$size,	message_partial_count, 8

	$type,	__atomic_bit_barrier_my_barrier,@object // @__atomic_bit_barrier_my_barrier
	$section,	%atomic,"aw",@progbits
	$globl,	__atomic_bit_barrier_my_barrier
__atomic_bit_barrier_my_barrier:
	$byte,	0                               // 0x0
	$size,	__atomic_bit_barrier_my_barrier, 1

	$section,	%debug_loc,"",@progbits
.Ldebug_loc0:
	$long,	 - 1
	$long,	.Lfunc_begin0                   //   base address
	$long,	.Lfunc_begin0 - .Lfunc_begin0
	$long,	.Ltmp247 - .Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
.Ldebug_loc1:
	$long,	 - 1
	$long,	.Lfunc_begin0                   //   base address
	$long,	.Lfunc_begin0 - .Lfunc_begin0
	$long,	.Ltmp0 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp0 - .Lfunc_begin0
	$long,	.Ltmp1 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp2 - .Lfunc_begin0
	$long,	.Ltmp3 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp4 - .Lfunc_begin0
	$long,	.Ltmp5 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp6 - .Lfunc_begin0
	$long,	.Ltmp7 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp8 - .Lfunc_begin0
	$long,	.Ltmp9 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp10 - .Lfunc_begin0
	$long,	.Ltmp11 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp12 - .Lfunc_begin0
	$long,	.Ltmp13 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp14 - .Lfunc_begin0
	$long,	.Ltmp15 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp16 - .Lfunc_begin0
	$long,	.Ltmp17 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp18 - .Lfunc_begin0
	$long,	.Ltmp19 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp20 - .Lfunc_begin0
	$long,	.Ltmp21 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp22 - .Lfunc_begin0
	$long,	.Ltmp23 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp24 - .Lfunc_begin0
	$long,	.Ltmp25 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp26 - .Lfunc_begin0
	$long,	.Ltmp27 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp28 - .Lfunc_begin0
	$long,	.Ltmp29 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp30 - .Lfunc_begin0
	$long,	.Ltmp31 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp32 - .Lfunc_begin0
	$long,	.Ltmp33 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp34 - .Lfunc_begin0
	$long,	.Ltmp35 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp36 - .Lfunc_begin0
	$long,	.Ltmp37 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp38 - .Lfunc_begin0
	$long,	.Ltmp39 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp40 - .Lfunc_begin0
	$long,	.Ltmp41 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp42 - .Lfunc_begin0
	$long,	.Ltmp43 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp44 - .Lfunc_begin0
	$long,	.Ltmp45 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp46 - .Lfunc_begin0
	$long,	.Ltmp47 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp48 - .Lfunc_begin0
	$long,	.Ltmp49 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp50 - .Lfunc_begin0
	$long,	.Ltmp51 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp52 - .Lfunc_begin0
	$long,	.Ltmp53 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp54 - .Lfunc_begin0
	$long,	.Ltmp55 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp56 - .Lfunc_begin0
	$long,	.Ltmp57 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp58 - .Lfunc_begin0
	$long,	.Ltmp59 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp60 - .Lfunc_begin0
	$long,	.Ltmp61 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp62 - .Lfunc_begin0
	$long,	.Ltmp63 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp64 - .Lfunc_begin0
	$long,	.Ltmp65 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp66 - .Lfunc_begin0
	$long,	.Ltmp67 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp68 - .Lfunc_begin0
	$long,	.Ltmp69 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp70 - .Lfunc_begin0
	$long,	.Ltmp71 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp72 - .Lfunc_begin0
	$long,	.Ltmp73 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp74 - .Lfunc_begin0
	$long,	.Ltmp75 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp76 - .Lfunc_begin0
	$long,	.Ltmp77 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp78 - .Lfunc_begin0
	$long,	.Ltmp79 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp80 - .Lfunc_begin0
	$long,	.Ltmp81 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp82 - .Lfunc_begin0
	$long,	.Ltmp83 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp84 - .Lfunc_begin0
	$long,	.Ltmp85 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp86 - .Lfunc_begin0
	$long,	.Ltmp87 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp88 - .Lfunc_begin0
	$long,	.Ltmp89 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp90 - .Lfunc_begin0
	$long,	.Ltmp91 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp92 - .Lfunc_begin0
	$long,	.Ltmp93 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp94 - .Lfunc_begin0
	$long,	.Ltmp95 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp96 - .Lfunc_begin0
	$long,	.Ltmp97 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp98 - .Lfunc_begin0
	$long,	.Ltmp99 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp100 - .Lfunc_begin0
	$long,	.Ltmp101 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp102 - .Lfunc_begin0
	$long,	.Ltmp103 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp104 - .Lfunc_begin0
	$long,	.Ltmp105 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp106 - .Lfunc_begin0
	$long,	.Ltmp107 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp108 - .Lfunc_begin0
	$long,	.Ltmp109 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp110 - .Lfunc_begin0
	$long,	.Ltmp111 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp112 - .Lfunc_begin0
	$long,	.Ltmp113 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp114 - .Lfunc_begin0
	$long,	.Ltmp115 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp116 - .Lfunc_begin0
	$long,	.Ltmp117 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp118 - .Lfunc_begin0
	$long,	.Ltmp119 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp120 - .Lfunc_begin0
	$long,	.Ltmp121 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp122 - .Lfunc_begin0
	$long,	.Ltmp123 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp124 - .Lfunc_begin0
	$long,	.Ltmp125 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp126 - .Lfunc_begin0
	$long,	.Ltmp127 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp128 - .Lfunc_begin0
	$long,	.Ltmp129 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp130 - .Lfunc_begin0
	$long,	.Ltmp131 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp132 - .Lfunc_begin0
	$long,	.Ltmp133 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp134 - .Lfunc_begin0
	$long,	.Ltmp135 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp136 - .Lfunc_begin0
	$long,	.Ltmp137 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp138 - .Lfunc_begin0
	$long,	.Ltmp139 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp140 - .Lfunc_begin0
	$long,	.Ltmp141 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp142 - .Lfunc_begin0
	$long,	.Ltmp143 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp144 - .Lfunc_begin0
	$long,	.Ltmp145 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp146 - .Lfunc_begin0
	$long,	.Ltmp147 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp148 - .Lfunc_begin0
	$long,	.Ltmp149 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp150 - .Lfunc_begin0
	$long,	.Ltmp151 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp152 - .Lfunc_begin0
	$long,	.Ltmp153 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp154 - .Lfunc_begin0
	$long,	.Ltmp155 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp156 - .Lfunc_begin0
	$long,	.Ltmp157 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp158 - .Lfunc_begin0
	$long,	.Ltmp159 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp160 - .Lfunc_begin0
	$long,	.Ltmp161 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp162 - .Lfunc_begin0
	$long,	.Ltmp163 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp164 - .Lfunc_begin0
	$long,	.Ltmp165 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp166 - .Lfunc_begin0
	$long,	.Ltmp167 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp168 - .Lfunc_begin0
	$long,	.Ltmp169 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp170 - .Lfunc_begin0
	$long,	.Ltmp171 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp172 - .Lfunc_begin0
	$long,	.Ltmp173 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp174 - .Lfunc_begin0
	$long,	.Ltmp175 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp176 - .Lfunc_begin0
	$long,	.Ltmp177 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp178 - .Lfunc_begin0
	$long,	.Ltmp179 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp180 - .Lfunc_begin0
	$long,	.Ltmp181 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp182 - .Lfunc_begin0
	$long,	.Ltmp183 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp184 - .Lfunc_begin0
	$long,	.Ltmp185 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp186 - .Lfunc_begin0
	$long,	.Ltmp187 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp188 - .Lfunc_begin0
	$long,	.Ltmp189 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp190 - .Lfunc_begin0
	$long,	.Ltmp191 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp192 - .Lfunc_begin0
	$long,	.Ltmp193 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp194 - .Lfunc_begin0
	$long,	.Ltmp195 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp196 - .Lfunc_begin0
	$long,	.Ltmp197 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp198 - .Lfunc_begin0
	$long,	.Ltmp199 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp200 - .Lfunc_begin0
	$long,	.Ltmp201 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp202 - .Lfunc_begin0
	$long,	.Ltmp203 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp204 - .Lfunc_begin0
	$long,	.Ltmp205 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp206 - .Lfunc_begin0
	$long,	.Ltmp207 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp208 - .Lfunc_begin0
	$long,	.Ltmp209 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp210 - .Lfunc_begin0
	$long,	.Ltmp211 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp212 - .Lfunc_begin0
	$long,	.Ltmp213 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp214 - .Lfunc_begin0
	$long,	.Ltmp215 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp216 - .Lfunc_begin0
	$long,	.Ltmp217 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp218 - .Lfunc_begin0
	$long,	.Ltmp219 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp220 - .Lfunc_begin0
	$long,	.Ltmp221 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp222 - .Lfunc_begin0
	$long,	.Ltmp223 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp224 - .Lfunc_begin0
	$long,	.Ltmp225 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp226 - .Lfunc_begin0
	$long,	.Ltmp227 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp228 - .Lfunc_begin0
	$long,	.Ltmp229 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp230 - .Lfunc_begin0
	$long,	.Ltmp231 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp232 - .Lfunc_begin0
	$long,	.Ltmp233 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp234 - .Lfunc_begin0
	$long,	.Ltmp235 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp236 - .Lfunc_begin0
	$long,	.Ltmp237 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp238 - .Lfunc_begin0
	$long,	.Ltmp239 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp240 - .Lfunc_begin0
	$long,	.Ltmp241 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp242 - .Lfunc_begin0
	$long,	.Ltmp243 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp244 - .Lfunc_begin0
	$long,	.Ltmp245 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp246 - .Lfunc_begin0
	$long,	.Ltmp248 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp249 - .Lfunc_begin0
	$long,	.Ltmp250 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp251 - .Lfunc_begin0
	$long,	.Ltmp252 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp253 - .Lfunc_begin0
	$long,	.Ltmp254 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp254 - .Lfunc_begin0
	$long,	.Lfunc_end0 - .Lfunc_begin0
	$short,	6                               // Loc expr size
	$byte,	81                              // sub - register DW_OP_reg1
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	80                              // sub - register DW_OP_reg0
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
.Ldebug_loc2:
	$long,	 - 1
	$long,	.Lfunc_begin0                   //   base address
	$long,	.Lfunc_begin0 - .Lfunc_begin0
	$long,	.Ltmp0 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp0 - .Lfunc_begin0
	$long,	.Ltmp2 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp2 - .Lfunc_begin0
	$long,	.Ltmp4 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	50                              // DW_OP_lit2
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp4 - .Lfunc_begin0
	$long,	.Ltmp6 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	51                              // DW_OP_lit3
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp6 - .Lfunc_begin0
	$long,	.Ltmp8 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	52                              // DW_OP_lit4
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp8 - .Lfunc_begin0
	$long,	.Ltmp10 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	53                              // DW_OP_lit5
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp10 - .Lfunc_begin0
	$long,	.Ltmp12 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	54                              // DW_OP_lit6
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp12 - .Lfunc_begin0
	$long,	.Ltmp14 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	55                              // DW_OP_lit7
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp14 - .Lfunc_begin0
	$long,	.Ltmp16 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	56                              // DW_OP_lit8
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp16 - .Lfunc_begin0
	$long,	.Ltmp18 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	57                              // DW_OP_lit9
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp18 - .Lfunc_begin0
	$long,	.Ltmp20 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	58                              // DW_OP_lit10
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp20 - .Lfunc_begin0
	$long,	.Ltmp22 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	59                              // DW_OP_lit11
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp22 - .Lfunc_begin0
	$long,	.Ltmp24 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	60                              // DW_OP_lit12
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp24 - .Lfunc_begin0
	$long,	.Ltmp26 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	61                              // DW_OP_lit13
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp26 - .Lfunc_begin0
	$long,	.Ltmp28 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	62                              // DW_OP_lit14
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp28 - .Lfunc_begin0
	$long,	.Ltmp30 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	63                              // DW_OP_lit15
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp30 - .Lfunc_begin0
	$long,	.Ltmp32 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	64                              // DW_OP_lit16
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp32 - .Lfunc_begin0
	$long,	.Ltmp34 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	65                              // DW_OP_lit17
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp34 - .Lfunc_begin0
	$long,	.Ltmp36 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	66                              // DW_OP_lit18
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp36 - .Lfunc_begin0
	$long,	.Ltmp38 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	67                              // DW_OP_lit19
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp38 - .Lfunc_begin0
	$long,	.Ltmp40 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	68                              // DW_OP_lit20
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp40 - .Lfunc_begin0
	$long,	.Ltmp42 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	69                              // DW_OP_lit21
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp42 - .Lfunc_begin0
	$long,	.Ltmp44 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	70                              // DW_OP_lit22
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp44 - .Lfunc_begin0
	$long,	.Ltmp46 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	71                              // DW_OP_lit23
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp46 - .Lfunc_begin0
	$long,	.Ltmp48 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	72                              // DW_OP_lit24
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp48 - .Lfunc_begin0
	$long,	.Ltmp50 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	73                              // DW_OP_lit25
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp50 - .Lfunc_begin0
	$long,	.Ltmp52 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	74                              // DW_OP_lit26
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp52 - .Lfunc_begin0
	$long,	.Ltmp54 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	75                              // DW_OP_lit27
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp54 - .Lfunc_begin0
	$long,	.Ltmp56 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	76                              // DW_OP_lit28
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp56 - .Lfunc_begin0
	$long,	.Ltmp58 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	77                              // DW_OP_lit29
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp58 - .Lfunc_begin0
	$long,	.Ltmp60 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	78                              // DW_OP_lit30
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp60 - .Lfunc_begin0
	$long,	.Ltmp62 - .Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	79                              // DW_OP_lit31
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp62 - .Lfunc_begin0
	$long,	.Ltmp64 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	32                              // 32
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp64 - .Lfunc_begin0
	$long,	.Ltmp66 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	33                              // 33
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp66 - .Lfunc_begin0
	$long,	.Ltmp68 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	34                              // 34
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp68 - .Lfunc_begin0
	$long,	.Ltmp70 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	35                              // 35
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp70 - .Lfunc_begin0
	$long,	.Ltmp72 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	36                              // 36
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp72 - .Lfunc_begin0
	$long,	.Ltmp74 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	37                              // 37
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp74 - .Lfunc_begin0
	$long,	.Ltmp76 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	38                              // 38
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp76 - .Lfunc_begin0
	$long,	.Ltmp78 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	39                              // 39
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp78 - .Lfunc_begin0
	$long,	.Ltmp80 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	40                              // 40
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp80 - .Lfunc_begin0
	$long,	.Ltmp82 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	41                              // 41
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp82 - .Lfunc_begin0
	$long,	.Ltmp84 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	42                              // 42
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp84 - .Lfunc_begin0
	$long,	.Ltmp86 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	43                              // 43
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp86 - .Lfunc_begin0
	$long,	.Ltmp88 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	44                              // 44
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp88 - .Lfunc_begin0
	$long,	.Ltmp90 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	45                              // 45
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp90 - .Lfunc_begin0
	$long,	.Ltmp92 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	46                              // 46
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp92 - .Lfunc_begin0
	$long,	.Ltmp94 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	47                              // 47
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp94 - .Lfunc_begin0
	$long,	.Ltmp96 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	48                              // 48
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp96 - .Lfunc_begin0
	$long,	.Ltmp98 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	49                              // 49
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp98 - .Lfunc_begin0
	$long,	.Ltmp100 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	50                              // 50
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp100 - .Lfunc_begin0
	$long,	.Ltmp102 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	51                              // 51
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp102 - .Lfunc_begin0
	$long,	.Ltmp104 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	52                              // 52
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp104 - .Lfunc_begin0
	$long,	.Ltmp106 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	53                              // 53
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp106 - .Lfunc_begin0
	$long,	.Ltmp108 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	54                              // 54
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp108 - .Lfunc_begin0
	$long,	.Ltmp110 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	55                              // 55
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp110 - .Lfunc_begin0
	$long,	.Ltmp112 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	56                              // 56
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp112 - .Lfunc_begin0
	$long,	.Ltmp114 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	57                              // 57
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp114 - .Lfunc_begin0
	$long,	.Ltmp116 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	58                              // 58
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp116 - .Lfunc_begin0
	$long,	.Ltmp118 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	59                              // 59
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp118 - .Lfunc_begin0
	$long,	.Ltmp120 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	60                              // 60
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp120 - .Lfunc_begin0
	$long,	.Ltmp122 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	61                              // 61
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp122 - .Lfunc_begin0
	$long,	.Ltmp124 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	62                              // 62
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp124 - .Lfunc_begin0
	$long,	.Ltmp126 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	63                              // 63
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp126 - .Lfunc_begin0
	$long,	.Ltmp128 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	64                              // 64
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp128 - .Lfunc_begin0
	$long,	.Ltmp130 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	65                              // 65
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp130 - .Lfunc_begin0
	$long,	.Ltmp132 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	66                              // 66
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp132 - .Lfunc_begin0
	$long,	.Ltmp134 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	67                              // 67
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp134 - .Lfunc_begin0
	$long,	.Ltmp136 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	68                              // 68
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp136 - .Lfunc_begin0
	$long,	.Ltmp138 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	69                              // 69
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp138 - .Lfunc_begin0
	$long,	.Ltmp140 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	70                              // 70
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp140 - .Lfunc_begin0
	$long,	.Ltmp142 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	71                              // 71
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp142 - .Lfunc_begin0
	$long,	.Ltmp144 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	72                              // 72
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp144 - .Lfunc_begin0
	$long,	.Ltmp146 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	73                              // 73
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp146 - .Lfunc_begin0
	$long,	.Ltmp148 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	74                              // 74
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp148 - .Lfunc_begin0
	$long,	.Ltmp150 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	75                              // 75
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp150 - .Lfunc_begin0
	$long,	.Ltmp152 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	76                              // 76
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp152 - .Lfunc_begin0
	$long,	.Ltmp154 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	77                              // 77
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp154 - .Lfunc_begin0
	$long,	.Ltmp156 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	78                              // 78
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp156 - .Lfunc_begin0
	$long,	.Ltmp158 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	79                              // 79
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp158 - .Lfunc_begin0
	$long,	.Ltmp160 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	80                              // 80
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp160 - .Lfunc_begin0
	$long,	.Ltmp162 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	81                              // 81
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp162 - .Lfunc_begin0
	$long,	.Ltmp164 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	82                              // 82
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp164 - .Lfunc_begin0
	$long,	.Ltmp166 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	83                              // 83
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp166 - .Lfunc_begin0
	$long,	.Ltmp168 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	84                              // 84
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp168 - .Lfunc_begin0
	$long,	.Ltmp170 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	85                              // 85
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp170 - .Lfunc_begin0
	$long,	.Ltmp172 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	86                              // 86
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp172 - .Lfunc_begin0
	$long,	.Ltmp174 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	87                              // 87
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp174 - .Lfunc_begin0
	$long,	.Ltmp176 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	88                              // 88
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp176 - .Lfunc_begin0
	$long,	.Ltmp178 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	89                              // 89
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp178 - .Lfunc_begin0
	$long,	.Ltmp180 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	90                              // 90
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp180 - .Lfunc_begin0
	$long,	.Ltmp182 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	91                              // 91
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp182 - .Lfunc_begin0
	$long,	.Ltmp184 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	92                              // 92
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp184 - .Lfunc_begin0
	$long,	.Ltmp186 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	93                              // 93
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp186 - .Lfunc_begin0
	$long,	.Ltmp188 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	94                              // 94
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp188 - .Lfunc_begin0
	$long,	.Ltmp190 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	95                              // 95
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp190 - .Lfunc_begin0
	$long,	.Ltmp192 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	96                              // 96
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp192 - .Lfunc_begin0
	$long,	.Ltmp194 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	97                              // 97
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp194 - .Lfunc_begin0
	$long,	.Ltmp196 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	98                              // 98
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp196 - .Lfunc_begin0
	$long,	.Ltmp198 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	99                              // 99
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp198 - .Lfunc_begin0
	$long,	.Ltmp200 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	100                             // 100
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp200 - .Lfunc_begin0
	$long,	.Ltmp202 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	101                             // 101
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp202 - .Lfunc_begin0
	$long,	.Ltmp204 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	102                             // 102
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp204 - .Lfunc_begin0
	$long,	.Ltmp206 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	103                             // 103
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp206 - .Lfunc_begin0
	$long,	.Ltmp208 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	104                             // 104
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp208 - .Lfunc_begin0
	$long,	.Ltmp210 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	105                             // 105
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp210 - .Lfunc_begin0
	$long,	.Ltmp212 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	106                             // 106
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp212 - .Lfunc_begin0
	$long,	.Ltmp214 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	107                             // 107
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp214 - .Lfunc_begin0
	$long,	.Ltmp216 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	108                             // 108
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp216 - .Lfunc_begin0
	$long,	.Ltmp218 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	109                             // 109
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp218 - .Lfunc_begin0
	$long,	.Ltmp220 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	110                             // 110
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp220 - .Lfunc_begin0
	$long,	.Ltmp222 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	111                             // 111
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp222 - .Lfunc_begin0
	$long,	.Ltmp224 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	112                             // 112
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp224 - .Lfunc_begin0
	$long,	.Ltmp226 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	113                             // 113
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp226 - .Lfunc_begin0
	$long,	.Ltmp228 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	114                             // 114
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp228 - .Lfunc_begin0
	$long,	.Ltmp230 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	115                             // 115
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp230 - .Lfunc_begin0
	$long,	.Ltmp232 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	116                             // 116
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp232 - .Lfunc_begin0
	$long,	.Ltmp234 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	117                             // 117
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp234 - .Lfunc_begin0
	$long,	.Ltmp236 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	118                             // 118
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp236 - .Lfunc_begin0
	$long,	.Ltmp238 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	119                             // 119
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp238 - .Lfunc_begin0
	$long,	.Ltmp240 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	120                             // 120
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp240 - .Lfunc_begin0
	$long,	.Ltmp242 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	121                             // 121
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp242 - .Lfunc_begin0
	$long,	.Ltmp244 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	122                             // 122
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp244 - .Lfunc_begin0
	$long,	.Ltmp246 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	123                             // 123
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp246 - .Lfunc_begin0
	$long,	.Ltmp249 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	124                             // 124
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp249 - .Lfunc_begin0
	$long,	.Ltmp251 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	125                             // 125
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp251 - .Lfunc_begin0
	$long,	.Ltmp253 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	126                             // 126
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp253 - .Lfunc_begin0
	$long,	.Ltmp254 - .Lfunc_begin0
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	127                             // 127
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp254 - .Lfunc_begin0
	$long,	.Lfunc_end0 - .Lfunc_begin0
	$short,	4                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	128                             // 128
	$byte,	1                               // 
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
.Ldebug_loc3:
	$long,	 - 1
	$long,	.Lfunc_begin1                   //   base address
	$long,	.Lfunc_begin1 - .Lfunc_begin1
	$long,	.Ltmp384 - .Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
.Ldebug_loc4:
	$long,	 - 1
	$long,	.Lfunc_begin1                   //   base address
	$long,	.Lfunc_begin1 - .Lfunc_begin1
	$long,	.Ltmp384 - .Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
.Ldebug_loc5:
	$long,	 - 1
	$long,	.Lfunc_begin1                   //   base address
	$long,	.Ltmp256 - .Lfunc_begin1
	$long,	.Ltmp257 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp257 - .Lfunc_begin1
	$long,	.Ltmp258 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	50                              // DW_OP_lit2
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp258 - .Lfunc_begin1
	$long,	.Ltmp259 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	51                              // DW_OP_lit3
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp259 - .Lfunc_begin1
	$long,	.Ltmp260 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	52                              // DW_OP_lit4
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp260 - .Lfunc_begin1
	$long,	.Ltmp261 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	53                              // DW_OP_lit5
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp261 - .Lfunc_begin1
	$long,	.Ltmp262 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	54                              // DW_OP_lit6
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp262 - .Lfunc_begin1
	$long,	.Ltmp263 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	55                              // DW_OP_lit7
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp263 - .Lfunc_begin1
	$long,	.Ltmp264 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	56                              // DW_OP_lit8
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp264 - .Lfunc_begin1
	$long,	.Ltmp265 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	57                              // DW_OP_lit9
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp265 - .Lfunc_begin1
	$long,	.Ltmp266 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	58                              // DW_OP_lit10
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp266 - .Lfunc_begin1
	$long,	.Ltmp267 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	59                              // DW_OP_lit11
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp267 - .Lfunc_begin1
	$long,	.Ltmp268 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	60                              // DW_OP_lit12
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp268 - .Lfunc_begin1
	$long,	.Ltmp269 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	61                              // DW_OP_lit13
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp269 - .Lfunc_begin1
	$long,	.Ltmp270 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	62                              // DW_OP_lit14
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp270 - .Lfunc_begin1
	$long,	.Ltmp271 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	63                              // DW_OP_lit15
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp271 - .Lfunc_begin1
	$long,	.Ltmp272 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	64                              // DW_OP_lit16
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp272 - .Lfunc_begin1
	$long,	.Ltmp273 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	65                              // DW_OP_lit17
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp273 - .Lfunc_begin1
	$long,	.Ltmp274 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	66                              // DW_OP_lit18
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp274 - .Lfunc_begin1
	$long,	.Ltmp275 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	67                              // DW_OP_lit19
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp275 - .Lfunc_begin1
	$long,	.Ltmp276 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	68                              // DW_OP_lit20
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp276 - .Lfunc_begin1
	$long,	.Ltmp277 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	69                              // DW_OP_lit21
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp277 - .Lfunc_begin1
	$long,	.Ltmp278 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	70                              // DW_OP_lit22
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp278 - .Lfunc_begin1
	$long,	.Ltmp279 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	71                              // DW_OP_lit23
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp279 - .Lfunc_begin1
	$long,	.Ltmp280 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	72                              // DW_OP_lit24
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp280 - .Lfunc_begin1
	$long,	.Ltmp281 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	73                              // DW_OP_lit25
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp281 - .Lfunc_begin1
	$long,	.Ltmp282 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	74                              // DW_OP_lit26
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp282 - .Lfunc_begin1
	$long,	.Ltmp283 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	75                              // DW_OP_lit27
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp283 - .Lfunc_begin1
	$long,	.Ltmp284 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	76                              // DW_OP_lit28
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp284 - .Lfunc_begin1
	$long,	.Ltmp285 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	77                              // DW_OP_lit29
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp285 - .Lfunc_begin1
	$long,	.Ltmp286 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	78                              // DW_OP_lit30
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp286 - .Lfunc_begin1
	$long,	.Ltmp287 - .Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	79                              // DW_OP_lit31
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp287 - .Lfunc_begin1
	$long,	.Ltmp288 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	32                              // 32
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp288 - .Lfunc_begin1
	$long,	.Ltmp289 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	33                              // 33
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp289 - .Lfunc_begin1
	$long,	.Ltmp290 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	34                              // 34
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp290 - .Lfunc_begin1
	$long,	.Ltmp291 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	35                              // 35
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp291 - .Lfunc_begin1
	$long,	.Ltmp292 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	36                              // 36
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp292 - .Lfunc_begin1
	$long,	.Ltmp293 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	37                              // 37
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp293 - .Lfunc_begin1
	$long,	.Ltmp294 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	38                              // 38
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp294 - .Lfunc_begin1
	$long,	.Ltmp295 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	39                              // 39
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp295 - .Lfunc_begin1
	$long,	.Ltmp296 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	40                              // 40
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp296 - .Lfunc_begin1
	$long,	.Ltmp297 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	41                              // 41
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp297 - .Lfunc_begin1
	$long,	.Ltmp298 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	42                              // 42
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp298 - .Lfunc_begin1
	$long,	.Ltmp299 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	43                              // 43
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp299 - .Lfunc_begin1
	$long,	.Ltmp300 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	44                              // 44
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp300 - .Lfunc_begin1
	$long,	.Ltmp301 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	45                              // 45
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp301 - .Lfunc_begin1
	$long,	.Ltmp302 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	46                              // 46
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp302 - .Lfunc_begin1
	$long,	.Ltmp303 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	47                              // 47
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp303 - .Lfunc_begin1
	$long,	.Ltmp304 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	48                              // 48
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp304 - .Lfunc_begin1
	$long,	.Ltmp305 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	49                              // 49
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp305 - .Lfunc_begin1
	$long,	.Ltmp306 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	50                              // 50
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp306 - .Lfunc_begin1
	$long,	.Ltmp307 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	51                              // 51
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp307 - .Lfunc_begin1
	$long,	.Ltmp308 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	52                              // 52
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp308 - .Lfunc_begin1
	$long,	.Ltmp309 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	53                              // 53
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp309 - .Lfunc_begin1
	$long,	.Ltmp310 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	54                              // 54
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp310 - .Lfunc_begin1
	$long,	.Ltmp311 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	55                              // 55
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp311 - .Lfunc_begin1
	$long,	.Ltmp312 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	56                              // 56
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp312 - .Lfunc_begin1
	$long,	.Ltmp313 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	57                              // 57
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp313 - .Lfunc_begin1
	$long,	.Ltmp314 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	58                              // 58
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp314 - .Lfunc_begin1
	$long,	.Ltmp315 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	59                              // 59
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp315 - .Lfunc_begin1
	$long,	.Ltmp316 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	60                              // 60
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp316 - .Lfunc_begin1
	$long,	.Ltmp317 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	61                              // 61
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp317 - .Lfunc_begin1
	$long,	.Ltmp318 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	62                              // 62
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp318 - .Lfunc_begin1
	$long,	.Ltmp319 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	63                              // 63
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp319 - .Lfunc_begin1
	$long,	.Ltmp320 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	64                              // 64
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp320 - .Lfunc_begin1
	$long,	.Ltmp321 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	65                              // 65
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp321 - .Lfunc_begin1
	$long,	.Ltmp322 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	66                              // 66
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp322 - .Lfunc_begin1
	$long,	.Ltmp323 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	67                              // 67
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp323 - .Lfunc_begin1
	$long,	.Ltmp324 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	68                              // 68
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp324 - .Lfunc_begin1
	$long,	.Ltmp325 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	69                              // 69
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp325 - .Lfunc_begin1
	$long,	.Ltmp326 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	70                              // 70
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp326 - .Lfunc_begin1
	$long,	.Ltmp327 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	71                              // 71
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp327 - .Lfunc_begin1
	$long,	.Ltmp328 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	72                              // 72
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp328 - .Lfunc_begin1
	$long,	.Ltmp329 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	73                              // 73
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp329 - .Lfunc_begin1
	$long,	.Ltmp330 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	74                              // 74
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp330 - .Lfunc_begin1
	$long,	.Ltmp331 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	75                              // 75
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp331 - .Lfunc_begin1
	$long,	.Ltmp332 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	76                              // 76
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp332 - .Lfunc_begin1
	$long,	.Ltmp333 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	77                              // 77
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp333 - .Lfunc_begin1
	$long,	.Ltmp334 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	78                              // 78
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp334 - .Lfunc_begin1
	$long,	.Ltmp335 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	79                              // 79
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp335 - .Lfunc_begin1
	$long,	.Ltmp336 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	80                              // 80
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp336 - .Lfunc_begin1
	$long,	.Ltmp337 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	81                              // 81
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp337 - .Lfunc_begin1
	$long,	.Ltmp338 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	82                              // 82
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp338 - .Lfunc_begin1
	$long,	.Ltmp339 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	83                              // 83
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp339 - .Lfunc_begin1
	$long,	.Ltmp340 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	84                              // 84
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp340 - .Lfunc_begin1
	$long,	.Ltmp341 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	85                              // 85
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp341 - .Lfunc_begin1
	$long,	.Ltmp342 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	86                              // 86
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp342 - .Lfunc_begin1
	$long,	.Ltmp343 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	87                              // 87
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp343 - .Lfunc_begin1
	$long,	.Ltmp344 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	88                              // 88
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp344 - .Lfunc_begin1
	$long,	.Ltmp345 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	89                              // 89
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp345 - .Lfunc_begin1
	$long,	.Ltmp346 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	90                              // 90
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp346 - .Lfunc_begin1
	$long,	.Ltmp347 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	91                              // 91
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp347 - .Lfunc_begin1
	$long,	.Ltmp348 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	92                              // 92
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp348 - .Lfunc_begin1
	$long,	.Ltmp349 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	93                              // 93
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp349 - .Lfunc_begin1
	$long,	.Ltmp350 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	94                              // 94
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp350 - .Lfunc_begin1
	$long,	.Ltmp351 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	95                              // 95
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp351 - .Lfunc_begin1
	$long,	.Ltmp352 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	96                              // 96
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp352 - .Lfunc_begin1
	$long,	.Ltmp353 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	97                              // 97
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp353 - .Lfunc_begin1
	$long,	.Ltmp354 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	98                              // 98
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp354 - .Lfunc_begin1
	$long,	.Ltmp355 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	99                              // 99
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp355 - .Lfunc_begin1
	$long,	.Ltmp356 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	100                             // 100
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp356 - .Lfunc_begin1
	$long,	.Ltmp357 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	101                             // 101
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp357 - .Lfunc_begin1
	$long,	.Ltmp358 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	102                             // 102
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp358 - .Lfunc_begin1
	$long,	.Ltmp359 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	103                             // 103
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp359 - .Lfunc_begin1
	$long,	.Ltmp360 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	104                             // 104
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp360 - .Lfunc_begin1
	$long,	.Ltmp361 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	105                             // 105
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp361 - .Lfunc_begin1
	$long,	.Ltmp362 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	106                             // 106
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp362 - .Lfunc_begin1
	$long,	.Ltmp363 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	107                             // 107
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp363 - .Lfunc_begin1
	$long,	.Ltmp364 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	108                             // 108
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp364 - .Lfunc_begin1
	$long,	.Ltmp365 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	109                             // 109
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp365 - .Lfunc_begin1
	$long,	.Ltmp366 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	110                             // 110
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp366 - .Lfunc_begin1
	$long,	.Ltmp367 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	111                             // 111
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp367 - .Lfunc_begin1
	$long,	.Ltmp368 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	112                             // 112
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp368 - .Lfunc_begin1
	$long,	.Ltmp369 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	113                             // 113
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp369 - .Lfunc_begin1
	$long,	.Ltmp370 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	114                             // 114
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp370 - .Lfunc_begin1
	$long,	.Ltmp371 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	115                             // 115
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp371 - .Lfunc_begin1
	$long,	.Ltmp372 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	116                             // 116
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp372 - .Lfunc_begin1
	$long,	.Ltmp373 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	117                             // 117
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp373 - .Lfunc_begin1
	$long,	.Ltmp374 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	118                             // 118
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp374 - .Lfunc_begin1
	$long,	.Ltmp375 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	119                             // 119
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp375 - .Lfunc_begin1
	$long,	.Ltmp376 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	120                             // 120
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp376 - .Lfunc_begin1
	$long,	.Ltmp377 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	121                             // 121
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp377 - .Lfunc_begin1
	$long,	.Ltmp378 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	122                             // 122
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp378 - .Lfunc_begin1
	$long,	.Ltmp379 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	123                             // 123
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp379 - .Lfunc_begin1
	$long,	.Ltmp380 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	124                             // 124
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp380 - .Lfunc_begin1
	$long,	.Ltmp381 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	125                             // 125
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp381 - .Lfunc_begin1
	$long,	.Ltmp382 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	126                             // 126
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp382 - .Lfunc_begin1
	$long,	.Ltmp383 - .Lfunc_begin1
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	127                             // 127
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp383 - .Lfunc_begin1
	$long,	.Lfunc_end1 - .Lfunc_begin1
	$short,	4                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	128                             // 128
	$byte,	1                               // 
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
.Ldebug_loc6:
	$long,	 - 1
	$long,	.Lfunc_begin2                   //   base address
	$long,	.Lfunc_begin2 - .Lfunc_begin2
	$long,	.Ltmp386 - .Lfunc_begin2
	$short,	6                               // Loc expr size
	$byte,	81                              // sub - register DW_OP_reg1
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	80                              // sub - register DW_OP_reg0
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp386 - .Lfunc_begin2
	$long,	.Ltmp393 - .Lfunc_begin2
	$short,	6                               // Loc expr size
	$byte,	97                              // sub - register DW_OP_reg17
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	96                              // sub - register DW_OP_reg16
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
.Ldebug_loc7:
	$long,	 - 1
	$long,	.Lfunc_begin2                   //   base address
	$long,	.Lfunc_begin2 - .Lfunc_begin2
	$long,	.Ltmp386 - .Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	.Ltmp386 - .Lfunc_begin2
	$long,	.Ltmp394 - .Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
.Ldebug_loc8:
	$long,	 - 1
	$long,	.Lfunc_begin2                   //   base address
	$long,	.Ltmp389 - .Lfunc_begin2
	$long,	.Ltmp390 - .Lfunc_begin2
	$short,	6                               // Loc expr size
	$byte,	99                              // sub - register DW_OP_reg19
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	98                              // sub - register DW_OP_reg18
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
.Ldebug_loc9:
	$long,	 - 1
	$long,	.Lfunc_begin3                   //   base address
	$long,	.Lfunc_begin3 - .Lfunc_begin3
	$long,	.Ltmp523 - .Lfunc_begin3
	$short,	6                               // Loc expr size
	$byte,	83                              // sub - register DW_OP_reg3
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	82                              // sub - register DW_OP_reg2
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
.Ldebug_loc10:
	$long,	 - 1
	$long,	.Lfunc_begin3                   //   base address
	$long,	.Lfunc_begin3 - .Lfunc_begin3
	$long,	.Ltmp396 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp396 - .Lfunc_begin3
	$long,	.Ltmp397 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp397 - .Lfunc_begin3
	$long,	.Ltmp398 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	50                              // DW_OP_lit2
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp398 - .Lfunc_begin3
	$long,	.Ltmp399 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	51                              // DW_OP_lit3
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp399 - .Lfunc_begin3
	$long,	.Ltmp400 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	52                              // DW_OP_lit4
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp400 - .Lfunc_begin3
	$long,	.Ltmp401 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	53                              // DW_OP_lit5
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp401 - .Lfunc_begin3
	$long,	.Ltmp402 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	54                              // DW_OP_lit6
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp402 - .Lfunc_begin3
	$long,	.Ltmp403 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	55                              // DW_OP_lit7
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp403 - .Lfunc_begin3
	$long,	.Ltmp404 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	56                              // DW_OP_lit8
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp404 - .Lfunc_begin3
	$long,	.Ltmp405 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	57                              // DW_OP_lit9
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp405 - .Lfunc_begin3
	$long,	.Ltmp406 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	58                              // DW_OP_lit10
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp406 - .Lfunc_begin3
	$long,	.Ltmp407 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	59                              // DW_OP_lit11
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp407 - .Lfunc_begin3
	$long,	.Ltmp408 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	60                              // DW_OP_lit12
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp408 - .Lfunc_begin3
	$long,	.Ltmp409 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	61                              // DW_OP_lit13
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp409 - .Lfunc_begin3
	$long,	.Ltmp410 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	62                              // DW_OP_lit14
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp410 - .Lfunc_begin3
	$long,	.Ltmp411 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	63                              // DW_OP_lit15
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp411 - .Lfunc_begin3
	$long,	.Ltmp412 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	64                              // DW_OP_lit16
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp412 - .Lfunc_begin3
	$long,	.Ltmp413 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	65                              // DW_OP_lit17
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp413 - .Lfunc_begin3
	$long,	.Ltmp414 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	66                              // DW_OP_lit18
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp414 - .Lfunc_begin3
	$long,	.Ltmp415 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	67                              // DW_OP_lit19
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp415 - .Lfunc_begin3
	$long,	.Ltmp416 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	68                              // DW_OP_lit20
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp416 - .Lfunc_begin3
	$long,	.Ltmp417 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	69                              // DW_OP_lit21
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp417 - .Lfunc_begin3
	$long,	.Ltmp418 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	70                              // DW_OP_lit22
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp418 - .Lfunc_begin3
	$long,	.Ltmp419 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	71                              // DW_OP_lit23
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp419 - .Lfunc_begin3
	$long,	.Ltmp420 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	72                              // DW_OP_lit24
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp420 - .Lfunc_begin3
	$long,	.Ltmp421 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	73                              // DW_OP_lit25
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp421 - .Lfunc_begin3
	$long,	.Ltmp422 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	74                              // DW_OP_lit26
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp422 - .Lfunc_begin3
	$long,	.Ltmp423 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	75                              // DW_OP_lit27
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp423 - .Lfunc_begin3
	$long,	.Ltmp424 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	76                              // DW_OP_lit28
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp424 - .Lfunc_begin3
	$long,	.Ltmp425 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	77                              // DW_OP_lit29
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp425 - .Lfunc_begin3
	$long,	.Ltmp426 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	78                              // DW_OP_lit30
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp426 - .Lfunc_begin3
	$long,	.Ltmp427 - .Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	79                              // DW_OP_lit31
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp427 - .Lfunc_begin3
	$long,	.Ltmp428 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	32                              // 32
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp428 - .Lfunc_begin3
	$long,	.Ltmp429 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	33                              // 33
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp429 - .Lfunc_begin3
	$long,	.Ltmp430 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	34                              // 34
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp430 - .Lfunc_begin3
	$long,	.Ltmp431 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	35                              // 35
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp431 - .Lfunc_begin3
	$long,	.Ltmp432 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	36                              // 36
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp432 - .Lfunc_begin3
	$long,	.Ltmp433 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	37                              // 37
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp433 - .Lfunc_begin3
	$long,	.Ltmp434 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	38                              // 38
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp434 - .Lfunc_begin3
	$long,	.Ltmp435 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	39                              // 39
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp435 - .Lfunc_begin3
	$long,	.Ltmp436 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	40                              // 40
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp436 - .Lfunc_begin3
	$long,	.Ltmp437 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	41                              // 41
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp437 - .Lfunc_begin3
	$long,	.Ltmp438 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	42                              // 42
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp438 - .Lfunc_begin3
	$long,	.Ltmp439 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	43                              // 43
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp439 - .Lfunc_begin3
	$long,	.Ltmp440 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	44                              // 44
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp440 - .Lfunc_begin3
	$long,	.Ltmp441 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	45                              // 45
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp441 - .Lfunc_begin3
	$long,	.Ltmp442 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	46                              // 46
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp442 - .Lfunc_begin3
	$long,	.Ltmp443 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	47                              // 47
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp443 - .Lfunc_begin3
	$long,	.Ltmp444 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	48                              // 48
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp444 - .Lfunc_begin3
	$long,	.Ltmp445 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	49                              // 49
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp445 - .Lfunc_begin3
	$long,	.Ltmp446 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	50                              // 50
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp446 - .Lfunc_begin3
	$long,	.Ltmp447 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	51                              // 51
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp447 - .Lfunc_begin3
	$long,	.Ltmp448 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	52                              // 52
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp448 - .Lfunc_begin3
	$long,	.Ltmp449 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	53                              // 53
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp449 - .Lfunc_begin3
	$long,	.Ltmp450 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	54                              // 54
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp450 - .Lfunc_begin3
	$long,	.Ltmp451 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	55                              // 55
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp451 - .Lfunc_begin3
	$long,	.Ltmp452 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	56                              // 56
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp452 - .Lfunc_begin3
	$long,	.Ltmp453 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	57                              // 57
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp453 - .Lfunc_begin3
	$long,	.Ltmp454 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	58                              // 58
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp454 - .Lfunc_begin3
	$long,	.Ltmp455 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	59                              // 59
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp455 - .Lfunc_begin3
	$long,	.Ltmp456 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	60                              // 60
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp456 - .Lfunc_begin3
	$long,	.Ltmp457 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	61                              // 61
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp457 - .Lfunc_begin3
	$long,	.Ltmp458 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	62                              // 62
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp458 - .Lfunc_begin3
	$long,	.Ltmp459 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	63                              // 63
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp459 - .Lfunc_begin3
	$long,	.Ltmp460 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	64                              // 64
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp460 - .Lfunc_begin3
	$long,	.Ltmp461 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	65                              // 65
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp461 - .Lfunc_begin3
	$long,	.Ltmp462 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	66                              // 66
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp462 - .Lfunc_begin3
	$long,	.Ltmp463 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	67                              // 67
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp463 - .Lfunc_begin3
	$long,	.Ltmp464 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	68                              // 68
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp464 - .Lfunc_begin3
	$long,	.Ltmp465 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	69                              // 69
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp465 - .Lfunc_begin3
	$long,	.Ltmp466 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	70                              // 70
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp466 - .Lfunc_begin3
	$long,	.Ltmp467 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	71                              // 71
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp467 - .Lfunc_begin3
	$long,	.Ltmp468 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	72                              // 72
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp468 - .Lfunc_begin3
	$long,	.Ltmp469 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	73                              // 73
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp469 - .Lfunc_begin3
	$long,	.Ltmp470 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	74                              // 74
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp470 - .Lfunc_begin3
	$long,	.Ltmp471 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	75                              // 75
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp471 - .Lfunc_begin3
	$long,	.Ltmp472 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	76                              // 76
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp472 - .Lfunc_begin3
	$long,	.Ltmp473 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	77                              // 77
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp473 - .Lfunc_begin3
	$long,	.Ltmp474 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	78                              // 78
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp474 - .Lfunc_begin3
	$long,	.Ltmp475 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	79                              // 79
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp475 - .Lfunc_begin3
	$long,	.Ltmp476 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	80                              // 80
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp476 - .Lfunc_begin3
	$long,	.Ltmp477 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	81                              // 81
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp477 - .Lfunc_begin3
	$long,	.Ltmp478 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	82                              // 82
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp478 - .Lfunc_begin3
	$long,	.Ltmp479 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	83                              // 83
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp479 - .Lfunc_begin3
	$long,	.Ltmp480 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	84                              // 84
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp480 - .Lfunc_begin3
	$long,	.Ltmp481 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	85                              // 85
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp481 - .Lfunc_begin3
	$long,	.Ltmp482 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	86                              // 86
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp482 - .Lfunc_begin3
	$long,	.Ltmp483 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	87                              // 87
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp483 - .Lfunc_begin3
	$long,	.Ltmp484 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	88                              // 88
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp484 - .Lfunc_begin3
	$long,	.Ltmp485 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	89                              // 89
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp485 - .Lfunc_begin3
	$long,	.Ltmp486 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	90                              // 90
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp486 - .Lfunc_begin3
	$long,	.Ltmp487 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	91                              // 91
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp487 - .Lfunc_begin3
	$long,	.Ltmp488 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	92                              // 92
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp488 - .Lfunc_begin3
	$long,	.Ltmp489 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	93                              // 93
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp489 - .Lfunc_begin3
	$long,	.Ltmp490 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	94                              // 94
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp490 - .Lfunc_begin3
	$long,	.Ltmp491 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	95                              // 95
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp491 - .Lfunc_begin3
	$long,	.Ltmp492 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	96                              // 96
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp492 - .Lfunc_begin3
	$long,	.Ltmp493 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	97                              // 97
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp493 - .Lfunc_begin3
	$long,	.Ltmp494 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	98                              // 98
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp494 - .Lfunc_begin3
	$long,	.Ltmp495 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	99                              // 99
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp495 - .Lfunc_begin3
	$long,	.Ltmp496 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	100                             // 100
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp496 - .Lfunc_begin3
	$long,	.Ltmp497 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	101                             // 101
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp497 - .Lfunc_begin3
	$long,	.Ltmp498 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	102                             // 102
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp498 - .Lfunc_begin3
	$long,	.Ltmp499 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	103                             // 103
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp499 - .Lfunc_begin3
	$long,	.Ltmp500 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	104                             // 104
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp500 - .Lfunc_begin3
	$long,	.Ltmp501 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	105                             // 105
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp501 - .Lfunc_begin3
	$long,	.Ltmp502 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	106                             // 106
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp502 - .Lfunc_begin3
	$long,	.Ltmp503 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	107                             // 107
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp503 - .Lfunc_begin3
	$long,	.Ltmp504 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	108                             // 108
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp504 - .Lfunc_begin3
	$long,	.Ltmp505 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	109                             // 109
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp505 - .Lfunc_begin3
	$long,	.Ltmp506 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	110                             // 110
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp506 - .Lfunc_begin3
	$long,	.Ltmp507 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	111                             // 111
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp507 - .Lfunc_begin3
	$long,	.Ltmp508 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	112                             // 112
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp508 - .Lfunc_begin3
	$long,	.Ltmp509 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	113                             // 113
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp509 - .Lfunc_begin3
	$long,	.Ltmp510 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	114                             // 114
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp510 - .Lfunc_begin3
	$long,	.Ltmp511 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	115                             // 115
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp511 - .Lfunc_begin3
	$long,	.Ltmp512 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	116                             // 116
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp512 - .Lfunc_begin3
	$long,	.Ltmp513 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	117                             // 117
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp513 - .Lfunc_begin3
	$long,	.Ltmp514 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	118                             // 118
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp514 - .Lfunc_begin3
	$long,	.Ltmp515 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	119                             // 119
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp515 - .Lfunc_begin3
	$long,	.Ltmp516 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	120                             // 120
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp516 - .Lfunc_begin3
	$long,	.Ltmp517 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	121                             // 121
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp517 - .Lfunc_begin3
	$long,	.Ltmp518 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	122                             // 122
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp518 - .Lfunc_begin3
	$long,	.Ltmp519 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	123                             // 123
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp519 - .Lfunc_begin3
	$long,	.Ltmp520 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	124                             // 124
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp520 - .Lfunc_begin3
	$long,	.Ltmp521 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	125                             // 125
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp521 - .Lfunc_begin3
	$long,	.Ltmp522 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	126                             // 126
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp522 - .Lfunc_begin3
	$long,	.Ltmp524 - .Lfunc_begin3
	$short,	3                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	127                             // 127
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp524 - .Lfunc_begin3
	$long,	.Lfunc_end3 - .Lfunc_begin3
	$short,	4                               // Loc expr size
	$byte,	16                              // DW_OP_constu
	$byte,	128                             // 128
	$byte,	1                               // 
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
.Ldebug_loc11:
	$long,	 - 1
	$long,	.Lfunc_begin4                   //   base address
	$long,	.Ltmp527 - .Lfunc_begin4
	$long,	.Ltmp528 - .Lfunc_begin4
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	0
	$long,	0
.Ldebug_loc12:
	$long,	 - 1
	$long,	.Lfunc_begin4                   //   base address
	$long,	.Ltmp531 - .Lfunc_begin4
	$long,	.Ltmp566 - .Lfunc_begin4
	$short,	1                               // Loc expr size
	$byte,	96                              // DW_OP_reg16
	$long,	0
	$long,	0
.Ldebug_loc13:
	$long,	 - 1
	$long,	.Lfunc_begin4                   //   base address
	$long,	.Ltmp532 - .Lfunc_begin4
	$long,	.Ltmp537 - .Lfunc_begin4
	$short,	1                               // Loc expr size
	$byte,	97                              // DW_OP_reg17
	$long,	0
	$long,	0
.Ldebug_loc14:
	$long,	 - 1
	$long,	.Lfunc_begin4                   //   base address
	$long,	.Ltmp534 - .Lfunc_begin4
	$long,	.Ltmp567 - .Lfunc_begin4
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
.Ldebug_loc15:
	$long,	 - 1
	$long,	.Lfunc_begin4                   //   base address
	$long,	.Ltmp535 - .Lfunc_begin4
	$long,	.Ltmp537 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp537 - .Lfunc_begin4
	$long,	.Ltmp543 - .Lfunc_begin4
	$short,	6                               // Loc expr size
	$byte,	99                              // sub - register DW_OP_reg19
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	98                              // sub - register DW_OP_reg18
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	.Ltmp544 - .Lfunc_begin4
	$long,	.Ltmp545 - .Lfunc_begin4
	$short,	6                               // Loc expr size
	$byte,	99                              // sub - register DW_OP_reg19
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	98                              // sub - register DW_OP_reg18
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
.Ldebug_loc16:
	$long,	 - 1
	$long,	.Lfunc_begin4                   //   base address
	$long,	.Ltmp548 - .Lfunc_begin4
	$long,	.Ltmp549 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp549 - .Lfunc_begin4
	$long,	.Ltmp550 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	50                              // DW_OP_lit2
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp550 - .Lfunc_begin4
	$long,	.Ltmp551 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	51                              // DW_OP_lit3
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp551 - .Lfunc_begin4
	$long,	.Ltmp552 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	52                              // DW_OP_lit4
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp552 - .Lfunc_begin4
	$long,	.Ltmp553 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	53                              // DW_OP_lit5
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp553 - .Lfunc_begin4
	$long,	.Ltmp554 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	54                              // DW_OP_lit6
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp554 - .Lfunc_begin4
	$long,	.Ltmp555 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	55                              // DW_OP_lit7
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp555 - .Lfunc_begin4
	$long,	.Ltmp556 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	56                              // DW_OP_lit8
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp556 - .Lfunc_begin4
	$long,	.Ltmp557 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	57                              // DW_OP_lit9
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp557 - .Lfunc_begin4
	$long,	.Ltmp558 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	58                              // DW_OP_lit10
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp558 - .Lfunc_begin4
	$long,	.Ltmp559 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	59                              // DW_OP_lit11
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp559 - .Lfunc_begin4
	$long,	.Ltmp560 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	60                              // DW_OP_lit12
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp560 - .Lfunc_begin4
	$long,	.Ltmp561 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	61                              // DW_OP_lit13
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp561 - .Lfunc_begin4
	$long,	.Ltmp562 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	62                              // DW_OP_lit14
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp562 - .Lfunc_begin4
	$long,	.Ltmp563 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	63                              // DW_OP_lit15
	$byte,	159                             // DW_OP_stack_value
	$long,	.Ltmp563 - .Lfunc_begin4
	$long,	.Ltmp565 - .Lfunc_begin4
	$short,	2                               // Loc expr size
	$byte,	64                              // DW_OP_lit16
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
.Ldebug_loc17:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp570 - .Lfunc_begin5
	$long,	.Ltmp571 - .Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	94                              // DW_OP_reg14
	$long,	0
	$long,	0
.Ldebug_loc18:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp574 - .Lfunc_begin5
	$long,	.Ltmp603 - .Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	95                              // DW_OP_reg15
	$long,	0
	$long,	0
.Ldebug_loc19:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp584 - .Lfunc_begin5
	$long,	.Ltmp585 - .Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	.Ltmp585 - .Lfunc_begin5
	$long,	.Ltmp601 - .Lfunc_begin5
	$short,	2                               // Loc expr size
	$byte,	134                             // DW_OP_breg22
	$byte,	116                             //  - 12
	$long,	0
	$long,	0
.Ldebug_loc20:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp575 - .Lfunc_begin5
	$long,	.Ltmp586 - .Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	97                              // DW_OP_reg17
	$long,	0
	$long,	0
.Ldebug_loc21:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp577 - .Lfunc_begin5
	$long,	.Ltmp604 - .Lfunc_begin5
	$short,	2                               // Loc expr size
	$byte,	134                             // DW_OP_breg22
	$byte,	112                             //  - 16
	$long,	0
	$long,	0
.Ldebug_loc22:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp579 - .Lfunc_begin5
	$long,	.Ltmp602 - .Lfunc_begin5
	$short,	1                               // Loc expr size
	$byte,	96                              // DW_OP_reg16
	$long,	0
	$long,	0
.Ldebug_loc23:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp593 - .Lfunc_begin5
	$long,	.Ltmp601 - .Lfunc_begin5
	$short,	6                               // Loc expr size
	$byte,	99                              // sub - register DW_OP_reg19
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	98                              // sub - register DW_OP_reg18
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
.Ldebug_loc24:
	$long,	 - 1
	$long,	.Lfunc_begin5                   //   base address
	$long,	.Ltmp595 - .Lfunc_begin5
	$long,	.Ltmp601 - .Lfunc_begin5
	$short,	6                               // Loc expr size
	$byte,	101                             // sub - register DW_OP_reg21
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$byte,	100                             // sub - register DW_OP_reg20
	$byte,	147                             // DW_OP_piece
	$byte,	4                               // 4
	$long,	0
	$long,	0
	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	21                              // DW_TAG_subroutine_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$ascii,	"\210\001"                      // DW_AT_alignment
	$byte,	15                              // DW_FORM_udata
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	11                              // Abbreviation Code
	$byte,	19                              // DW_TAG_structure_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	12                              // Abbreviation Code
	$byte,	13                              // DW_TAG_member
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	56                              // DW_AT_data_member_location
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	13                              // Abbreviation Code
	$byte,	4                               // DW_TAG_enumeration_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	14                              // Abbreviation Code
	$byte,	40                              // DW_TAG_enumerator
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	28                              // DW_AT_const_value
	$byte,	15                              // DW_FORM_udata
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	15                              // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	16                              // Abbreviation Code
	$byte,	38                              // DW_TAG_const_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	17                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	18                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	19                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	20                              // Abbreviation Code
	$byte,	11                              // DW_TAG_lexical_block
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	21                              // Abbreviation Code
	$ascii,	"\211\202\001"                  // DW_TAG_GNU_call_site
	$byte,	0                               // DW_CHILDREN_no
	$ascii,	"\223B"                         // DW_AT_GNU_call_site_target
	$byte,	24                              // DW_FORM_exprloc
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	22                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	23                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	24                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	25                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	26                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	27                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	28                              // Abbreviation Code
	$byte,	29                              // DW_TAG_inlined_subroutine
	$byte,	0                               // DW_CHILDREN_no
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	88                              // DW_AT_call_file
	$byte,	11                              // DW_FORM_data1
	$byte,	89                              // DW_AT_call_line
	$byte,	11                              // DW_FORM_data1
	$byte,	87                              // DW_AT_call_column
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	29                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	30                              // Abbreviation Code
	$byte,	29                              // DW_TAG_inlined_subroutine
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	88                              // DW_AT_call_file
	$byte,	11                              // DW_FORM_data1
	$byte,	89                              // DW_AT_call_line
	$byte,	11                              // DW_FORM_data1
	$byte,	87                              // DW_AT_call_column
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	31                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	32                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	28                              // DW_AT_const_value
	$byte,	15                              // DW_FORM_udata
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
.Lcu_begin0:
	$long,	.Ldebug_info_end0 - .Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x591 DW_TAG_compile_unit
	$long,	.Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	.Linfo_string1                  // DW_AT_name
	$long,	.Lline_table_start0             // DW_AT_stmt_list
	$long,	.Linfo_string2                  // DW_AT_comp_dir
	$long,	0                               // DW_AT_low_pc
	$long,	.Ldebug_ranges0                 // DW_AT_ranges
	$byte,	2                               // Abbrev [2] 0x26:0x11 DW_TAG_variable
	$long,	.Linfo_string3                  // DW_AT_name
	$long,	55                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	73                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	kernels
	$byte,	3                               // Abbrev [3] 0x37:0xc DW_TAG_array_type
	$long,	67                              // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x3c:0x6 DW_TAG_subrange_type
	$long,	84                              // DW_AT_type
	$byte,	2                               // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x43:0x5 DW_TAG_pointer_type
	$long,	72                              // DW_AT_type
	$byte,	6                               // Abbrev [6] 0x48:0x5 DW_TAG_subroutine_type
	$long,	77                              // DW_AT_type
                                        // DW_AT_prototyped
	$byte,	7                               // Abbrev [7] 0x4d:0x7 DW_TAG_base_type
	$long,	.Linfo_string4                  // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	8                               // Abbrev [8] 0x54:0x7 DW_TAG_base_type
	$long,	.Linfo_string5                  // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	9                               // Abbrev [9] 0x5b:0x12 DW_TAG_variable
	$long,	.Linfo_string6                  // DW_AT_name
	$long,	109                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	16                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	DPU_INPUT_ARGUMENTS
	$byte,	10                              // Abbrev [10] 0x6d:0xb DW_TAG_typedef
	$long,	120                             // DW_AT_type
	$long,	.Linfo_string17                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	52                              // DW_AT_decl_line
	$byte,	11                              // Abbrev [11] 0x78:0x29 DW_TAG_structure_type
	$byte,	16                              // DW_AT_byte_size
	$byte,	3                               // DW_AT_decl_file
	$byte,	44                              // DW_AT_decl_line
	$byte,	12                              // Abbrev [12] 0x7c:0xc DW_TAG_member
	$long,	.Linfo_string7                  // DW_AT_name
	$long,	161                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	45                              // DW_AT_decl_line
	$byte,	0                               // DW_AT_data_member_location
	$byte,	12                              // Abbrev [12] 0x88:0xc DW_TAG_member
	$long,	.Linfo_string10                 // DW_AT_name
	$long,	179                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	50                              // DW_AT_decl_line
	$byte,	4                               // DW_AT_data_member_location
	$byte,	12                              // Abbrev [12] 0x94:0xc DW_TAG_member
	$long,	.Linfo_string14                 // DW_AT_name
	$long,	210                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_data_member_location
	$byte,	0                               // End Of Children Mark
	$byte,	10                              // Abbrev [10] 0xa1:0xb DW_TAG_typedef
	$long,	172                             // DW_AT_type
	$long,	.Linfo_string9                  // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	48                              // DW_AT_decl_line
	$byte,	7                               // Abbrev [7] 0xac:0x7 DW_TAG_base_type
	$long,	.Linfo_string8                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	13                              // Abbrev [13] 0xb3:0x1f DW_TAG_enumeration_type
	$long,	172                             // DW_AT_type
	$long,	.Linfo_string3                  // DW_AT_name
	$byte,	4                               // DW_AT_byte_size
	$byte,	3                               // DW_AT_decl_file
	$byte,	46                              // DW_AT_decl_line
	$byte,	14                              // Abbrev [14] 0xbf:0x6 DW_TAG_enumerator
	$long,	.Linfo_string11                 // DW_AT_name
	$byte,	0                               // DW_AT_const_value
	$byte,	14                              // Abbrev [14] 0xc5:0x6 DW_TAG_enumerator
	$long,	.Linfo_string12                 // DW_AT_name
	$byte,	1                               // DW_AT_const_value
	$byte,	14                              // Abbrev [14] 0xcb:0x6 DW_TAG_enumerator
	$long,	.Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_const_value
	$byte,	0                               // End Of Children Mark
	$byte,	10                              // Abbrev [10] 0xd2:0xb DW_TAG_typedef
	$long,	221                             // DW_AT_type
	$long,	.Linfo_string16                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$byte,	7                               // Abbrev [7] 0xdd:0x7 DW_TAG_base_type
	$long,	.Linfo_string15                 // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	8                               // DW_AT_byte_size
	$byte,	9                               // Abbrev [9] 0xe4:0x12 DW_TAG_variable
	$long,	.Linfo_string18                 // DW_AT_name
	$long,	246                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	17                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	DPU_RESULTS
	$byte,	3                               // Abbrev [3] 0xf6:0xc DW_TAG_array_type
	$long,	258                             // DW_AT_type
	$byte,	4                               // Abbrev [4] 0xfb:0x6 DW_TAG_subrange_type
	$long,	84                              // DW_AT_type
	$byte,	16                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	10                              // Abbrev [10] 0x102:0xb DW_TAG_typedef
	$long,	269                             // DW_AT_type
	$long,	.Linfo_string19                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	56                              // DW_AT_decl_line
	$byte,	11                              // Abbrev [11] 0x10d:0x11 DW_TAG_structure_type
	$byte,	8                               // DW_AT_byte_size
	$byte,	3                               // DW_AT_decl_file
	$byte,	54                              // DW_AT_decl_line
	$byte,	12                              // Abbrev [12] 0x111:0xc DW_TAG_member
	$long,	.Linfo_string14                 // DW_AT_name
	$long,	210                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	55                              // DW_AT_decl_line
	$byte,	0                               // DW_AT_data_member_location
	$byte,	0                               // End Of Children Mark
	$byte,	2                               // Abbrev [2] 0x11e:0x11 DW_TAG_variable
	$long,	.Linfo_string20                 // DW_AT_name
	$long,	303                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	20                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	message
	$byte,	3                               // Abbrev [3] 0x12f:0xc DW_TAG_array_type
	$long,	210                             // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x134:0x6 DW_TAG_subrange_type
	$long,	84                              // DW_AT_type
	$byte,	16                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	2                               // Abbrev [2] 0x13b:0x11 DW_TAG_variable
	$long,	.Linfo_string21                 // DW_AT_name
	$long,	210                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	21                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	message_partial_count
	$byte,	2                               // Abbrev [2] 0x14c:0x11 DW_TAG_variable
	$long,	.Linfo_string22                 // DW_AT_name
	$long,	349                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	60                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__atomic_bit_barrier_my_barrier
	$byte,	10                              // Abbrev [10] 0x15d:0xb DW_TAG_typedef
	$long,	360                             // DW_AT_type
	$long,	.Linfo_string24                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	7                               // Abbrev [7] 0x168:0x7 DW_TAG_base_type
	$long,	.Linfo_string23                 // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	15                              // Abbrev [15] 0x16f:0x1 DW_TAG_pointer_type
	$byte,	5                               // Abbrev [5] 0x170:0x5 DW_TAG_pointer_type
	$long,	210                             // DW_AT_type
	$byte,	5                               // Abbrev [5] 0x175:0x5 DW_TAG_pointer_type
	$long,	378                             // DW_AT_type
	$byte,	16                              // Abbrev [16] 0x17a:0x1 DW_TAG_const_type
	$byte,	17                              // Abbrev [17] 0x17b:0x4d DW_TAG_subprogram
	$long,	.Lfunc_begin0                   // DW_AT_low_pc
	$long,	.Lfunc_end0 - .Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string32                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	24                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	210                             // DW_AT_type
                                        // DW_AT_external
	$byte,	18                              // Abbrev [18] 0x190:0xf DW_TAG_formal_parameter
	$long,	.Ldebug_loc0                    // DW_AT_location
	$long,	.Linfo_string39                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	24                              // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x19f:0xf DW_TAG_variable
	$long,	.Ldebug_loc1                    // DW_AT_location
	$long,	.Linfo_string40                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	25                              // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x1ae:0x19 DW_TAG_lexical_block
	$long,	.Lfunc_begin0                   // DW_AT_low_pc
	$long,	.Ltmp254 - .Lfunc_begin0          // DW_AT_high_pc
	$byte,	19                              // Abbrev [19] 0x1b7:0xf DW_TAG_variable
	$long,	.Ldebug_loc2                    // DW_AT_location
	$long,	.Linfo_string41                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	27                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	17                              // Abbrev [17] 0x1c8:0x4d DW_TAG_subprogram
	$long,	.Lfunc_begin1                   // DW_AT_low_pc
	$long,	.Lfunc_end1 - .Lfunc_begin1       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string33                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	210                             // DW_AT_type
                                        // DW_AT_external
	$byte,	18                              // Abbrev [18] 0x1dd:0xf DW_TAG_formal_parameter
	$long,	.Ldebug_loc3                    // DW_AT_location
	$long,	.Linfo_string40                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x1ec:0xf DW_TAG_formal_parameter
	$long,	.Ldebug_loc4                    // DW_AT_location
	$long,	.Linfo_string39                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x1fb:0x19 DW_TAG_lexical_block
	$long,	.Ltmp256                        // DW_AT_low_pc
	$long,	.Ltmp383 - .Ltmp256               // DW_AT_high_pc
	$byte,	19                              // Abbrev [19] 0x204:0xf DW_TAG_variable
	$long,	.Ldebug_loc5                    // DW_AT_location
	$long,	.Linfo_string41                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	36                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	17                              // Abbrev [17] 0x215:0x51 DW_TAG_subprogram
	$long,	.Lfunc_begin2                   // DW_AT_low_pc
	$long,	.Lfunc_end2 - .Lfunc_begin2       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string34                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	210                             // DW_AT_type
                                        // DW_AT_external
	$byte,	18                              // Abbrev [18] 0x22a:0xf DW_TAG_formal_parameter
	$long,	.Ldebug_loc6                    // DW_AT_location
	$long,	.Linfo_string42                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x239:0xf DW_TAG_formal_parameter
	$long,	.Ldebug_loc7                    // DW_AT_location
	$long,	.Linfo_string43                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x248:0xf DW_TAG_variable
	$long,	.Ldebug_loc8                    // DW_AT_location
	$long,	.Linfo_string44                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	43                              // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x257:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp388                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x25e:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp392                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x266:0x47 DW_TAG_subprogram
	$long,	.Lfunc_begin3                   // DW_AT_low_pc
	$long,	.Lfunc_end3 - .Lfunc_begin3       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string35                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	63                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	$byte,	23                              // Abbrev [23] 0x277:0xd DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	.Linfo_string40                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	63                              // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x284:0xf DW_TAG_formal_parameter
	$long,	.Ldebug_loc9                    // DW_AT_location
	$long,	.Linfo_string44                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	63                              // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x293:0x19 DW_TAG_lexical_block
	$long,	.Lfunc_begin3                   // DW_AT_low_pc
	$long,	.Ltmp524 - .Lfunc_begin3          // DW_AT_high_pc
	$byte,	19                              // Abbrev [19] 0x29c:0xf DW_TAG_variable
	$long,	.Ldebug_loc10                   // DW_AT_location
	$long,	.Linfo_string41                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	65                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	24                              // Abbrev [24] 0x2ad:0xc DW_TAG_subprogram
	$long,	.Linfo_string25                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	697                             // DW_AT_type
	$byte,	1                               // DW_AT_inline
	$byte,	10                              // Abbrev [10] 0x2b9:0xb DW_TAG_typedef
	$long,	172                             // DW_AT_type
	$long,	.Linfo_string26                 // DW_AT_name
	$byte,	6                               // DW_AT_decl_file
	$byte,	27                              // DW_AT_decl_line
	$byte,	25                              // Abbrev [25] 0x2c4:0x2a DW_TAG_subprogram
	$long,	.Linfo_string27                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$byte,	1                               // DW_AT_inline
	$byte,	26                              // Abbrev [26] 0x2cc:0xb DW_TAG_formal_parameter
	$long,	.Linfo_string28                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	373                             // DW_AT_type
	$byte,	26                              // Abbrev [26] 0x2d7:0xb DW_TAG_formal_parameter
	$long,	.Linfo_string29                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	367                             // DW_AT_type
	$byte,	26                              // Abbrev [26] 0x2e2:0xb DW_TAG_formal_parameter
	$long,	.Linfo_string30                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	17                              // Abbrev [17] 0x2ee:0x100 DW_TAG_subprogram
	$long,	.Lfunc_begin4                   // DW_AT_low_pc
	$long,	.Lfunc_end4 - .Lfunc_begin4       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string36                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	81                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	77                              // DW_AT_type
                                        // DW_AT_external
	$byte,	19                              // Abbrev [19] 0x303:0xf DW_TAG_variable
	$long,	.Ldebug_loc11                   // DW_AT_location
	$long,	.Linfo_string43                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	82                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	27                              // Abbrev [27] 0x312:0xb DW_TAG_variable
	$long,	.Linfo_string45                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	92                              // DW_AT_decl_line
	$long,	1430                            // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x31d:0xf DW_TAG_variable
	$long,	.Ldebug_loc12                   // DW_AT_location
	$long,	.Linfo_string46                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	94                              // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x32c:0xf DW_TAG_variable
	$long,	.Ldebug_loc13                   // DW_AT_location
	$long,	.Linfo_string47                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	97                              // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x33b:0xf DW_TAG_variable
	$long,	.Ldebug_loc14                   // DW_AT_location
	$long,	.Linfo_string48                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	27                              // Abbrev [27] 0x34a:0xb DW_TAG_variable
	$long,	.Linfo_string49                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	98                              // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x355:0xf DW_TAG_variable
	$long,	.Ldebug_loc15                   // DW_AT_location
	$long,	.Linfo_string42                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	104                             // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	28                              // Abbrev [28] 0x364:0x10 DW_TAG_inlined_subroutine
	$long,	685                             // DW_AT_abstract_origin
	$long,	.Ltmp526                        // DW_AT_low_pc
	$long,	.Ltmp528 - .Ltmp526               // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	82                              // DW_AT_call_line
	$byte,	31                              // DW_AT_call_column
	$byte,	20                              // Abbrev [20] 0x374:0x3d DW_TAG_lexical_block
	$long,	.Ltmp535                        // DW_AT_low_pc
	$long,	.Ltmp545 - .Ltmp535               // DW_AT_high_pc
	$byte,	29                              // Abbrev [29] 0x37d:0xd DW_TAG_variable
	$byte,	1                               // DW_AT_location
	$byte,	97
	$long,	.Linfo_string50                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	106                             // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	30                              // Abbrev [30] 0x38a:0x26 DW_TAG_inlined_subroutine
	$long,	708                             // DW_AT_abstract_origin
	$long,	.Ltmp538                        // DW_AT_low_pc
	$long,	.Ltmp539 - .Ltmp538               // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	109                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	31                              // Abbrev [31] 0x39a:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	716                             // DW_AT_abstract_origin
	$byte,	31                              // Abbrev [31] 0x3a1:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	94
	$long,	727                             // DW_AT_abstract_origin
	$byte,	32                              // Abbrev [32] 0x3a8:0x7 DW_TAG_formal_parameter
	$ascii,	"\200\b"                        // DW_AT_const_value
	$long,	738                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	20                              // Abbrev [20] 0x3b1:0x19 DW_TAG_lexical_block
	$long,	.Ltmp548                        // DW_AT_low_pc
	$long,	.Ltmp564 - .Ltmp548               // DW_AT_high_pc
	$byte,	19                              // Abbrev [19] 0x3ba:0xf DW_TAG_variable
	$long,	.Ldebug_loc16                   // DW_AT_location
	$long,	.Linfo_string51                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	123                             // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	21                              // Abbrev [21] 0x3ca:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp529                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x3d1:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp530                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x3d8:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp533                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x3df:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp541                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x3e6:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp546                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	25                              // Abbrev [25] 0x3ee:0x2a DW_TAG_subprogram
	$long,	.Linfo_string31                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$byte,	1                               // DW_AT_inline
	$byte,	26                              // Abbrev [26] 0x3f6:0xb DW_TAG_formal_parameter
	$long,	.Linfo_string28                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	373                             // DW_AT_type
	$byte,	26                              // Abbrev [26] 0x401:0xb DW_TAG_formal_parameter
	$long,	.Linfo_string29                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	367                             // DW_AT_type
	$byte,	26                              // Abbrev [26] 0x40c:0xb DW_TAG_formal_parameter
	$long,	.Linfo_string30                 // DW_AT_name
	$byte,	5                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	17                              // Abbrev [17] 0x418:0x161 DW_TAG_subprogram
	$long,	.Lfunc_begin5                   // DW_AT_low_pc
	$long,	.Lfunc_end5 - .Lfunc_begin5       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string37                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	134                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	77                              // DW_AT_type
                                        // DW_AT_external
	$byte,	19                              // Abbrev [19] 0x42d:0xf DW_TAG_variable
	$long,	.Ldebug_loc17                   // DW_AT_location
	$long,	.Linfo_string43                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	135                             // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	27                              // Abbrev [27] 0x43c:0xb DW_TAG_variable
	$long,	.Linfo_string45                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	145                             // DW_AT_decl_line
	$long,	1430                            // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x447:0xf DW_TAG_variable
	$long,	.Ldebug_loc18                   // DW_AT_location
	$long,	.Linfo_string46                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	147                             // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x456:0xf DW_TAG_variable
	$long,	.Ldebug_loc19                   // DW_AT_location
	$long,	.Linfo_string52                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	152                             // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x465:0xf DW_TAG_variable
	$long,	.Ldebug_loc20                   // DW_AT_location
	$long,	.Linfo_string47                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	150                             // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x474:0xf DW_TAG_variable
	$long,	.Ldebug_loc21                   // DW_AT_location
	$long,	.Linfo_string48                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	155                             // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	27                              // Abbrev [27] 0x483:0xb DW_TAG_variable
	$long,	.Linfo_string49                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	151                             // DW_AT_decl_line
	$long,	161                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x48e:0xf DW_TAG_variable
	$long,	.Ldebug_loc22                   // DW_AT_location
	$long,	.Linfo_string53                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	156                             // DW_AT_decl_line
	$long,	368                             // DW_AT_type
	$byte,	28                              // Abbrev [28] 0x49d:0x10 DW_TAG_inlined_subroutine
	$long,	685                             // DW_AT_abstract_origin
	$long,	.Ltmp569                        // DW_AT_low_pc
	$long,	.Ltmp571 - .Ltmp569               // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	135                             // DW_AT_call_line
	$byte,	31                              // DW_AT_call_column
	$byte,	20                              // Abbrev [20] 0x4ad:0x8c DW_TAG_lexical_block
	$long,	.Ltmp582                        // DW_AT_low_pc
	$long,	.Ltmp601 - .Ltmp582               // DW_AT_high_pc
	$byte,	29                              // Abbrev [29] 0x4b6:0xd DW_TAG_variable
	$byte,	1                               // DW_AT_location
	$byte,	97
	$long,	.Linfo_string50                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	164                             // DW_AT_decl_line
	$long,	172                             // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x4c3:0x75 DW_TAG_lexical_block
	$long,	.Ltmp588                        // DW_AT_low_pc
	$long,	.Ltmp601 - .Ltmp588               // DW_AT_high_pc
	$byte,	19                              // Abbrev [19] 0x4cc:0xf DW_TAG_variable
	$long,	.Ldebug_loc23                   // DW_AT_location
	$long,	.Linfo_string42                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	170                             // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x4db:0xf DW_TAG_variable
	$long,	.Ldebug_loc24                   // DW_AT_location
	$long,	.Linfo_string44                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	173                             // DW_AT_decl_line
	$long,	210                             // DW_AT_type
	$byte,	30                              // Abbrev [30] 0x4ea:0x27 DW_TAG_inlined_subroutine
	$long,	708                             // DW_AT_abstract_origin
	$long,	.Ltmp589                        // DW_AT_low_pc
	$long,	.Ltmp590 - .Ltmp589               // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	167                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	31                              // Abbrev [31] 0x4fa:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	716                             // DW_AT_abstract_origin
	$byte,	31                              // Abbrev [31] 0x501:0x8 DW_TAG_formal_parameter
	$byte,	2                               // DW_AT_location
	$byte,	145
	$byte,	112
	$long,	727                             // DW_AT_abstract_origin
	$byte,	32                              // Abbrev [32] 0x509:0x7 DW_TAG_formal_parameter
	$ascii,	"\200\b"                        // DW_AT_const_value
	$long,	738                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	30                              // Abbrev [30] 0x511:0x26 DW_TAG_inlined_subroutine
	$long,	1006                            // DW_AT_abstract_origin
	$long,	.Ltmp598                        // DW_AT_low_pc
	$long,	.Ltmp599 - .Ltmp598               // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	182                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	31                              // Abbrev [31] 0x521:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	96
	$long,	1014                            // DW_AT_abstract_origin
	$byte,	31                              // Abbrev [31] 0x528:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	1025                            // DW_AT_abstract_origin
	$byte,	32                              // Abbrev [32] 0x52f:0x7 DW_TAG_formal_parameter
	$ascii,	"\200\b"                        // DW_AT_const_value
	$long,	1036                            // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	21                              // Abbrev [21] 0x539:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp572                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x540:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp573                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x547:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp576                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x54e:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp578                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x555:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp582                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x55c:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp592                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x563:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp594                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x56a:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp596                        // DW_AT_low_pc
	$byte,	21                              // Abbrev [21] 0x571:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp597                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	17                              // Abbrev [17] 0x579:0x1d DW_TAG_subprogram
	$long,	.Lfunc_begin6                   // DW_AT_low_pc
	$long,	.Lfunc_end6 - .Lfunc_begin6       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	.Linfo_string38                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	75                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	77                              // DW_AT_type
                                        // DW_AT_external
	$byte,	21                              // Abbrev [21] 0x58e:0x7 DW_TAG_GNU_call_site
	$byte,	1                               // DW_AT_GNU_call_site_target
	$byte,	103
	$long,	.Ltmp607                        // DW_AT_low_pc
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x596:0x5 DW_TAG_pointer_type
	$long,	258                             // DW_AT_type
	$byte,	0                               // End Of Children Mark
.Ldebug_info_end0:
	$section,	%debug_ranges,"",@progbits
.Ldebug_ranges0:
	$long,	.Lfunc_begin0
	$long,	.Lfunc_end0
	$long,	.Lfunc_begin1
	$long,	.Lfunc_end1
	$long,	.Lfunc_begin2
	$long,	.Lfunc_end2
	$long,	.Lfunc_begin3
	$long,	.Lfunc_end3
	$long,	.Lfunc_begin4
	$long,	.Lfunc_end4
	$long,	.Lfunc_begin5
	$long,	.Lfunc_end5
	$long,	.Lfunc_begin6
	$long,	.Lfunc_end6
	$long,	0
	$long,	0
	$section,	%debug_str,"MS",@progbits,1
.Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
.Linfo_string1:
	$asciz,	"dpu/task.c"                    // string offset=106
.Linfo_string2:
	$asciz,	"/root/uPIMulator_frontend/benchmark/SCAN - RSS" // string offset=117
.Linfo_string3:
	$asciz,	"kernels"                       // string offset=162
.Linfo_string4:
	$asciz,	"int"                           // string offset=170
.Linfo_string5:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=174
.Linfo_string6:
	$asciz,	"DPU_INPUT_ARGUMENTS"           // string offset=194
.Linfo_string7:
	$asciz,	"size"                          // string offset=214
.Linfo_string8:
	$asciz,	"unsigned int"                  // string offset=219
.Linfo_string9:
	$asciz,	"uint32_t"                      // string offset=232
.Linfo_string10:
	$asciz,	"kernel"                        // string offset=241
.Linfo_string11:
	$asciz,	"kernel1"                       // string offset=248
.Linfo_string12:
	$asciz,	"kernel2"                       // string offset=256
.Linfo_string13:
	$asciz,	"nr_kernels"                    // string offset=264
.Linfo_string14:
	$asciz,	"t_count"                       // string offset=275
.Linfo_string15:
	$asciz,	"long long int"                 // string offset=283
.Linfo_string16:
	$asciz,	"int64_t"                       // string offset=297
.Linfo_string17:
	$asciz,	"dpu_arguments_t"               // string offset=305
.Linfo_string18:
	$asciz,	"DPU_RESULTS"                   // string offset=321
.Linfo_string19:
	$asciz,	"dpu_results_t"                 // string offset=333
.Linfo_string20:
	$asciz,	"message"                       // string offset=347
.Linfo_string21:
	$asciz,	"message_partial_count"         // string offset=355
.Linfo_string22:
	$asciz,	"__atomic_bit_barrier_my_barrier" // string offset=377
.Linfo_string23:
	$asciz,	"unsigned char"                 // string offset=409
.Linfo_string24:
	$asciz,	"uint8_t"                       // string offset=423
.Linfo_string25:
	$asciz,	"me"                            // string offset=431
.Linfo_string26:
	$asciz,	"sysname_t"                     // string offset=434
.Linfo_string27:
	$asciz,	"mram_read"                     // string offset=444
.Linfo_string28:
	$asciz,	"from"                          // string offset=454
.Linfo_string29:
	$asciz,	"to"                            // string offset=459
.Linfo_string30:
	$asciz,	"nb_of_bytes"                   // string offset=462
.Linfo_string31:
	$asciz,	"mram_write"                    // string offset=474
.Linfo_string32:
	$asciz,	"reduction"                     // string offset=485
.Linfo_string33:
	$asciz,	"scan"                          // string offset=495
.Linfo_string34:
	$asciz,	"handshake_sync"                // string offset=500
.Linfo_string35:
	$asciz,	"add_"                          // string offset=515
.Linfo_string36:
	$asciz,	"main_kernel1"                  // string offset=520
.Linfo_string37:
	$asciz,	"main_kernel2"                  // string offset=533
.Linfo_string38:
	$asciz,	"main"                          // string offset=546
.Linfo_string39:
	$asciz,	"input"                         // string offset=551
.Linfo_string40:
	$asciz,	"output"                        // string offset=557
.Linfo_string41:
	$asciz,	"j"                             // string offset=564
.Linfo_string42:
	$asciz,	"l_count"                       // string offset=566
.Linfo_string43:
	$asciz,	"tasklet_id"                    // string offset=574
.Linfo_string44:
	$asciz,	"p_count"                       // string offset=585
.Linfo_string45:
	$asciz,	"result"                        // string offset=593
.Linfo_string46:
	$asciz,	"input_size_dpu_bytes"          // string offset=600
.Linfo_string47:
	$asciz,	"base_tasklet"                  // string offset=621
.Linfo_string48:
	$asciz,	"cache_A"                       // string offset=634
.Linfo_string49:
	$asciz,	"mram_base_addr_A"              // string offset=642
.Linfo_string50:
	$asciz,	"byte_index"                    // string offset=659
.Linfo_string51:
	$asciz,	"each_tasklet"                  // string offset=670
.Linfo_string52:
	$asciz,	"mram_base_addr_B"              // string offset=683
.Linfo_string53:
	$asciz,	"cache_B"                       // string offset=700
	$addrsig,
	$addrsig_sym, main_kernel1
	$addrsig_sym, main_kernel2
	$addrsig_sym, DPU_INPUT_ARGUMENTS
	$addrsig_sym, my_barrier
	$addrsig_sym, DPU_RESULTS
	$addrsig_sym, __sys_used_mram_end
	$section,	%debug_line,"",@progbits
.Lline_table_start0:
	$text,
	$file,	"handshake.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/syslib/handshake.c"
	$file,	2 "/root" "uPIMulator_frontend/sdk/stdlib/stdint.h"
	$section,	%text, handshake_notify,"ax",@progbits
	$globl,	handshake_notify                //  -  -  Begin function handshake_notify
	$type,	handshake_notify,@function
handshake_notify:                       // @handshake_notify
handshake..Lfunc_begin0:
	$loc,	1 21 0                          // uPIMulator_frontend/sdk/syslib/handshake.c:21:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	$cfi_def_cfa_offset, 0
	$loc,	1 24 5 prologue_end             // uPIMulator_frontend/sdk/syslib/handshake.c:24:5
	$move , r0, __atomic_start_addr
	$move , r1, __atomic_bit___handshake
	$sub , r0, r1, r0
	$add , r0, id, r0
	// inline asm
handshake..Ltmp0:
	$acquire , r0, 0, nz, handshake..Ltmp0
	// inline asm
	$loc,	1 25 12                         // uPIMulator_frontend/sdk/syslib/handshake.c:25:12
	$lbu , r2, id, __handshake_array
handshake..Ltmp1:
	//DEBUG_VALUE: handshake_notify:info < -  $r2
	$file,	3 "/root" "uPIMulator_frontend/sdk/syslib/defs.h"
	$loc,	3 35 12                         // uPIMulator_frontend/sdk/syslib/defs.h:35:12
	$move , r1, id
handshake..Ltmp2:
	//DEBUG_VALUE: handshake_notify:tid < -  $r1
	$loc,	1 27 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:27:9
	$jeq , r2, 255, handshake..LBB0_1
handshake..Ltmp3:
// %bb.2:
	//DEBUG_VALUE: handshake_notify:info < -  $r2
	//DEBUG_VALUE: handshake_notify:tid < -  $r1
	$loc,	1 32 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:32:9
	// inline asm
handshake..Ltmp4:
	$resume , r2, 0, nz, handshake..Ltmp4 + 0
	// inline asm
	$move , r2, 255
handshake..Ltmp5:
	$loc,	1 33 32                         // uPIMulator_frontend/sdk/syslib/handshake.c:33:32
	$sb , r1, __handshake_array, r2
	$loc,	1 34 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:34:9
	// inline asm
handshake..Ltmp6:
	$release , r0, 0, nz, handshake..Ltmp6 + 1
	// inline asm
handshake..Ltmp7:
	$loc,	1 36 1                          // uPIMulator_frontend/sdk/syslib/handshake.c:36:1
	$jump , r23
handshake..Ltmp8:
handshake..LBB0_1:
	//DEBUG_VALUE: handshake_notify:info < -  $r2
	//DEBUG_VALUE: handshake_notify:tid < -  $r1
	$loc,	1 28 32                         // uPIMulator_frontend/sdk/syslib/handshake.c:28:32
	$sb , r1, __handshake_array, r1
	$loc,	1 29 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:29:9
	// inline asm
handshake..Ltmp9:
	$release , r0, 0, nz, handshake..Ltmp9 + 1
	// inline asm
	$loc,	1 30 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:30:9
	// inline asm
	$stop , false, 0x0
	// inline asm
handshake..Ltmp10:
	$loc,	1 36 1                          // uPIMulator_frontend/sdk/syslib/handshake.c:36:1
	$jump , r23
handshake..Ltmp11:
handshake..Lfunc_end0:
	$size,	handshake_notify, handshake..Lfunc_end0 - handshake_notify
	$cfi_endproc,
	$file,	4 "/root" "uPIMulator_frontend/sdk/syslib/sysdef.h"
	$section,	%stack_sizes,"o",@progbits,%text, handshake_notify
	$long,	handshake..Lfunc_begin0
	$byte,	0
	$section,	%text, handshake_notify,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, handshake_wait_for,"ax",@progbits
	$globl,	handshake_wait_for              //  -  -  Begin function handshake_wait_for
	$type,	handshake_wait_for,@function
handshake_wait_for:                     // @handshake_wait_for
handshake..Lfunc_begin1:
	$loc,	1 40 0                          // uPIMulator_frontend/sdk/syslib/handshake.c:40:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: handshake_wait_for:notifier < -  $r0
	//DEBUG_VALUE: handshake_wait_for:notifier < -  $r0
	$cfi_def_cfa_offset, 0
	$loc,	1 45 5 prologue_end             // uPIMulator_frontend/sdk/syslib/handshake.c:45:5
	$and , r0, r0, 255
handshake..Ltmp12:
	$move , r1, __atomic_start_addr
	$move , r2, __atomic_bit___handshake
	$sub , r1, r2, r1
	$add , r1, r0, r1
	// inline asm
handshake..Ltmp13:
	$acquire , r1, 0, nz, handshake..Ltmp13
	// inline asm
	$loc,	1 46 26                         // uPIMulator_frontend/sdk/syslib/handshake.c:46:26
	$lbu , r3, r0, __handshake_array
handshake..Ltmp14:
	//DEBUG_VALUE: handshake_wait_for:info < -  $r3
	$loc,	3 35 12                         // uPIMulator_frontend/sdk/syslib/defs.h:35:12
	$move , r2, id
handshake..Ltmp15:
	//DEBUG_VALUE: handshake_wait_for:thread < -  undef
	//DEBUG_VALUE: handshake_wait_for:tid < -  $r2
	$loc,	1 48 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:48:9
	$jeq , r3, 255, handshake..LBB1_1
handshake..Ltmp16:
// %bb.2:
	//DEBUG_VALUE: handshake_wait_for:info < -  $r3
	//DEBUG_VALUE: handshake_wait_for:tid < -  $r2
	$loc,	1 53 13                         // uPIMulator_frontend/sdk/syslib/handshake.c:53:13
	$jneq , r3, r0, handshake..LBB1_3
handshake..Ltmp17:
// %bb.4:
	//DEBUG_VALUE: handshake_wait_for:info < -  $r3
	//DEBUG_VALUE: handshake_wait_for:tid < -  $r2
	$loc,	1 58 13                         // uPIMulator_frontend/sdk/syslib/handshake.c:58:13
	// inline asm
handshake..Ltmp18:
	$resume , r3, 0, nz, handshake..Ltmp18 + 0
	// inline asm
	$move , r2, 255
handshake..Ltmp19:
	$loc,	1 59 39                         // uPIMulator_frontend/sdk/syslib/handshake.c:59:39
	$sb , r0, __handshake_array, r2
handshake..Ltmp20:
	$loc,	1 62 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:62:9
	// inline asm
handshake..Ltmp21:
	$release , r1, 0, nz, handshake..Ltmp21 + 1
	// inline asm
	$move , r0, 0
handshake..Ltmp22:
	$loc,	1 66 1                          // uPIMulator_frontend/sdk/syslib/handshake.c:66:1
	$jump , r23
handshake..Ltmp23:
handshake..LBB1_1:
	//DEBUG_VALUE: handshake_wait_for:info < -  $r3
	//DEBUG_VALUE: handshake_wait_for:tid < -  $r2
	$loc,	1 49 35                         // uPIMulator_frontend/sdk/syslib/handshake.c:49:35
	$sb , r0, __handshake_array, r2
	$loc,	1 50 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:50:9
	// inline asm
handshake..Ltmp24:
	$release , r1, 0, nz, handshake..Ltmp24 + 1
	// inline asm
	$loc,	1 51 9                          // uPIMulator_frontend/sdk/syslib/handshake.c:51:9
	// inline asm
	$stop , false, 0x0
	// inline asm
	$move , r0, 0
handshake..Ltmp25:
	$loc,	1 66 1                          // uPIMulator_frontend/sdk/syslib/handshake.c:66:1
	$jump , r23
handshake..Ltmp26:
handshake..LBB1_3:
	//DEBUG_VALUE: handshake_wait_for:info < -  $r3
	//DEBUG_VALUE: handshake_wait_for:tid < -  $r2
	$loc,	1 54 13                         // uPIMulator_frontend/sdk/syslib/handshake.c:54:13
	$lsl , r2, r2, 2
handshake..Ltmp27:
	$loc,	1 0 13 is_stmt 0                // uPIMulator_frontend/sdk/syslib/handshake.c:0:13
	$move , r0, 7
	$loc,	1 54 19                         // uPIMulator_frontend/sdk/syslib/handshake.c:54:19
	$sw , r2, __errno, r0
	$loc,	1 55 13 is_stmt 1               // uPIMulator_frontend/sdk/syslib/handshake.c:55:13
	// inline asm
handshake..Ltmp28:
	$release , r1, 0, nz, handshake..Ltmp28 + 1
	// inline asm
handshake..Ltmp29:
	$loc,	1 66 1                          // uPIMulator_frontend/sdk/syslib/handshake.c:66:1
	$jump , r23
handshake..Ltmp30:
handshake..Lfunc_end1:
	$size,	handshake_wait_for, handshake..Lfunc_end1 - handshake_wait_for
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, handshake_wait_for
	$long,	handshake..Lfunc_begin1
	$byte,	0
	$section,	%text, handshake_wait_for,"ax",@progbits
                                        //  -  -  End function
	$type,	__handshake_array,@object       // @__handshake_array
	$section,	%data, __handshake_array,"aw",@progbits
	$globl,	__handshake_array
__handshake_array:
	$zero,	24,255
	$size,	__handshake_array, 24

	$type,	__atomic_bit___handshake,@object // @__atomic_bit___handshake
	$section,	%atomic,"aw",@progbits
	$globl,	__atomic_bit___handshake
__atomic_bit___handshake:
	$zero,	24
	$size,	__atomic_bit___handshake, 24

	$section,	%debug_loc,"",@progbits
handshake..Ldebug_loc0:
	$long,	 - 1
	$long,	handshake..Lfunc_begin0                   //   base address
	$long,	handshake..Ltmp1 - handshake..Lfunc_begin0
	$long,	handshake..Ltmp5 - handshake..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	handshake..Ltmp8 - handshake..Lfunc_begin0
	$long,	handshake..Lfunc_end0 - handshake..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	0
	$long,	0
handshake..Ldebug_loc1:
	$long,	 - 1
	$long,	handshake..Lfunc_begin0                   //   base address
	$long,	handshake..Ltmp2 - handshake..Lfunc_begin0
	$long,	handshake..Lfunc_end0 - handshake..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
handshake..Ldebug_loc2:
	$long,	 - 1
	$long,	handshake..Lfunc_begin1                   //   base address
	$long,	handshake..Lfunc_begin1 - handshake..Lfunc_begin1
	$long,	handshake..Ltmp12 - handshake..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	0
	$long,	0
handshake..Ldebug_loc3:
	$long,	 - 1
	$long,	handshake..Lfunc_begin1                   //   base address
	$long,	handshake..Ltmp14 - handshake..Lfunc_begin1
	$long,	handshake..Lfunc_end1 - handshake..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
handshake..Ldebug_loc4:
	$long,	 - 1
	$long,	handshake..Lfunc_begin1                   //   base address
	$long,	handshake..Ltmp15 - handshake..Lfunc_begin1
	$long,	handshake..Ltmp19 - handshake..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	handshake..Ltmp23 - handshake..Lfunc_begin1
	$long,	handshake..Ltmp27 - handshake..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	0
	$long,	0
	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	11                              // Abbreviation Code
	$byte,	29                              // DW_TAG_inlined_subroutine
	$byte,	0                               // DW_CHILDREN_no
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	88                              // DW_AT_call_file
	$byte,	11                              // DW_FORM_data1
	$byte,	89                              // DW_AT_call_line
	$byte,	11                              // DW_FORM_data1
	$byte,	87                              // DW_AT_call_column
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	12                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	13                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	14                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
handshake..Lcu_begin0:
	$long,	handshake..Ldebug_info_end0 - handshake..Ldebug_info_start0 // Length of Unit
handshake..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x13d DW_TAG_compile_unit
	$long,	handshake..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	handshake..Linfo_string1                  // DW_AT_name
	$long,	handshake..Lline_table_start0             // DW_AT_stmt_list
	$long,	handshake..Linfo_string2                  // DW_AT_comp_dir
	$long,	0                               // DW_AT_low_pc
	$long,	handshake..Ldebug_ranges0                 // DW_AT_ranges
	$byte,	2                               // Abbrev [2] 0x26:0x11 DW_TAG_variable
	$long,	handshake..Linfo_string3                  // DW_AT_name
	$long,	55                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__handshake_array
	$byte,	3                               // Abbrev [3] 0x37:0xc DW_TAG_array_type
	$long,	67                              // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x3c:0x6 DW_TAG_subrange_type
	$long,	74                              // DW_AT_type
	$byte,	24                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x43:0x7 DW_TAG_base_type
	$long,	handshake..Linfo_string4                  // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	6                               // Abbrev [6] 0x4a:0x7 DW_TAG_base_type
	$long,	handshake..Linfo_string5                  // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	2                               // Abbrev [2] 0x51:0x11 DW_TAG_variable
	$long,	handshake..Linfo_string6                  // DW_AT_name
	$long,	98                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	14                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__atomic_bit___handshake
	$byte,	3                               // Abbrev [3] 0x62:0xc DW_TAG_array_type
	$long,	110                             // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x67:0x6 DW_TAG_subrange_type
	$long,	74                              // DW_AT_type
	$byte,	24                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	7                               // Abbrev [7] 0x6e:0xb DW_TAG_typedef
	$long,	67                              // DW_AT_type
	$long,	handshake..Linfo_string7                  // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	8                               // Abbrev [8] 0x79:0xc DW_TAG_subprogram
	$long,	handshake..Linfo_string8                  // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	133                             // DW_AT_type
	$byte,	1                               // DW_AT_inline
	$byte,	7                               // Abbrev [7] 0x85:0xb DW_TAG_typedef
	$long,	144                             // DW_AT_type
	$long,	handshake..Linfo_string10                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	27                              // DW_AT_decl_line
	$byte,	5                               // Abbrev [5] 0x90:0x7 DW_TAG_base_type
	$long,	handshake..Linfo_string9                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	9                               // Abbrev [9] 0x97:0x40 DW_TAG_subprogram
	$long,	handshake..Lfunc_begin0                   // DW_AT_low_pc
	$long,	handshake..Lfunc_end0 - handshake..Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	handshake..Linfo_string11                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	20                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	$byte,	10                              // Abbrev [10] 0xa8:0xf DW_TAG_variable
	$long,	handshake..Ldebug_loc0                    // DW_AT_location
	$long,	handshake..Linfo_string14                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	23                              // DW_AT_decl_line
	$long,	67                              // DW_AT_type
	$byte,	10                              // Abbrev [10] 0xb7:0xf DW_TAG_variable
	$long,	handshake..Ldebug_loc1                    // DW_AT_location
	$long,	handshake..Linfo_string15                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	22                              // DW_AT_decl_line
	$long,	316                             // DW_AT_type
	$byte,	11                              // Abbrev [11] 0xc6:0x10 DW_TAG_inlined_subroutine
	$long,	121                             // DW_AT_abstract_origin
	$long,	handshake..Ltmp1                          // DW_AT_low_pc
	$long,	handshake..Ltmp2 - handshake..Ltmp1                   // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	22                              // DW_AT_call_line
	$byte,	23                              // DW_AT_call_column
	$byte,	0                               // End Of Children Mark
	$byte,	12                              // Abbrev [12] 0xd7:0x5e DW_TAG_subprogram
	$long,	handshake..Lfunc_begin1                   // DW_AT_low_pc
	$long,	handshake..Lfunc_end1 - handshake..Lfunc_begin1       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	handshake..Linfo_string12                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	39                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	309                             // DW_AT_type
                                        // DW_AT_external
	$byte,	13                              // Abbrev [13] 0xec:0xf DW_TAG_formal_parameter
	$long,	handshake..Ldebug_loc2                    // DW_AT_location
	$long,	handshake..Linfo_string17                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	39                              // DW_AT_decl_line
	$long,	144                             // DW_AT_type
	$byte,	10                              // Abbrev [10] 0xfb:0xf DW_TAG_variable
	$long,	handshake..Ldebug_loc3                    // DW_AT_location
	$long,	handshake..Linfo_string14                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	46                              // DW_AT_decl_line
	$long,	67                              // DW_AT_type
	$byte,	14                              // Abbrev [14] 0x10a:0xb DW_TAG_variable
	$long,	handshake..Linfo_string18                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	43                              // DW_AT_decl_line
	$long,	67                              // DW_AT_type
	$byte,	10                              // Abbrev [10] 0x115:0xf DW_TAG_variable
	$long,	handshake..Ldebug_loc4                    // DW_AT_location
	$long,	handshake..Linfo_string15                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	41                              // DW_AT_decl_line
	$long,	316                             // DW_AT_type
	$byte,	11                              // Abbrev [11] 0x124:0x10 DW_TAG_inlined_subroutine
	$long,	121                             // DW_AT_abstract_origin
	$long,	handshake..Ltmp14                         // DW_AT_low_pc
	$long,	handshake..Ltmp15 - handshake..Ltmp14                 // DW_AT_high_pc
	$byte,	1                               // DW_AT_call_file
	$byte,	41                              // DW_AT_call_line
	$byte,	23                              // DW_AT_call_column
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x135:0x7 DW_TAG_base_type
	$long,	handshake..Linfo_string13                 // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	7                               // Abbrev [7] 0x13c:0xb DW_TAG_typedef
	$long,	144                             // DW_AT_type
	$long,	handshake..Linfo_string16                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	18                              // DW_AT_decl_line
	$byte,	0                               // End Of Children Mark
handshake..Ldebug_info_end0:
	$section,	%debug_ranges,"",@progbits
handshake..Ldebug_ranges0:
	$long,	handshake..Lfunc_begin0
	$long,	handshake..Lfunc_end0
	$long,	handshake..Lfunc_begin1
	$long,	handshake..Lfunc_end1
	$long,	0
	$long,	0
	$section,	%debug_str,"MS",@progbits,1
handshake..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
handshake..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/syslib/handshake.c" // string offset=106
handshake..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=155
handshake..Linfo_string3:
	$asciz,	"__handshake_array"             // string offset=176
handshake..Linfo_string4:
	$asciz,	"unsigned char"                 // string offset=194
handshake..Linfo_string5:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=208
handshake..Linfo_string6:
	$asciz,	"__atomic_bit___handshake"      // string offset=228
handshake..Linfo_string7:
	$asciz,	"uint8_t"                       // string offset=253
handshake..Linfo_string8:
	$asciz,	"me"                            // string offset=261
handshake..Linfo_string9:
	$asciz,	"unsigned int"                  // string offset=264
handshake..Linfo_string10:
	$asciz,	"sysname_t"                     // string offset=277
handshake..Linfo_string11:
	$asciz,	"handshake_notify"              // string offset=287
handshake..Linfo_string12:
	$asciz,	"handshake_wait_for"            // string offset=304
handshake..Linfo_string13:
	$asciz,	"int"                           // string offset=323
handshake..Linfo_string14:
	$asciz,	"info"                          // string offset=327
handshake..Linfo_string15:
	$asciz,	"tid"                           // string offset=332
handshake..Linfo_string16:
	$asciz,	"thread_id_t"                   // string offset=336
handshake..Linfo_string17:
	$asciz,	"notifier"                      // string offset=348
handshake..Linfo_string18:
	$asciz,	"thread"                        // string offset=357
	$addrsig,
	$addrsig_sym, __atomic_bit___handshake
	$addrsig_sym, __atomic_start_addr
	$section,	%debug_line,"",@progbits
handshake..Lline_table_start0:
	$text,
	$file,	"memset.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/stdlib/stdint.h"
	$file,	2 "/root" "uPIMulator_frontend/sdk/stdlib/memset.c"
	$section,	%text, __memset_wram_4align,"ax",@progbits
	$globl,	__memset_wram_4align            //  -  -  Begin function __memset_wram_4align
	$type,	__memset_wram_4align,@function
__memset_wram_4align:                   // @__memset_wram_4align
memset..Lfunc_begin0:
	$loc,	2 27 0                          // uPIMulator_frontend/sdk/stdlib/memset.c:27:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:c < -  $r1
	//DEBUG_VALUE: __memset_wram_4align:c < -  $r1
	//DEBUG_VALUE: __memset_wram_4align:c < -  [DW_OP_constu 255, DW_OP_and, DW_OP_stack_value] $r1
	//DEBUG_VALUE: __memset_wram_4align:len < -  $r2
	//DEBUG_VALUE: __memset_wram_4align:len < -  $r2
	$cfi_def_cfa_offset, 0
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  undef
	//DEBUG_VALUE: i < -  0
	$loc,	2 34 34 prologue_end            // uPIMulator_frontend/sdk/stdlib/memset.c:34:34
	$lsr , r2, r2, 2, z, memset..LBB0_3
memset..Ltmp0:
// %bb.1:
	//DEBUG_VALUE: __memset_wram_4align:c < -  [DW_OP_constu 255, DW_OP_and, DW_OP_stack_value] $r1
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r0
	//DEBUG_VALUE: i < -  0
	$loc,	2 0 34 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/memset.c:0:34
	$and , r3, r1, 255
	$lsl_add , r1, r3, r1, 24
memset..Ltmp1:
	$lsl_add , r1, r1, r3, 8
	$lsl_add , r1, r1, r3, 16
memset..Ltmp2:
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r1
	$move , r3, r0
memset..Ltmp3:
memset..LBB0_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r1
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r0
	//DEBUG_VALUE: i < -  undef
	$loc,	2 35 19 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/memset.c:35:19
	$sw , r3, 0, r1
memset..Ltmp4:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	2 34 28                         // uPIMulator_frontend/sdk/stdlib/memset.c:34:28
	$add , r3, r3, 4
	$add , r2, r2,  - 1, nz, memset..LBB0_2
memset..Ltmp5:
memset..LBB0_3:
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r0
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r0
	$loc,	2 38 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:38:5
	$jump , r23
memset..Ltmp6:
memset..Lfunc_end0:
	$size,	__memset_wram_4align, memset..Lfunc_end0 - __memset_wram_4align
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, __memset_wram_4align
	$long,	memset..Lfunc_begin0
	$byte,	0
	$section,	%text, __memset_wram_4align,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, memset,"ax",@progbits
	$globl,	memset                          //  -  -  Begin function memset
	$type,	memset,@function
memset:                                 // @memset
memset..Lfunc_begin1:
	$loc,	2 43 0                          // uPIMulator_frontend/sdk/stdlib/memset.c:43:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:len < -  $r2
	$cfi_def_cfa_offset, 0
	//DEBUG_VALUE: memset:align < -  4
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:align_offset < -  $r3
	$loc,	2 46 47 prologue_end            // uPIMulator_frontend/sdk/stdlib/memset.c:46:47
	$and , r3, r0, 3, z, memset..LBB1_1
memset..Ltmp7:
// %bb.2:
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 51 33                         // uPIMulator_frontend/sdk/stdlib/memset.c:51:33
	$sub , r4, 4, r3
memset..Ltmp8:
	//DEBUG_VALUE: head_len < -  $r4
	$loc,	2 52 13                         // uPIMulator_frontend/sdk/stdlib/memset.c:52:13
	$move , r3, r2
	$jgtu , r4, r2, memset..LBB1_4
memset..Ltmp9:
// %bb.3:
	//DEBUG_VALUE: head_len < -  $r4
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$move , r3, r4
memset..Ltmp10:
memset..LBB1_4:
	//DEBUG_VALUE: head_len < -  $r4
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	//DEBUG_VALUE: head_len < -  $r3
	//DEBUG_VALUE: __memset_wram_1align:dest < -  $r0
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r3
	//DEBUG_VALUE: __memset_wram_1align:dest8 < -  $r0
	//DEBUG_VALUE: i < -  0
	$loc,	2 15 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:15:5
	$jeq , r3, 0, memset..LBB1_7
memset..Ltmp11:
// %bb.5:
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r3
	//DEBUG_VALUE: head_len < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: __memset_wram_1align:dest8 < -  $r0
	//DEBUG_VALUE: __memset_wram_1align:dest < -  $r0
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/memset.c:0:5
	$move , r4, r0
	$move , r5, r3
memset..Ltmp12:
memset..LBB1_6:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r3
	//DEBUG_VALUE: head_len < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: __memset_wram_1align:dest8 < -  $r0
	//DEBUG_VALUE: __memset_wram_1align:dest < -  $r0
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	//DEBUG_VALUE: i < -  undef
	$loc,	2 16 18 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/memset.c:16:18
	$sb , r4, 0, r1
memset..Ltmp13:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	2 15 28                         // uPIMulator_frontend/sdk/stdlib/memset.c:15:28
	$add , r4, r4, 1
	$add , r5, r5,  - 1, nz, memset..LBB1_6
memset..Ltmp14:
memset..LBB1_7:
	//DEBUG_VALUE: head_len < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 58 13                         // uPIMulator_frontend/sdk/stdlib/memset.c:58:13
	$sub , r2, r2, r3
memset..Ltmp15:
	//DEBUG_VALUE: memset:len < -  $r2
	$loc,	2 59 11                         // uPIMulator_frontend/sdk/stdlib/memset.c:59:11
	$add , r3, r0, r3
memset..Ltmp16:
	//DEBUG_VALUE: memset:d < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:d < -  $r3
	$loc,	2 63 9                          // uPIMulator_frontend/sdk/stdlib/memset.c:63:9
	$jgeu , r2, 4, memset..LBB1_9
memset..Ltmp17:
memset..LBB1_12:
	//DEBUG_VALUE: memset:d < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:d < -  $r3
	$loc,	2 73 9                          // uPIMulator_frontend/sdk/stdlib/memset.c:73:9
	$jeq , r2, 0, memset..LBB1_14
memset..Ltmp18:
memset..LBB1_13:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	//DEBUG_VALUE: i < -  undef
	$loc,	2 16 18                         // uPIMulator_frontend/sdk/stdlib/memset.c:16:18
	$sb , r3, 0, r1
memset..Ltmp19:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	2 15 28                         // uPIMulator_frontend/sdk/stdlib/memset.c:15:28
	$add , r3, r3, 1
	$add , r2, r2,  - 1, nz, memset..LBB1_13
memset..Ltmp20:
memset..LBB1_14:
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 77 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:77:5
	$jump , r23
memset..Ltmp21:
memset..LBB1_1:
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:d < -  $r0
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 0 0 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/memset.c:0:0
	$move , r3, r0
	//DEBUG_VALUE: memset:len < -  $r2
memset..Ltmp22:
	//DEBUG_VALUE: memset:d < -  $r3
	$loc,	2 63 9 is_stmt 1                // uPIMulator_frontend/sdk/stdlib/memset.c:63:9
	$jltu , r2, 4, memset..LBB1_12
memset..Ltmp23:
memset..LBB1_9:
	//DEBUG_VALUE: memset:d < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 64 31                         // uPIMulator_frontend/sdk/stdlib/memset.c:64:31
	$and , r4, r2,  - 4
memset..Ltmp24:
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r3
	//DEBUG_VALUE: __memset_wram_4align:len < -  [DW_OP_constu 18446744073709551612, DW_OP_and, DW_OP_stack_value] $r2
	//DEBUG_VALUE: __memset_wram_4align:c < -  $r1
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r3
	//DEBUG_VALUE: body_len < -  [DW_OP_constu 18446744073709551612, DW_OP_and, DW_OP_stack_value] $r2
	$loc,	2 31 7                          // uPIMulator_frontend/sdk/stdlib/memset.c:31:7
	$and , r5, r1, 255
memset..Ltmp25:
	//DEBUG_VALUE: __memset_wram_4align:c < -  [DW_OP_constu 255, DW_OP_and, DW_OP_stack_value] $r1
	$loc,	2 32 14                         // uPIMulator_frontend/sdk/stdlib/memset.c:32:14
	$lsl_add , r6, r5, r1, 24
	$loc,	2 32 25 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/memset.c:32:25
	$lsl_add , r6, r6, r5, 8
	$loc,	2 32 37                         // uPIMulator_frontend/sdk/stdlib/memset.c:32:37
	$lsl_add , r5, r6, r5, 16
memset..Ltmp26:
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r5
	$loc,	2 34 34 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/memset.c:34:34
	$lsr , r6, r2, 2
	$move , r7, r3
memset..Ltmp27:
memset..LBB1_10:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r5
	//DEBUG_VALUE: __memset_wram_4align:dest < -  $r3
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  $r3
	//DEBUG_VALUE: memset:d < -  $r3
	//DEBUG_VALUE: body_len < -  [DW_OP_constu 18446744073709551612, DW_OP_and, DW_OP_stack_value] $r2
	//DEBUG_VALUE: __memset_wram_4align:len < -  [DW_OP_constu 18446744073709551612, DW_OP_and, DW_OP_stack_value] $r2
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: __memset_wram_4align:c < -  [DW_OP_constu 255, DW_OP_and, DW_OP_stack_value] $r1
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	//DEBUG_VALUE: i < -  undef
	$loc,	2 35 19                         // uPIMulator_frontend/sdk/stdlib/memset.c:35:19
	$sw , r7, 0, r5
memset..Ltmp28:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	2 34 28                         // uPIMulator_frontend/sdk/stdlib/memset.c:34:28
	$add , r7, r7, 4
	$add , r6, r6,  - 1, nz, memset..LBB1_10
memset..Ltmp29:
// %bb.11:
	//DEBUG_VALUE: memset:d < -  $r3
	//DEBUG_VALUE: body_len < -  [DW_OP_constu 18446744073709551612, DW_OP_and, DW_OP_stack_value] $r2
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:c < -  $r1
	//DEBUG_VALUE: memset:dest < -  $r0
	//DEBUG_VALUE: memset:align_off_mask < -  3
	//DEBUG_VALUE: memset:align < -  4
	$loc,	2 68 13                         // uPIMulator_frontend/sdk/stdlib/memset.c:68:13
	$and , r2, r2, 3
memset..Ltmp30:
	//DEBUG_VALUE: memset:len < -  $r2
	$loc,	2 69 11                         // uPIMulator_frontend/sdk/stdlib/memset.c:69:11
	$add , r3, r3, r4
memset..Ltmp31:
	//DEBUG_VALUE: memset:d < -  $r3
	//DEBUG_VALUE: memset:len < -  $r2
	//DEBUG_VALUE: memset:d < -  $r3
	$loc,	2 73 9                          // uPIMulator_frontend/sdk/stdlib/memset.c:73:9
	$jneq , r2, 0, memset..LBB1_13
	$jump , memset..LBB1_14
memset..Ltmp32:
memset..Lfunc_end1:
	$size,	memset, memset..Lfunc_end1 - memset
	$cfi_endproc,
	$file,	3 "/root" "uPIMulator_frontend/sdk/stdlib/stddef.h"
	$section,	%stack_sizes,"o",@progbits,%text, memset
	$long,	memset..Lfunc_begin1
	$byte,	0
	$section,	%text, memset,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, __memset_mram_8align,"ax",@progbits
	$globl,	__memset_mram_8align            //  -  -  Begin function __memset_mram_8align
	$type,	__memset_mram_8align,@function
__memset_mram_8align:                   // @__memset_mram_8align
memset..Lfunc_begin2:
	$loc,	2 87 0                          // uPIMulator_frontend/sdk/stdlib/memset.c:87:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r0
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r0
	//DEBUG_VALUE: __memset_mram_8align:c < -  $r1
	//DEBUG_VALUE: __memset_mram_8align:c < -  $r1
	//DEBUG_VALUE: __memset_mram_8align:len < -  $r2
	//DEBUG_VALUE: __memset_mram_8align:len < -  $r2
	//DEBUG_VALUE: __memset_wram_4align:dest < -  undef
	//DEBUG_VALUE: __memset_wram_4align:c < -  $r1
	//DEBUG_VALUE: __memset_wram_4align:len < -  8
	$cfi_def_cfa_offset, 0
	//DEBUG_VALUE: __memset_mram_8align:cache < -  undef
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  undef
	$loc,	2 31 7 prologue_end             // uPIMulator_frontend/sdk/stdlib/memset.c:31:7
	$and , r3, r1, 255
memset..Ltmp33:
	//DEBUG_VALUE: __memset_wram_4align:c < -  [DW_OP_constu 255, DW_OP_and, DW_OP_stack_value] $r1
	$loc,	2 32 14                         // uPIMulator_frontend/sdk/stdlib/memset.c:32:14
	$lsl_add , r1, r3, r1, 24
memset..Ltmp34:
	$loc,	2 32 25 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/memset.c:32:25
	$lsl_add , r1, r1, r3, 8
	$loc,	2 32 37                         // uPIMulator_frontend/sdk/stdlib/memset.c:32:37
	$lsl_add , r1, r1, r3, 16
memset..Ltmp35:
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r1
	$loc,	2 35 19 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/memset.c:35:19
	$sw , r22, 0, r1
memset..Ltmp36:
	//DEBUG_VALUE: i < -  1
	$sw , r22, 4, r1
memset..Ltmp37:
	//DEBUG_VALUE: idx < -  0
	//DEBUG_VALUE: i < -  2
	$loc,	2 93 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:93:5
	$jeq , r2, 0, memset..LBB2_3
memset..Ltmp38:
// %bb.1:
	//DEBUG_VALUE: __memset_mram_8align:len < -  $r2
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r1
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r0
	//DEBUG_VALUE: i < -  2
	//DEBUG_VALUE: idx < -  0
	//DEBUG_VALUE: __memset_wram_4align:len < -  8
	$loc,	2 0 5 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/memset.c:0:5
	$move , r1, 0
memset..Ltmp39:
memset..LBB2_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_mram_8align:len < -  $r2
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r0
	//DEBUG_VALUE: idx < -  $r1
	//DEBUG_VALUE: mram_write:to < -  undef
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	$file,	4 "/root" "uPIMulator_frontend/sdk/syslib/mram.h"
	$loc,	4 53 24 is_stmt 1               // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$add , r3, r0, r1
	$add , r4, r22, 0
memset..Ltmp40:
	$loc,	2 93 43                         // uPIMulator_frontend/sdk/stdlib/memset.c:93:43
	$add , r1, r1, 8
memset..Ltmp41:
	//DEBUG_VALUE: mram_write:from < -  $r22
	//DEBUG_VALUE: idx < -  $r1
	$loc,	4 53 24                         // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$sdma , r4, r3, 0
memset..Ltmp42:
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	$loc,	2 93 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:93:5
	$jltu , r1, r2, memset..LBB2_2
memset..Ltmp43:
memset..LBB2_3:
	//DEBUG_VALUE: __memset_mram_8align:len < -  $r2
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r0
	$loc,	2 97 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:97:5
	$jump , r23
memset..Ltmp44:
memset..Lfunc_end2:
	$size,	__memset_mram_8align, memset..Lfunc_end2 - __memset_mram_8align
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, __memset_mram_8align
	$long,	memset..Lfunc_begin2
	$byte,	8
	$section,	%text, __memset_mram_8align,"ax",@progbits
                                        //  -  -  End function
	$section,	%text, __memset_mram,"ax",@progbits
	$globl,	__memset_mram                   //  -  -  Begin function __memset_mram
	$type,	__memset_mram,@function
__memset_mram:                          // @__memset_mram
memset..Lfunc_begin3:
	$loc,	2 102 0                         // uPIMulator_frontend/sdk/stdlib/memset.c:102:0
	$cfi_startproc,
// %bb.0:
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	$cfi_def_cfa_offset, 0
	//DEBUG_VALUE: __memset_mram:cache < -  undef
	$loc,	2 105 68 prologue_end           // uPIMulator_frontend/sdk/stdlib/memset.c:105:68
	$and , r3, r0,  - 8
memset..Ltmp45:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:align_offset < -  $r6
	$loc,	2 106 47                        // uPIMulator_frontend/sdk/stdlib/memset.c:106:47
	$and , r6, r0, 7, z, memset..LBB3_7
memset..Ltmp46:
// %bb.1:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$loc,	2 110 50                        // uPIMulator_frontend/sdk/stdlib/memset.c:110:50
	$sub , r5, 8, r6
memset..Ltmp47:
	//DEBUG_VALUE: head_len < -  $r5
	$loc,	2 111 13                        // uPIMulator_frontend/sdk/stdlib/memset.c:111:13
	$move , r4, r2
	$jgtu , r5, r2, memset..LBB3_3
memset..Ltmp48:
// %bb.2:
	//DEBUG_VALUE: head_len < -  $r5
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$move , r4, r5
memset..Ltmp49:
memset..LBB3_3:
	//DEBUG_VALUE: head_len < -  $r5
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: head_len < -  $r4
	$loc,	2 0 13 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/memset.c:0:13
	$add , r5, r22, 8
memset..Ltmp50:
	//DEBUG_VALUE: mram_read:nb_of_bytes < -  8
	//DEBUG_VALUE: mram_read:from < -  $r3
	$loc,	4 35 24 is_stmt 1               // uPIMulator_frontend/sdk/syslib/mram.h:35:24
	$ldma , r5, r3, 0
memset..Ltmp51:
	//DEBUG_VALUE: mram_read:to < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: __memset_wram_1align:dest8 < -  undef
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r4
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: __memset_wram_1align:dest < -  undef
	$loc,	2 15 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:15:5
	$jeq , r4, 0, memset..LBB3_6
memset..Ltmp52:
// %bb.4:
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r4
	//DEBUG_VALUE: head_len < -  $r4
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: i < -  0
	$or , r6, r5, r6
	$move , r7, r4
memset..Ltmp53:
memset..LBB3_5:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r4
	//DEBUG_VALUE: head_len < -  $r4
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: i < -  undef
	$loc,	2 16 18                         // uPIMulator_frontend/sdk/stdlib/memset.c:16:18
	$sb , r6, 0, r1
memset..Ltmp54:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	2 15 28                         // uPIMulator_frontend/sdk/stdlib/memset.c:15:28
	$add , r6, r6, 1
	$add , r7, r7,  - 1, nz, memset..LBB3_5
memset..Ltmp55:
memset..LBB3_6:
	//DEBUG_VALUE: head_len < -  $r4
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: mram_write:to < -  $r3
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	$loc,	4 53 24                         // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$sdma , r5, r3, 0
memset..Ltmp56:
	$loc,	2 119 13                        // uPIMulator_frontend/sdk/stdlib/memset.c:119:13
	$sub , r2, r2, r4
memset..Ltmp57:
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	$loc,	2 120 11                        // uPIMulator_frontend/sdk/stdlib/memset.c:120:11
	$add , r3, r3, 8
memset..Ltmp58:
	//DEBUG_VALUE: mram_write:from < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: __memset_mram:d < -  $r3
memset..LBB3_7:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	$loc,	2 124 9                         // uPIMulator_frontend/sdk/stdlib/memset.c:124:9
	$jltu , r2, 8, memset..LBB3_12
memset..Ltmp59:
// %bb.8:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$loc,	2 31 7                          // uPIMulator_frontend/sdk/stdlib/memset.c:31:7
	$and , r4, r1, 255
memset..Ltmp60:
	//DEBUG_VALUE: __memset_wram_4align:c < -  [DW_OP_constu 255, DW_OP_and, DW_OP_stack_value] $r1
	$loc,	2 32 14                         // uPIMulator_frontend/sdk/stdlib/memset.c:32:14
	$lsl_add , r5, r4, r1, 24
	$loc,	2 32 25 is_stmt 0               // uPIMulator_frontend/sdk/stdlib/memset.c:32:25
	$lsl_add , r5, r5, r4, 8
	$loc,	2 32 37                         // uPIMulator_frontend/sdk/stdlib/memset.c:32:37
	$lsl_add , r4, r5, r4, 16
memset..Ltmp61:
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: __memset_wram_4align:cccc < -  $r4
	$loc,	2 35 19 is_stmt 1               // uPIMulator_frontend/sdk/stdlib/memset.c:35:19
	$sw , r22, 0, r4
memset..Ltmp62:
	//DEBUG_VALUE: i < -  1
	$sw , r22, 4, r4
memset..Ltmp63:
	//DEBUG_VALUE: i < -  2
	//DEBUG_VALUE: __memset_wram_4align:dest32 < -  undef
	//DEBUG_VALUE: __memset_wram_4align:len < -  8
	//DEBUG_VALUE: __memset_wram_4align:dest < -  undef
	//DEBUG_VALUE: __memset_mram_8align:cache < -  undef
	//DEBUG_VALUE: __memset_mram_8align:c < -  $r1
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r3
	//DEBUG_VALUE: __memset_mram_8align:len < -  $r4
	//DEBUG_VALUE: body_len < -  $r4
	//DEBUG_VALUE: idx < -  0
	//DEBUG_VALUE: __memset_wram_4align:c < -  $r1
	$loc,	2 125 31                        // uPIMulator_frontend/sdk/stdlib/memset.c:125:31
	$and , r4, r2,  - 8, z, memset..LBB3_11
memset..Ltmp64:
// %bb.9:
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r3
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_wram_4align:c < -  $r1
	//DEBUG_VALUE: __memset_mram_8align:c < -  $r1
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: idx < -  0
	//DEBUG_VALUE: __memset_wram_4align:len < -  8
	//DEBUG_VALUE: i < -  2
	$loc,	2 0 31 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/memset.c:0:31
	$move , r5, 0
memset..Ltmp65:
memset..LBB3_10:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_mram_8align:dest < -  $r3
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram_8align:c < -  $r1
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: idx < -  $r5
	//DEBUG_VALUE: mram_write:to < -  undef
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	$loc,	4 53 24 is_stmt 1               // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$add , r6, r3, r5
	$add , r7, r22, 0
memset..Ltmp66:
	$loc,	2 93 43                         // uPIMulator_frontend/sdk/stdlib/memset.c:93:43
	$add , r5, r5, 8
memset..Ltmp67:
	//DEBUG_VALUE: mram_write:from < -  $r22
	//DEBUG_VALUE: idx < -  $r5
	$loc,	4 53 24                         // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$sdma , r7, r6, 0
memset..Ltmp68:
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	$loc,	2 93 5                          // uPIMulator_frontend/sdk/stdlib/memset.c:93:5
	$jltu , r5, r4, memset..LBB3_10
memset..Ltmp69:
memset..LBB3_11:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$loc,	2 129 13                        // uPIMulator_frontend/sdk/stdlib/memset.c:129:13
	$and , r2, r2, 7
memset..Ltmp70:
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	$loc,	2 130 11                        // uPIMulator_frontend/sdk/stdlib/memset.c:130:11
	$add , r3, r3, r4
memset..Ltmp71:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
memset..LBB3_12:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	$loc,	2 134 9                         // uPIMulator_frontend/sdk/stdlib/memset.c:134:9
	$jeq , r2, 0, memset..LBB3_16
memset..Ltmp72:
// %bb.13:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:len < -  $r2
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$loc,	2 0 9 is_stmt 0                 // uPIMulator_frontend/sdk/stdlib/memset.c:0:9
	$add , r4, r22, 8
memset..Ltmp73:
	//DEBUG_VALUE: mram_read:nb_of_bytes < -  8
	//DEBUG_VALUE: mram_read:from < -  $r3
	$loc,	4 35 24 is_stmt 1               // uPIMulator_frontend/sdk/syslib/mram.h:35:24
	$ldma , r4, r3, 0
memset..Ltmp74:
	//DEBUG_VALUE: __memset_wram_1align:dest8 < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: __memset_wram_1align:dest < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: mram_read:to < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: i < -  0
	//DEBUG_VALUE: __memset_wram_1align:len < -  $r2
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
memset..LBB3_14:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: __memset_wram_1align:dest < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: __memset_wram_1align:dest8 < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_wram_1align:c < -  $r1
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	//DEBUG_VALUE: i < -  undef
	$loc,	2 16 18                         // uPIMulator_frontend/sdk/stdlib/memset.c:16:18
	$sb , r4, 0, r1
memset..Ltmp75:
	//DEBUG_VALUE: i < -  [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	$loc,	2 15 28                         // uPIMulator_frontend/sdk/stdlib/memset.c:15:28
	$add , r4, r4, 1
	$add , r2, r2,  - 1, nz, memset..LBB3_14
memset..Ltmp76:
// %bb.15:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:c < -  $r1
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$loc,	2 0 28 is_stmt 0                // uPIMulator_frontend/sdk/stdlib/memset.c:0:28
	$add , r1, r22, 8
memset..Ltmp77:
	//DEBUG_VALUE: mram_write:nb_of_bytes < -  8
	//DEBUG_VALUE: mram_write:to < -  $r3
	$loc,	4 53 24 is_stmt 1               // uPIMulator_frontend/sdk/syslib/mram.h:53:24
	$sdma , r1, r3, 0
memset..Ltmp78:
	//DEBUG_VALUE: mram_write:from < -  [DW_OP_plus_uconst 8, DW_OP_stack_value] $r22
memset..LBB3_16:
	//DEBUG_VALUE: __memset_mram:d < -  $r3
	//DEBUG_VALUE: __memset_mram:dest < -  $r0
	$loc,	2 140 5                         // uPIMulator_frontend/sdk/stdlib/memset.c:140:5
	$jump , r23
memset..Ltmp79:
memset..Lfunc_end3:
	$size,	__memset_mram, memset..Lfunc_end3 - __memset_mram
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, __memset_mram
	$long,	memset..Lfunc_begin3
	$byte,	16
	$section,	%text, __memset_mram,"ax",@progbits
                                        //  -  -  End function
	$section,	%debug_loc,"",@progbits
memset..Ldebug_loc0:
	$long,	 - 1
	$long,	memset..Lfunc_begin0                   //   base address
	$long,	memset..Lfunc_begin0 - memset..Lfunc_begin0
	$long,	memset..Ltmp1 - memset..Lfunc_begin0
	$short,	7                               // Loc expr size
	$byte,	113                             // DW_OP_breg1
	$byte,	0                               // 0
	$byte,	16                              // DW_OP_constu
	$byte,	255                             // 255
	$byte,	1                               // 
	$byte,	26                              // DW_OP_and
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc1:
	$long,	 - 1
	$long,	memset..Lfunc_begin0                   //   base address
	$long,	memset..Lfunc_begin0 - memset..Lfunc_begin0
	$long,	memset..Ltmp0 - memset..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	0
	$long,	0
memset..Ldebug_loc2:
	$long,	 - 1
	$long,	memset..Lfunc_begin0                   //   base address
	$long,	memset..Ltmp2 - memset..Lfunc_begin0
	$long,	memset..Ltmp5 - memset..Lfunc_begin0
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc3:
	$long,	 - 1
	$long,	memset..Lfunc_begin0                   //   base address
	$long,	memset..Lfunc_begin0 - memset..Lfunc_begin0
	$long,	memset..Ltmp3 - memset..Lfunc_begin0
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc4:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Lfunc_begin1 - memset..Lfunc_begin1
	$long,	memset..Ltmp18 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	memset..Ltmp21 - memset..Lfunc_begin1
	$long,	memset..Lfunc_end1 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	0
	$long,	0
memset..Ldebug_loc5:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Lfunc_begin1 - memset..Lfunc_begin1
	$long,	memset..Ltmp16 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	memset..Ltmp16 - memset..Lfunc_begin1
	$long,	memset..Ltmp18 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	memset..Ltmp21 - memset..Lfunc_begin1
	$long,	memset..Ltmp22 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	80                              // DW_OP_reg0
	$long,	memset..Ltmp22 - memset..Lfunc_begin1
	$long,	memset..Lfunc_end1 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
memset..Ldebug_loc6:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Lfunc_begin1 - memset..Lfunc_begin1
	$long,	memset..Ltmp7 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
memset..Ldebug_loc7:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Ltmp8 - memset..Lfunc_begin1
	$long,	memset..Ltmp10 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	84                              // DW_OP_reg4
	$long,	memset..Ltmp10 - memset..Lfunc_begin1
	$long,	memset..Ltmp16 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
memset..Ldebug_loc8:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Ltmp10 - memset..Lfunc_begin1
	$long,	memset..Ltmp12 - memset..Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc9:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Ltmp24 - memset..Lfunc_begin1
	$long,	memset..Ltmp25 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	memset..Ltmp25 - memset..Lfunc_begin1
	$long,	memset..Ltmp29 - memset..Lfunc_begin1
	$short,	7                               // Loc expr size
	$byte,	113                             // DW_OP_breg1
	$byte,	0                               // 0
	$byte,	16                              // DW_OP_constu
	$byte,	255                             // 255
	$byte,	1                               // 
	$byte,	26                              // DW_OP_and
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc10:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Ltmp24 - memset..Lfunc_begin1
	$long,	memset..Ltmp30 - memset..Lfunc_begin1
	$short,	15                              // Loc expr size
	$byte,	114                             // DW_OP_breg2
	$byte,	0                               // 0
	$byte,	16                              // DW_OP_constu
	$byte,	252                             // 18446744073709551612
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	255                             // 
	$byte,	1                               // 
	$byte,	26                              // DW_OP_and
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc11:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Ltmp26 - memset..Lfunc_begin1
	$long,	memset..Ltmp27 - memset..Lfunc_begin1
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc12:
	$long,	 - 1
	$long,	memset..Lfunc_begin1                   //   base address
	$long,	memset..Ltmp26 - memset..Lfunc_begin1
	$long,	memset..Ltmp29 - memset..Lfunc_begin1
	$short,	1                               // Loc expr size
	$byte,	85                              // DW_OP_reg5
	$long,	0
	$long,	0
memset..Ldebug_loc13:
	$long,	 - 1
	$long,	memset..Lfunc_begin2                   //   base address
	$long,	memset..Lfunc_begin2 - memset..Lfunc_begin2
	$long,	memset..Ltmp34 - memset..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc14:
	$long,	 - 1
	$long,	memset..Lfunc_begin2                   //   base address
	$long,	memset..Lfunc_begin2 - memset..Lfunc_begin2
	$long,	memset..Ltmp33 - memset..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	memset..Ltmp33 - memset..Lfunc_begin2
	$long,	memset..Ltmp34 - memset..Lfunc_begin2
	$short,	7                               // Loc expr size
	$byte,	113                             // DW_OP_breg1
	$byte,	0                               // 0
	$byte,	16                              // DW_OP_constu
	$byte,	255                             // 255
	$byte,	1                               // 
	$byte,	26                              // DW_OP_and
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc15:
	$long,	 - 1
	$long,	memset..Lfunc_begin2                   //   base address
	$long,	memset..Ltmp35 - memset..Lfunc_begin2
	$long,	memset..Ltmp36 - memset..Lfunc_begin2
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	memset..Ltmp36 - memset..Lfunc_begin2
	$long,	memset..Ltmp37 - memset..Lfunc_begin2
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	memset..Ltmp37 - memset..Lfunc_begin2
	$long,	memset..Ltmp38 - memset..Lfunc_begin2
	$short,	2                               // Loc expr size
	$byte,	50                              // DW_OP_lit2
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc16:
	$long,	 - 1
	$long,	memset..Lfunc_begin2                   //   base address
	$long,	memset..Ltmp35 - memset..Lfunc_begin2
	$long,	memset..Ltmp38 - memset..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc17:
	$long,	 - 1
	$long,	memset..Lfunc_begin2                   //   base address
	$long,	memset..Ltmp37 - memset..Lfunc_begin2
	$long,	memset..Ltmp39 - memset..Lfunc_begin2
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	memset..Ltmp39 - memset..Lfunc_begin2
	$long,	memset..Ltmp43 - memset..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc18:
	$long,	 - 1
	$long,	memset..Lfunc_begin2                   //   base address
	$long,	memset..Ltmp41 - memset..Lfunc_begin2
	$long,	memset..Ltmp43 - memset..Lfunc_begin2
	$short,	1                               // Loc expr size
	$byte,	102                             // DW_OP_reg22
	$long,	0
	$long,	0
memset..Ldebug_loc19:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Lfunc_begin3 - memset..Lfunc_begin3
	$long,	memset..Ltmp77 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc20:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Lfunc_begin3 - memset..Lfunc_begin3
	$long,	memset..Ltmp74 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	82                              // DW_OP_reg2
	$long,	0
	$long,	0
memset..Ldebug_loc21:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp45 - memset..Lfunc_begin3
	$long,	memset..Lfunc_end3 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
memset..Ldebug_loc22:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp45 - memset..Lfunc_begin3
	$long,	memset..Ltmp46 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	86                              // DW_OP_reg6
	$long,	0
	$long,	0
memset..Ldebug_loc23:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp47 - memset..Lfunc_begin3
	$long,	memset..Ltmp49 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	85                              // DW_OP_reg5
	$long,	memset..Ltmp49 - memset..Lfunc_begin3
	$long,	memset..Ltmp58 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	84                              // DW_OP_reg4
	$long,	0
	$long,	0
memset..Ldebug_loc24:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp51 - memset..Lfunc_begin3
	$long,	memset..Ltmp53 - memset..Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc25:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp60 - memset..Lfunc_begin3
	$long,	memset..Ltmp63 - memset..Lfunc_begin3
	$short,	7                               // Loc expr size
	$byte,	113                             // DW_OP_breg1
	$byte,	0                               // 0
	$byte,	16                              // DW_OP_constu
	$byte,	255                             // 255
	$byte,	1                               // 
	$byte,	26                              // DW_OP_and
	$byte,	159                             // DW_OP_stack_value
	$long,	memset..Ltmp63 - memset..Lfunc_begin3
	$long,	memset..Ltmp64 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc26:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp61 - memset..Lfunc_begin3
	$long,	memset..Ltmp62 - memset..Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	48                              // DW_OP_lit0
	$byte,	159                             // DW_OP_stack_value
	$long,	memset..Ltmp62 - memset..Lfunc_begin3
	$long,	memset..Ltmp63 - memset..Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	49                              // DW_OP_lit1
	$byte,	159                             // DW_OP_stack_value
	$long,	memset..Ltmp63 - memset..Lfunc_begin3
	$long,	memset..Ltmp64 - memset..Lfunc_begin3
	$short,	2                               // Loc expr size
	$byte,	50                              // DW_OP_lit2
	$byte,	159                             // DW_OP_stack_value
	$long,	0
	$long,	0
memset..Ldebug_loc27:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp61 - memset..Lfunc_begin3
	$long,	memset..Ltmp64 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	84                              // DW_OP_reg4
	$long,	0
	$long,	0
memset..Ldebug_loc28:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp65 - memset..Lfunc_begin3
	$long,	memset..Ltmp69 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	81                              // DW_OP_reg1
	$long,	0
	$long,	0
memset..Ldebug_loc29:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp65 - memset..Lfunc_begin3
	$long,	memset..Ltmp69 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	83                              // DW_OP_reg3
	$long,	0
	$long,	0
memset..Ldebug_loc30:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp63 - memset..Lfunc_begin3
	$long,	memset..Ltmp64 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	84                              // DW_OP_reg4
	$long,	0
	$long,	0
memset..Ldebug_loc31:
	$long,	 - 1
	$long,	memset..Lfunc_begin3                   //   base address
	$long,	memset..Ltmp67 - memset..Lfunc_begin3
	$long,	memset..Ltmp69 - memset..Lfunc_begin3
	$short,	1                               // Loc expr size
	$byte,	102                             // DW_OP_reg22
	$long,	0
	$long,	0
	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	15                              // DW_TAG_pointer_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	11                              // Abbreviation Code
	$byte,	11                              // DW_TAG_lexical_block
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	12                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	13                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	14                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	15                              // Abbreviation Code
	$byte,	11                              // DW_TAG_lexical_block
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	16                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	17                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	18                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	19                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	20                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	28                              // DW_AT_const_value
	$byte,	15                              // DW_FORM_udata
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	21                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	22                              // Abbreviation Code
	$byte,	29                              // DW_TAG_inlined_subroutine
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	88                              // DW_AT_call_file
	$byte,	11                              // DW_FORM_data1
	$byte,	89                              // DW_AT_call_line
	$byte,	11                              // DW_FORM_data1
	$byte,	87                              // DW_AT_call_column
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	23                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	24                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	39                              // DW_AT_prototyped
	$byte,	25                              // DW_FORM_flag_present
	$byte,	32                              // DW_AT_inline
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	25                              // Abbreviation Code
	$byte,	38                              // DW_TAG_const_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	26                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	27                              // Abbreviation Code
	$byte,	5                               // DW_TAG_formal_parameter
	$byte,	0                               // DW_CHILDREN_no
	$byte,	28                              // DW_AT_const_value
	$byte,	15                              // DW_FORM_udata
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	28                              // Abbreviation Code
	$byte,	29                              // DW_TAG_inlined_subroutine
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	49                              // DW_AT_abstract_origin
	$byte,	19                              // DW_FORM_ref4
	$byte,	85                              // DW_AT_ranges
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	88                              // DW_AT_call_file
	$byte,	11                              // DW_FORM_data1
	$byte,	89                              // DW_AT_call_line
	$byte,	11                              // DW_FORM_data1
	$byte,	87                              // DW_AT_call_column
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	29                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$ascii,	"\210\001"                      // DW_AT_alignment
	$byte,	15                              // DW_FORM_udata
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	30                              // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	31                              // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	32                              // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	33                              // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$ascii,	"\210\001"                      // DW_AT_alignment
	$byte,	15                              // DW_FORM_udata
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	34                              // Abbreviation Code
	$byte,	38                              // DW_TAG_const_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
memset..Lcu_begin0:
	$long,	memset..Ldebug_info_end0 - memset..Ldebug_info_start0 // Length of Unit
memset..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x659 DW_TAG_compile_unit
	$long,	memset..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	memset..Linfo_string1                  // DW_AT_name
	$long,	memset..Lline_table_start0             // DW_AT_stmt_list
	$long,	memset..Linfo_string2                  // DW_AT_comp_dir
	$long,	0                               // DW_AT_low_pc
	$long,	memset..Ldebug_ranges3                 // DW_AT_ranges
	$byte,	2                               // Abbrev [2] 0x26:0x5 DW_TAG_pointer_type
	$long,	43                              // DW_AT_type
	$byte,	3                               // Abbrev [3] 0x2b:0xb DW_TAG_typedef
	$long,	54                              // DW_AT_type
	$long,	memset..Linfo_string5                  // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	21                              // DW_AT_decl_line
	$byte,	3                               // Abbrev [3] 0x36:0xb DW_TAG_typedef
	$long,	65                              // DW_AT_type
	$long,	memset..Linfo_string4                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	48                              // DW_AT_decl_line
	$byte,	4                               // Abbrev [4] 0x41:0x7 DW_TAG_base_type
	$long,	memset..Linfo_string3                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	3                               // Abbrev [3] 0x48:0xb DW_TAG_typedef
	$long,	65                              // DW_AT_type
	$long,	memset..Linfo_string6                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	144                             // DW_AT_decl_line
	$byte,	2                               // Abbrev [2] 0x53:0x5 DW_TAG_pointer_type
	$long,	88                              // DW_AT_type
	$byte,	3                               // Abbrev [3] 0x58:0xb DW_TAG_typedef
	$long,	99                              // DW_AT_type
	$long,	memset..Linfo_string8                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	4                               // Abbrev [4] 0x63:0x7 DW_TAG_base_type
	$long,	memset..Linfo_string7                  // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	5                               // Abbrev [5] 0x6a:0x1 DW_TAG_pointer_type
	$byte,	6                               // Abbrev [6] 0x6b:0x4c DW_TAG_subprogram
	$long,	memset..Lfunc_begin0                   // DW_AT_low_pc
	$long,	memset..Lfunc_end0 - memset..Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	271                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x7a:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	283                             // DW_AT_abstract_origin
	$byte,	8                               // Abbrev [8] 0x81:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc0                    // DW_AT_location
	$long,	294                             // DW_AT_abstract_origin
	$byte,	8                               // Abbrev [8] 0x8a:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc1                    // DW_AT_location
	$long,	305                             // DW_AT_abstract_origin
	$byte,	9                               // Abbrev [9] 0x93:0x7 DW_TAG_variable
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	316                             // DW_AT_abstract_origin
	$byte,	10                              // Abbrev [10] 0x9a:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc2                    // DW_AT_location
	$long,	327                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0xa3:0x13 DW_TAG_lexical_block
	$long,	memset..Lfunc_begin0                   // DW_AT_low_pc
	$long,	memset..Ltmp5 - memset..Lfunc_begin0            // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0xac:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc3                    // DW_AT_location
	$long,	339                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	12                              // Abbrev [12] 0xb7:0x46 DW_TAG_subprogram
	$long,	memset..Linfo_string9                  // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	106                             // DW_AT_type
	$byte,	1                               // DW_AT_inline
	$byte,	13                              // Abbrev [13] 0xc3:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string10                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0xce:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string11                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
	$long,	253                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0xd9:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	12                              // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	14                              // Abbrev [14] 0xe4:0xb DW_TAG_variable
	$long,	memset..Linfo_string15                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	14                              // DW_AT_decl_line
	$long,	83                              // DW_AT_type
	$byte,	15                              // Abbrev [15] 0xef:0xd DW_TAG_lexical_block
	$byte,	14                              // Abbrev [14] 0xf0:0xb DW_TAG_variable
	$long,	memset..Linfo_string16                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	15                              // DW_AT_decl_line
	$long,	54                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	4                               // Abbrev [4] 0xfd:0x7 DW_TAG_base_type
	$long,	memset..Linfo_string12                 // DW_AT_name
	$byte,	5                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	3                               // Abbrev [3] 0x104:0xb DW_TAG_typedef
	$long,	65                              // DW_AT_type
	$long,	memset..Linfo_string14                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$byte,	16                              // Abbrev [16] 0x10f:0x51 DW_TAG_subprogram
	$long,	memset..Linfo_string17                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	106                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_inline
	$byte,	13                              // Abbrev [13] 0x11b:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string10                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x126:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string11                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$long,	253                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x131:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	14                              // Abbrev [14] 0x13c:0xb DW_TAG_variable
	$long,	memset..Linfo_string18                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	29                              // DW_AT_decl_line
	$long,	38                              // DW_AT_type
	$byte,	14                              // Abbrev [14] 0x147:0xb DW_TAG_variable
	$long,	memset..Linfo_string19                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	28                              // DW_AT_decl_line
	$long,	54                              // DW_AT_type
	$byte,	15                              // Abbrev [15] 0x152:0xd DW_TAG_lexical_block
	$byte,	14                              // Abbrev [14] 0x153:0xb DW_TAG_variable
	$long,	memset..Linfo_string16                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	34                              // DW_AT_decl_line
	$long,	54                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	17                              // Abbrev [17] 0x160:0x160 DW_TAG_subprogram
	$long,	memset..Lfunc_begin1                   // DW_AT_low_pc
	$long,	memset..Lfunc_end1 - memset..Lfunc_begin1       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	memset..Linfo_string30                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	106                             // DW_AT_type
                                        // DW_AT_external
	$byte,	18                              // Abbrev [18] 0x175:0xd DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	memset..Linfo_string10                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	18                              // Abbrev [18] 0x182:0xd DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	81
	$long,	memset..Linfo_string11                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
	$long,	253                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x18f:0xf DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc4                    // DW_AT_location
	$long,	memset..Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	42                              // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x19e:0xc DW_TAG_variable
	$byte,	4                               // DW_AT_const_value
	$long,	memset..Linfo_string32                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	44                              // DW_AT_decl_line
	$long,	1630                            // DW_AT_type
	$byte,	20                              // Abbrev [20] 0x1aa:0xc DW_TAG_variable
	$byte,	3                               // DW_AT_const_value
	$long,	memset..Linfo_string33                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	45                              // DW_AT_decl_line
	$long,	1630                            // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x1b6:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc5                    // DW_AT_location
	$long,	memset..Linfo_string34                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	47                              // DW_AT_decl_line
	$long,	83                              // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x1c5:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc6                    // DW_AT_location
	$long,	memset..Linfo_string35                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	46                              // DW_AT_decl_line
	$long,	54                              // DW_AT_type
	$byte,	11                              // Abbrev [11] 0x1d4:0x59 DW_TAG_lexical_block
	$long,	memset..Ltmp7                          // DW_AT_low_pc
	$long,	memset..Ltmp16 - memset..Ltmp7                  // DW_AT_high_pc
	$byte,	21                              // Abbrev [21] 0x1dd:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc7                    // DW_AT_location
	$long,	memset..Linfo_string36                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	22                              // Abbrev [22] 0x1ec:0x40 DW_TAG_inlined_subroutine
	$long,	183                             // DW_AT_abstract_origin
	$long,	memset..Ltmp10                         // DW_AT_low_pc
	$long,	memset..Ltmp14 - memset..Ltmp10                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	56                              // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	7                               // Abbrev [7] 0x1fc:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	195                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x203:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	81
	$long,	206                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x20a:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	217                             // DW_AT_abstract_origin
	$byte,	9                               // Abbrev [9] 0x211:0x7 DW_TAG_variable
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	228                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0x218:0x13 DW_TAG_lexical_block
	$long,	memset..Ltmp10                         // DW_AT_low_pc
	$long,	memset..Ltmp14 - memset..Ltmp10                 // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0x221:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc8                    // DW_AT_location
	$long,	240                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x22d:0x20 DW_TAG_inlined_subroutine
	$long,	183                             // DW_AT_abstract_origin
	$long,	memset..Ltmp18                         // DW_AT_low_pc
	$long,	memset..Ltmp20 - memset..Ltmp18                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	74                              // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	11                              // Abbrev [11] 0x23d:0xf DW_TAG_lexical_block
	$long,	memset..Ltmp18                         // DW_AT_low_pc
	$long,	memset..Ltmp20 - memset..Ltmp18                 // DW_AT_high_pc
	$byte,	23                              // Abbrev [23] 0x246:0x5 DW_TAG_variable
	$long,	240                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	11                              // Abbrev [11] 0x24d:0x72 DW_TAG_lexical_block
	$long,	memset..Ltmp23                         // DW_AT_low_pc
	$long,	memset..Ltmp31 - memset..Ltmp23                 // DW_AT_high_pc
	$byte,	21                              // Abbrev [21] 0x256:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc10                   // DW_AT_location
	$long,	memset..Linfo_string37                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	64                              // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	22                              // Abbrev [22] 0x265:0x59 DW_TAG_inlined_subroutine
	$long,	271                             // DW_AT_abstract_origin
	$long,	memset..Ltmp24                         // DW_AT_low_pc
	$long,	memset..Ltmp29 - memset..Ltmp24                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	66                              // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	7                               // Abbrev [7] 0x275:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	283                             // DW_AT_abstract_origin
	$byte,	8                               // Abbrev [8] 0x27c:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc9                    // DW_AT_location
	$long,	294                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x285:0x15 DW_TAG_formal_parameter
	$byte,	15                              // DW_AT_location
	$byte,	114
	$byte,	0
	$byte,	16
	$ascii,	"\374\377\377\377\377\377\377\377\377\001"
	$byte,	26
	$byte,	159
	$long,	305                             // DW_AT_abstract_origin
	$byte,	9                               // Abbrev [9] 0x29a:0x7 DW_TAG_variable
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	316                             // DW_AT_abstract_origin
	$byte,	10                              // Abbrev [10] 0x2a1:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc12                   // DW_AT_location
	$long,	327                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0x2aa:0x13 DW_TAG_lexical_block
	$long,	memset..Ltmp26                         // DW_AT_low_pc
	$long,	memset..Ltmp29 - memset..Ltmp26                 // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0x2b3:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc11                   // DW_AT_location
	$long,	339                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	24                              // Abbrev [24] 0x2c0:0x2a DW_TAG_subprogram
	$long,	memset..Linfo_string20                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$byte,	1                               // DW_AT_inline
	$byte,	13                              // Abbrev [13] 0x2c8:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string21                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	746                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x2d3:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string22                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x2de:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string23                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	51                              // DW_AT_decl_line
	$long,	65                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	2                               // Abbrev [2] 0x2ea:0x5 DW_TAG_pointer_type
	$long,	751                             // DW_AT_type
	$byte,	25                              // Abbrev [25] 0x2ef:0x1 DW_TAG_const_type
	$byte,	6                               // Abbrev [6] 0x2f0:0xae DW_TAG_subprogram
	$long,	memset..Lfunc_begin2                   // DW_AT_low_pc
	$long,	memset..Lfunc_end2 - memset..Lfunc_begin2       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	968                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x2ff:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	980                             // DW_AT_abstract_origin
	$byte,	8                               // Abbrev [8] 0x306:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc13                   // DW_AT_location
	$long,	991                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x30f:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	82
	$long,	1002                            // DW_AT_abstract_origin
	$byte,	9                               // Abbrev [9] 0x316:0x8 DW_TAG_variable
	$byte,	2                               // DW_AT_location
	$byte,	145
	$byte,	0
	$long,	1013                            // DW_AT_abstract_origin
	$byte,	23                              // Abbrev [23] 0x31e:0x5 DW_TAG_variable
	$long,	1025                            // DW_AT_abstract_origin
	$byte,	22                              // Abbrev [22] 0x323:0x46 DW_TAG_inlined_subroutine
	$long,	271                             // DW_AT_abstract_origin
	$long,	memset..Lfunc_begin2                   // DW_AT_low_pc
	$long,	memset..Ltmp37 - memset..Lfunc_begin2           // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	91                              // DW_AT_call_line
	$byte,	5                               // DW_AT_call_column
	$byte,	26                              // Abbrev [26] 0x333:0x5 DW_TAG_formal_parameter
	$long,	283                             // DW_AT_abstract_origin
	$byte,	8                               // Abbrev [8] 0x338:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc14                   // DW_AT_location
	$long,	294                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x341:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	305                             // DW_AT_abstract_origin
	$byte,	23                              // Abbrev [23] 0x347:0x5 DW_TAG_variable
	$long,	316                             // DW_AT_abstract_origin
	$byte,	10                              // Abbrev [10] 0x34c:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc16                   // DW_AT_location
	$long,	327                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0x355:0x13 DW_TAG_lexical_block
	$long,	memset..Ltmp35                         // DW_AT_low_pc
	$long,	memset..Ltmp37 - memset..Ltmp35                 // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0x35e:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc15                   // DW_AT_location
	$long,	339                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	11                              // Abbrev [11] 0x369:0x34 DW_TAG_lexical_block
	$long,	memset..Ltmp37                         // DW_AT_low_pc
	$long,	memset..Ltmp43 - memset..Ltmp37                 // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0x372:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc17                   // DW_AT_location
	$long,	1037                            // DW_AT_abstract_origin
	$byte,	28                              // Abbrev [28] 0x37b:0x21 DW_TAG_inlined_subroutine
	$long,	704                             // DW_AT_abstract_origin
	$long,	memset..Ldebug_ranges0                 // DW_AT_ranges
	$byte,	2                               // DW_AT_call_file
	$byte,	94                              // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	8                               // Abbrev [8] 0x387:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc18                   // DW_AT_location
	$long,	712                             // DW_AT_abstract_origin
	$byte,	26                              // Abbrev [26] 0x390:0x5 DW_TAG_formal_parameter
	$long,	723                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x395:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	734                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	24                              // Abbrev [24] 0x39e:0x2a DW_TAG_subprogram
	$long,	memset..Linfo_string24                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$byte,	1                               // DW_AT_inline
	$byte,	13                              // Abbrev [13] 0x3a6:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string21                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	746                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x3b1:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string22                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x3bc:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string23                 // DW_AT_name
	$byte,	4                               // DW_AT_decl_file
	$byte,	33                              // DW_AT_decl_line
	$long,	65                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	16                              // Abbrev [16] 0x3c8:0x52 DW_TAG_subprogram
	$long,	memset..Linfo_string25                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	86                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	106                             // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_inline
	$byte,	13                              // Abbrev [13] 0x3d4:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string10                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	86                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x3df:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string11                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	86                              // DW_AT_decl_line
	$long,	253                             // DW_AT_type
	$byte,	13                              // Abbrev [13] 0x3ea:0xb DW_TAG_formal_parameter
	$long,	memset..Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	86                              // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	29                              // Abbrev [29] 0x3f5:0xc DW_TAG_variable
	$long,	memset..Linfo_string26                 // DW_AT_name
	$byte,	8                               // DW_AT_alignment
	$byte,	2                               // DW_AT_decl_file
	$byte,	88                              // DW_AT_decl_line
	$long,	1050                            // DW_AT_type
	$byte,	14                              // Abbrev [14] 0x401:0xb DW_TAG_variable
	$long,	memset..Linfo_string28                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	89                              // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	15                              // Abbrev [15] 0x40c:0xd DW_TAG_lexical_block
	$byte,	14                              // Abbrev [14] 0x40d:0xb DW_TAG_variable
	$long,	memset..Linfo_string29                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	93                              // DW_AT_decl_line
	$long,	54                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	30                              // Abbrev [30] 0x41a:0xc DW_TAG_array_type
	$long,	88                              // DW_AT_type
	$byte,	31                              // Abbrev [31] 0x41f:0x6 DW_TAG_subrange_type
	$long,	1062                            // DW_AT_type
	$byte,	8                               // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	32                              // Abbrev [32] 0x426:0x7 DW_TAG_base_type
	$long,	memset..Linfo_string27                 // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	17                              // Abbrev [17] 0x42d:0x231 DW_TAG_subprogram
	$long,	memset..Lfunc_begin3                   // DW_AT_low_pc
	$long,	memset..Lfunc_end3 - memset..Lfunc_begin3       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	memset..Linfo_string31                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	$long,	106                             // DW_AT_type
                                        // DW_AT_external
	$byte,	18                              // Abbrev [18] 0x442:0xd DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	80
	$long,	memset..Linfo_string10                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x44f:0xf DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc19                   // DW_AT_location
	$long,	memset..Linfo_string11                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
	$long,	253                             // DW_AT_type
	$byte,	19                              // Abbrev [19] 0x45e:0xf DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc20                   // DW_AT_location
	$long,	memset..Linfo_string13                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	101                             // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	33                              // Abbrev [33] 0x46d:0xf DW_TAG_variable
	$byte,	2                               // DW_AT_location
	$byte,	145
	$byte,	8
	$long,	memset..Linfo_string26                 // DW_AT_name
	$byte,	8                               // DW_AT_alignment
	$byte,	2                               // DW_AT_decl_file
	$byte,	103                             // DW_AT_decl_line
	$long,	1050                            // DW_AT_type
	$byte,	14                              // Abbrev [14] 0x47c:0xb DW_TAG_variable
	$long,	memset..Linfo_string28                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	104                             // DW_AT_decl_line
	$long,	106                             // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x487:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc21                   // DW_AT_location
	$long,	memset..Linfo_string34                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	105                             // DW_AT_decl_line
	$long,	83                              // DW_AT_type
	$byte,	21                              // Abbrev [21] 0x496:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc22                   // DW_AT_location
	$long,	memset..Linfo_string35                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	106                             // DW_AT_decl_line
	$long,	54                              // DW_AT_type
	$byte,	11                              // Abbrev [11] 0x4a5:0x91 DW_TAG_lexical_block
	$long,	memset..Ltmp46                         // DW_AT_low_pc
	$long,	memset..Ltmp58 - memset..Ltmp46                 // DW_AT_high_pc
	$byte,	21                              // Abbrev [21] 0x4ae:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc23                   // DW_AT_location
	$long,	memset..Linfo_string36                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	110                             // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	22                              // Abbrev [22] 0x4bd:0x1e DW_TAG_inlined_subroutine
	$long,	926                             // DW_AT_abstract_origin
	$long,	memset..Ltmp50                         // DW_AT_low_pc
	$long,	memset..Ltmp51 - memset..Ltmp50                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	115                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	7                               // Abbrev [7] 0x4cd:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	934                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x4d4:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	956                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x4db:0x3c DW_TAG_inlined_subroutine
	$long,	183                             // DW_AT_abstract_origin
	$long,	memset..Ltmp51                         // DW_AT_low_pc
	$long,	memset..Ltmp55 - memset..Ltmp51                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	116                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	26                              // Abbrev [26] 0x4eb:0x5 DW_TAG_formal_parameter
	$long,	195                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x4f0:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	81
	$long,	206                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x4f7:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	84
	$long,	217                             // DW_AT_abstract_origin
	$byte,	23                              // Abbrev [23] 0x4fe:0x5 DW_TAG_variable
	$long,	228                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0x503:0x13 DW_TAG_lexical_block
	$long,	memset..Ltmp51                         // DW_AT_low_pc
	$long,	memset..Ltmp55 - memset..Ltmp51                 // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0x50c:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc24                   // DW_AT_location
	$long,	240                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x517:0x1e DW_TAG_inlined_subroutine
	$long,	704                             // DW_AT_abstract_origin
	$long,	memset..Ltmp55                         // DW_AT_low_pc
	$long,	memset..Ltmp56 - memset..Ltmp55                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	117                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	7                               // Abbrev [7] 0x527:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	723                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x52e:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	734                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	11                              // Abbrev [11] 0x536:0xa8 DW_TAG_lexical_block
	$long,	memset..Ltmp59                         // DW_AT_low_pc
	$long,	memset..Ltmp71 - memset..Ltmp59                 // DW_AT_high_pc
	$byte,	21                              // Abbrev [21] 0x53f:0xf DW_TAG_variable
	$long,	memset..Ldebug_loc30                   // DW_AT_location
	$long,	memset..Linfo_string37                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	125                             // DW_AT_decl_line
	$long,	260                             // DW_AT_type
	$byte,	28                              // Abbrev [28] 0x54e:0x8f DW_TAG_inlined_subroutine
	$long,	968                             // DW_AT_abstract_origin
	$long,	memset..Ldebug_ranges1                 // DW_AT_ranges
	$byte,	2                               // DW_AT_call_file
	$byte,	127                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	8                               // Abbrev [8] 0x55a:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc29                   // DW_AT_location
	$long,	980                             // DW_AT_abstract_origin
	$byte,	8                               // Abbrev [8] 0x563:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc28                   // DW_AT_location
	$long,	991                             // DW_AT_abstract_origin
	$byte,	9                               // Abbrev [9] 0x56c:0x8 DW_TAG_variable
	$byte,	2                               // DW_AT_location
	$byte,	145
	$byte,	0
	$long,	1013                            // DW_AT_abstract_origin
	$byte,	22                              // Abbrev [22] 0x574:0x36 DW_TAG_inlined_subroutine
	$long,	271                             // DW_AT_abstract_origin
	$long,	memset..Ltmp59                         // DW_AT_low_pc
	$long,	memset..Ltmp63 - memset..Ltmp59                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	91                              // DW_AT_call_line
	$byte,	5                               // DW_AT_call_column
	$byte,	8                               // Abbrev [8] 0x584:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc25                   // DW_AT_location
	$long,	294                             // DW_AT_abstract_origin
	$byte,	10                              // Abbrev [10] 0x58d:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc27                   // DW_AT_location
	$long,	327                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0x596:0x13 DW_TAG_lexical_block
	$long,	memset..Ltmp61                         // DW_AT_low_pc
	$long,	memset..Ltmp63 - memset..Ltmp61                 // DW_AT_high_pc
	$byte,	10                              // Abbrev [10] 0x59f:0x9 DW_TAG_variable
	$long,	memset..Ldebug_loc26                   // DW_AT_location
	$long,	339                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	11                              // Abbrev [11] 0x5aa:0x32 DW_TAG_lexical_block
	$long,	memset..Ltmp65                         // DW_AT_low_pc
	$long,	memset..Ltmp69 - memset..Ltmp65                 // DW_AT_high_pc
	$byte,	9                               // Abbrev [9] 0x5b3:0x7 DW_TAG_variable
	$byte,	1                               // DW_AT_location
	$byte,	85
	$long,	1037                            // DW_AT_abstract_origin
	$byte,	28                              // Abbrev [28] 0x5ba:0x21 DW_TAG_inlined_subroutine
	$long,	704                             // DW_AT_abstract_origin
	$long,	memset..Ldebug_ranges2                 // DW_AT_ranges
	$byte,	2                               // DW_AT_call_file
	$byte,	94                              // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	8                               // Abbrev [8] 0x5c6:0x9 DW_TAG_formal_parameter
	$long,	memset..Ldebug_loc31                   // DW_AT_location
	$long,	712                             // DW_AT_abstract_origin
	$byte,	26                              // Abbrev [26] 0x5cf:0x5 DW_TAG_formal_parameter
	$long,	723                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x5d4:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	734                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x5de:0x23 DW_TAG_inlined_subroutine
	$long,	926                             // DW_AT_abstract_origin
	$long,	memset..Ltmp73                         // DW_AT_low_pc
	$long,	memset..Ltmp74 - memset..Ltmp73                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	135                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	7                               // Abbrev [7] 0x5ee:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	934                             // DW_AT_abstract_origin
	$byte,	26                              // Abbrev [26] 0x5f5:0x5 DW_TAG_formal_parameter
	$long,	945                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x5fa:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	956                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x601:0x39 DW_TAG_inlined_subroutine
	$long,	183                             // DW_AT_abstract_origin
	$long,	memset..Ltmp74                         // DW_AT_low_pc
	$long,	memset..Ltmp76 - memset..Ltmp74                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	136                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	7                               // Abbrev [7] 0x611:0x9 DW_TAG_formal_parameter
	$byte,	3                               // DW_AT_location
	$byte,	145
	$byte,	8
	$byte,	159
	$long,	195                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x61a:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	81
	$long,	206                             // DW_AT_abstract_origin
	$byte,	9                               // Abbrev [9] 0x621:0x9 DW_TAG_variable
	$byte,	3                               // DW_AT_location
	$byte,	145
	$byte,	8
	$byte,	159
	$long,	228                             // DW_AT_abstract_origin
	$byte,	11                              // Abbrev [11] 0x62a:0xf DW_TAG_lexical_block
	$long,	memset..Ltmp74                         // DW_AT_low_pc
	$long,	memset..Ltmp76 - memset..Ltmp74                 // DW_AT_high_pc
	$byte,	23                              // Abbrev [23] 0x633:0x5 DW_TAG_variable
	$long,	240                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	22                              // Abbrev [22] 0x63a:0x23 DW_TAG_inlined_subroutine
	$long,	704                             // DW_AT_abstract_origin
	$long,	memset..Ltmp77                         // DW_AT_low_pc
	$long,	memset..Ltmp78 - memset..Ltmp77                 // DW_AT_high_pc
	$byte,	2                               // DW_AT_call_file
	$byte,	137                             // DW_AT_call_line
	$byte,	9                               // DW_AT_call_column
	$byte,	26                              // Abbrev [26] 0x64a:0x5 DW_TAG_formal_parameter
	$long,	712                             // DW_AT_abstract_origin
	$byte,	7                               // Abbrev [7] 0x64f:0x7 DW_TAG_formal_parameter
	$byte,	1                               // DW_AT_location
	$byte,	83
	$long,	723                             // DW_AT_abstract_origin
	$byte,	27                              // Abbrev [27] 0x656:0x6 DW_TAG_formal_parameter
	$byte,	8                               // DW_AT_const_value
	$long,	734                             // DW_AT_abstract_origin
	$byte,	0                               // End Of Children Mark
	$byte,	0                               // End Of Children Mark
	$byte,	34                              // Abbrev [34] 0x65e:0x5 DW_TAG_const_type
	$long,	54                              // DW_AT_type
	$byte,	0                               // End Of Children Mark
memset..Ldebug_info_end0:
	$section,	%debug_ranges,"",@progbits
memset..Ldebug_ranges0:
	$long,	memset..Ltmp39
	$long,	memset..Ltmp40
	$long,	memset..Ltmp41
	$long,	memset..Ltmp42
	$long,	0
	$long,	0
memset..Ldebug_ranges1:
	$long,	memset..Ltmp59
	$long,	memset..Ltmp63
	$long,	memset..Ltmp65
	$long,	memset..Ltmp69
	$long,	0
	$long,	0
memset..Ldebug_ranges2:
	$long,	memset..Ltmp65
	$long,	memset..Ltmp66
	$long,	memset..Ltmp67
	$long,	memset..Ltmp68
	$long,	0
	$long,	0
memset..Ldebug_ranges3:
	$long,	memset..Lfunc_begin0
	$long,	memset..Lfunc_end0
	$long,	memset..Lfunc_begin1
	$long,	memset..Lfunc_end1
	$long,	memset..Lfunc_begin2
	$long,	memset..Lfunc_end2
	$long,	memset..Lfunc_begin3
	$long,	memset..Lfunc_end3
	$long,	0
	$long,	0
	$section,	%debug_str,"MS",@progbits,1
memset..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
memset..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/stdlib/memset.c" // string offset=106
memset..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=152
memset..Linfo_string3:
	$asciz,	"unsigned int"                  // string offset=173
memset..Linfo_string4:
	$asciz,	"uint32_t"                      // string offset=186
memset..Linfo_string5:
	$asciz,	"memset_wram_t"                 // string offset=195
memset..Linfo_string6:
	$asciz,	"uintptr_t"                     // string offset=209
memset..Linfo_string7:
	$asciz,	"unsigned char"                 // string offset=219
memset..Linfo_string8:
	$asciz,	"uint8_t"                       // string offset=233
memset..Linfo_string9:
	$asciz,	"__memset_wram_1align"          // string offset=241
memset..Linfo_string10:
	$asciz,	"dest"                          // string offset=262
memset..Linfo_string11:
	$asciz,	"c"                             // string offset=267
memset..Linfo_string12:
	$asciz,	"int"                           // string offset=269
memset..Linfo_string13:
	$asciz,	"len"                           // string offset=273
memset..Linfo_string14:
	$asciz,	"size_t"                        // string offset=277
memset..Linfo_string15:
	$asciz,	"dest8"                         // string offset=284
memset..Linfo_string16:
	$asciz,	"i"                             // string offset=290
memset..Linfo_string17:
	$asciz,	"__memset_wram_4align"          // string offset=292
memset..Linfo_string18:
	$asciz,	"dest32"                        // string offset=313
memset..Linfo_string19:
	$asciz,	"cccc"                          // string offset=320
memset..Linfo_string20:
	$asciz,	"mram_write"                    // string offset=325
memset..Linfo_string21:
	$asciz,	"from"                          // string offset=336
memset..Linfo_string22:
	$asciz,	"to"                            // string offset=341
memset..Linfo_string23:
	$asciz,	"nb_of_bytes"                   // string offset=344
memset..Linfo_string24:
	$asciz,	"mram_read"                     // string offset=356
memset..Linfo_string25:
	$asciz,	"__memset_mram_8align"          // string offset=366
memset..Linfo_string26:
	$asciz,	"cache64"                       // string offset=387
memset..Linfo_string27:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=395
memset..Linfo_string28:
	$asciz,	"cache"                         // string offset=415
memset..Linfo_string29:
	$asciz,	"idx"                           // string offset=421
memset..Linfo_string30:
	$asciz,	"memset"                        // string offset=425
memset..Linfo_string31:
	$asciz,	"__memset_mram"                 // string offset=432
memset..Linfo_string32:
	$asciz,	"align"                         // string offset=446
memset..Linfo_string33:
	$asciz,	"align_off_mask"                // string offset=452
memset..Linfo_string34:
	$asciz,	"d"                             // string offset=467
memset..Linfo_string35:
	$asciz,	"align_offset"                  // string offset=469
memset..Linfo_string36:
	$asciz,	"head_len"                      // string offset=482
memset..Linfo_string37:
	$asciz,	"body_len"                      // string offset=491
	$addrsig,
	$addrsig_sym, __memset_wram_4align
	$addrsig_sym, __memset_mram_8align
	$addrsig_sym, __memset_mram
	$section,	%debug_line,"",@progbits
memset..Lline_table_start0:
	$text,
	$file,	"crt0.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/stdlib/stdint.h"
	$file,	2 "/root" "uPIMulator_frontend/sdk/misc/crt0.c"
	$file,	3 "/root" "uPIMulator_frontend/sdk/syslib/dpuruntime.h"
	$section,	%text, __bootstrap,"ax",@progbits
	$globl,	__bootstrap                     //  -  -  Begin function __bootstrap
	$type,	__bootstrap,@function
__bootstrap:                            // @__bootstrap
crt0..Lfunc_begin0:
	$loc,	2 33 0                          // uPIMulator_frontend/sdk/misc/crt0.c:33:0
	$cfi_sections, %debug_frame
	$cfi_startproc,
// %bb.0:
	$loc,	2 35 5 prologue_end             // uPIMulator_frontend/sdk/misc/crt0.c:35:5
	// inline asm
	$jnz , id, crt0.__sys_start_thread

	$sd , zero, __stdout_buffer_state, 0
	$move , r23, __atomic_end_addr
crt0.__sys_atomic_bit_clear:
	$jeq , r23, __atomic_used_addr, crt0.__sys_start_thread
crt0..Ltmp0:
	$release , r23, 0, nz, crt0..Ltmp0 + 1
	$add , r23, r23,  - 1, true, crt0.__sys_atomic_bit_clear
crt0.__sys_start_thread:
crt0..Ltmp1:
	$jeq , id, NR_TASKLETS - 1, crt0..Ltmp1 + 2
	$boot , id, 1
	$ld , d22, id8, __sys_thread_stack_table_ptr
	$call , r23, main
	$globl,	__sys_end
__sys_end:

	$stop , true, __sys_end
	// inline asm
crt0..Ltmp2:
crt0..Lfunc_end0:
	$size,	__bootstrap, crt0..Lfunc_end0 - __bootstrap
	$cfi_endproc,
	$section,	%stack_sizes,"o",@progbits,%text, __bootstrap
	$long,	crt0..Lfunc_begin0
	$byte,	0
	$section,	%text, __bootstrap,"ax",@progbits
                                        //  -  -  End function
	$type,	__sys_null_pointer,@object      // @__sys_null_pointer
	$section,	%data, __sys_zero,"aw",@progbits
	$globl,	__sys_null_pointer
	$p2align,	3
__sys_null_pointer:
	$quad,	0                               // 0x0
	$size,	__sys_null_pointer, 8

	$type,	__sys_thread_stack_table_ptr,@object // @__sys_thread_stack_table_ptr
	$section,	%data, __sys_keep,"aw",@progbits
	$globl,	__sys_thread_stack_table_ptr
	$p2align,	3
__sys_thread_stack_table_ptr:
	$long,	STACK_SIZE_TASKLET_0
	$long,	__sys_stack_thread_0
	$long,	STACK_SIZE_TASKLET_1
	$long,	__sys_stack_thread_1
	$long,	STACK_SIZE_TASKLET_2
	$long,	__sys_stack_thread_2
	$long,	STACK_SIZE_TASKLET_3
	$long,	__sys_stack_thread_3
	$long,	STACK_SIZE_TASKLET_4
	$long,	__sys_stack_thread_4
	$long,	STACK_SIZE_TASKLET_5
	$long,	__sys_stack_thread_5
	$long,	STACK_SIZE_TASKLET_6
	$long,	__sys_stack_thread_6
	$long,	STACK_SIZE_TASKLET_7
	$long,	__sys_stack_thread_7
	$long,	STACK_SIZE_TASKLET_8
	$long,	__sys_stack_thread_8
	$long,	STACK_SIZE_TASKLET_9
	$long,	__sys_stack_thread_9
	$long,	STACK_SIZE_TASKLET_10
	$long,	__sys_stack_thread_10
	$long,	STACK_SIZE_TASKLET_11
	$long,	__sys_stack_thread_11
	$long,	STACK_SIZE_TASKLET_12
	$long,	__sys_stack_thread_12
	$long,	STACK_SIZE_TASKLET_13
	$long,	__sys_stack_thread_13
	$long,	STACK_SIZE_TASKLET_14
	$long,	__sys_stack_thread_14
	$long,	STACK_SIZE_TASKLET_15
	$long,	__sys_stack_thread_15
	$long,	STACK_SIZE_TASKLET_16
	$long,	__sys_stack_thread_16
	$long,	STACK_SIZE_TASKLET_17
	$long,	__sys_stack_thread_17
	$long,	STACK_SIZE_TASKLET_18
	$long,	__sys_stack_thread_18
	$long,	STACK_SIZE_TASKLET_19
	$long,	__sys_stack_thread_19
	$long,	STACK_SIZE_TASKLET_20
	$long,	__sys_stack_thread_20
	$long,	STACK_SIZE_TASKLET_21
	$long,	__sys_stack_thread_21
	$long,	STACK_SIZE_TASKLET_22
	$long,	__sys_stack_thread_22
	$long,	STACK_SIZE_TASKLET_23
	$long,	__sys_stack_thread_23
	$size,	__sys_thread_stack_table_ptr, 192

	$type,	__sys_used_mram_end,@object     // @__sys_used_mram_end
	$section,	%mram, noinit,"aw",@progbits
	$globl,	__sys_used_mram_end
	$p2align,	3
__sys_used_mram_end:
	$size,	__sys_used_mram_end, 0

	$type,	thread_profiling,@object        // @thread_profiling
	$section,	%data, immediate_memory.thread_profiling,"aw",@progbits
	$globl,	thread_profiling
	$p2align,	2
thread_profiling:
	$zero,	96
	$size,	thread_profiling, 96

	$type,	perfcounter_end_value,@object   // @perfcounter_end_value
	$section,	%bss, perfcounter_end_value,"aw",@nobits
	$globl,	perfcounter_end_value
	$p2align,	2
perfcounter_end_value:
	$long,	0                               // 0x0
	$size,	perfcounter_end_value, 4

	$type,	CLOCKS_PER_SEC,@object          // @CLOCKS_PER_SEC
	$section,	%dpu_host,"a",@progbits
	$globl,	CLOCKS_PER_SEC
	$p2align,	3
CLOCKS_PER_SEC:
	$long,	0                               // 0x0
	$size,	CLOCKS_PER_SEC, 4

	$type,	error_storage,@object           // @error_storage
	$globl,	error_storage
	$p2align,	3
error_storage:
	$long,	0                               // 0x0
	$size,	error_storage, 4

	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	22                              // DW_TAG_typedef
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$ascii,	"\210\001"                      // DW_AT_alignment
	$byte,	15                              // DW_FORM_udata
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	7                               // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	8                               // Abbreviation Code
	$byte,	19                              // DW_TAG_structure_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	9                               // Abbreviation Code
	$byte,	13                              // DW_TAG_member
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	56                              // DW_AT_data_member_location
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	10                              // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	11                              // Abbreviation Code
	$byte,	38                              // DW_TAG_const_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	12                              // Abbreviation Code
	$byte,	53                              // DW_TAG_volatile_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	13                              // Abbreviation Code
	$byte,	46                              // DW_TAG_subprogram
	$byte,	0                               // DW_CHILDREN_no
	$byte,	17                              // DW_AT_low_pc
	$byte,	1                               // DW_FORM_addr
	$byte,	18                              // DW_AT_high_pc
	$byte,	6                               // DW_FORM_data4
	$byte,	64                              // DW_AT_frame_base
	$byte,	24                              // DW_FORM_exprloc
	$ascii,	"\227B"                         // DW_AT_GNU_all_call_sites
	$byte,	25                              // DW_FORM_flag_present
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
crt0..Lcu_begin0:
	$long,	crt0..Ldebug_info_end0 - crt0..Ldebug_info_start0 // Length of Unit
crt0..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x13b DW_TAG_compile_unit
	$long,	crt0..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	crt0..Linfo_string1                  // DW_AT_name
	$long,	crt0..Lline_table_start0             // DW_AT_stmt_list
	$long,	crt0..Linfo_string2                  // DW_AT_comp_dir
	$long,	crt0..Lfunc_begin0                   // DW_AT_low_pc
	$long,	crt0..Lfunc_end0 - crt0..Lfunc_begin0       // DW_AT_high_pc
	$byte,	2                               // Abbrev [2] 0x26:0x11 DW_TAG_variable
	$long,	crt0..Linfo_string3                  // DW_AT_name
	$long,	55                              // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	13                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__sys_null_pointer
	$byte,	3                               // Abbrev [3] 0x37:0xb DW_TAG_typedef
	$long,	66                              // DW_AT_type
	$long,	crt0..Linfo_string5                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	53                              // DW_AT_decl_line
	$byte,	4                               // Abbrev [4] 0x42:0x7 DW_TAG_base_type
	$long,	crt0..Linfo_string4                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	8                               // DW_AT_byte_size
	$byte,	5                               // Abbrev [5] 0x49:0x12 DW_TAG_variable
	$long,	crt0..Linfo_string6                  // DW_AT_name
	$long,	91                              // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__sys_thread_stack_table_ptr
	$byte,	6                               // Abbrev [6] 0x5b:0xc DW_TAG_array_type
	$long,	103                             // DW_AT_type
	$byte,	7                               // Abbrev [7] 0x60:0x6 DW_TAG_subrange_type
	$long,	161                             // DW_AT_type
	$byte,	24                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	3                               // Abbrev [3] 0x67:0xb DW_TAG_typedef
	$long,	114                             // DW_AT_type
	$long,	crt0..Linfo_string11                 // DW_AT_name
	$byte,	3                               // DW_AT_decl_file
	$byte,	27                              // DW_AT_decl_line
	$byte,	8                               // Abbrev [8] 0x72:0x1d DW_TAG_structure_type
	$byte,	8                               // DW_AT_byte_size
	$byte,	3                               // DW_AT_decl_file
	$byte,	24                              // DW_AT_decl_line
	$byte,	9                               // Abbrev [9] 0x76:0xc DW_TAG_member
	$long,	crt0..Linfo_string7                  // DW_AT_name
	$long,	143                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	25                              // DW_AT_decl_line
	$byte,	0                               // DW_AT_data_member_location
	$byte,	9                               // Abbrev [9] 0x82:0xc DW_TAG_member
	$long,	crt0..Linfo_string10                 // DW_AT_name
	$long,	143                             // DW_AT_type
	$byte,	3                               // DW_AT_decl_file
	$byte,	26                              // DW_AT_decl_line
	$byte,	4                               // DW_AT_data_member_location
	$byte,	0                               // End Of Children Mark
	$byte,	3                               // Abbrev [3] 0x8f:0xb DW_TAG_typedef
	$long,	154                             // DW_AT_type
	$long,	crt0..Linfo_string9                  // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	48                              // DW_AT_decl_line
	$byte,	4                               // Abbrev [4] 0x9a:0x7 DW_TAG_base_type
	$long,	crt0..Linfo_string8                  // DW_AT_name
	$byte,	7                               // DW_AT_encoding
	$byte,	4                               // DW_AT_byte_size
	$byte,	10                              // Abbrev [10] 0xa1:0x7 DW_TAG_base_type
	$long,	crt0..Linfo_string12                 // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	5                               // Abbrev [5] 0xa8:0x12 DW_TAG_variable
	$long,	crt0..Linfo_string13                 // DW_AT_name
	$long,	186                             // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	11                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__sys_used_mram_end
	$byte,	6                               // Abbrev [6] 0xba:0xc DW_TAG_array_type
	$long,	198                             // DW_AT_type
	$byte,	7                               // Abbrev [7] 0xbf:0x6 DW_TAG_subrange_type
	$long,	161                             // DW_AT_type
	$byte,	0                               // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	3                               // Abbrev [3] 0xc6:0xb DW_TAG_typedef
	$long,	209                             // DW_AT_type
	$long,	crt0..Linfo_string15                 // DW_AT_name
	$byte,	1                               // DW_AT_decl_file
	$byte,	40                              // DW_AT_decl_line
	$byte,	4                               // Abbrev [4] 0xd1:0x7 DW_TAG_base_type
	$long,	crt0..Linfo_string14                 // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	2                               // Abbrev [2] 0xd8:0x11 DW_TAG_variable
	$long,	crt0..Linfo_string16                 // DW_AT_name
	$long,	233                             // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	15                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	thread_profiling
	$byte,	6                               // Abbrev [6] 0xe9:0xc DW_TAG_array_type
	$long,	143                             // DW_AT_type
	$byte,	7                               // Abbrev [7] 0xee:0x6 DW_TAG_subrange_type
	$long,	161                             // DW_AT_type
	$byte,	24                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	2                               // Abbrev [2] 0xf5:0x11 DW_TAG_variable
	$long,	crt0..Linfo_string17                 // DW_AT_name
	$long,	143                             // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	16                              // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	perfcounter_end_value
	$byte,	5                               // Abbrev [5] 0x106:0x12 DW_TAG_variable
	$long,	crt0..Linfo_string18                 // DW_AT_name
	$long,	280                             // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	28                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	CLOCKS_PER_SEC
	$byte,	11                              // Abbrev [11] 0x118:0x5 DW_TAG_const_type
	$long,	285                             // DW_AT_type
	$byte,	12                              // Abbrev [12] 0x11d:0x5 DW_TAG_volatile_type
	$long,	143                             // DW_AT_type
	$byte,	5                               // Abbrev [5] 0x122:0x12 DW_TAG_variable
	$long,	crt0..Linfo_string19                 // DW_AT_name
	$long,	280                             // DW_AT_type
                                        // DW_AT_external
	$byte,	2                               // DW_AT_decl_file
	$byte,	30                              // DW_AT_decl_line
	$byte,	8                               // DW_AT_alignment
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	error_storage
	$byte,	13                              // Abbrev [13] 0x134:0x11 DW_TAG_subprogram
	$long,	crt0..Lfunc_begin0                   // DW_AT_low_pc
	$long,	crt0..Lfunc_end0 - crt0..Lfunc_begin0       // DW_AT_high_pc
	$byte,	1                               // DW_AT_frame_base
	$byte,	102
                                        // DW_AT_GNU_all_call_sites
	$long,	crt0..Linfo_string20                 // DW_AT_name
	$byte,	2                               // DW_AT_decl_file
	$byte,	32                              // DW_AT_decl_line
                                        // DW_AT_external
	$byte,	0                               // End Of Children Mark
crt0..Ldebug_info_end0:
	$section,	%debug_str,"MS",@progbits,1
crt0..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
crt0..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/misc/crt0.c" // string offset=106
crt0..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=148
crt0..Linfo_string3:
	$asciz,	"__sys_null_pointer"            // string offset=169
crt0..Linfo_string4:
	$asciz,	"long unsigned int"             // string offset=188
crt0..Linfo_string5:
	$asciz,	"uint64_t"                      // string offset=206
crt0..Linfo_string6:
	$asciz,	"__sys_thread_stack_table_ptr"  // string offset=215
crt0..Linfo_string7:
	$asciz,	"stack_size"                    // string offset=244
crt0..Linfo_string8:
	$asciz,	"unsigned int"                  // string offset=255
crt0..Linfo_string9:
	$asciz,	"uint32_t"                      // string offset=268
crt0..Linfo_string10:
	$asciz,	"stack_ptr"                     // string offset=277
crt0..Linfo_string11:
	$asciz,	"thread_stack_t"                // string offset=287
crt0..Linfo_string12:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=302
crt0..Linfo_string13:
	$asciz,	"__sys_used_mram_end"           // string offset=322
crt0..Linfo_string14:
	$asciz,	"unsigned char"                 // string offset=342
crt0..Linfo_string15:
	$asciz,	"uint8_t"                       // string offset=356
crt0..Linfo_string16:
	$asciz,	"thread_profiling"              // string offset=364
crt0..Linfo_string17:
	$asciz,	"perfcounter_end_value"         // string offset=381
crt0..Linfo_string18:
	$asciz,	"CLOCKS_PER_SEC"                // string offset=403
crt0..Linfo_string19:
	$asciz,	"error_storage"                 // string offset=418
crt0..Linfo_string20:
	$asciz,	"__bootstrap"                   // string offset=432
	$addrsig,
	$addrsig_sym, __bootstrap
	$addrsig_sym, __sys_null_pointer
	$addrsig_sym, STACK_SIZE_TASKLET_0
	$addrsig_sym, __sys_stack_thread_0
	$addrsig_sym, STACK_SIZE_TASKLET_1
	$addrsig_sym, __sys_stack_thread_1
	$addrsig_sym, STACK_SIZE_TASKLET_2
	$addrsig_sym, __sys_stack_thread_2
	$addrsig_sym, STACK_SIZE_TASKLET_3
	$addrsig_sym, __sys_stack_thread_3
	$addrsig_sym, STACK_SIZE_TASKLET_4
	$addrsig_sym, __sys_stack_thread_4
	$addrsig_sym, STACK_SIZE_TASKLET_5
	$addrsig_sym, __sys_stack_thread_5
	$addrsig_sym, STACK_SIZE_TASKLET_6
	$addrsig_sym, __sys_stack_thread_6
	$addrsig_sym, STACK_SIZE_TASKLET_7
	$addrsig_sym, __sys_stack_thread_7
	$addrsig_sym, STACK_SIZE_TASKLET_8
	$addrsig_sym, __sys_stack_thread_8
	$addrsig_sym, STACK_SIZE_TASKLET_9
	$addrsig_sym, __sys_stack_thread_9
	$addrsig_sym, STACK_SIZE_TASKLET_10
	$addrsig_sym, __sys_stack_thread_10
	$addrsig_sym, STACK_SIZE_TASKLET_11
	$addrsig_sym, __sys_stack_thread_11
	$addrsig_sym, STACK_SIZE_TASKLET_12
	$addrsig_sym, __sys_stack_thread_12
	$addrsig_sym, STACK_SIZE_TASKLET_13
	$addrsig_sym, __sys_stack_thread_13
	$addrsig_sym, STACK_SIZE_TASKLET_14
	$addrsig_sym, __sys_stack_thread_14
	$addrsig_sym, STACK_SIZE_TASKLET_15
	$addrsig_sym, __sys_stack_thread_15
	$addrsig_sym, STACK_SIZE_TASKLET_16
	$addrsig_sym, __sys_stack_thread_16
	$addrsig_sym, STACK_SIZE_TASKLET_17
	$addrsig_sym, __sys_stack_thread_17
	$addrsig_sym, STACK_SIZE_TASKLET_18
	$addrsig_sym, __sys_stack_thread_18
	$addrsig_sym, STACK_SIZE_TASKLET_19
	$addrsig_sym, __sys_stack_thread_19
	$addrsig_sym, STACK_SIZE_TASKLET_20
	$addrsig_sym, __sys_stack_thread_20
	$addrsig_sym, STACK_SIZE_TASKLET_21
	$addrsig_sym, __sys_stack_thread_21
	$addrsig_sym, STACK_SIZE_TASKLET_22
	$addrsig_sym, __sys_stack_thread_22
	$addrsig_sym, STACK_SIZE_TASKLET_23
	$addrsig_sym, __sys_stack_thread_23
	$addrsig_sym, __sys_thread_stack_table_ptr
	$addrsig_sym, __sys_used_mram_end
	$addrsig_sym, thread_profiling
	$addrsig_sym, CLOCKS_PER_SEC
	$addrsig_sym, error_storage
	$section,	%debug_line,"",@progbits
crt0..Lline_table_start0:
	$text,
	$file,	"waitqueue.c"
	$file,	1 "/root" "uPIMulator_frontend/sdk/syslib/waitqueue.c"
	$type,	__sys_wq_table,@object          // @__sys_wq_table
	$section,	%data, __sys_wq_table,"aw",@progbits
	$globl,	__sys_wq_table
__sys_wq_table:
	$zero,	24,255
	$size,	__sys_wq_table, 24

	$section,	%debug_abbrev,"",@progbits
	$byte,	1                               // Abbreviation Code
	$byte,	17                              // DW_TAG_compile_unit
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	37                              // DW_AT_producer
	$byte,	14                              // DW_FORM_strp
	$byte,	19                              // DW_AT_language
	$byte,	5                               // DW_FORM_data2
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	16                              // DW_AT_stmt_list
	$byte,	23                              // DW_FORM_sec_offset
	$byte,	27                              // DW_AT_comp_dir
	$byte,	14                              // DW_FORM_strp
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	2                               // Abbreviation Code
	$byte,	52                              // DW_TAG_variable
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	63                              // DW_AT_external
	$byte,	25                              // DW_FORM_flag_present
	$byte,	58                              // DW_AT_decl_file
	$byte,	11                              // DW_FORM_data1
	$byte,	59                              // DW_AT_decl_line
	$byte,	11                              // DW_FORM_data1
	$byte,	2                               // DW_AT_location
	$byte,	24                              // DW_FORM_exprloc
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	3                               // Abbreviation Code
	$byte,	1                               // DW_TAG_array_type
	$byte,	1                               // DW_CHILDREN_yes
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	4                               // Abbreviation Code
	$byte,	33                              // DW_TAG_subrange_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	73                              // DW_AT_type
	$byte,	19                              // DW_FORM_ref4
	$byte,	55                              // DW_AT_count
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	5                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	6                               // Abbreviation Code
	$byte,	36                              // DW_TAG_base_type
	$byte,	0                               // DW_CHILDREN_no
	$byte,	3                               // DW_AT_name
	$byte,	14                              // DW_FORM_strp
	$byte,	11                              // DW_AT_byte_size
	$byte,	11                              // DW_FORM_data1
	$byte,	62                              // DW_AT_encoding
	$byte,	11                              // DW_FORM_data1
	$byte,	0                               // EOM(1)
	$byte,	0                               // EOM(2)
	$byte,	0                               // EOM(3)
	$section,	%debug_info,"",@progbits
waitqueue..Lcu_begin0:
	$long,	waitqueue..Ldebug_info_end0 - waitqueue..Ldebug_info_start0 // Length of Unit
waitqueue..Ldebug_info_start0:
	$short,	4                               // DWARF version number
	$long,	%debug_abbrev                   // Offset Into Abbrev. Section
	$byte,	4                               // Address Size (in bytes)
	$byte,	1                               // Abbrev [1] 0xb:0x3f DW_TAG_compile_unit
	$long,	waitqueue..Linfo_string0                  // DW_AT_producer
	$short,	12                              // DW_AT_language
	$long,	waitqueue..Linfo_string1                  // DW_AT_name
	$long,	waitqueue..Lline_table_start0             // DW_AT_stmt_list
	$long,	waitqueue..Linfo_string2                  // DW_AT_comp_dir
	$byte,	2                               // Abbrev [2] 0x1e:0x11 DW_TAG_variable
	$long,	waitqueue..Linfo_string3                  // DW_AT_name
	$long,	47                              // DW_AT_type
                                        // DW_AT_external
	$byte,	1                               // DW_AT_decl_file
	$byte,	8                               // DW_AT_decl_line
	$byte,	5                               // DW_AT_location
	$byte,	3
	$long,	__sys_wq_table
	$byte,	3                               // Abbrev [3] 0x2f:0xc DW_TAG_array_type
	$long,	59                              // DW_AT_type
	$byte,	4                               // Abbrev [4] 0x34:0x6 DW_TAG_subrange_type
	$long,	66                              // DW_AT_type
	$byte,	24                              // DW_AT_count
	$byte,	0                               // End Of Children Mark
	$byte,	5                               // Abbrev [5] 0x3b:0x7 DW_TAG_base_type
	$long,	waitqueue..Linfo_string4                  // DW_AT_name
	$byte,	8                               // DW_AT_encoding
	$byte,	1                               // DW_AT_byte_size
	$byte,	6                               // Abbrev [6] 0x42:0x7 DW_TAG_base_type
	$long,	waitqueue..Linfo_string5                  // DW_AT_name
	$byte,	8                               // DW_AT_byte_size
	$byte,	7                               // DW_AT_encoding
	$byte,	0                               // End Of Children Mark
waitqueue..Ldebug_info_end0:
	$section,	%debug_str,"MS",@progbits,1
waitqueue..Linfo_string0:
	$asciz,	"clang version 12.0.0 (https://github.com/upmem/llvm - project.git d36425841d9a4d1420b7aa155675f6ae8bcf9f08)" // string offset=0
waitqueue..Linfo_string1:
	$asciz,	"/root/uPIMulator_frontend/sdk/syslib/waitqueue.c" // string offset=106
waitqueue..Linfo_string2:
	$asciz,	"/root/upmem_compiler"          // string offset=155
waitqueue..Linfo_string3:
	$asciz,	"__sys_wq_table"                // string offset=176
waitqueue..Linfo_string4:
	$asciz,	"unsigned char"                 // string offset=191
waitqueue..Linfo_string5:
	$asciz,	"__ARRAY_SIZE_TYPE__"           // string offset=205
	$addrsig,
	$addrsig_sym, __sys_wq_table
	$section,	%debug_line,"",@progbits
waitqueue..Lline_table_start0:
