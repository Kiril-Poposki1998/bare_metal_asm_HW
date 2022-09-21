format pe64 efi
entry main

section '.text' executable readable

main:
  mov rcx, [rdx + 64]
  mov rax, [rcx + 8]
  mov rdx, string
  sub rsp, 32
  call rax
  add rsp, 32
  jmp $

section '.data' readable
string du 'Hello World!', 0xD, 0xA, 0x0
