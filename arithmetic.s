// +build amd64,!generic

// Code generated by command: go run main.go -output ./generated -bit 256 -opt A -modulus 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47 -arch ADX. DO NOT EDIT.

#include "textflag.h"

// func add(c *[4]uint64, a *[4]uint64, b *[4]uint64)
TEXT ·add(SB), NOSPLIT, $0-24
	// |
	MOVQ a+8(FP), DI
	MOVQ b+16(FP), SI
	XORQ AX, AX

	// |
	MOVQ (DI), CX
	ADDQ (SI), CX
	MOVQ 8(DI), DX
	ADCQ 8(SI), DX
	MOVQ 16(DI), R8
	ADCQ 16(SI), R8
	MOVQ 24(DI), R9
	ADCQ 24(SI), R9
	ADCQ $0x00, AX

	// |
	MOVQ CX, R10
	SUBQ ·modulus+0(SB), R10
	MOVQ DX, R11
	SBBQ ·modulus+8(SB), R11
	MOVQ R8, R12
	SBBQ ·modulus+16(SB), R12
	MOVQ R9, R13
	SBBQ ·modulus+24(SB), R13
	SBBQ $0x00, AX

	// |
	MOVQ    c+0(FP), DI
	CMOVQCC R10, CX
	MOVQ    CX, (DI)
	CMOVQCC R11, DX
	MOVQ    DX, 8(DI)
	CMOVQCC R12, R8
	MOVQ    R8, 16(DI)
	CMOVQCC R13, R9
	MOVQ    R9, 24(DI)
	RET

	// | 

/* end                                     */


// func add(a *[4]uint64, b *[4]uint64)
TEXT ·addAssign(SB), NOSPLIT, $0-16
	// |
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	XORQ AX, AX

	// |
	MOVQ (DI), CX
	ADDQ (SI), CX
	MOVQ 8(DI), DX
	ADCQ 8(SI), DX
	MOVQ 16(DI), R8
	ADCQ 16(SI), R8
	MOVQ 24(DI), R9
	ADCQ 24(SI), R9
	ADCQ $0x00, AX

	// |
	MOVQ CX, R10
	SUBQ ·modulus+0(SB), R10
	MOVQ DX, R11
	SBBQ ·modulus+8(SB), R11
	MOVQ R8, R12
	SBBQ ·modulus+16(SB), R12
	MOVQ R9, R13
	SBBQ ·modulus+24(SB), R13
	SBBQ $0x00, AX

	// |
	CMOVQCC R10, CX
	MOVQ    CX, (DI)
	CMOVQCC R11, DX
	MOVQ    DX, 8(DI)
	CMOVQCC R12, R8
	MOVQ    R8, 16(DI)
	CMOVQCC R13, R9
	MOVQ    R9, 24(DI)
	RET

	// | 

/* end                                     */


// func laddAssign(a *[4]uint64, b *[4]uint64)
TEXT ·laddAssign(SB), NOSPLIT, $0-16
	// |
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI

	// |
	MOVQ (DI), CX
	ADDQ (SI), CX
	MOVQ 8(DI), DX
	ADCQ 8(SI), DX
	MOVQ 16(DI), R8
	ADCQ 16(SI), R8
	MOVQ 24(DI), R9
	ADCQ 24(SI), R9
	ADCQ $0x00, AX

	// |
	MOVQ CX, (DI)
	MOVQ DX, 8(DI)
	MOVQ R8, 16(DI)
	MOVQ R9, 24(DI)
	RET

	// | 

/* end                                     */


// func double(c *[4]uint64, a *[4]uint64)
TEXT ·double(SB), NOSPLIT, $0-16
	// |
	MOVQ a+8(FP), DI
	XORQ AX, AX
	MOVQ (DI), CX
	ADDQ CX, CX
	MOVQ 8(DI), DX
	ADCQ DX, DX
	MOVQ 16(DI), SI
	ADCQ SI, SI
	MOVQ 24(DI), R8
	ADCQ R8, R8
	ADCQ $0x00, AX

	// |
	MOVQ CX, R9
	SUBQ ·modulus+0(SB), R9
	MOVQ DX, R10
	SBBQ ·modulus+8(SB), R10
	MOVQ SI, R11
	SBBQ ·modulus+16(SB), R11
	MOVQ R8, R12
	SBBQ ·modulus+24(SB), R12
	SBBQ $0x00, AX

	// |
	MOVQ    c+0(FP), DI
	CMOVQCC R9, CX
	MOVQ    CX, (DI)
	CMOVQCC R10, DX
	MOVQ    DX, 8(DI)
	CMOVQCC R11, SI
	MOVQ    SI, 16(DI)
	CMOVQCC R12, R8
	MOVQ    R8, 24(DI)
	RET

	// | 

