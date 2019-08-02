INCLUDE Irvine32.inc

.data
numbers dword 19900,3000,50000,70000,900
.code

main PROC

	mov esi, OFFSET numbers 
	mov ecx, LENGTHOF numbers 

L1:
	mov eax,dword ptr [esi]
	call WriteInt
	call Crlf
	add esi, type numbers
	loop L1	


	exit
main ENDP
END main