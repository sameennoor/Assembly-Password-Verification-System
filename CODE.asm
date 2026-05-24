.model small
.stack 100h
.data
    password db 'mypass'
    prompt db 13,10, 'Enter password (6 chars): $'
    red_msg db 13,10, 'Red Light ON (Correct Password)$'
    yellow_msg db 13,10, 'Yellow Light ON (Wrong Password)$'
    green_msg db 13,10, 'Green Light ON (Missing Characters)$'
    newline db 13,10, '$'
    user_input db 6 dup(?)
    char_count db 0

.code
main:
    mov ax, @data
    mov ds, ax

    lea dx, prompt
    call print_string

    ; Read up to 6 characters or until ENTER
    xor si, si
    xor cx, cx              ; cx = char count
read_loop:
    call read_char
    cmp al, 13              ; ENTER key?
    je check_length
    mov user_input[si], al
    inc si
    inc cx
    cmp cx, 6
    jne read_loop

check_length:
    mov char_count, cl
    cmp char_count, 6
    jne show_green

    ; Compare with password
    lea si, user_input
    lea di, password
    mov cx, 6
    xor bx, bx           ; mismatch flag

compare_loop:
    mov al, [si]
    mov ah, [di]
    cmp al, ah
    jne mismatch
    inc si
    inc di
    loop compare_loop

    jmp correct_password

mismatch:
    inc bx               ; set mismatch flag
    lea dx, yellow_msg
    call print_string
    jmp done

correct_password:
    cmp bx, 0
    jne done
    lea dx, red_msg
    call print_string
    jmp done

show_green:
    lea dx, green_msg
    call print_string

done:
    lea dx, newline
    call print_string
    mov ah, 4ch
    int 21h

; ---------- I/O Routines ----------

print_string:
    mov ah, 09h
    int 21h
    ret

read_char:
    mov ah, 01h
    int 21h
    ret

end main