/* end                                     */


// func doubleAssign(a *[4]uint64)
TEXT ·doubleAssign(SB), NOSPLIT, $0-8
	// |
	MOVQ a+0(FP), DI
	XORQ AX, AX
	MOVQ (DI), CX
	ADDQ CX, CX
	MOVQ 8(DI), DX
	ADCQ DX, DX
	MOVQ 16(DI), SI
	ADCQ SI, SI
	MOVQ 24(DI), R8
	ADCQ R8, R8
	ADCQ $0x00, AX

	// |
	MOVQ CX, R9
	SUBQ ·modulus+0(SB), R9
	MOVQ DX, R10
	SBBQ ·modulus+8(SB), R10
	MOVQ SI, R11
	SBBQ ·modulus+16(SB), R11
	MOVQ R8, R12
	SBBQ ·modulus+24(SB), R12
	SBBQ $0x00, AX

	// |
	CMOVQCC R9, CX
	MOVQ    CX, (DI)
	CMOVQCC R10, DX
	MOVQ    DX, 8(DI)
	CMOVQCC R11, SI
	MOVQ    SI, 16(DI)
	CMOVQCC R12, R8
	MOVQ    R8, 24(DI)
	RET

	// | 

/* end                                     */


// func sub(c *[4]uint64, a *[4]uint64, b *[4]uint64)
TEXT ·sub(SB), NOSPLIT, $0-24
	// |
	MOVQ a+8(FP), DI
	MOVQ b+16(FP), SI
	XORQ AX, AX
	MOVQ (DI), CX
	SUBQ (SI), CX
	MOVQ 8(DI), DX
	SBBQ 8(SI), DX
	MOVQ 16(DI), R8
	SBBQ 16(SI), R8
	MOVQ 24(DI), R9
	SBBQ 24(SI), R9

	// |
	MOVQ    ·modulus+0(SB), SI
	CMOVQCC AX, SI
	MOVQ    ·modulus+8(SB), R10
	CMOVQCC AX, R10
	MOVQ    ·modulus+16(SB), R11
	CMOVQCC AX, R11
	MOVQ    ·modulus+24(SB), R12
	CMOVQCC AX, R12

	// |
	MOVQ c+0(FP), DI
	ADDQ SI, CX
	MOVQ CX, (DI)
	ADCQ R10, DX
	MOVQ DX, 8(DI)
	ADCQ R11, R8
	MOVQ R8, 16(DI)
	ADCQ R12, R9
	MOVQ R9, 24(DI)
	RET

	// | 

/* end                                     */


// func subAssign(a *[4]uint64, b *[4]uint64)
TEXT ·subAssign(SB), NOSPLIT, $0-16
	// |
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	XORQ AX, AX
	MOVQ (DI), CX
	SUBQ (SI), CX
	MOVQ 8(DI), DX
	SBBQ 8(SI), DX
	MOVQ 16(DI), R8
	SBBQ 16(SI), R8
	MOVQ 24(DI), R9
	SBBQ 24(SI), R9

	// |
	MOVQ    ·modulus+0(SB), SI
	CMOVQCC AX, SI
	MOVQ    ·modulus+8(SB), R10
	CMOVQCC AX, R10
	MOVQ    ·modulus+16(SB), R11
	CMOVQCC AX, R11
	MOVQ    ·modulus+24(SB), R12
	CMOVQCC AX, R12

	// |
	ADDQ SI, CX
	MOVQ CX, (DI)
	ADCQ R10, DX
	MOVQ DX, 8(DI)
	ADCQ R11, R8
	MOVQ R8, 16(DI)
	ADCQ R12, R9
	MOVQ R9, 24(DI)
	RET

	// | 

/* end                                     */


// func lsubAssign(a *[4]uint64, b *[4]uint64)
TEXT ·lsubAssign(SB), NOSPLIT, $0-24
	// |
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	XORQ AX, AX

	// |
	MOVQ (DI), CX
	SUBQ (SI), CX
	MOVQ 8(DI), DX
	SBBQ 8(SI), DX
	MOVQ 16(DI), R8
	SBBQ 16(SI), R8
	MOVQ 24(DI), R9
	SBBQ 24(SI), R9
	ADCQ $0x00, AX

	// |
	MOVQ CX, (DI)
	MOVQ DX, 8(DI)
	MOVQ R8, 16(DI)
	MOVQ R9, 24(DI)
	MOVQ AX, ret+16(FP)
	RET

	// | 

