
all:
	#gcc -O2 -o pgcd_x86.x pgcd.c
	riscv64-unknown-elf-gcc -c -O2 -o pgcd_rv.x pgcd.c
	riscv64-unknown-elf-objdump -d pgcd_rv.x --disassembler-options=no-aliases > pgcd_rv.s

clean:
	rm -rf *.x *.o
