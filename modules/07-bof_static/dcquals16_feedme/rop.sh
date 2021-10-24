gadgets=$(ROPgadget --binary $1 --only 'pop|ret')
echo "%gadgets"
#echo "$gadgets" | grep "mov dword ptr \[eax\], edx ; ret" | tee -a gadgets.txt
#echo "$gadgets" | grep ":\Wpop eax ; ret$" | tee -a gadgets.txt
#echo "$gadgets" | grep ":\Wpop edx ; ret$" | tee -a gadgets.txt
#echo "$gadgets" | grep ":\Wpop ecx" | tee -a gadgets.txt
