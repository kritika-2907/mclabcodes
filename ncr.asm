		AREA NCR,CODE,READONLY
ENTRY		
		MOV R0,#6
		MOV R1,#3
		BL FACT
		MOV R3,R2
		MOV R0,#6
		SUB R0,R0,R1
		BL FACT
		MOV R4,R2
		MOV R0,R1
		BL FACT 
		MUL R4,R2,R4
		MOV R5,#0
SUB_AGAIN
		SUBS R3,R3,R4
		ADDPL R5,R5,#1
		BPL SUB_AGAIN
		LDR R0,=0x40000000
		STR R5,[R0]
GO		BAL	GO
FACT
		MOV R2,#1
NEXT
		CMP R0,#0
		MULGT R2,R0,R2
		SUBGT R0,R0,#1
		BNE NEXT
		BX LR
		END