/* end                                     */


// func _neg(c *[4]uint64, a *[4]uint64, p *[4]uint64)
TEXT ·_neg(SB), NOSPLIT, $0-16
	// |
	MOVQ a+8(FP), DI

	// |
	MOVQ ·modulus+0(SB), CX
	SUBQ (DI), CX
	MOVQ ·modulus+8(SB), DX
	SBBQ 8(DI), DX
	MOVQ ·modulus+16(SB), SI
	SBBQ 16(DI), SI
	MOVQ ·modulus+24(SB), R8
	SBBQ 24(DI), R8

	// |
	MOVQ c+0(FP), DI
	MOVQ CX, (DI)
	MOVQ DX, 8(DI)
	MOVQ SI, 16(DI)
	MOVQ R8, 24(DI)
	RET

	// | 

/* end                                     */


// func mul(c *[4]uint64, a *[4]uint64, b *[4]uint64)
TEXT ·mul(SB), NOSPLIT, $0-24
	// | 

/* inputs                                  */

	MOVQ a+8(FP), DI
	MOVQ b+16(FP), SI
	XORQ AX, AX

	// | 

/* i = 0                                   */

	// | a0 @ DX
	MOVQ (DI), DX

	// | a0 * b0 
	MULXQ (SI), CX, R8

	// | a0 * b1 
	MULXQ 8(SI), AX, R9
	ADCXQ AX, R8

	// | a0 * b2 
	MULXQ 16(SI), AX, R10
	ADCXQ AX, R9

	// | a0 * b3 
	MULXQ 24(SI), AX, R11
	ADCXQ AX, R10
	ADCQ  $0x00, R11

	// | 

/* i = 1                                   */

	// | a1 @ DX
	MOVQ 8(DI), DX
	XORQ R12, R12

	// | a1 * b0 
	MULXQ (SI), AX, BX
	ADOXQ AX, R8
	ADCXQ BX, R9

	// | a1 * b1 
	MULXQ 8(SI), AX, BX
	ADOXQ AX, R9
	ADCXQ BX, R10

	// | a1 * b2 
	MULXQ 16(SI), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11

	// | a1 * b3 
	MULXQ 24(SI), AX, BX
	ADOXQ AX, R11
	ADOXQ R12, R12
	ADCXQ BX, R12

	// | 

/* i = 2                                   */

	// | a2 @ DX
	MOVQ 16(DI), DX
	XORQ R13, R13

	// | a2 * b0 
	MULXQ (SI), AX, BX
	ADOXQ AX, R9
	ADCXQ BX, R10

	// | a2 * b1 
	MULXQ 8(SI), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11

	// | a2 * b2 
	MULXQ 16(SI), AX, BX
	ADOXQ AX, R11
	ADCXQ BX, R12

	// | a2 * b3 
	MULXQ 24(SI), AX, BX
	ADOXQ AX, R12
	ADOXQ R13, R13
	ADCXQ BX, R13

	// | 

/* i = 3                                   */

	// | a3 @ DX
	MOVQ 24(DI), DX
	XORQ DI, DI

	// | a3 * b0 
	MULXQ (SI), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11

	// | a3 * b1 
	MULXQ 8(SI), AX, BX
	ADOXQ AX, R11
	ADCXQ BX, R12

	// | a3 * b2 
	MULXQ 16(SI), AX, BX
	ADOXQ AX, R12
	ADCXQ BX, R13

	// | a3 * b3 
	MULXQ 24(SI), AX, BX
	ADOXQ AX, R13
	ADOXQ BX, DI
	ADCQ  $0x00, DI

	// | 

/* 			                                     */

	// | 
	// | W
	// | 0   CX        | 1   R8        | 2   R9        | 3   R10       
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | 
	// | W ready to mont
	// | 0   CX        | 1   R8        | 2   R9        | 3   R10       
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | 

/* montgomery reduction                    */

	// | clear flags
	XORQ AX, AX

	// | 

/* i = 0                                   */

	// | 
	// | W
	// | 0   CX        | 1   R8        | 2   R9        | 3   R10       
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | | u0 = w0 * inp
	MOVQ  CX, DX
	MULXQ ·inp+0(SB), DX, BX

	// | 

/*                                         */

	// | j0

	// | w0 @ CX
	MULXQ ·modulus+0(SB), AX, BX
	ADOXQ AX, CX
	ADCXQ BX, R8

	// | j1

	// | w1 @ R8
	MULXQ ·modulus+8(SB), AX, BX
	ADOXQ AX, R8
	ADCXQ BX, R9

	// | j2

	// | w2 @ R9
	MULXQ ·modulus+16(SB), AX, BX
	ADOXQ AX, R9
	ADCXQ BX, R10

	// | j3

	// | w3 @ R10
	MULXQ ·modulus+24(SB), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11
	ADOXQ CX, R11
	ADCXQ CX, CX
	MOVQ  $0x00, AX
	ADOXQ AX, CX

	// | clear flags
	XORQ AX, AX

	// | 

