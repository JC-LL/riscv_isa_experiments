
pgcd_rv.x:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <pgcd>:
   0:	4781                	c.li	a5,0
   2:	00054c63          	blt	a0,zero,1a <.L2>
   6:	0005ca63          	blt	a1,zero,1a <.L2>
   a:	87aa                	c.mv	a5,a0
   c:	00b50763          	beq	a0,a1,1a <.L2>

0000000000000010 <.L5>:
  10:	00f5d763          	bge	a1,a5,1e <.L3>
  14:	9f8d                	c.subw	a5,a1
  16:	fef59de3          	bne	a1,a5,10 <.L5>

000000000000001a <.L2>:
  1a:	853e                	c.mv	a0,a5
  1c:	8082                	c.jr	ra

000000000000001e <.L3>:
  1e:	9d9d                	c.subw	a1,a5
  20:	fef598e3          	bne	a1,a5,10 <.L5>
  24:	bfdd                	c.j	1a <.L2>
