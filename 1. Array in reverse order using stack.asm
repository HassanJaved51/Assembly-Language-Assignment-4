mov cx,10
mov si,arr
mov di,res

reverse:
mov ax,[si]
push ax
add si ,2
dec cx
jnz reverse

mov cx ,10
mov si,res

poploop:
pop ax
mov [si],ax
add si,2
dec cx
jnz poploop

mov ax,0x4c00
int 0x21

arr: dw 10,9,8,7,6,5,4,3,2,1
res: dw 0