/* i = 1                                   */

	// | 
	// | W
	// | 0   -         | 1   R8        | 2   R9        | 3   R10       
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | | u1 = w1 * inp
	MOVQ  R8, DX
	MULXQ ·inp+0(SB), DX, BX

	// | 

/*                                         */

	// | j0

	// | w1 @ R8
	MULXQ ·modulus+0(SB), AX, BX
	ADOXQ AX, R8
	ADCXQ BX, R9

	// | j1

	// | w2 @ R9
	MULXQ ·modulus+8(SB), AX, BX
	ADOXQ AX, R9
	ADCXQ BX, R10

	// | j2

	// | w3 @ R10
	MULXQ ·modulus+16(SB), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11

	// | j3

	// | w4 @ R11
	MULXQ ·modulus+24(SB), AX, BX
	ADOXQ AX, R11
	ADCXQ BX, R12
	ADOXQ CX, R12
	ADCXQ R8, R8
	MOVQ  $0x00, AX
	ADOXQ AX, R8

	// | clear flags
	XORQ AX, AX

	// | 

/* i = 2                                   */

	// | 
	// | W
	// | 0   -         | 1   -         | 2   R9        | 3   R10       
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | | u2 = w2 * inp
	MOVQ  R9, DX
	MULXQ ·inp+0(SB), DX, BX

	// | 

/*                                         */

	// | j0

	// | w2 @ R9
	MULXQ ·modulus+0(SB), AX, BX
	ADOXQ AX, R9
	ADCXQ BX, R10

	// | j1

	// | w3 @ R10
	MULXQ ·modulus+8(SB), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11

	// | j2

	// | w4 @ R11
	MULXQ ·modulus+16(SB), AX, BX
	ADOXQ AX, R11
	ADCXQ BX, R12

	// | j3

	// | w5 @ R12
	MULXQ ·modulus+24(SB), AX, BX
	ADOXQ AX, R12
	ADCXQ BX, R13
	ADOXQ R8, R13
	ADCXQ R9, R9
	MOVQ  $0x00, AX
	ADOXQ AX, R9

	// | clear flags
	XORQ AX, AX

	// | 

/* i = 3                                   */

	// | 
	// | W
	// | 0   -         | 1   -         | 2   -         | 3   R10       
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | | u3 = w3 * inp
	MOVQ  R10, DX
	MULXQ ·inp+0(SB), DX, BX

	// | 

/*                                         */

	// | j0

	// | w3 @ R10
	MULXQ ·modulus+0(SB), AX, BX
	ADOXQ AX, R10
	ADCXQ BX, R11

	// | j1

	// | w4 @ R11
	MULXQ ·modulus+8(SB), AX, BX
	ADOXQ AX, R11
	ADCXQ BX, R12

	// | j2

	// | w5 @ R12
	MULXQ ·modulus+16(SB), AX, BX
	ADOXQ AX, R12
	ADCXQ BX, R13

	// | j3

	// | w6 @ R13
	MULXQ ·modulus+24(SB), AX, BX
	ADOXQ AX, R13
	ADCXQ BX, DI
	ADOXQ R9, DI
	ADCXQ R10, R10
	MOVQ  $0x00, AX
	ADOXQ AX, R10

	// | 
	// | W montgomery reduction ends
	// | 0   -         | 1   -         | 2   -         | 3   -         
	// | 4   R11       | 5   R12       | 6   R13       | 7   DI        


	// | 

/* modular reduction                       */

	MOVQ R11, CX
	SUBQ ·modulus+0(SB), CX
	MOVQ R12, AX
	SBBQ ·modulus+8(SB), AX
	MOVQ R13, BX
	SBBQ ·modulus+16(SB), BX
	MOVQ DI, SI
	SBBQ ·modulus+24(SB), SI
	SBBQ $0x00, R10

	// | 

/* out                                     */

	MOVQ    c+0(FP), R10
	CMOVQCC CX, R11
	MOVQ    R11, (R10)
	CMOVQCC AX, R12
	MOVQ    R12, 8(R10)
	CMOVQCC BX, R13
	MOVQ    R13, 16(R10)
	CMOVQCC SI, DI
	MOVQ    DI, 24(R10)
	RET

	// | 

/* end                                     */

