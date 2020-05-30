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
nasm -f elf64 -o <filename>.o <filename>.asm
ld -o <filename> <filename>.o
```

---------

# Max Base

My nickname is Max, Programming language developer, Full-stack programmer. I love computer scientists, researchers, and compilers. ([Max Base](https://maxbase.org/))

## Asrez Team

A team includes some programmer, developer, designer, researcher(s) especially Max Base.

[Asrez Team](https://www.asrez.com/)
