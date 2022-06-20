		area sumeven, code, readonly
entry
		mov r0, #0;even numbers
		mov r1, #0;counter
		mov r2, #0;sum
ne
		add r1,r1,#1
		add r0,r0,#2
		add r2,r2,r0
		cmp r1,#5
		bne ne
stop 	B 	stop
		end