
multmat_rv.x:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <matrixInput>:
   0:	1101                	c.addi	sp,-32
   2:	e822                	c.sdsp	s0,16(sp)
   4:	e426                	c.sdsp	s1,8(sp)
   6:	e04a                	c.sdsp	s2,0(sp)
   8:	ec06                	c.sdsp	ra,24(sp)
   a:	842a                	c.mv	s0,a0
   c:	02450913          	addi	s2,a0,36
  10:	000004b7          	lui	s1,0x0

0000000000000014 <.L2>:
  14:	85a2                	c.mv	a1,s0
  16:	00048513          	addi	a0,s1,0 # 0 <matrixInput>
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra,0(ra) # 1a <.L2+0x6>
  22:	00440593          	addi	a1,s0,4
  26:	00048513          	addi	a0,s1,0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra,0(ra) # 2a <.L2+0x16>
  32:	00840593          	addi	a1,s0,8
  36:	00048513          	addi	a0,s1,0
  3a:	0431                	c.addi	s0,12
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra,0(ra) # 3c <.L2+0x28>
  44:	fc8918e3          	bne	s2,s0,14 <.L2>
  48:	60e2                	c.ldsp	ra,24(sp)
  4a:	6442                	c.ldsp	s0,16(sp)
  4c:	64a2                	c.ldsp	s1,8(sp)
  4e:	6902                	c.ldsp	s2,0(sp)
  50:	6105                	c.addi16sp	sp,32
  52:	8082                	c.jr	ra

0000000000000054 <matrixPrint>:
  54:	7179                	c.addi16sp	sp,-48
  56:	ec26                	c.sdsp	s1,24(sp)
  58:	e84a                	c.sdsp	s2,16(sp)
  5a:	e44e                	c.sdsp	s3,8(sp)
  5c:	f406                	c.sdsp	ra,40(sp)
  5e:	f022                	c.sdsp	s0,32(sp)
  60:	00c50493          	addi	s1,a0,12
  64:	03050993          	addi	s3,a0,48
  68:	00000937          	lui	s2,0x0

000000000000006c <.L7>:
  6c:	ff448413          	addi	s0,s1,-12

0000000000000070 <.L8>:
  70:	400c                	c.lw	a1,0(s0)
  72:	00090513          	addi	a0,s2,0 # 0 <matrixInput>
  76:	0411                	c.addi	s0,4
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra,0(ra) # 78 <.L8+0x8>
  80:	fe9418e3          	bne	s0,s1,70 <.L8>
  84:	00c40493          	addi	s1,s0,12
  88:	4529                	c.li	a0,10
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra,0(ra) # 8a <.L8+0x1a>
  92:	fd349de3          	bne	s1,s3,6c <.L7>
  96:	70a2                	c.ldsp	ra,40(sp)
  98:	7402                	c.ldsp	s0,32(sp)
  9a:	64e2                	c.ldsp	s1,24(sp)
  9c:	6942                	c.ldsp	s2,16(sp)
  9e:	69a2                	c.ldsp	s3,8(sp)
  a0:	6145                	c.addi16sp	sp,48
  a2:	8082                	c.jr	ra

00000000000000a4 <matrixMultiply>:
  a4:	02458e93          	addi	t4,a1,36
  a8:	02450f13          	addi	t5,a0,36
  ac:	03058593          	addi	a1,a1,48

00000000000000b0 <.L13>:
  b0:	88f6                	c.mv	a7,t4
  b2:	8e32                	c.mv	t3,a2

00000000000000b4 <.L17>:
  b4:	fdc88793          	addi	a5,a7,-36
  b8:	86aa                	c.mv	a3,a0
  ba:	4801                	c.li	a6,0

00000000000000bc <.L14>:
  bc:	4298                	c.lw	a4,0(a3)
  be:	0007a303          	lw	t1,0(a5)
  c2:	07b1                	c.addi	a5,12
  c4:	0691                	c.addi	a3,4
  c6:	0267073b          	mulw	a4,a4,t1
  ca:	0107083b          	addw	a6,a4,a6
  ce:	fef897e3          	bne	a7,a5,bc <.L14>
  d2:	010e2023          	sw	a6,0(t3)
  d6:	0891                	c.addi	a7,4
  d8:	0e11                	c.addi	t3,4
  da:	fd159de3          	bne	a1,a7,b4 <.L17>
  de:	0531                	c.addi	a0,12
  e0:	0631                	c.addi	a2,12
  e2:	fcaf17e3          	bne	t5,a0,b0 <.L13>
  e6:	8082                	c.jr	ra

Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	00000537          	lui	a0,0x0
   4:	7175                	c.addi16sp	sp,-144
   6:	460d                	c.li	a2,3
   8:	458d                	c.li	a1,3
   a:	00050513          	addi	a0,a0,0 # 0 <main>
   e:	e506                	c.sdsp	ra,136(sp)
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra,0(ra) # 10 <main+0x10>
  18:	0028                	c.addi4spn	a0,sp,8
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra,0(ra) # 1a <main+0x1a>
  22:	00000537          	lui	a0,0x0
  26:	460d                	c.li	a2,3
  28:	458d                	c.li	a1,3
  2a:	00050513          	addi	a0,a0,0 # 0 <main>
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra,0(ra) # 2e <main+0x2e>
  36:	1808                	c.addi4spn	a0,sp,48
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra,0(ra) # 38 <main+0x38>
  40:	08b0                	c.addi4spn	a2,sp,88
  42:	180c                	c.addi4spn	a1,sp,48
  44:	0028                	c.addi4spn	a0,sp,8
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra,0(ra) # 46 <main+0x46>
  4e:	00000537          	lui	a0,0x0
  52:	00050513          	addi	a0,a0,0 # 0 <main>
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra,0(ra) # 56 <main+0x56>
  5e:	08a8                	c.addi4spn	a0,sp,88
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra,0(ra) # 60 <main+0x60>
  68:	60aa                	c.ldsp	ra,136(sp)
  6a:	4501                	c.li	a0,0
  6c:	6149                	c.addi16sp	sp,144
  6e:	8082                	c.jr	ra
