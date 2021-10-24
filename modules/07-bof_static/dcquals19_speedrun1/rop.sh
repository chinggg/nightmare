gadgets=$(ROPgadget --binary $1)
echo "$gadgets" | grep ":\Wpop rax ; ret$" | tee -a gadgets.txt
echo "$gadgets" | grep ":\Wpop rdi ; ret$" | tee -a gadgets.txt
echo "$gadgets" | grep ":\Wpop rsi ; ret$" | tee -a gadgets.txt
echo "$gadgets" | grep ":\Wpop rdx ; ret$" | tee -a gadgets.txt
echo "$gadgets" | grep "mov qword ptr \[rax\], rdx ; ret" | tee -a gadgets.txt
echo "$gadgets" | grep ": syscall" | tee -a gadgets.txt
