
all:
	riscv64-unknown-elf-gcc -c -O2 -o multmat_rv.x multmat.c
	riscv64-unknown-elf-objdump -d multmat_rv.x --disassembler-options=no-aliases > multmat_rv.s

clean:
	rm -rf *.x *.o
