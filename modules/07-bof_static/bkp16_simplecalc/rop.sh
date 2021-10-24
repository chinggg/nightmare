[[ -f gadgets.txt ]] || ROPgadget --binary simplecalc > gadgets.txt
cat gadgets.txt | grep ":\Wpop rax ; ret$"
cat gadgets.txt | grep ":\Wpop rdi ; ret$"
cat gadgets.txt | grep ":\Wpop rsi ; ret$"
cat gadgets.txt | grep ":\Wpop rdx ; ret$"
cat gadgets.txt | grep "mov qword ptr \[rax\], rdx ; ret"
cat gadgets.txt | grep ": syscall"
