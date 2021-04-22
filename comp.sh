#!/bin/bash



nasm -f elf sort.asm 
gcc -m32 sort.o main.c -o code
./code

