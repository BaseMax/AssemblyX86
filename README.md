# Assembly X86

Tiny programs using Assembly based on X86.

## how to assemble and link the object file

Replace `<filename>` to your filename.

#### 32bit

```
nasm -f elf32 -o <filename>.o <filename>.asm
ld -m elf_i386 -o <filename> <filename>.o
```

#### 64bit

```
nasm -f elf -o <filename>.o <filename>.asm
ld -o <filename> <filename>.o
```
