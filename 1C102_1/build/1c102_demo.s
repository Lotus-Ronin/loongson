
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800ef 	lu12i.w	$r15,114695(0x1c007)
1c00000c:	03aff1ef 	ori	$r15,$r15,0xbfc
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	0380a1ef 	ori	$r15,$r15,0x28
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038a81ad 	ori	$r13,$r13,0x2a0
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54323c00 	bl	12860(0x323c) # 1c0042cc <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54328400 	bl	12932(0x3284) # 1c00431c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54331000 	bl	13072(0x3310) # 1c0043b0 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54334400 	bl	13124(0x3344) # 1c0043ec <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54316400 	bl	12644(0x3164) # 1c004214 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54366800 	bl	13928(0x3668) # 1c004720 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54347400 	bl	13428(0x3474) # 1c00453c <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b62084 	ld.w	$r4,$r4,-632(0xd88)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	54178000 	bl	6016(0x1780) # 1c002b54 <DisableInt>
1c0013d8:	5416e400 	bl	5860(0x16e4) # 1c002abc <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	541e4000 	bl	7744(0x1e40) # 1c003220 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	541d8000 	bl	7552(0x1d80) # 1c003168 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54110800 	bl	4360(0x1108) # 1c0024fc <Uart1_init>
1c0013f8:	54195000 	bl	6480(0x1950) # 1c002d48 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	54175c00 	bl	5980(0x175c) # 1c002b78 <EnableInt>
1c001420:	5419f000 	bl	6640(0x19f0) # 1c002e10 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	5417b800 	bl	6072(0x17b8) # 1c002be0 <Wake_Set>
1c00142c:	541dc800 	bl	7624(0x1dc8) # 1c0031f4 <WDG_DogFeed>
1c001430:	54185c00 	bl	6236(0x185c) # 1c002c8c <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001444:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c001448:	5407b400 	bl	1972(0x7b4) # 1c001bfc <myprintf>
1c00144c:	5418ac00 	bl	6316(0x18ac) # 1c002cf8 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00145c:	02afd084 	addi.w	$r4,$r4,-1036(0xbf4)
1c001460:	54079c00 	bl	1948(0x79c) # 1c001bfc <myprintf>
1c001464:	54467c00 	bl	18044(0x467c) # 1c005ae0 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00147c:	02af8084 	addi.w	$r4,$r4,-1056(0xbe0)
1c001480:	54077c00 	bl	1916(0x77c) # 1c001bfc <myprintf>
1c001484:	54465c00 	bl	18012(0x465c) # 1c005ae0 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00149c:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c0014a0:	54075c00 	bl	1884(0x75c) # 1c001bfc <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <GPIO_Init>:
GPIO_Init():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001594:	29806076 	st.w	$r22,$r3,24(0x18)
1c001598:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00159c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0015a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0015a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015ac:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0015b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015b4:	00150185 	move	$r5,$r12
1c0015b8:	001501a4 	move	$r4,$r13
1c0015bc:	54010000 	bl	256(0x100) # 1c0016bc <gpio_pin_remap>
1c0015c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0015c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015cc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0015d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015d4:	00150185 	move	$r5,$r12
1c0015d8:	001501a4 	move	$r4,$r13
1c0015dc:	5402ec00 	bl	748(0x2ec) # 1c0018c8 <gpio_set_direction>
1c0015e0:	03400000 	andi	$r0,$r0,0x0
1c0015e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0015e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0015ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015f0:	4c000020 	jirl	$r0,$r1,0

1c0015f4 <gpio_get_pin>:
gpio_get_pin():
1c0015f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001600:	0015008c 	move	$r12,$r4
1c001604:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	29000180 	st.b	$r0,$r12,0
1c00161c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001624:	0382018c 	ori	$r12,$r12,0x80
1c001628:	001031ac 	add.w	$r12,$r13,$r12
1c00162c:	2a00018c 	ld.bu	$r12,$r12,0
1c001630:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001634:	00150184 	move	$r4,$r12
1c001638:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00163c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001640:	4c000020 	jirl	$r0,$r1,0

1c001644 <gpio_write_pin>:
gpio_write_pin():
1c001644:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001648:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00164c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001650:	0015008c 	move	$r12,$r4
1c001654:	001500ad 	move	$r13,$r5
1c001658:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00165c:	001501ac 	move	$r12,$r13
1c001660:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001664:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001668:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00166c:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001690 <gpio_write_pin+0x4c>
1c001670:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001674:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001678:	0382018c 	ori	$r12,$r12,0x80
1c00167c:	001031ac 	add.w	$r12,$r13,$r12
1c001680:	0015018d 	move	$r13,$r12
1c001684:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001688:	290001ac 	st.b	$r12,$r13,0
1c00168c:	50002000 	b	32(0x20) # 1c0016ac <gpio_write_pin+0x68>
1c001690:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001694:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001698:	0382018c 	ori	$r12,$r12,0x80
1c00169c:	001031ac 	add.w	$r12,$r13,$r12
1c0016a0:	0015018d 	move	$r13,$r12
1c0016a4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016a8:	290001ac 	st.b	$r12,$r13,0
1c0016ac:	03400000 	andi	$r0,$r0,0x0
1c0016b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0016b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0016b8:	4c000020 	jirl	$r0,$r1,0

1c0016bc <gpio_pin_remap>:
gpio_pin_remap():
1c0016bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0016c0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0016c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0016c8:	0015008c 	move	$r12,$r4
1c0016cc:	001500ad 	move	$r13,$r5
1c0016d0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0016d4:	001501ac 	move	$r12,$r13
1c0016d8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0016dc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0016e0:	0044918c 	srli.w	$r12,$r12,0x4
1c0016e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0016e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0016f0:	03403d8c 	andi	$r12,$r12,0xf
1c0016f4:	0040858c 	slli.w	$r12,$r12,0x1
1c0016f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0016fc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001700:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001704:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c0018b8 <gpio_pin_remap+0x1fc>
1c001708:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00170c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001710:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001798 <gpio_pin_remap+0xdc>
1c001714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001718:	40002180 	beqz	$r12,32(0x20) # 1c001738 <gpio_pin_remap+0x7c>
1c00171c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001720:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001724:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c0017f8 <gpio_pin_remap+0x13c>
1c001728:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00172c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001730:	580129ac 	beq	$r13,$r12,296(0x128) # 1c001858 <gpio_pin_remap+0x19c>
1c001734:	50018800 	b	392(0x188) # 1c0018bc <gpio_pin_remap+0x200>
1c001738:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00173c:	0380418c 	ori	$r12,$r12,0x10
1c001740:	2880018d 	ld.w	$r13,$r12,0
1c001744:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001748:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00174c:	001731cc 	sll.w	$r12,$r14,$r12
1c001750:	0014300c 	nor	$r12,$r0,$r12
1c001754:	0015018e 	move	$r14,$r12
1c001758:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00175c:	0380418c 	ori	$r12,$r12,0x10
1c001760:	0014b9ad 	and	$r13,$r13,$r14
1c001764:	2980018d 	st.w	$r13,$r12,0
1c001768:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00176c:	0380418c 	ori	$r12,$r12,0x10
1c001770:	2880018d 	ld.w	$r13,$r12,0
1c001774:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001778:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00177c:	001731cc 	sll.w	$r12,$r14,$r12
1c001780:	0015018e 	move	$r14,$r12
1c001784:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001788:	0380418c 	ori	$r12,$r12,0x10
1c00178c:	001539ad 	or	$r13,$r13,$r14
1c001790:	2980018d 	st.w	$r13,$r12,0
1c001794:	50012800 	b	296(0x128) # 1c0018bc <gpio_pin_remap+0x200>
1c001798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00179c:	0380518c 	ori	$r12,$r12,0x14
1c0017a0:	2880018d 	ld.w	$r13,$r12,0
1c0017a4:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017ac:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b0:	0014300c 	nor	$r12,$r0,$r12
1c0017b4:	0015018e 	move	$r14,$r12
1c0017b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017bc:	0380518c 	ori	$r12,$r12,0x14
1c0017c0:	0014b9ad 	and	$r13,$r13,$r14
1c0017c4:	2980018d 	st.w	$r13,$r12,0
1c0017c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017cc:	0380518c 	ori	$r12,$r12,0x14
1c0017d0:	2880018d 	ld.w	$r13,$r12,0
1c0017d4:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017dc:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e0:	0015018e 	move	$r14,$r12
1c0017e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e8:	0380518c 	ori	$r12,$r12,0x14
1c0017ec:	001539ad 	or	$r13,$r13,$r14
1c0017f0:	2980018d 	st.w	$r13,$r12,0
1c0017f4:	5000c800 	b	200(0xc8) # 1c0018bc <gpio_pin_remap+0x200>
1c0017f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017fc:	0380618c 	ori	$r12,$r12,0x18
1c001800:	2880018d 	ld.w	$r13,$r12,0
1c001804:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00180c:	001731cc 	sll.w	$r12,$r14,$r12
1c001810:	0014300c 	nor	$r12,$r0,$r12
1c001814:	0015018e 	move	$r14,$r12
1c001818:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00181c:	0380618c 	ori	$r12,$r12,0x18
1c001820:	0014b9ad 	and	$r13,$r13,$r14
1c001824:	2980018d 	st.w	$r13,$r12,0
1c001828:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00182c:	0380618c 	ori	$r12,$r12,0x18
1c001830:	2880018d 	ld.w	$r13,$r12,0
1c001834:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001838:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00183c:	001731cc 	sll.w	$r12,$r14,$r12
1c001840:	0015018e 	move	$r14,$r12
1c001844:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001848:	0380618c 	ori	$r12,$r12,0x18
1c00184c:	001539ad 	or	$r13,$r13,$r14
1c001850:	2980018d 	st.w	$r13,$r12,0
1c001854:	50006800 	b	104(0x68) # 1c0018bc <gpio_pin_remap+0x200>
1c001858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00185c:	0380718c 	ori	$r12,$r12,0x1c
1c001860:	2880018d 	ld.w	$r13,$r12,0
1c001864:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001868:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00186c:	001731cc 	sll.w	$r12,$r14,$r12
1c001870:	0014300c 	nor	$r12,$r0,$r12
1c001874:	0015018e 	move	$r14,$r12
1c001878:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00187c:	0380718c 	ori	$r12,$r12,0x1c
1c001880:	0014b9ad 	and	$r13,$r13,$r14
1c001884:	2980018d 	st.w	$r13,$r12,0
1c001888:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00188c:	0380718c 	ori	$r12,$r12,0x1c
1c001890:	2880018d 	ld.w	$r13,$r12,0
1c001894:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001898:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00189c:	001731cc 	sll.w	$r12,$r14,$r12
1c0018a0:	0015018e 	move	$r14,$r12
1c0018a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a8:	0380718c 	ori	$r12,$r12,0x1c
1c0018ac:	001539ad 	or	$r13,$r13,$r14
1c0018b0:	2980018d 	st.w	$r13,$r12,0
1c0018b4:	50000800 	b	8(0x8) # 1c0018bc <gpio_pin_remap+0x200>
1c0018b8:	03400000 	andi	$r0,$r0,0x0
1c0018bc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0018c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0018c4:	4c000020 	jirl	$r0,$r1,0

1c0018c8 <gpio_set_direction>:
gpio_set_direction():
1c0018c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0018cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0018d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0018d4:	0015008c 	move	$r12,$r4
1c0018d8:	001500ad 	move	$r13,$r5
1c0018dc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0018e0:	001501ac 	move	$r12,$r13
1c0018e4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0018e8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0018ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0018f0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f4:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018f8:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c00195c <gpio_set_direction+0x94>
1c0018fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001900:	0381018c 	ori	$r12,$r12,0x40
1c001904:	2880018d 	ld.w	$r13,$r12,0
1c001908:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	001731cc 	sll.w	$r12,$r14,$r12
1c001914:	0014300c 	nor	$r12,$r0,$r12
1c001918:	0015018e 	move	$r14,$r12
1c00191c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001920:	0381018c 	ori	$r12,$r12,0x40
1c001924:	0014b9ad 	and	$r13,$r13,$r14
1c001928:	2980018d 	st.w	$r13,$r12,0
1c00192c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001930:	0381018c 	ori	$r12,$r12,0x40
1c001934:	2880018d 	ld.w	$r13,$r12,0
1c001938:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00193c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001940:	001731cc 	sll.w	$r12,$r14,$r12
1c001944:	0015018e 	move	$r14,$r12
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381018c 	ori	$r12,$r12,0x40
1c001950:	001539ad 	or	$r13,$r13,$r14
1c001954:	2980018d 	st.w	$r13,$r12,0
1c001958:	50008c00 	b	140(0x8c) # 1c0019e4 <gpio_set_direction+0x11c>
1c00195c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001960:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001964:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c0019e0 <gpio_set_direction+0x118>
1c001968:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00196c:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001970:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0019e0 <gpio_set_direction+0x118>
1c001974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001978:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00197c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001984:	0381418c 	ori	$r12,$r12,0x50
1c001988:	2880018d 	ld.w	$r13,$r12,0
1c00198c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001994:	001731cc 	sll.w	$r12,$r14,$r12
1c001998:	0014300c 	nor	$r12,$r0,$r12
1c00199c:	0015018e 	move	$r14,$r12
1c0019a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019a4:	0381418c 	ori	$r12,$r12,0x50
1c0019a8:	0014b9ad 	and	$r13,$r13,$r14
1c0019ac:	2980018d 	st.w	$r13,$r12,0
1c0019b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019b4:	0381418c 	ori	$r12,$r12,0x50
1c0019b8:	2880018d 	ld.w	$r13,$r12,0
1c0019bc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0019c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019c4:	001731cc 	sll.w	$r12,$r14,$r12
1c0019c8:	0015018e 	move	$r14,$r12
1c0019cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019d0:	0381418c 	ori	$r12,$r12,0x50
1c0019d4:	001539ad 	or	$r13,$r13,$r14
1c0019d8:	2980018d 	st.w	$r13,$r12,0
1c0019dc:	50000800 	b	8(0x8) # 1c0019e4 <gpio_set_direction+0x11c>
1c0019e0:	03400000 	andi	$r0,$r0,0x0
1c0019e4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0019e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019ec:	4c000020 	jirl	$r0,$r1,0

1c0019f0 <myputchar>:
myputchar():
1c0019f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0019f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001a00:	0015008c 	move	$r12,$r4
1c001a04:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001a08:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001a0c:	00150185 	move	$r5,$r12
1c001a10:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001a14:	54098c00 	bl	2444(0x98c) # 1c0023a0 <UART_SendData>
1c001a18:	03400000 	andi	$r0,$r0,0x0
1c001a1c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001a20:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001a24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a28:	4c000020 	jirl	$r0,$r1,0

1c001a2c <printbase>:
printbase():
1c001a2c:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c001a30:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c001a34:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001a38:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c001a3c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001a40:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a44:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a48:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a4c:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001a50:	40002580 	beqz	$r12,36(0x24) # 1c001a74 <printbase+0x48>
1c001a54:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a58:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a74 <printbase+0x48>
1c001a5c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a60:	0011300c 	sub.w	$r12,$r0,$r12
1c001a64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a68:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a6c:	57ff87ff 	bl	-124(0xfffff84) # 1c0019f0 <myputchar>
1c001a70:	50000c00 	b	12(0xc) # 1c001a7c <printbase+0x50>
1c001a74:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a78:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a80:	50005000 	b	80(0x50) # 1c001ad0 <printbase+0xa4>
1c001a84:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a88:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a8c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a90:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a98 <printbase+0x6c>
1c001a94:	002a0007 	break	0x7
1c001a98:	00005dcc 	ext.w.b	$r12,$r14
1c001a9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001aa0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001aa4:	001035cd 	add.w	$r13,$r14,$r13
1c001aa8:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001aac:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001ab0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001ab4:	002135cc 	div.wu	$r12,$r14,$r13
1c001ab8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ac0 <printbase+0x94>
1c001abc:	002a0007 	break	0x7
1c001ac0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ac4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ac8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001acc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ad0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001ad4:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a84 <printbase+0x58>
1c001ad8:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001adc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ae0:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001ae4:	001231ad 	slt	$r13,$r13,$r12
1c001ae8:	0013b5ce 	masknez	$r14,$r14,$r13
1c001aec:	0013358c 	maskeqz	$r12,$r12,$r13
1c001af0:	001531cc 	or	$r12,$r14,$r12
1c001af4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001af8:	50007400 	b	116(0x74) # 1c001b6c <printbase+0x140>
1c001afc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b04:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b20 <printbase+0xf4>
1c001b08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b0c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b10:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b14:	001031ac 	add.w	$r12,$r13,$r12
1c001b18:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b1c:	50000800 	b	8(0x8) # 1c001b24 <printbase+0xf8>
1c001b20:	0015000c 	move	$r12,$r0
1c001b24:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b28:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b2c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b30:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b48 <printbase+0x11c>
1c001b34:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b3c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b44:	50001400 	b	20(0x14) # 1c001b58 <printbase+0x12c>
1c001b48:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b50:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b58:	00150184 	move	$r4,$r12
1c001b5c:	57fe97ff 	bl	-364(0xffffe94) # 1c0019f0 <myputchar>
1c001b60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b64:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b70:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001afc <printbase+0xd0>
1c001b74:	0015000c 	move	$r12,$r0
1c001b78:	00150184 	move	$r4,$r12
1c001b7c:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b80:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b84:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b88:	4c000020 	jirl	$r0,$r1,0

1c001b8c <puts>:
puts():
1c001b8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b98:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b9c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001ba0:	50003000 	b	48(0x30) # 1c001bd0 <puts+0x44>
1c001ba4:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001ba8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001bac:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001bb8 <puts+0x2c>
1c001bb0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001bb4:	57fe3fff 	bl	-452(0xffffe3c) # 1c0019f0 <myputchar>
1c001bb8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001bbc:	00150184 	move	$r4,$r12
1c001bc0:	57fe33ff 	bl	-464(0xffffe30) # 1c0019f0 <myputchar>
1c001bc4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	2a00018c 	ld.bu	$r12,$r12,0
1c001bd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001bdc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001be0:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001ba4 <puts+0x18>
1c001be4:	0015000c 	move	$r12,$r0
1c001be8:	00150184 	move	$r4,$r12
1c001bec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001bf0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001bf4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001bf8:	4c000020 	jirl	$r0,$r1,0

1c001bfc <myprintf>:
myprintf():
1c001bfc:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001c00:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001c04:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001c08:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001c0c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001c10:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001c14:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001c18:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001c1c:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001c20:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001c24:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001c28:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001c2c:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001c30:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001c34:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001c38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001c44:	50033000 	b	816(0x330) # 1c001f74 <myprintf+0x378>
1c001c48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c4c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c50:	001031ac 	add.w	$r12,$r13,$r12
1c001c54:	2a00018c 	ld.bu	$r12,$r12,0
1c001c58:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c5c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c60:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c64:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001f48 <myprintf+0x34c>
1c001c68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c6c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c78:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c7c:	001031ac 	add.w	$r12,$r13,$r12
1c001c80:	2800018c 	ld.b	$r12,$r12,0
1c001c84:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c88:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c8c:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001f38 <myprintf+0x33c>
1c001c90:	0040898d 	slli.w	$r13,$r12,0x2
1c001c94:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001c98:	028f818c 	addi.w	$r12,$r12,992(0x3e0)
1c001c9c:	001031ac 	add.w	$r12,$r13,$r12
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	4c000180 	jirl	$r0,$r12,0
1c001ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cac:	2880018c 	ld.w	$r12,$r12,0
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fedbff 	bl	-296(0xffffed8) # 1c001b8c <puts>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50029800 	b	664(0x298) # 1c001f68 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ce0:	00150184 	move	$r4,$r12
1c001ce4:	57fd0fff 	bl	-756(0xffffd0c) # 1c0019f0 <myputchar>
1c001ce8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cec:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cf8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d00:	50026800 	b	616(0x268) # 1c001f68 <myprintf+0x36c>
1c001d04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d08:	2880018c 	ld.w	$r12,$r12,0
1c001d0c:	00150007 	move	$r7,$r0
1c001d10:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001d14:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d18:	00150184 	move	$r4,$r12
1c001d1c:	57fd13ff 	bl	-752(0xffffd10) # 1c001a2c <printbase>
1c001d20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d28:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d38:	50023000 	b	560(0x230) # 1c001f68 <myprintf+0x36c>
1c001d3c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d40:	2880018c 	ld.w	$r12,$r12,0
1c001d44:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001d48:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001d4c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d50:	00150184 	move	$r4,$r12
1c001d54:	57fcdbff 	bl	-808(0xffffcd8) # 1c001a2c <printbase>
1c001d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d5c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d70:	5001f800 	b	504(0x1f8) # 1c001f68 <myprintf+0x36c>
1c001d74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d78:	2880018c 	ld.w	$r12,$r12,0
1c001d7c:	00150007 	move	$r7,$r0
1c001d80:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d84:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d88:	00150184 	move	$r4,$r12
1c001d8c:	57fca3ff 	bl	-864(0xffffca0) # 1c001a2c <printbase>
1c001d90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d94:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001da4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001da8:	5001c000 	b	448(0x1c0) # 1c001f68 <myprintf+0x36c>
1c001dac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001db0:	2880018c 	ld.w	$r12,$r12,0
1c001db4:	00150007 	move	$r7,$r0
1c001db8:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001dbc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dc0:	00150184 	move	$r4,$r12
1c001dc4:	57fc6bff 	bl	-920(0xffffc68) # 1c001a2c <printbase>
1c001dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dcc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dd0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001dd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ddc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de0:	50018800 	b	392(0x188) # 1c001f68 <myprintf+0x36c>
1c001de4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001de8:	2880018c 	ld.w	$r12,$r12,0
1c001dec:	00150007 	move	$r7,$r0
1c001df0:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001df4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001df8:	00150184 	move	$r4,$r12
1c001dfc:	57fc33ff 	bl	-976(0xffffc30) # 1c001a2c <printbase>
1c001e00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	50015000 	b	336(0x150) # 1c001f68 <myprintf+0x36c>
1c001e1c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001e20:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c0019f0 <myputchar>
1c001e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e30:	50013800 	b	312(0x138) # 1c001f68 <myprintf+0x36c>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e40:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e44:	50003c00 	b	60(0x3c) # 1c001e80 <myprintf+0x284>
1c001e48:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e50:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e5c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e60:	001031cc 	add.w	$r12,$r14,$r12
1c001e64:	2800018c 	ld.b	$r12,$r12,0
1c001e68:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e6c:	001031ac 	add.w	$r12,$r13,$r12
1c001e70:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e88:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e8c:	001031ac 	add.w	$r12,$r13,$r12
1c001e90:	2800018d 	ld.b	$r13,$r12,0
1c001e94:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e98:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c70 <myprintf+0x74>
1c001e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea8:	001031ac 	add.w	$r12,$r13,$r12
1c001eac:	2800018d 	ld.b	$r13,$r12,0
1c001eb0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001eb4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e48 <myprintf+0x24c>
1c001eb8:	53fdbbff 	b	-584(0xffffdb8) # 1c001c70 <myprintf+0x74>
1c001ebc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ec0:	50003c00 	b	60(0x3c) # 1c001efc <myprintf+0x300>
1c001ec4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001ec8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ecc:	001c31ad 	mul.w	$r13,$r13,$r12
1c001ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ed8:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001edc:	001031cc 	add.w	$r12,$r14,$r12
1c001ee0:	2800018c 	ld.b	$r12,$r12,0
1c001ee4:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001ee8:	001031ac 	add.w	$r12,$r13,$r12
1c001eec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ef4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ef8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f04:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f08:	001031ac 	add.w	$r12,$r13,$r12
1c001f0c:	2800018d 	ld.b	$r13,$r12,0
1c001f10:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f14:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c70 <myprintf+0x74>
1c001f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f24:	001031ac 	add.w	$r12,$r13,$r12
1c001f28:	2800018d 	ld.b	$r13,$r12,0
1c001f2c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f30:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001ec4 <myprintf+0x2c8>
1c001f34:	53fd3fff 	b	-708(0xffffd3c) # 1c001c70 <myprintf+0x74>
1c001f38:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001f3c:	57fab7ff 	bl	-1356(0xffffab4) # 1c0019f0 <myputchar>
1c001f40:	03400000 	andi	$r0,$r0,0x0
1c001f44:	50002400 	b	36(0x24) # 1c001f68 <myprintf+0x36c>
1c001f48:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001f4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f50:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f5c <myprintf+0x360>
1c001f54:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001f58:	57fa9bff 	bl	-1384(0xffffa98) # 1c0019f0 <myputchar>
1c001f5c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f60:	00150184 	move	$r4,$r12
1c001f64:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0019f0 <myputchar>
1c001f68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f78:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f7c:	001031ac 	add.w	$r12,$r13,$r12
1c001f80:	2800018c 	ld.b	$r12,$r12,0
1c001f84:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001c48 <myprintf+0x4c>
1c001f88:	0015000c 	move	$r12,$r0
1c001f8c:	00150184 	move	$r4,$r12
1c001f90:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f94:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f98:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f9c:	4c000020 	jirl	$r0,$r1,0

1c001fa0 <UART_Init>:
UART_Init():
1c001fa0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001fa4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001fa8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001fac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001fb0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001fb4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001fb8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001fbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fc0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001fc4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fc8:	03403d8c 	andi	$r12,$r12,0xf
1c001fcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001fd8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fdc:	0044918c 	srli.w	$r12,$r12,0x4
1c001fe0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001fe4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001fe8:	40000d80 	beqz	$r12,12(0xc) # 1c001ff4 <UART_Init+0x54>
1c001fec:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ff0:	44001980 	bnez	$r12,24(0x18) # 1c002008 <UART_Init+0x68>
1c001ff4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ff8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c001ffc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002000:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002004:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002008:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00200c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002010:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002028 <UART_Init+0x88>
1c002014:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002018:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00201c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002020:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002024:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002028:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00202c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002030:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002034:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002038:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00203c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00204c <UART_Init+0xac>
1c002040:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002044:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002048:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0020a8 <UART_Init+0x108>
1c00204c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002050:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002054:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002058:	2880018c 	ld.w	$r12,$r12,0
1c00205c:	002131ae 	div.wu	$r14,$r13,$r12
1c002060:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002068 <UART_Init+0xc8>
1c002064:	002a0007 	break	0x7
1c002068:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00206c:	002135cc 	div.wu	$r12,$r14,$r13
1c002070:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002078 <UART_Init+0xd8>
1c002074:	002a0007 	break	0x7
1c002078:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00207c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002080:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002084:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002088:	2880018e 	ld.w	$r14,$r12,0
1c00208c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002090:	001c31ce 	mul.w	$r14,$r14,$r12
1c002094:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002098:	001c31cc 	mul.w	$r12,$r14,$r12
1c00209c:	001131ac 	sub.w	$r12,$r13,$r12
1c0020a0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020a4:	50005400 	b	84(0x54) # 1c0020f8 <UART_Init+0x158>
1c0020a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020ac:	2880018c 	ld.w	$r12,$r12,0
1c0020b0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0020b4:	002131ae 	div.wu	$r14,$r13,$r12
1c0020b8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0020c0 <UART_Init+0x120>
1c0020bc:	002a0007 	break	0x7
1c0020c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020c4:	002135cc 	div.wu	$r12,$r14,$r13
1c0020c8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0020d0 <UART_Init+0x130>
1c0020cc:	002a0007 	break	0x7
1c0020d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020d8:	2880018d 	ld.w	$r13,$r12,0
1c0020dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020e0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0020e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0020e8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0020ec:	1400010d 	lu12i.w	$r13,8(0x8)
1c0020f0:	001131ac 	sub.w	$r12,$r13,$r12
1c0020f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020f8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0020fc:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c002100:	001c31ad 	mul.w	$r13,$r13,$r12
1c002104:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002108:	2880018c 	ld.w	$r12,$r12,0
1c00210c:	002131ae 	div.wu	$r14,$r13,$r12
1c002110:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002118 <UART_Init+0x178>
1c002114:	002a0007 	break	0x7
1c002118:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00211c:	002135cc 	div.wu	$r12,$r14,$r13
1c002120:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002128 <UART_Init+0x188>
1c002124:	002a0007 	break	0x7
1c002128:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00212c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002130:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002134:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002138:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00213c:	001531ac 	or	$r12,$r13,$r12
1c002140:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002144:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002148:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00214c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002150:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002154:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002158:	2900018d 	st.b	$r13,$r12,0
1c00215c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002160:	0044a18c 	srli.w	$r12,$r12,0x8
1c002164:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002168:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00216c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002170:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002174:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002178:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00217c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002180:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002184:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002188:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00218c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002190:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002194:	0341fd8c 	andi	$r12,$r12,0x7f
1c002198:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00219c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021a0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021a8:	29000580 	st.b	$r0,$r12,1(0x1)
1c0021ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021b0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021bc:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0021c0:	001531ac 	or	$r12,$r13,$r12
1c0021c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021cc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021d4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021e0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0021e4:	001531ac 	or	$r12,$r13,$r12
1c0021e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021f0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021f8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002200:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002204:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c002208:	001531ac 	or	$r12,$r13,$r12
1c00220c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002210:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002214:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002218:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00221c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002220:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002224:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002228:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00222c:	001531ac 	or	$r12,$r13,$r12
1c002230:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002234:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002238:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00223c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002240:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002244:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002248:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00224c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002250:	001531ac 	or	$r12,$r13,$r12
1c002254:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002258:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00225c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002260:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002264:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002268:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00226c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002270:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002274:	001531ac 	or	$r12,$r13,$r12
1c002278:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00227c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002280:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002284:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002288:	2a00018c 	ld.bu	$r12,$r12,0
1c00228c:	03400000 	andi	$r0,$r0,0x0
1c002290:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002294:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002298:	4c000020 	jirl	$r0,$r1,0

1c00229c <UART_StructInit>:
UART_StructInit():
1c00229c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0022a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0022ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0022b4:	038801ad 	ori	$r13,$r13,0x200
1c0022b8:	2980018d 	st.w	$r13,$r12,0
1c0022bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022c0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0022c4:	038801ad 	ori	$r13,$r13,0x200
1c0022c8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0022cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0022d4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0022d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022dc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0022e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022ec:	29003180 	st.b	$r0,$r12,12(0xc)
1c0022f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0022f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022fc:	29003980 	st.b	$r0,$r12,14(0xe)
1c002300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002304:	29402180 	st.h	$r0,$r12,8(0x8)
1c002308:	03400000 	andi	$r0,$r0,0x0
1c00230c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002310:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002314:	4c000020 	jirl	$r0,$r1,0

1c002318 <UART_ITConfig>:
UART_ITConfig():
1c002318:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00231c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002320:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002324:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002328:	001500ac 	move	$r12,$r5
1c00232c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002330:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002334:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002338:	40002980 	beqz	$r12,40(0x28) # 1c002360 <UART_ITConfig+0x48>
1c00233c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002340:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002344:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002348:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00234c:	001531ac 	or	$r12,$r13,$r12
1c002350:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002358:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00235c:	50003400 	b	52(0x34) # 1c002390 <UART_ITConfig+0x78>
1c002360:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002364:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002368:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00236c:	00005d8d 	ext.w.b	$r13,$r12
1c002370:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002374:	0014300c 	nor	$r12,$r0,$r12
1c002378:	00005d8c 	ext.w.b	$r12,$r12
1c00237c:	0014b1ac 	and	$r12,$r13,$r12
1c002380:	00005d8c 	ext.w.b	$r12,$r12
1c002384:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002390:	03400000 	andi	$r0,$r0,0x0
1c002394:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002398:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00239c:	4c000020 	jirl	$r0,$r1,0

1c0023a0 <UART_SendData>:
UART_SendData():
1c0023a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0023a4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0023a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0023ac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0023b0:	001500ac 	move	$r12,$r5
1c0023b4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0023b8:	03400000 	andi	$r0,$r0,0x0
1c0023bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023c0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023c8:	0340818c 	andi	$r12,$r12,0x20
1c0023cc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0023bc <UART_SendData+0x1c>
1c0023d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0023d8:	2900018d 	st.b	$r13,$r12,0
1c0023dc:	03400000 	andi	$r0,$r0,0x0
1c0023e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0023e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0023e8:	4c000020 	jirl	$r0,$r1,0

1c0023ec <UART_ReceiveData>:
UART_ReceiveData():
1c0023ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0023f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0023f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0023f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023fc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002400:	03400000 	andi	$r0,$r0,0x0
1c002404:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002408:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00240c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002410:	0340058c 	andi	$r12,$r12,0x1
1c002414:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002404 <UART_ReceiveData+0x18>
1c002418:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00241c:	2a00018c 	ld.bu	$r12,$r12,0
1c002420:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002424:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002428:	00150184 	move	$r4,$r12
1c00242c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002430:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002434:	4c000020 	jirl	$r0,$r1,0

1c002438 <Uart0_init>:
Uart0_init():
1c002438:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00243c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002440:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002444:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002448:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00244c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002450:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002454:	57f26bff 	bl	-3480(0xffff268) # 1c0016bc <gpio_pin_remap>
1c002458:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00245c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002460:	57f25fff 	bl	-3492(0xffff25c) # 1c0016bc <gpio_pin_remap>
1c002464:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002468:	00150184 	move	$r4,$r12
1c00246c:	57fe33ff 	bl	-464(0xffffe30) # 1c00229c <UART_StructInit>
1c002470:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002474:	28ae718c 	ld.w	$r12,$r12,-1124(0xb9c)
1c002478:	2880018c 	ld.w	$r12,$r12,0
1c00247c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002480:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002484:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002488:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00248c:	00150185 	move	$r5,$r12
1c002490:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002494:	57fb0fff 	bl	-1268(0xffffb0c) # 1c001fa0 <UART_Init>
1c002498:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00249c:	0380098c 	ori	$r12,$r12,0x2
1c0024a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0024a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0024a8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024ac:	0380098c 	ori	$r12,$r12,0x2
1c0024b0:	038021ad 	ori	$r13,$r13,0x8
1c0024b4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0024b8:	2900018d 	st.b	$r13,$r12,0
1c0024bc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0024c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0024c8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0024cc:	038021ad 	ori	$r13,$r13,0x8
1c0024d0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0024d4:	2900018d 	st.b	$r13,$r12,0
1c0024d8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0024dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0024e0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0024e4:	57fe37ff 	bl	-460(0xffffe34) # 1c002318 <UART_ITConfig>
1c0024e8:	03400000 	andi	$r0,$r0,0x0
1c0024ec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0024f0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0024f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0024f8:	4c000020 	jirl	$r0,$r1,0

1c0024fc <Uart1_init>:
Uart1_init():
1c0024fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002500:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002504:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002508:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00250c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002510:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002514:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002518:	57f1a7ff 	bl	-3676(0xffff1a4) # 1c0016bc <gpio_pin_remap>
1c00251c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002520:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002524:	57f19bff 	bl	-3688(0xffff198) # 1c0016bc <gpio_pin_remap>
1c002528:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00252c:	00150184 	move	$r4,$r12
1c002530:	57fd6fff 	bl	-660(0xffffd6c) # 1c00229c <UART_StructInit>
1c002534:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002538:	28ab618c 	ld.w	$r12,$r12,-1320(0xad8)
1c00253c:	2880018c 	ld.w	$r12,$r12,0
1c002540:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002544:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002548:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00254c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002550:	00150185 	move	$r5,$r12
1c002554:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002558:	57fa4bff 	bl	-1464(0xffffa48) # 1c001fa0 <UART_Init>
1c00255c:	00150006 	move	$r6,$r0
1c002560:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002564:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002568:	57fdb3ff 	bl	-592(0xffffdb0) # 1c002318 <UART_ITConfig>
1c00256c:	03400000 	andi	$r0,$r0,0x0
1c002570:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002574:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002578:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00257c:	4c000020 	jirl	$r0,$r1,0

1c002580 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002580:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002584:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002588:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00258c:	1400006c 	lu12i.w	$r12,3(0x3)
1c002590:	03ba018c 	ori	$r12,$r12,0xe80
1c002594:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002598:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00259c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025a0:	2880018d 	ld.w	$r13,$r12,0
1c0025a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025a8:	038101ad 	ori	$r13,$r13,0x40
1c0025ac:	2980018d 	st.w	$r13,$r12,0
1c0025b0:	03400000 	andi	$r0,$r0,0x0
1c0025b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0025bc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0025c0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c0025b4 <CLOCK_WaitForHSEStartUp+0x34>
1c0025c4:	50001c00 	b	28(0x1c) # 1c0025e0 <CLOCK_WaitForHSEStartUp+0x60>
1c0025c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025cc:	2880018e 	ld.w	$r14,$r12,0
1c0025d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025d4:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c0025d8:	0014b5cd 	and	$r13,$r14,$r13
1c0025dc:	2980018d 	st.w	$r13,$r12,0
1c0025e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025e4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0025e8:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c0025c8 <CLOCK_WaitForHSEStartUp+0x48>
1c0025ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025f0:	2880018d 	ld.w	$r13,$r12,0
1c0025f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025f8:	038201ad 	ori	$r13,$r13,0x80
1c0025fc:	2980018d 	st.w	$r13,$r12,0
1c002600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002604:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002608:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00260c:	00150184 	move	$r4,$r12
1c002610:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002614:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002618:	4c000020 	jirl	$r0,$r1,0

1c00261c <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c00261c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002620:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002624:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002628:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00262c:	50008800 	b	136(0x88) # 1c0026b4 <CLOCK_WaitForLSEStartUp+0x98>
1c002630:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002634:	2880018e 	ld.w	$r14,$r12,0
1c002638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00263c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002640:	0014b5cd 	and	$r13,$r14,$r13
1c002644:	2980018d 	st.w	$r13,$r12,0
1c002648:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c00264c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002650:	50001400 	b	20(0x14) # 1c002664 <CLOCK_WaitForLSEStartUp+0x48>
1c002654:	03400000 	andi	$r0,$r0,0x0
1c002658:	03400000 	andi	$r0,$r0,0x0
1c00265c:	03400000 	andi	$r0,$r0,0x0
1c002660:	03400000 	andi	$r0,$r0,0x0
1c002664:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002668:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00266c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002670:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002654 <CLOCK_WaitForLSEStartUp+0x38>
1c002674:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002678:	2880018d 	ld.w	$r13,$r12,0
1c00267c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002680:	038081ad 	ori	$r13,$r13,0x20
1c002684:	2980018d 	st.w	$r13,$r12,0
1c002688:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c00268c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002690:	50001400 	b	20(0x14) # 1c0026a4 <CLOCK_WaitForLSEStartUp+0x88>
1c002694:	03400000 	andi	$r0,$r0,0x0
1c002698:	03400000 	andi	$r0,$r0,0x0
1c00269c:	03400000 	andi	$r0,$r0,0x0
1c0026a0:	03400000 	andi	$r0,$r0,0x0
1c0026a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0026ac:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0026b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002694 <CLOCK_WaitForLSEStartUp+0x78>
1c0026b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026b8:	0380118c 	ori	$r12,$r12,0x4
1c0026bc:	2880018d 	ld.w	$r13,$r12,0
1c0026c0:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c0026c4:	0014b1ac 	and	$r12,$r13,$r12
1c0026c8:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002630 <CLOCK_WaitForLSEStartUp+0x14>
1c0026cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026d0:	0380118c 	ori	$r12,$r12,0x4
1c0026d4:	2880018d 	ld.w	$r13,$r12,0
1c0026d8:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c0026dc:	0014b1ac 	and	$r12,$r13,$r12
1c0026e0:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002630 <CLOCK_WaitForLSEStartUp+0x14>
1c0026e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0026e8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026ec:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0026f0:	00150184 	move	$r4,$r12
1c0026f4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0026f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026fc:	4c000020 	jirl	$r0,$r1,0

1c002700 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002700:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002704:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002708:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00270c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002710:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002714:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002718:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00271c:	2880018e 	ld.w	$r14,$r12,0
1c002720:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002724:	0014300d 	nor	$r13,$r0,$r12
1c002728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00272c:	0014b5cd 	and	$r13,$r14,$r13
1c002730:	2980018d 	st.w	$r13,$r12,0
1c002734:	1400002c 	lu12i.w	$r12,1(0x1)
1c002738:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c00273c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002740:	50001400 	b	20(0x14) # 1c002754 <CLOCK_HSEConfig+0x54>
1c002744:	03400000 	andi	$r0,$r0,0x0
1c002748:	03400000 	andi	$r0,$r0,0x0
1c00274c:	03400000 	andi	$r0,$r0,0x0
1c002750:	03400000 	andi	$r0,$r0,0x0
1c002754:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002758:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00275c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002760:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002744 <CLOCK_HSEConfig+0x44>
1c002764:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002768:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c00276c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00277c <CLOCK_HSEConfig+0x7c>
1c002770:	57fe13ff 	bl	-496(0xffffe10) # 1c002580 <CLOCK_WaitForHSEStartUp>
1c002774:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002778:	50002400 	b	36(0x24) # 1c00279c <CLOCK_HSEConfig+0x9c>
1c00277c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002780:	2880018e 	ld.w	$r14,$r12,0
1c002784:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002788:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c00278c:	0014b5cd 	and	$r13,$r14,$r13
1c002790:	2980018d 	st.w	$r13,$r12,0
1c002794:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002798:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00279c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a0:	00150184 	move	$r4,$r12
1c0027a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027b0:	4c000020 	jirl	$r0,$r1,0

1c0027b4 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c0027b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0027b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0027bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0027c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0027c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0027c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0027cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0027d0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0027d4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0027e4 <CLOCK_LSEConfig+0x30>
1c0027d8:	57fe47ff 	bl	-444(0xffffe44) # 1c00261c <CLOCK_WaitForLSEStartUp>
1c0027dc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027e0:	50002400 	b	36(0x24) # 1c002804 <CLOCK_LSEConfig+0x50>
1c0027e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027e8:	2880018e 	ld.w	$r14,$r12,0
1c0027ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027f0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c0027f4:	0014b5cd 	and	$r13,$r14,$r13
1c0027f8:	2980018d 	st.w	$r13,$r12,0
1c0027fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002800:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002808:	00150184 	move	$r4,$r12
1c00280c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002810:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002814:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002818:	4c000020 	jirl	$r0,$r1,0

1c00281c <CLOCK_StructInit>:
CLOCK_StructInit():
1c00281c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002820:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002824:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002828:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00282c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002830:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002834:	2980018d 	st.w	$r13,$r12,0
1c002838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00283c:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002840:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002844:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002848:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c00284c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002850:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002854:	29803180 	st.w	$r0,$r12,12(0xc)
1c002858:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00285c:	29804180 	st.w	$r0,$r12,16(0x10)
1c002860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002864:	29805180 	st.w	$r0,$r12,20(0x14)
1c002868:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00286c:	29806180 	st.w	$r0,$r12,24(0x18)
1c002870:	03400000 	andi	$r0,$r0,0x0
1c002874:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002878:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00287c:	4c000020 	jirl	$r0,$r1,0

1c002880 <CLOCK_Init>:
CLOCK_Init():
1c002880:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002884:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002888:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00288c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002890:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002894:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002898:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00289c:	2880018e 	ld.w	$r14,$r12,0
1c0028a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028a4:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c0028a8:	0014b5cd 	and	$r13,$r14,$r13
1c0028ac:	2980018d 	st.w	$r13,$r12,0
1c0028b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028b4:	2880018e 	ld.w	$r14,$r12,0
1c0028b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028bc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0028c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028c4:	001535cd 	or	$r13,$r14,$r13
1c0028c8:	2980018d 	st.w	$r13,$r12,0
1c0028cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028d0:	2880018e 	ld.w	$r14,$r12,0
1c0028d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028d8:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c0028dc:	0014b5cd 	and	$r13,$r14,$r13
1c0028e0:	2980018d 	st.w	$r13,$r12,0
1c0028e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028e8:	2880018e 	ld.w	$r14,$r12,0
1c0028ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028f0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0028f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028f8:	001535cd 	or	$r13,$r14,$r13
1c0028fc:	2980018d 	st.w	$r13,$r12,0
1c002900:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002904:	2880018e 	ld.w	$r14,$r12,0
1c002908:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00290c:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002910:	039ffdad 	ori	$r13,$r13,0x7ff
1c002914:	0014b5cd 	and	$r13,$r14,$r13
1c002918:	2980018d 	st.w	$r13,$r12,0
1c00291c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002920:	2880018e 	ld.w	$r14,$r12,0
1c002924:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002928:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c00292c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002930:	001535cd 	or	$r13,$r14,$r13
1c002934:	2980018d 	st.w	$r13,$r12,0
1c002938:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00293c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002940:	00150184 	move	$r4,$r12
1c002944:	57fdbfff 	bl	-580(0xffffdbc) # 1c002700 <CLOCK_HSEConfig>
1c002948:	0015008d 	move	$r13,$r4
1c00294c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002950:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00295c <CLOCK_Init+0xdc>
1c002954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002958:	50015000 	b	336(0x150) # 1c002aa8 <CLOCK_Init+0x228>
1c00295c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002960:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002964:	00150184 	move	$r4,$r12
1c002968:	57fe4fff 	bl	-436(0xffffe4c) # 1c0027b4 <CLOCK_LSEConfig>
1c00296c:	0015008d 	move	$r13,$r4
1c002970:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002974:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002980 <CLOCK_Init+0x100>
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	50012c00 	b	300(0x12c) # 1c002aa8 <CLOCK_Init+0x228>
1c002980:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002984:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002988:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c00298c:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002a88 <CLOCK_Init+0x208>
1c002990:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002994:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002998:	4000a180 	beqz	$r12,160(0xa0) # 1c002a38 <CLOCK_Init+0x1b8>
1c00299c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029a0:	2880018e 	ld.w	$r14,$r12,0
1c0029a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029a8:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c0029ac:	03bffdad 	ori	$r13,$r13,0xfff
1c0029b0:	0014b5cd 	and	$r13,$r14,$r13
1c0029b4:	2980018d 	st.w	$r13,$r12,0
1c0029b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029bc:	2880018e 	ld.w	$r14,$r12,0
1c0029c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0029c4:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0029c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029cc:	001535cd 	or	$r13,$r14,$r13
1c0029d0:	2980018d 	st.w	$r13,$r12,0
1c0029d4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0029d8:	0386c18c 	ori	$r12,$r12,0x1b0
1c0029dc:	2880018c 	ld.w	$r12,$r12,0
1c0029e0:	40004180 	beqz	$r12,64(0x40) # 1c002a20 <CLOCK_Init+0x1a0>
1c0029e4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0029e8:	0386c18c 	ori	$r12,$r12,0x1b0
1c0029ec:	2880018c 	ld.w	$r12,$r12,0
1c0029f0:	0040898e 	slli.w	$r14,$r12,0x2
1c0029f4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0029f8:	002031cd 	div.w	$r13,$r14,$r12
1c0029fc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002a04 <CLOCK_Init+0x184>
1c002a00:	002a0007 	break	0x7
1c002a04:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002a08:	001c31ac 	mul.w	$r12,$r13,$r12
1c002a0c:	0015018d 	move	$r13,$r12
1c002a10:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a14:	0298318c 	addi.w	$r12,$r12,1548(0x60c)
1c002a18:	2980018d 	st.w	$r13,$r12,0
1c002a1c:	50008000 	b	128(0x80) # 1c002a9c <CLOCK_Init+0x21c>
1c002a20:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a24:	0297f18c 	addi.w	$r12,$r12,1532(0x5fc)
1c002a28:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002a2c:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002a30:	2980018d 	st.w	$r13,$r12,0
1c002a34:	50006800 	b	104(0x68) # 1c002a9c <CLOCK_Init+0x21c>
1c002a38:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002a3c:	0386c18c 	ori	$r12,$r12,0x1b0
1c002a40:	2880018c 	ld.w	$r12,$r12,0
1c002a44:	40002d80 	beqz	$r12,44(0x2c) # 1c002a70 <CLOCK_Init+0x1f0>
1c002a48:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002a4c:	0386c18c 	ori	$r12,$r12,0x1b0
1c002a50:	2880018d 	ld.w	$r13,$r12,0
1c002a54:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002a58:	001c31ac 	mul.w	$r12,$r13,$r12
1c002a5c:	0015018d 	move	$r13,$r12
1c002a60:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a64:	0296f18c 	addi.w	$r12,$r12,1468(0x5bc)
1c002a68:	2980018d 	st.w	$r13,$r12,0
1c002a6c:	50003000 	b	48(0x30) # 1c002a9c <CLOCK_Init+0x21c>
1c002a70:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a74:	0296b18c 	addi.w	$r12,$r12,1452(0x5ac)
1c002a78:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002a7c:	038801ad 	ori	$r13,$r13,0x200
1c002a80:	2980018d 	st.w	$r13,$r12,0
1c002a84:	50001800 	b	24(0x18) # 1c002a9c <CLOCK_Init+0x21c>
1c002a88:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a8c:	0296518c 	addi.w	$r12,$r12,1428(0x594)
1c002a90:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002a94:	038801ad 	ori	$r13,$r13,0x200
1c002a98:	2980018d 	st.w	$r13,$r12,0
1c002a9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002aa0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002aa8:	00150184 	move	$r4,$r12
1c002aac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ab0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ab4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ab8:	4c000020 	jirl	$r0,$r1,0

1c002abc <SystemClockInit>:
SystemClockInit():
1c002abc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ac0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ac4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ac8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002acc:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002ad0:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002ad4:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002ad8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002adc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ae0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ae4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ae8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002aec:	00150184 	move	$r4,$r12
1c002af0:	57fd2fff 	bl	-724(0xffffd2c) # 1c00281c <CLOCK_StructInit>
1c002af4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002af8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002afc:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002b00:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002b04:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002b08:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002b0c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002b10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b14:	1410000c 	lu12i.w	$r12,32768(0x8000)
1c002b18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b1c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002b20:	00150184 	move	$r4,$r12
1c002b24:	57fd5fff 	bl	-676(0xffffd5c) # 1c002880 <CLOCK_Init>
1c002b28:	0015008d 	move	$r13,$r4
1c002b2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b30:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002b3c <SystemClockInit+0x80>
1c002b34:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002b38:	50000800 	b	8(0x8) # 1c002b40 <SystemClockInit+0x84>
1c002b3c:	0015000c 	move	$r12,$r0
1c002b40:	00150184 	move	$r4,$r12
1c002b44:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b48:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b50:	4c000020 	jirl	$r0,$r1,0

1c002b54 <DisableInt>:
DisableInt():
1c002b54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b58:	29803076 	st.w	$r22,$r3,12(0xc)
1c002b5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b60:	0380100c 	ori	$r12,$r0,0x4
1c002b64:	04000180 	csrxchg	$r0,$r12,0x0
1c002b68:	03400000 	andi	$r0,$r0,0x0
1c002b6c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b74:	4c000020 	jirl	$r0,$r1,0

1c002b78 <EnableInt>:
EnableInt():
1c002b78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b7c:	29803076 	st.w	$r22,$r3,12(0xc)
1c002b80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b84:	0380100c 	ori	$r12,$r0,0x4
1c002b88:	0400018c 	csrxchg	$r12,$r12,0x0
1c002b8c:	03400000 	andi	$r0,$r0,0x0
1c002b90:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b98:	4c000020 	jirl	$r0,$r1,0

1c002b9c <Set_Timer_stop>:
Set_Timer_stop():
1c002b9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002ba0:	29803076 	st.w	$r22,$r3,12(0xc)
1c002ba4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002ba8:	04010420 	csrwr	$r0,0x41
1c002bac:	03400000 	andi	$r0,$r0,0x0
1c002bb0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002bb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002bb8:	4c000020 	jirl	$r0,$r1,0

1c002bbc <Set_Timer_clear>:
Set_Timer_clear():
1c002bbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002bc0:	29803076 	st.w	$r22,$r3,12(0xc)
1c002bc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002bc8:	0380040c 	ori	$r12,$r0,0x1
1c002bcc:	0401102c 	csrwr	$r12,0x44
1c002bd0:	03400000 	andi	$r0,$r0,0x0
1c002bd4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002bd8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002bdc:	4c000020 	jirl	$r0,$r1,0

1c002be0 <Wake_Set>:
Wake_Set():
1c002be0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002be4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002be8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002bec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002bf0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bf4:	40006980 	beqz	$r12,104(0x68) # 1c002c5c <Wake_Set+0x7c>
1c002bf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bfc:	0040a18c 	slli.w	$r12,$r12,0x8
1c002c00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c04:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c0c:	0380218c 	ori	$r12,$r12,0x8
1c002c10:	2880018d 	ld.w	$r13,$r12,0
1c002c14:	14001fec 	lu12i.w	$r12,255(0xff)
1c002c18:	03bffd8c 	ori	$r12,$r12,0xfff
1c002c1c:	0014b1ac 	and	$r12,$r13,$r12
1c002c20:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002c24:	001031ac 	add.w	$r12,$r13,$r12
1c002c28:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	0380318c 	ori	$r12,$r12,0xc
1c002c34:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002c38:	2980018d 	st.w	$r13,$r12,0
1c002c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c40:	0380118c 	ori	$r12,$r12,0x4
1c002c44:	2880018d 	ld.w	$r13,$r12,0
1c002c48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c4c:	0380118c 	ori	$r12,$r12,0x4
1c002c50:	038601ad 	ori	$r13,$r13,0x180
1c002c54:	2980018d 	st.w	$r13,$r12,0
1c002c58:	50002400 	b	36(0x24) # 1c002c7c <Wake_Set+0x9c>
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	0380118c 	ori	$r12,$r12,0x4
1c002c64:	2880018e 	ld.w	$r14,$r12,0
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	0380118c 	ori	$r12,$r12,0x4
1c002c70:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c002c74:	0014b5cd 	and	$r13,$r14,$r13
1c002c78:	2980018d 	st.w	$r13,$r12,0
1c002c7c:	03400000 	andi	$r0,$r0,0x0
1c002c80:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002c84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c88:	4c000020 	jirl	$r0,$r1,0

1c002c8c <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c002c8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ca4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002ca8:	0014b1ac 	and	$r12,$r13,$r12
1c002cac:	44000d80 	bnez	$r12,12(0xc) # 1c002cb8 <PMU_GetRstRrc+0x2c>
1c002cb0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cb4:	50003000 	b	48(0x30) # 1c002ce4 <PMU_GetRstRrc+0x58>
1c002cb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cbc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002cc0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002cc4:	0014b1ad 	and	$r13,$r13,$r12
1c002cc8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002ccc:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cdc <PMU_GetRstRrc+0x50>
1c002cd0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002cd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cd8:	50000c00 	b	12(0xc) # 1c002ce4 <PMU_GetRstRrc+0x58>
1c002cdc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ce0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ce8:	00150184 	move	$r4,$r12
1c002cec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002cf0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cf4:	4c000020 	jirl	$r0,$r1,0

1c002cf8 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c002cf8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cfc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d04:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d08:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002d0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002d10:	0380198c 	ori	$r12,$r12,0x6
1c002d14:	2a00018c 	ld.bu	$r12,$r12,0
1c002d18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d24:	0340058c 	andi	$r12,$r12,0x1
1c002d28:	40000d80 	beqz	$r12,12(0xc) # 1c002d34 <PMU_GetBootSpiStatus+0x3c>
1c002d2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d30:	50000800 	b	8(0x8) # 1c002d38 <PMU_GetBootSpiStatus+0x40>
1c002d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d38:	00150184 	move	$r4,$r12
1c002d3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d44:	4c000020 	jirl	$r0,$r1,0

1c002d48 <ls1x_logo>:
ls1x_logo():
1c002d48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002d4c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002d50:	29802076 	st.w	$r22,$r3,8(0x8)
1c002d54:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002d58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d5c:	0291b084 	addi.w	$r4,$r4,1132(0x46c)
1c002d60:	57ee9fff 	bl	-4452(0xfffee9c) # 1c001bfc <myprintf>
1c002d64:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d68:	02919084 	addi.w	$r4,$r4,1124(0x464)
1c002d6c:	57ee93ff 	bl	-4464(0xfffee90) # 1c001bfc <myprintf>
1c002d70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d74:	0292f084 	addi.w	$r4,$r4,1212(0x4bc)
1c002d78:	57ee87ff 	bl	-4476(0xfffee84) # 1c001bfc <myprintf>
1c002d7c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d80:	02945084 	addi.w	$r4,$r4,1300(0x514)
1c002d84:	57ee7bff 	bl	-4488(0xfffee78) # 1c001bfc <myprintf>
1c002d88:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d8c:	0295b084 	addi.w	$r4,$r4,1388(0x56c)
1c002d90:	57ee6fff 	bl	-4500(0xfffee6c) # 1c001bfc <myprintf>
1c002d94:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002d98:	02971084 	addi.w	$r4,$r4,1476(0x5c4)
1c002d9c:	57ee63ff 	bl	-4512(0xfffee60) # 1c001bfc <myprintf>
1c002da0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002da4:	02987084 	addi.w	$r4,$r4,1564(0x61c)
1c002da8:	57ee57ff 	bl	-4524(0xfffee54) # 1c001bfc <myprintf>
1c002dac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002db0:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c002db4:	57ee4bff 	bl	-4536(0xfffee48) # 1c001bfc <myprintf>
1c002db8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002dbc:	029b3084 	addi.w	$r4,$r4,1740(0x6cc)
1c002dc0:	57ee3fff 	bl	-4548(0xfffee3c) # 1c001bfc <myprintf>
1c002dc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002dc8:	029c9084 	addi.w	$r4,$r4,1828(0x724)
1c002dcc:	57ee33ff 	bl	-4560(0xfffee30) # 1c001bfc <myprintf>
1c002dd0:	03400000 	andi	$r0,$r0,0x0
1c002dd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002dd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002ddc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002de0:	4c000020 	jirl	$r0,$r1,0

1c002de4 <get_count>:
get_count():
1c002de4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002de8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002dec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002df0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002df4:	0000600c 	rdtimel.w	$r12,$r0
1c002df8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e00:	00150184 	move	$r4,$r12
1c002e04:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e0c:	4c000020 	jirl	$r0,$r1,0

1c002e10 <open_count>:
open_count():
1c002e10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002e14:	29803076 	st.w	$r22,$r3,12(0xc)
1c002e18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002e1c:	0380400c 	ori	$r12,$r0,0x10
1c002e20:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c002e24:	03400000 	andi	$r0,$r0,0x0
1c002e28:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002e2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002e30:	4c000020 	jirl	$r0,$r1,0

1c002e34 <start_count>:
start_count():
1c002e34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002e3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002e40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e4c:	29800180 	st.w	$r0,$r12,0
1c002e50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e54:	29801180 	st.w	$r0,$r12,4(0x4)
1c002e58:	57ff8fff 	bl	-116(0xfffff8c) # 1c002de4 <get_count>
1c002e5c:	0015008d 	move	$r13,$r4
1c002e60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e64:	2980018d 	st.w	$r13,$r12,0
1c002e68:	03400000 	andi	$r0,$r0,0x0
1c002e6c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002e70:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002e74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e78:	4c000020 	jirl	$r0,$r1,0

1c002e7c <stop_count>:
stop_count():
1c002e7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e90:	57ff57ff 	bl	-172(0xfffff54) # 1c002de4 <get_count>
1c002e94:	0015008d 	move	$r13,$r4
1c002e98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e9c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002ea0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ea8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eac:	2880018c 	ld.w	$r12,$r12,0
1c002eb0:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c002ecc <stop_count+0x50>
1c002eb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ebc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ec0:	2880018c 	ld.w	$r12,$r12,0
1c002ec4:	001131ac 	sub.w	$r12,$r13,$r12
1c002ec8:	50002800 	b	40(0x28) # 1c002ef0 <stop_count+0x74>
1c002ecc:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002ed0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ed4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ed8:	2880018c 	ld.w	$r12,$r12,0
1c002edc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002ee0:	001131ad 	sub.w	$r13,$r13,$r12
1c002ee4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ee8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002eec:	001031ac 	add.w	$r12,$r13,$r12
1c002ef0:	00150184 	move	$r4,$r12
1c002ef4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ef8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002efc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f00:	4c000020 	jirl	$r0,$r1,0

1c002f04 <delay_cycle>:
delay_cycle():
1c002f04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f08:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002f0c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f1c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002f20:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002f24:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002f28:	00150184 	move	$r4,$r12
1c002f2c:	57ff0bff 	bl	-248(0xfffff08) # 1c002e34 <start_count>
1c002f30:	50001400 	b	20(0x14) # 1c002f44 <delay_cycle+0x40>
1c002f34:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002f38:	00150184 	move	$r4,$r12
1c002f3c:	57ff43ff 	bl	-192(0xfffff40) # 1c002e7c <stop_count>
1c002f40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f44:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f4c:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c002f34 <delay_cycle+0x30>
1c002f50:	03400000 	andi	$r0,$r0,0x0
1c002f54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f60:	4c000020 	jirl	$r0,$r1,0

1c002f64 <delay_ms>:
delay_ms():
1c002f64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f68:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002f6c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002f70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f74:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f7c:	1400002c 	lu12i.w	$r12,1(0x1)
1c002f80:	03bd018c 	ori	$r12,$r12,0xf40
1c002f84:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f88:	00150184 	move	$r4,$r12
1c002f8c:	57ff7bff 	bl	-136(0xfffff78) # 1c002f04 <delay_cycle>
1c002f90:	03400000 	andi	$r0,$r0,0x0
1c002f94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002f9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002fa0:	4c000020 	jirl	$r0,$r1,0

1c002fa4 <memset>:
memset():
1c002fa4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fa8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002fac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fb0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002fb4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002fb8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002fbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002fc4:	50001c00 	b	28(0x1c) # 1c002fe0 <memset+0x3c>
1c002fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fcc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002fd0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002fd4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002fd8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002fdc:	2900018d 	st.b	$r13,$r12,0
1c002fe0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002fe4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002fe8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002fec:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c002fc8 <memset+0x24>
1c002ff0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ff4:	00150184 	move	$r4,$r12
1c002ff8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002ffc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003000:	4c000020 	jirl	$r0,$r1,0

1c003004 <strncmp>:
strncmp():
1c003004:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003008:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00300c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003010:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003014:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003018:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c00301c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003020:	44003980 	bnez	$r12,56(0x38) # 1c003058 <strncmp+0x54>
1c003024:	0015000c 	move	$r12,$r0
1c003028:	50006c00 	b	108(0x6c) # 1c003094 <strncmp+0x90>
1c00302c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003030:	40004d80 	beqz	$r12,76(0x4c) # 1c00307c <strncmp+0x78>
1c003034:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003038:	2800018c 	ld.b	$r12,$r12,0
1c00303c:	40004180 	beqz	$r12,64(0x40) # 1c00307c <strncmp+0x78>
1c003040:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003044:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003048:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00304c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003050:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003054:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003058:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00305c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003060:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003064:	40001980 	beqz	$r12,24(0x18) # 1c00307c <strncmp+0x78>
1c003068:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00306c:	2800018d 	ld.b	$r13,$r12,0
1c003070:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003074:	2800018c 	ld.b	$r12,$r12,0
1c003078:	5bffb5ac 	beq	$r13,$r12,-76(0x3ffb4) # 1c00302c <strncmp+0x28>
1c00307c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003080:	2a00018c 	ld.bu	$r12,$r12,0
1c003084:	0015018d 	move	$r13,$r12
1c003088:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00308c:	2a00018c 	ld.bu	$r12,$r12,0
1c003090:	001131ac 	sub.w	$r12,$r13,$r12
1c003094:	00150184 	move	$r4,$r12
1c003098:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00309c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030a0:	4c000020 	jirl	$r0,$r1,0

1c0030a4 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0030a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0030ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0030b4:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0030b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030bc:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0030c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030c4:	001531ad 	or	$r13,$r13,$r12
1c0030c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030cc:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0030d0:	03400000 	andi	$r0,$r0,0x0
1c0030d4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0030d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030dc:	4c000020 	jirl	$r0,$r1,0

1c0030e0 <WDG_getOddValue>:
WDG_getOddValue():
1c0030e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030e4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0030e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0030ec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0030f0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030f4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030fc:	50003800 	b	56(0x38) # 1c003134 <WDG_getOddValue+0x54>
1c003100:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003104:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003108:	001731ac 	sll.w	$r12,$r13,$r12
1c00310c:	0015018d 	move	$r13,$r12
1c003110:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003114:	0014b1ac 	and	$r12,$r13,$r12
1c003118:	40001180 	beqz	$r12,16(0x10) # 1c003128 <WDG_getOddValue+0x48>
1c00311c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003120:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003124:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00312c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003130:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003134:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003138:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00313c:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003100 <WDG_getOddValue+0x20>
1c003140:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003144:	0340058c 	andi	$r12,$r12,0x1
1c003148:	44000d80 	bnez	$r12,12(0xc) # 1c003154 <WDG_getOddValue+0x74>
1c00314c:	1400010c 	lu12i.w	$r12,8(0x8)
1c003150:	50000800 	b	8(0x8) # 1c003158 <WDG_getOddValue+0x78>
1c003154:	0015000c 	move	$r12,$r0
1c003158:	00150184 	move	$r4,$r12
1c00315c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003160:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003164:	4c000020 	jirl	$r0,$r1,0

1c003168 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003168:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00316c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003170:	29806076 	st.w	$r22,$r3,24(0x18)
1c003174:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003178:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00317c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003180:	140000ec 	lu12i.w	$r12,7(0x7)
1c003184:	03bffd8c 	ori	$r12,$r12,0xfff
1c003188:	0014b1ac 	and	$r12,$r13,$r12
1c00318c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003190:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003194:	57ff4fff 	bl	-180(0xfffff4c) # 1c0030e0 <WDG_getOddValue>
1c003198:	0015008c 	move	$r12,$r4
1c00319c:	0015018d 	move	$r13,$r12
1c0031a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031a4:	0015358c 	or	$r12,$r12,$r13
1c0031a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031b0:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0031b4:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0031b8:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0031bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031c0:	0014300c 	nor	$r12,$r0,$r12
1c0031c4:	0040c18c 	slli.w	$r12,$r12,0x10
1c0031c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031cc:	001531ac 	or	$r12,$r13,$r12
1c0031d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031dc:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0031e0:	03400000 	andi	$r0,$r0,0x0
1c0031e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0031e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0031ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031f0:	4c000020 	jirl	$r0,$r1,0

1c0031f4 <WDG_DogFeed>:
WDG_DogFeed():
1c0031f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031f8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003200:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003204:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003208:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00320c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003210:	03400000 	andi	$r0,$r0,0x0
1c003214:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003218:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00321c:	4c000020 	jirl	$r0,$r1,0

1c003220 <WdgInit>:
WdgInit():
1c003220:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003224:	29803061 	st.w	$r1,$r3,12(0xc)
1c003228:	29802076 	st.w	$r22,$r3,8(0x8)
1c00322c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003230:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003234:	03bffd84 	ori	$r4,$r12,0xfff
1c003238:	57ff33ff 	bl	-208(0xfffff30) # 1c003168 <WDG_SetWatchDog>
1c00323c:	03400000 	andi	$r0,$r0,0x0
1c003240:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003244:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003248:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00324c:	4c000020 	jirl	$r0,$r1,0

1c003250 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003250:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003254:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003258:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00325c:	0015008c 	move	$r12,$r4
1c003260:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003264:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003268:	0040898c 	slli.w	$r12,$r12,0x2
1c00326c:	0015018d 	move	$r13,$r12
1c003270:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003274:	0381018c 	ori	$r12,$r12,0x40
1c003278:	001031ac 	add.w	$r12,$r13,$r12
1c00327c:	2880018c 	ld.w	$r12,$r12,0
1c003280:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003284:	037ffd8c 	andi	$r12,$r12,0xfff
1c003288:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00328c:	00150184 	move	$r4,$r12
1c003290:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003294:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003298:	4c000020 	jirl	$r0,$r1,0

1c00329c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c00329c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032a8:	0015008c 	move	$r12,$r4
1c0032ac:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0032b0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0032b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0032b8:	0015018d 	move	$r13,$r12
1c0032bc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0032c0:	0382018c 	ori	$r12,$r12,0x80
1c0032c4:	001031ac 	add.w	$r12,$r13,$r12
1c0032c8:	2880018c 	ld.w	$r12,$r12,0
1c0032cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0032d0:	037ffd8c 	andi	$r12,$r12,0xfff
1c0032d4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0032d8:	00150184 	move	$r4,$r12
1c0032dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032e4:	4c000020 	jirl	$r0,$r1,0

1c0032e8 <Printf_KeyChannel>:
Printf_KeyChannel():
1c0032e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0032ec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0032f0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0032f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0032f8:	0015008c 	move	$r12,$r4
1c0032fc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003300:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003304:	50003400 	b	52(0x34) # 1c003338 <Printf_KeyChannel+0x50>
1c003308:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00330c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003310:	001831ac 	sra.w	$r12,$r13,$r12
1c003314:	0340058c 	andi	$r12,$r12,0x1
1c003318:	40001580 	beqz	$r12,20(0x14) # 1c00332c <Printf_KeyChannel+0x44>
1c00331c:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003320:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003324:	0288b084 	addi.w	$r4,$r4,556(0x22c)
1c003328:	57e8d7ff 	bl	-5932(0xfffe8d4) # 1c001bfc <myprintf>
1c00332c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003330:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003334:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003338:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00333c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003340:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003308 <Printf_KeyChannel+0x20>
1c003344:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003348:	02883084 	addi.w	$r4,$r4,524(0x20c)
1c00334c:	57e8b3ff 	bl	-5968(0xfffe8b0) # 1c001bfc <myprintf>
1c003350:	03400000 	andi	$r0,$r0,0x0
1c003354:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003358:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00335c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003360:	4c000020 	jirl	$r0,$r1,0

1c003364 <Printf_KeyType>:
Printf_KeyType():
1c003364:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003368:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00336c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003370:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003374:	0015008c 	move	$r12,$r4
1c003378:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00337c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003380:	0340058c 	andi	$r12,$r12,0x1
1c003384:	40001180 	beqz	$r12,16(0x10) # 1c003394 <Printf_KeyType+0x30>
1c003388:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00338c:	02873084 	addi.w	$r4,$r4,460(0x1cc)
1c003390:	57e86fff 	bl	-6036(0xfffe86c) # 1c001bfc <myprintf>
1c003394:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003398:	0340098c 	andi	$r12,$r12,0x2
1c00339c:	40001180 	beqz	$r12,16(0x10) # 1c0033ac <Printf_KeyType+0x48>
1c0033a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033a4:	0286f084 	addi.w	$r4,$r4,444(0x1bc)
1c0033a8:	57e857ff 	bl	-6060(0xfffe854) # 1c001bfc <myprintf>
1c0033ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0033b0:	0340118c 	andi	$r12,$r12,0x4
1c0033b4:	40001180 	beqz	$r12,16(0x10) # 1c0033c4 <Printf_KeyType+0x60>
1c0033b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033bc:	0286b084 	addi.w	$r4,$r4,428(0x1ac)
1c0033c0:	57e83fff 	bl	-6084(0xfffe83c) # 1c001bfc <myprintf>
1c0033c4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0033c8:	0340218c 	andi	$r12,$r12,0x8
1c0033cc:	40001180 	beqz	$r12,16(0x10) # 1c0033dc <Printf_KeyType+0x78>
1c0033d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033d4:	02868084 	addi.w	$r4,$r4,416(0x1a0)
1c0033d8:	57e827ff 	bl	-6108(0xfffe824) # 1c001bfc <myprintf>
1c0033dc:	03400000 	andi	$r0,$r0,0x0
1c0033e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0033e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0033e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033ec:	4c000020 	jirl	$r0,$r1,0

1c0033f0 <Printf_KeyVal>:
Printf_KeyVal():
1c0033f0:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0033f4:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0033f8:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0033fc:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003400:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003404:	5000d800 	b	216(0xd8) # 1c0034dc <Printf_KeyVal+0xec>
1c003408:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00340c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003410:	00150184 	move	$r4,$r12
1c003414:	57fe8bff 	bl	-376(0xffffe88) # 1c00329c <TOUCH_GetCountValue>
1c003418:	0015008c 	move	$r12,$r4
1c00341c:	0015018d 	move	$r13,$r12
1c003420:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003424:	0040898c 	slli.w	$r12,$r12,0x2
1c003428:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00342c:	001031cc 	add.w	$r12,$r14,$r12
1c003430:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003434:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003438:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00343c:	00150184 	move	$r4,$r12
1c003440:	57fe13ff 	bl	-496(0xffffe10) # 1c003250 <TOUCH_GetBaseVal>
1c003444:	0015008c 	move	$r12,$r4
1c003448:	0015018d 	move	$r13,$r12
1c00344c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003450:	0040898c 	slli.w	$r12,$r12,0x2
1c003454:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003458:	001031cc 	add.w	$r12,$r14,$r12
1c00345c:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003460:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003464:	0040898c 	slli.w	$r12,$r12,0x2
1c003468:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00346c:	001031ac 	add.w	$r12,$r13,$r12
1c003470:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003474:	40004980 	beqz	$r12,72(0x48) # 1c0034bc <Printf_KeyVal+0xcc>
1c003478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00347c:	0040898c 	slli.w	$r12,$r12,0x2
1c003480:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003484:	001031ac 	add.w	$r12,$r13,$r12
1c003488:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c00348c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003490:	0040898c 	slli.w	$r12,$r12,0x2
1c003494:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003498:	001031cc 	add.w	$r12,$r14,$r12
1c00349c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c0034a0:	001131ad 	sub.w	$r13,$r13,$r12
1c0034a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034a8:	0040898c 	slli.w	$r12,$r12,0x2
1c0034ac:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0034b0:	001031cc 	add.w	$r12,$r14,$r12
1c0034b4:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c0034b8:	50001800 	b	24(0x18) # 1c0034d0 <Printf_KeyVal+0xe0>
1c0034bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034c0:	0040898c 	slli.w	$r12,$r12,0x2
1c0034c4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0034c8:	001031ac 	add.w	$r12,$r13,$r12
1c0034cc:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c0034d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034e0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0034e4:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003408 <Printf_KeyVal+0x18>
1c0034e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0034ec:	02825084 	addi.w	$r4,$r4,148(0x94)
1c0034f0:	57e70fff 	bl	-6388(0xfffe70c) # 1c001bfc <myprintf>
1c0034f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0034f8:	0282c084 	addi.w	$r4,$r4,176(0xb0)
1c0034fc:	57e703ff 	bl	-6400(0xfffe700) # 1c001bfc <myprintf>
1c003500:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003504:	50003400 	b	52(0x34) # 1c003538 <Printf_KeyVal+0x148>
1c003508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00350c:	0040898c 	slli.w	$r12,$r12,0x2
1c003510:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003514:	001031ac 	add.w	$r12,$r13,$r12
1c003518:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c00351c:	00150185 	move	$r5,$r12
1c003520:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003524:	02823084 	addi.w	$r4,$r4,140(0x8c)
1c003528:	57e6d7ff 	bl	-6444(0xfffe6d4) # 1c001bfc <myprintf>
1c00352c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003530:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003534:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003538:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00353c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003540:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003508 <Printf_KeyVal+0x118>
1c003544:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003548:	0281c084 	addi.w	$r4,$r4,112(0x70)
1c00354c:	57e6b3ff 	bl	-6480(0xfffe6b0) # 1c001bfc <myprintf>
1c003550:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003554:	50003400 	b	52(0x34) # 1c003588 <Printf_KeyVal+0x198>
1c003558:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00355c:	0040898c 	slli.w	$r12,$r12,0x2
1c003560:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003564:	001031ac 	add.w	$r12,$r13,$r12
1c003568:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c00356c:	00150185 	move	$r5,$r12
1c003570:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003574:	0280f084 	addi.w	$r4,$r4,60(0x3c)
1c003578:	57e687ff 	bl	-6524(0xfffe684) # 1c001bfc <myprintf>
1c00357c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003580:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003584:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003588:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00358c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003590:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003558 <Printf_KeyVal+0x168>
1c003594:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003598:	0280b084 	addi.w	$r4,$r4,44(0x2c)
1c00359c:	57e663ff 	bl	-6560(0xfffe660) # 1c001bfc <myprintf>
1c0035a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035a4:	50007400 	b	116(0x74) # 1c003618 <Printf_KeyVal+0x228>
1c0035a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035ac:	0040898c 	slli.w	$r12,$r12,0x2
1c0035b0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0035b4:	001031ac 	add.w	$r12,$r13,$r12
1c0035b8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0035bc:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c0035e8 <Printf_KeyVal+0x1f8>
1c0035c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035c4:	0040898c 	slli.w	$r12,$r12,0x2
1c0035c8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0035cc:	001031ac 	add.w	$r12,$r13,$r12
1c0035d0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0035d4:	00150185 	move	$r5,$r12
1c0035d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0035dc:	02bfd084 	addi.w	$r4,$r4,-12(0xff4)
1c0035e0:	57e61fff 	bl	-6628(0xfffe61c) # 1c001bfc <myprintf>
1c0035e4:	50002800 	b	40(0x28) # 1c00360c <Printf_KeyVal+0x21c>
1c0035e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035ec:	0040898c 	slli.w	$r12,$r12,0x2
1c0035f0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0035f4:	001031ac 	add.w	$r12,$r13,$r12
1c0035f8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0035fc:	00150185 	move	$r5,$r12
1c003600:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003604:	02bf5084 	addi.w	$r4,$r4,-44(0xfd4)
1c003608:	57e5f7ff 	bl	-6668(0xfffe5f4) # 1c001bfc <myprintf>
1c00360c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003610:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003614:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003618:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00361c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003620:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c0035a8 <Printf_KeyVal+0x1b8>
1c003624:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003628:	02bcb084 	addi.w	$r4,$r4,-212(0xf2c)
1c00362c:	57e5d3ff 	bl	-6704(0xfffe5d0) # 1c001bfc <myprintf>
1c003630:	03400000 	andi	$r0,$r0,0x0
1c003634:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003638:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c00363c:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003640:	4c000020 	jirl	$r0,$r1,0

1c003644 <TIM_Init>:
TIM_Init():
1c003644:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003648:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00364c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003650:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003654:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003658:	29800180 	st.w	$r0,$r12,0
1c00365c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003660:	0380118c 	ori	$r12,$r12,0x4
1c003664:	29800180 	st.w	$r0,$r12,0
1c003668:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00366c:	0380218c 	ori	$r12,$r12,0x8
1c003670:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003674:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003678:	2980018d 	st.w	$r13,$r12,0
1c00367c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003680:	0380318c 	ori	$r12,$r12,0xc
1c003684:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003688:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c00368c:	2980018d 	st.w	$r13,$r12,0
1c003690:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003694:	2880018e 	ld.w	$r14,$r12,0
1c003698:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00369c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c0036a0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0036a4:	001535cd 	or	$r13,$r14,$r13
1c0036a8:	2980018d 	st.w	$r13,$r12,0
1c0036ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036b0:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c0036b4:	40002180 	beqz	$r12,32(0x20) # 1c0036d4 <TIM_Init+0x90>
1c0036b8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0036bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0036c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0036c4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0036c8:	038005ad 	ori	$r13,$r13,0x1
1c0036cc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0036d0:	2900018d 	st.b	$r13,$r12,0
1c0036d4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0036d8:	2880018e 	ld.w	$r14,$r12,0
1c0036dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e0:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0036e4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0036e8:	001535cd 	or	$r13,$r14,$r13
1c0036ec:	2980018d 	st.w	$r13,$r12,0
1c0036f0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0036f4:	2880018e 	ld.w	$r14,$r12,0
1c0036f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036fc:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003700:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003704:	001535cd 	or	$r13,$r14,$r13
1c003708:	2980018d 	st.w	$r13,$r12,0
1c00370c:	03400000 	andi	$r0,$r0,0x0
1c003710:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003714:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003718:	4c000020 	jirl	$r0,$r1,0

1c00371c <TIM_StructInit>:
TIM_StructInit():
1c00371c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003720:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003724:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003728:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00372c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003730:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003734:	038801ad 	ori	$r13,$r13,0x200
1c003738:	2980018d 	st.w	$r13,$r12,0
1c00373c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003740:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003744:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003748:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00374c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003750:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003758:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00375c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003760:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003764:	1400002d 	lu12i.w	$r13,1(0x1)
1c003768:	03bcfdad 	ori	$r13,$r13,0xf3f
1c00376c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003774:	1400026d 	lu12i.w	$r13,19(0x13)
1c003778:	03a201ad 	ori	$r13,$r13,0x880
1c00377c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003780:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003784:	29803180 	st.w	$r0,$r12,12(0xc)
1c003788:	03400000 	andi	$r0,$r0,0x0
1c00378c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003790:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003794:	4c000020 	jirl	$r0,$r1,0

1c003798 <timer_init>:
timer_init():
1c003798:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c00379c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0037a0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0037a4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0037a8:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0037ac:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0037b0:	00150184 	move	$r4,$r12
1c0037b4:	57ff6bff 	bl	-152(0xfffff68) # 1c00371c <TIM_StructInit>
1c0037b8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0037bc:	1400002c 	lu12i.w	$r12,1(0x1)
1c0037c0:	03bd018c 	ori	$r12,$r12,0xf40
1c0037c4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0037c8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0037cc:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0037d0:	00150184 	move	$r4,$r12
1c0037d4:	57fe73ff 	bl	-400(0xffffe70) # 1c003644 <TIM_Init>
1c0037d8:	03400000 	andi	$r0,$r0,0x0
1c0037dc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0037e0:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0037e4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0037e8:	4c000020 	jirl	$r0,$r1,0

1c0037ec <TIM_GetITStatus>:
TIM_GetITStatus():
1c0037ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003800:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003804:	2880018d 	ld.w	$r13,$r12,0
1c003808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00380c:	0014b1ac 	and	$r12,$r13,$r12
1c003810:	40001180 	beqz	$r12,16(0x10) # 1c003820 <TIM_GetITStatus+0x34>
1c003814:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003818:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00381c:	50000800 	b	8(0x8) # 1c003824 <TIM_GetITStatus+0x38>
1c003820:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003828:	00150184 	move	$r4,$r12
1c00382c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003830:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003834:	4c000020 	jirl	$r0,$r1,0

1c003838 <TIM_ClearIT>:
TIM_ClearIT():
1c003838:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00383c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003840:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003844:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003848:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00384c:	2880018e 	ld.w	$r14,$r12,0
1c003850:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003854:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003858:	001535cd 	or	$r13,$r14,$r13
1c00385c:	2980018d 	st.w	$r13,$r12,0
1c003860:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003864:	03800d8c 	ori	$r12,$r12,0x3
1c003868:	2a00018c 	ld.bu	$r12,$r12,0
1c00386c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003870:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003874:	03800d8c 	ori	$r12,$r12,0x3
1c003878:	038005ad 	ori	$r13,$r13,0x1
1c00387c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003880:	2900018d 	st.b	$r13,$r12,0
1c003884:	03400000 	andi	$r0,$r0,0x0
1c003888:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00388c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003890:	4c000020 	jirl	$r0,$r1,0

1c003894 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003894:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003898:	29803061 	st.w	$r1,$r3,12(0xc)
1c00389c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0038a8:	02bb50c6 	addi.w	$r6,$r6,-300(0xed4)
1c0038ac:	02805005 	addi.w	$r5,$r0,20(0x14)
1c0038b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0038b4:	02b4b084 	addi.w	$r4,$r4,-724(0xd2c)
1c0038b8:	57e347ff 	bl	-7356(0xfffe344) # 1c001bfc <myprintf>
1c0038bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0038c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038c4:	03808184 	ori	$r4,$r12,0x20
1c0038c8:	57f7dfff 	bl	-2084(0xffff7dc) # 1c0030a4 <EXTI_ClearITPendingBit>
1c0038cc:	03400000 	andi	$r0,$r0,0x0
1c0038d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038dc:	4c000020 	jirl	$r0,$r1,0

1c0038e0 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0038e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0038f4:	02ba80c6 	addi.w	$r6,$r6,-352(0xea0)
1c0038f8:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0038fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003900:	02b38084 	addi.w	$r4,$r4,-800(0xce0)
1c003904:	57e2fbff 	bl	-7432(0xfffe2f8) # 1c001bfc <myprintf>
1c003908:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00390c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003910:	03808184 	ori	$r4,$r12,0x20
1c003914:	57f793ff 	bl	-2160(0xffff790) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003918:	03400000 	andi	$r0,$r0,0x0
1c00391c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003920:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003924:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003928:	4c000020 	jirl	$r0,$r1,0

1c00392c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00392c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003930:	29803061 	st.w	$r1,$r3,12(0xc)
1c003934:	29802076 	st.w	$r22,$r3,8(0x8)
1c003938:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00393c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003940:	02b9b0c6 	addi.w	$r6,$r6,-404(0xe6c)
1c003944:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c003948:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00394c:	02b25084 	addi.w	$r4,$r4,-876(0xc94)
1c003950:	57e2afff 	bl	-7508(0xfffe2ac) # 1c001bfc <myprintf>
1c003954:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003958:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00395c:	03808184 	ori	$r4,$r12,0x20
1c003960:	57f747ff 	bl	-2236(0xffff744) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003964:	03400000 	andi	$r0,$r0,0x0
1c003968:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00396c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003970:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003974:	4c000020 	jirl	$r0,$r1,0

1c003978 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003978:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00397c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003980:	29802076 	st.w	$r22,$r3,8(0x8)
1c003984:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003988:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00398c:	02b8e0c6 	addi.w	$r6,$r6,-456(0xe38)
1c003990:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c003994:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003998:	02b12084 	addi.w	$r4,$r4,-952(0xc48)
1c00399c:	57e263ff 	bl	-7584(0xfffe260) # 1c001bfc <myprintf>
1c0039a0:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0039a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039a8:	03808184 	ori	$r4,$r12,0x20
1c0039ac:	57f6fbff 	bl	-2312(0xffff6f8) # 1c0030a4 <EXTI_ClearITPendingBit>
1c0039b0:	03400000 	andi	$r0,$r0,0x0
1c0039b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039c0:	4c000020 	jirl	$r0,$r1,0

1c0039c4 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0039c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0039d8:	02b810c6 	addi.w	$r6,$r6,-508(0xe04)
1c0039dc:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0039e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039e4:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c0039e8:	57e217ff 	bl	-7660(0xfffe214) # 1c001bfc <myprintf>
1c0039ec:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0039f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039f4:	03808184 	ori	$r4,$r12,0x20
1c0039f8:	57f6afff 	bl	-2388(0xffff6ac) # 1c0030a4 <EXTI_ClearITPendingBit>
1c0039fc:	03400000 	andi	$r0,$r0,0x0
1c003a00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a0c:	4c000020 	jirl	$r0,$r1,0

1c003a10 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003a10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a14:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a18:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a20:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003a24:	02b740c6 	addi.w	$r6,$r6,-560(0xdd0)
1c003a28:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c003a2c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a30:	02aec084 	addi.w	$r4,$r4,-1104(0xbb0)
1c003a34:	57e1cbff 	bl	-7736(0xfffe1c8) # 1c001bfc <myprintf>
1c003a38:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003a3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a40:	03808184 	ori	$r4,$r12,0x20
1c003a44:	57f663ff 	bl	-2464(0xffff660) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003a48:	03400000 	andi	$r0,$r0,0x0
1c003a4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a58:	4c000020 	jirl	$r0,$r1,0

1c003a5c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003a5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a60:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a64:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a6c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003a70:	02b670c6 	addi.w	$r6,$r6,-612(0xd9c)
1c003a74:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c003a78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a7c:	02ad9084 	addi.w	$r4,$r4,-1180(0xb64)
1c003a80:	57e17fff 	bl	-7812(0xfffe17c) # 1c001bfc <myprintf>
1c003a84:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a8c:	03808184 	ori	$r4,$r12,0x20
1c003a90:	57f617ff 	bl	-2540(0xffff614) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003a94:	03400000 	andi	$r0,$r0,0x0
1c003a98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003aa0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003aa4:	4c000020 	jirl	$r0,$r1,0

1c003aa8 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003aa8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003aac:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ab0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ab4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ab8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003abc:	02b5a0c6 	addi.w	$r6,$r6,-664(0xd68)
1c003ac0:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c003ac4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ac8:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c003acc:	57e133ff 	bl	-7888(0xfffe130) # 1c001bfc <myprintf>
1c003ad0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ad8:	03808184 	ori	$r4,$r12,0x20
1c003adc:	57f5cbff 	bl	-2616(0xffff5c8) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003ae0:	03400000 	andi	$r0,$r0,0x0
1c003ae4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ae8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003aec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003af0:	4c000020 	jirl	$r0,$r1,0

1c003af4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003af4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003af8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003afc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b04:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b08:	02b4d0c6 	addi.w	$r6,$r6,-716(0xd34)
1c003b0c:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c003b10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b14:	02ab3084 	addi.w	$r4,$r4,-1332(0xacc)
1c003b18:	57e0e7ff 	bl	-7964(0xfffe0e4) # 1c001bfc <myprintf>
1c003b1c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003b20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b24:	03808184 	ori	$r4,$r12,0x20
1c003b28:	57f57fff 	bl	-2692(0xffff57c) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003b2c:	03400000 	andi	$r0,$r0,0x0
1c003b30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b3c:	4c000020 	jirl	$r0,$r1,0

1c003b40 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003b40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b44:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b48:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b50:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003b54:	02b400c6 	addi.w	$r6,$r6,-768(0xd00)
1c003b58:	02810405 	addi.w	$r5,$r0,65(0x41)
1c003b5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b60:	02aa0084 	addi.w	$r4,$r4,-1408(0xa80)
1c003b64:	57e09bff 	bl	-8040(0xfffe098) # 1c001bfc <myprintf>
1c003b68:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b70:	03808184 	ori	$r4,$r12,0x20
1c003b74:	57f533ff 	bl	-2768(0xffff530) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003b78:	03400000 	andi	$r0,$r0,0x0
1c003b7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b88:	4c000020 	jirl	$r0,$r1,0

1c003b8c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003b8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b90:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b94:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b9c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ba0:	02b330c6 	addi.w	$r6,$r6,-820(0xccc)
1c003ba4:	02811805 	addi.w	$r5,$r0,70(0x46)
1c003ba8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bac:	02a8d084 	addi.w	$r4,$r4,-1484(0xa34)
1c003bb0:	57e04fff 	bl	-8116(0xfffe04c) # 1c001bfc <myprintf>
1c003bb4:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003bb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bbc:	03808184 	ori	$r4,$r12,0x20
1c003bc0:	57f4e7ff 	bl	-2844(0xffff4e4) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003bc4:	03400000 	andi	$r0,$r0,0x0
1c003bc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003bcc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003bd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003bd4:	4c000020 	jirl	$r0,$r1,0

1c003bd8 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003bd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003be0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003be4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003be8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003bec:	02b260c6 	addi.w	$r6,$r6,-872(0xc98)
1c003bf0:	02812c05 	addi.w	$r5,$r0,75(0x4b)
1c003bf4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bf8:	02a7a084 	addi.w	$r4,$r4,-1560(0x9e8)
1c003bfc:	57e003ff 	bl	-8192(0xfffe000) # 1c001bfc <myprintf>
1c003c00:	03a00005 	ori	$r5,$r0,0x800
1c003c04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c08:	03808184 	ori	$r4,$r12,0x20
1c003c0c:	57f49bff 	bl	-2920(0xffff498) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003c10:	03400000 	andi	$r0,$r0,0x0
1c003c14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c20:	4c000020 	jirl	$r0,$r1,0

1c003c24 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c003c24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c28:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c34:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c38:	02b190c6 	addi.w	$r6,$r6,-924(0xc64)
1c003c3c:	02814005 	addi.w	$r5,$r0,80(0x50)
1c003c40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c44:	02a67084 	addi.w	$r4,$r4,-1636(0x99c)
1c003c48:	57dfb7ff 	bl	-8268(0xfffdfb4) # 1c001bfc <myprintf>
1c003c4c:	14000025 	lu12i.w	$r5,1(0x1)
1c003c50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c54:	03808184 	ori	$r4,$r12,0x20
1c003c58:	57f44fff 	bl	-2996(0xffff44c) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003c5c:	03400000 	andi	$r0,$r0,0x0
1c003c60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c6c:	4c000020 	jirl	$r0,$r1,0

1c003c70 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003c70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c74:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c78:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c80:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003c84:	02b0c0c6 	addi.w	$r6,$r6,-976(0xc30)
1c003c88:	02815405 	addi.w	$r5,$r0,85(0x55)
1c003c8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c90:	02a54084 	addi.w	$r4,$r4,-1712(0x950)
1c003c94:	57df6bff 	bl	-8344(0xfffdf68) # 1c001bfc <myprintf>
1c003c98:	14000045 	lu12i.w	$r5,2(0x2)
1c003c9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ca0:	03808184 	ori	$r4,$r12,0x20
1c003ca4:	57f403ff 	bl	-3072(0xffff400) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003ca8:	03400000 	andi	$r0,$r0,0x0
1c003cac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003cb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cb8:	4c000020 	jirl	$r0,$r1,0

1c003cbc <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003cbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003cc0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003cc4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003cc8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ccc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003cd0:	02aff0c6 	addi.w	$r6,$r6,-1028(0xbfc)
1c003cd4:	02816805 	addi.w	$r5,$r0,90(0x5a)
1c003cd8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cdc:	02a41084 	addi.w	$r4,$r4,-1788(0x904)
1c003ce0:	57df1fff 	bl	-8420(0xfffdf1c) # 1c001bfc <myprintf>
1c003ce4:	14000085 	lu12i.w	$r5,4(0x4)
1c003ce8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cec:	03808184 	ori	$r4,$r12,0x20
1c003cf0:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003cf4:	03400000 	andi	$r0,$r0,0x0
1c003cf8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cfc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d04:	4c000020 	jirl	$r0,$r1,0

1c003d08 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c003d08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d10:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d14:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d18:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d1c:	02af20c6 	addi.w	$r6,$r6,-1080(0xbc8)
1c003d20:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c003d24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d28:	02a2e084 	addi.w	$r4,$r4,-1864(0x8b8)
1c003d2c:	57ded3ff 	bl	-8496(0xfffded0) # 1c001bfc <myprintf>
1c003d30:	14000105 	lu12i.w	$r5,8(0x8)
1c003d34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d38:	03808184 	ori	$r4,$r12,0x20
1c003d3c:	57f36bff 	bl	-3224(0xffff368) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003d40:	03400000 	andi	$r0,$r0,0x0
1c003d44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d50:	4c000020 	jirl	$r0,$r1,0

1c003d54 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c003d54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d58:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d64:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003d68:	02ae50c6 	addi.w	$r6,$r6,-1132(0xb94)
1c003d6c:	02819405 	addi.w	$r5,$r0,101(0x65)
1c003d70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d74:	02a1b084 	addi.w	$r4,$r4,-1940(0x86c)
1c003d78:	57de87ff 	bl	-8572(0xfffde84) # 1c001bfc <myprintf>
1c003d7c:	14000205 	lu12i.w	$r5,16(0x10)
1c003d80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d84:	03808184 	ori	$r4,$r12,0x20
1c003d88:	57f31fff 	bl	-3300(0xffff31c) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003d8c:	03400000 	andi	$r0,$r0,0x0
1c003d90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d94:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d9c:	4c000020 	jirl	$r0,$r1,0

1c003da0 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c003da0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003da4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003da8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003dac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003db0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003db4:	02ad80c6 	addi.w	$r6,$r6,-1184(0xb60)
1c003db8:	0281a805 	addi.w	$r5,$r0,106(0x6a)
1c003dbc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dc0:	02a08084 	addi.w	$r4,$r4,-2016(0x820)
1c003dc4:	57de3bff 	bl	-8648(0xfffde38) # 1c001bfc <myprintf>
1c003dc8:	14000405 	lu12i.w	$r5,32(0x20)
1c003dcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003dd0:	03808184 	ori	$r4,$r12,0x20
1c003dd4:	57f2d3ff 	bl	-3376(0xffff2d0) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003dd8:	03400000 	andi	$r0,$r0,0x0
1c003ddc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003de0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003de4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003de8:	4c000020 	jirl	$r0,$r1,0

1c003dec <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c003dec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003df0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003df4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003df8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003dfc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e00:	02acb0c6 	addi.w	$r6,$r6,-1236(0xb2c)
1c003e04:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c003e08:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e0c:	029f5084 	addi.w	$r4,$r4,2004(0x7d4)
1c003e10:	57ddefff 	bl	-8724(0xfffddec) # 1c001bfc <myprintf>
1c003e14:	14000805 	lu12i.w	$r5,64(0x40)
1c003e18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e1c:	03808184 	ori	$r4,$r12,0x20
1c003e20:	57f287ff 	bl	-3452(0xffff284) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003e24:	03400000 	andi	$r0,$r0,0x0
1c003e28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e34:	4c000020 	jirl	$r0,$r1,0

1c003e38 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c003e38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e40:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e4c:	02abe0c6 	addi.w	$r6,$r6,-1288(0xaf8)
1c003e50:	0281d005 	addi.w	$r5,$r0,116(0x74)
1c003e54:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e58:	029e2084 	addi.w	$r4,$r4,1928(0x788)
1c003e5c:	57dda3ff 	bl	-8800(0xfffdda0) # 1c001bfc <myprintf>
1c003e60:	14001005 	lu12i.w	$r5,128(0x80)
1c003e64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e68:	03808184 	ori	$r4,$r12,0x20
1c003e6c:	57f23bff 	bl	-3528(0xffff238) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003e70:	03400000 	andi	$r0,$r0,0x0
1c003e74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e80:	4c000020 	jirl	$r0,$r1,0

1c003e84 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c003e84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e88:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e94:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e98:	02ab10c6 	addi.w	$r6,$r6,-1340(0xac4)
1c003e9c:	0281e405 	addi.w	$r5,$r0,121(0x79)
1c003ea0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ea4:	029cf084 	addi.w	$r4,$r4,1852(0x73c)
1c003ea8:	57dd57ff 	bl	-8876(0xfffdd54) # 1c001bfc <myprintf>
1c003eac:	14002005 	lu12i.w	$r5,256(0x100)
1c003eb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003eb4:	03808184 	ori	$r4,$r12,0x20
1c003eb8:	57f1efff 	bl	-3604(0xffff1ec) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003ebc:	03400000 	andi	$r0,$r0,0x0
1c003ec0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ec4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ec8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ecc:	4c000020 	jirl	$r0,$r1,0

1c003ed0 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c003ed0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ed4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ed8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003edc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ee0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ee4:	02aa40c6 	addi.w	$r6,$r6,-1392(0xa90)
1c003ee8:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c003eec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ef0:	029bc084 	addi.w	$r4,$r4,1776(0x6f0)
1c003ef4:	57dd0bff 	bl	-8952(0xfffdd08) # 1c001bfc <myprintf>
1c003ef8:	14004005 	lu12i.w	$r5,512(0x200)
1c003efc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f00:	03808184 	ori	$r4,$r12,0x20
1c003f04:	57f1a3ff 	bl	-3680(0xffff1a0) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003f08:	03400000 	andi	$r0,$r0,0x0
1c003f0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f10:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f18:	4c000020 	jirl	$r0,$r1,0

1c003f1c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c003f1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f20:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f24:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f2c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f30:	02a970c6 	addi.w	$r6,$r6,-1444(0xa5c)
1c003f34:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c003f38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f3c:	029a9084 	addi.w	$r4,$r4,1700(0x6a4)
1c003f40:	57dcbfff 	bl	-9028(0xfffdcbc) # 1c001bfc <myprintf>
1c003f44:	14008005 	lu12i.w	$r5,1024(0x400)
1c003f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f4c:	03808184 	ori	$r4,$r12,0x20
1c003f50:	57f157ff 	bl	-3756(0xffff154) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003f54:	03400000 	andi	$r0,$r0,0x0
1c003f58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f64:	4c000020 	jirl	$r0,$r1,0

1c003f68 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c003f68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f70:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f78:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f7c:	02a8a0c6 	addi.w	$r6,$r6,-1496(0xa28)
1c003f80:	02822005 	addi.w	$r5,$r0,136(0x88)
1c003f84:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f88:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c003f8c:	57dc73ff 	bl	-9104(0xfffdc70) # 1c001bfc <myprintf>
1c003f90:	14010005 	lu12i.w	$r5,2048(0x800)
1c003f94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f98:	03808184 	ori	$r4,$r12,0x20
1c003f9c:	57f10bff 	bl	-3832(0xffff108) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003fa0:	03400000 	andi	$r0,$r0,0x0
1c003fa4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fa8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fb0:	4c000020 	jirl	$r0,$r1,0

1c003fb4 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c003fb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fc4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003fc8:	02a7d0c6 	addi.w	$r6,$r6,-1548(0x9f4)
1c003fcc:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c003fd0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003fd4:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c003fd8:	57dc27ff 	bl	-9180(0xfffdc24) # 1c001bfc <myprintf>
1c003fdc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c003fe0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fe4:	03808184 	ori	$r4,$r12,0x20
1c003fe8:	57f0bfff 	bl	-3908(0xffff0bc) # 1c0030a4 <EXTI_ClearITPendingBit>
1c003fec:	03400000 	andi	$r0,$r0,0x0
1c003ff0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ff4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ff8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ffc:	4c000020 	jirl	$r0,$r1,0

1c004000 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004000:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004004:	29803061 	st.w	$r1,$r3,12(0xc)
1c004008:	29802076 	st.w	$r22,$r3,8(0x8)
1c00400c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004010:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004014:	02a700c6 	addi.w	$r6,$r6,-1600(0x9c0)
1c004018:	02824805 	addi.w	$r5,$r0,146(0x92)
1c00401c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004020:	02970084 	addi.w	$r4,$r4,1472(0x5c0)
1c004024:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c001bfc <myprintf>
1c004028:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00402c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004030:	03808184 	ori	$r4,$r12,0x20
1c004034:	57f073ff 	bl	-3984(0xffff070) # 1c0030a4 <EXTI_ClearITPendingBit>
1c004038:	03400000 	andi	$r0,$r0,0x0
1c00403c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004040:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004044:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004048:	4c000020 	jirl	$r0,$r1,0

1c00404c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00404c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004050:	29803061 	st.w	$r1,$r3,12(0xc)
1c004054:	29802076 	st.w	$r22,$r3,8(0x8)
1c004058:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00405c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004060:	02a630c6 	addi.w	$r6,$r6,-1652(0x98c)
1c004064:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c004068:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00406c:	0295d084 	addi.w	$r4,$r4,1396(0x574)
1c004070:	57db8fff 	bl	-9332(0xfffdb8c) # 1c001bfc <myprintf>
1c004074:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004078:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00407c:	03808184 	ori	$r4,$r12,0x20
1c004080:	57f027ff 	bl	-4060(0xffff024) # 1c0030a4 <EXTI_ClearITPendingBit>
1c004084:	03400000 	andi	$r0,$r0,0x0
1c004088:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00408c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004090:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004094:	4c000020 	jirl	$r0,$r1,0

1c004098 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004098:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00409c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040ac:	02a560c6 	addi.w	$r6,$r6,-1704(0x958)
1c0040b0:	02827005 	addi.w	$r5,$r0,156(0x9c)
1c0040b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040b8:	0294a084 	addi.w	$r4,$r4,1320(0x528)
1c0040bc:	57db43ff 	bl	-9408(0xfffdb40) # 1c001bfc <myprintf>
1c0040c0:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0040c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040c8:	03808184 	ori	$r4,$r12,0x20
1c0040cc:	57efdbff 	bl	-4136(0xfffefd8) # 1c0030a4 <EXTI_ClearITPendingBit>
1c0040d0:	03400000 	andi	$r0,$r0,0x0
1c0040d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040e0:	4c000020 	jirl	$r0,$r1,0

1c0040e4 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0040e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040f8:	02a490c6 	addi.w	$r6,$r6,-1756(0x924)
1c0040fc:	02828405 	addi.w	$r5,$r0,161(0xa1)
1c004100:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004104:	02937084 	addi.w	$r4,$r4,1244(0x4dc)
1c004108:	57daf7ff 	bl	-9484(0xfffdaf4) # 1c001bfc <myprintf>
1c00410c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004110:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004114:	03808184 	ori	$r4,$r12,0x20
1c004118:	57ef8fff 	bl	-4212(0xfffef8c) # 1c0030a4 <EXTI_ClearITPendingBit>
1c00411c:	03400000 	andi	$r0,$r0,0x0
1c004120:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004124:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004128:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00412c:	4c000020 	jirl	$r0,$r1,0

1c004130 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004130:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004134:	29803061 	st.w	$r1,$r3,12(0xc)
1c004138:	29802076 	st.w	$r22,$r3,8(0x8)
1c00413c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004140:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004144:	02a3c0c6 	addi.w	$r6,$r6,-1808(0x8f0)
1c004148:	02829c05 	addi.w	$r5,$r0,167(0xa7)
1c00414c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004150:	02924084 	addi.w	$r4,$r4,1168(0x490)
1c004154:	57daabff 	bl	-9560(0xfffdaa8) # 1c001bfc <myprintf>
1c004158:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00415c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004160:	03808184 	ori	$r4,$r12,0x20
1c004164:	57ef43ff 	bl	-4288(0xfffef40) # 1c0030a4 <EXTI_ClearITPendingBit>
1c004168:	03400000 	andi	$r0,$r0,0x0
1c00416c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004170:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004174:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004178:	4c000020 	jirl	$r0,$r1,0

1c00417c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00417c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004180:	29803061 	st.w	$r1,$r3,12(0xc)
1c004184:	29802076 	st.w	$r22,$r3,8(0x8)
1c004188:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00418c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004190:	02a2f0c6 	addi.w	$r6,$r6,-1860(0x8bc)
1c004194:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c004198:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00419c:	02911084 	addi.w	$r4,$r4,1092(0x444)
1c0041a0:	57da5fff 	bl	-9636(0xfffda5c) # 1c001bfc <myprintf>
1c0041a4:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0041a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041ac:	03808184 	ori	$r4,$r12,0x20
1c0041b0:	57eef7ff 	bl	-4364(0xfffeef4) # 1c0030a4 <EXTI_ClearITPendingBit>
1c0041b4:	03400000 	andi	$r0,$r0,0x0
1c0041b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041c4:	4c000020 	jirl	$r0,$r1,0

1c0041c8 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0041c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041dc:	02a220c6 	addi.w	$r6,$r6,-1912(0x888)
1c0041e0:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c0041e4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0041e8:	028fe084 	addi.w	$r4,$r4,1016(0x3f8)
1c0041ec:	57da13ff 	bl	-9712(0xfffda10) # 1c001bfc <myprintf>
1c0041f0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0041f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041f8:	03808184 	ori	$r4,$r12,0x20
1c0041fc:	57eeabff 	bl	-4440(0xfffeea8) # 1c0030a4 <EXTI_ClearITPendingBit>
1c004200:	03400000 	andi	$r0,$r0,0x0
1c004204:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004208:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00420c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004210:	4c000020 	jirl	$r0,$r1,0

1c004214 <ext_handler>:
ext_handler():
1c004214:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004218:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00421c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004220:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004224:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004228:	0380f18c 	ori	$r12,$r12,0x3c
1c00422c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004230:	2980018d 	st.w	$r13,$r12,0
1c004234:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004238:	0380818c 	ori	$r12,$r12,0x20
1c00423c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004240:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004248:	0380818c 	ori	$r12,$r12,0x20
1c00424c:	2880018c 	ld.w	$r12,$r12,0
1c004250:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004254:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004258:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00425c:	0014b1ac 	and	$r12,$r13,$r12
1c004260:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004264:	03400000 	andi	$r0,$r0,0x0
1c004268:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00426c:	50004000 	b	64(0x40) # 1c0042ac <ext_handler+0x98>
1c004270:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004274:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004278:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00427c:	0340058c 	andi	$r12,$r12,0x1
1c004280:	40002180 	beqz	$r12,32(0x20) # 1c0042a0 <ext_handler+0x8c>
1c004284:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004288:	0290c1ad 	addi.w	$r13,$r13,1072(0x430)
1c00428c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004290:	0040898c 	slli.w	$r12,$r12,0x2
1c004294:	001031ac 	add.w	$r12,$r13,$r12
1c004298:	2880018c 	ld.w	$r12,$r12,0
1c00429c:	4c000181 	jirl	$r1,$r12,0
1c0042a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0042a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0042ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0042b0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0042b4:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004270 <ext_handler+0x5c>
1c0042b8:	03400000 	andi	$r0,$r0,0x0
1c0042bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0042c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0042c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0042c8:	4c000020 	jirl	$r0,$r1,0

1c0042cc <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0042cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042d0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0042d4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0042d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042e0:	0380f18c 	ori	$r12,$r12,0x3c
1c0042e4:	1400020d 	lu12i.w	$r13,16(0x10)
1c0042e8:	2980018d 	st.w	$r13,$r12,0
1c0042ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042f0:	0380118c 	ori	$r12,$r12,0x4
1c0042f4:	2880018c 	ld.w	$r12,$r12,0
1c0042f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0042fc:	57eefbff 	bl	-4360(0xfffeef8) # 1c0031f4 <WDG_DogFeed>
1c004300:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004304:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c002be0 <Wake_Set>
1c004308:	03400000 	andi	$r0,$r0,0x0
1c00430c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004310:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004314:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004318:	4c000020 	jirl	$r0,$r1,0

1c00431c <TOUCH>:
TOUCH():
1c00431c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004320:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004324:	29806076 	st.w	$r22,$r3,24(0x18)
1c004328:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00432c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004330:	0380118c 	ori	$r12,$r12,0x4
1c004334:	2880018c 	ld.w	$r12,$r12,0
1c004338:	0044c18c 	srli.w	$r12,$r12,0x10
1c00433c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004340:	037ffd8c 	andi	$r12,$r12,0xfff
1c004344:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004348:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00434c:	0380118c 	ori	$r12,$r12,0x4
1c004350:	2880018c 	ld.w	$r12,$r12,0
1c004354:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004358:	03403d8c 	andi	$r12,$r12,0xf
1c00435c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004364:	0380f18c 	ori	$r12,$r12,0x3c
1c004368:	1400040d 	lu12i.w	$r13,32(0x20)
1c00436c:	2980018d 	st.w	$r13,$r12,0
1c004370:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004374:	0380118c 	ori	$r12,$r12,0x4
1c004378:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00437c:	2980018d 	st.w	$r13,$r12,0
1c004380:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004384:	00150184 	move	$r4,$r12
1c004388:	57efdfff 	bl	-4132(0xfffefdc) # 1c003364 <Printf_KeyType>
1c00438c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004390:	00150184 	move	$r4,$r12
1c004394:	57ef57ff 	bl	-4268(0xfffef54) # 1c0032e8 <Printf_KeyChannel>
1c004398:	57f05bff 	bl	-4008(0xffff058) # 1c0033f0 <Printf_KeyVal>
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0043a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0043a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0043ac:	4c000020 	jirl	$r0,$r1,0

1c0043b0 <UART2_INT>:
UART2_INT():
1c0043b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0043b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0043b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0043bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043c0:	0380f18c 	ori	$r12,$r12,0x3c
1c0043c4:	1400080d 	lu12i.w	$r13,64(0x40)
1c0043c8:	2980018d 	st.w	$r13,$r12,0
1c0043cc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0043d0:	0380098c 	ori	$r12,$r12,0x2
1c0043d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0043d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0043dc:	03400000 	andi	$r0,$r0,0x0
1c0043e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0043e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0043e8:	4c000020 	jirl	$r0,$r1,0

1c0043ec <BAT_FAIL>:
BAT_FAIL():
1c0043ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0043f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0043f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0043f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0043fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004400:	0380118c 	ori	$r12,$r12,0x4
1c004404:	2880018c 	ld.w	$r12,$r12,0
1c004408:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00440c:	03407d8c 	andi	$r12,$r12,0x1f
1c004410:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004418:	0380118c 	ori	$r12,$r12,0x4
1c00441c:	2880018e 	ld.w	$r14,$r12,0
1c004420:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004424:	0380f18c 	ori	$r12,$r12,0x3c
1c004428:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00442c:	0014b5cd 	and	$r13,$r14,$r13
1c004430:	2980018d 	st.w	$r13,$r12,0
1c004434:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004438:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00443c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0044ac <BAT_FAIL+0xc0>
1c004440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004444:	0040898d 	slli.w	$r13,$r12,0x2
1c004448:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c00444c:	028bb18c 	addi.w	$r12,$r12,748(0x2ec)
1c004450:	001031ac 	add.w	$r12,$r13,$r12
1c004454:	2880018c 	ld.w	$r12,$r12,0
1c004458:	4c000180 	jirl	$r0,$r12,0
1c00445c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004460:	02871084 	addi.w	$r4,$r4,452(0x1c4)
1c004464:	57d79bff 	bl	-10344(0xfffd798) # 1c001bfc <myprintf>
1c004468:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00446c:	0380118c 	ori	$r12,$r12,0x4
1c004470:	29800180 	st.w	$r0,$r12,0
1c004474:	50003c00 	b	60(0x3c) # 1c0044b0 <BAT_FAIL+0xc4>
1c004478:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00447c:	02874084 	addi.w	$r4,$r4,464(0x1d0)
1c004480:	57d77fff 	bl	-10372(0xfffd77c) # 1c001bfc <myprintf>
1c004484:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004488:	0380118c 	ori	$r12,$r12,0x4
1c00448c:	2880018e 	ld.w	$r14,$r12,0
1c004490:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004494:	0380118c 	ori	$r12,$r12,0x4
1c004498:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00449c:	03bffdad 	ori	$r13,$r13,0xfff
1c0044a0:	0014b5cd 	and	$r13,$r14,$r13
1c0044a4:	2980018d 	st.w	$r13,$r12,0
1c0044a8:	50000800 	b	8(0x8) # 1c0044b0 <BAT_FAIL+0xc4>
1c0044ac:	03400000 	andi	$r0,$r0,0x0
1c0044b0:	03400000 	andi	$r0,$r0,0x0
1c0044b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0044b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0044bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0044c0:	4c000020 	jirl	$r0,$r1,0

1c0044c4 <TIM_SetCompare1>:
TIM_SetCompare1():
1c0044c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0044c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0044cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0044d0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0044d4:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0044d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0044dc:	0280880c 	addi.w	$r12,$r0,34(0x22)
1c0044e0:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c00452c <TIM_SetCompare1+0x68>
1c0044e4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0044e8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0044ec:	6400198d 	bge	$r12,$r13,24(0x18) # 1c004504 <TIM_SetCompare1+0x40>
1c0044f0:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0044f4:	02acc18c 	addi.w	$r12,$r12,-1232(0xb30)
1c0044f8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0044fc:	2980018d 	st.w	$r13,$r12,0
1c004500:	50002c00 	b	44(0x2c) # 1c00452c <TIM_SetCompare1+0x68>
1c004504:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004508:	64001580 	bge	$r12,$r0,20(0x14) # 1c00451c <TIM_SetCompare1+0x58>
1c00450c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004510:	02ac518c 	addi.w	$r12,$r12,-1260(0xb14)
1c004514:	29800180 	st.w	$r0,$r12,0
1c004518:	50001400 	b	20(0x14) # 1c00452c <TIM_SetCompare1+0x68>
1c00451c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004520:	02ac118c 	addi.w	$r12,$r12,-1276(0xb04)
1c004524:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004528:	2980018d 	st.w	$r13,$r12,0
1c00452c:	03400000 	andi	$r0,$r0,0x0
1c004530:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004534:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004538:	4c000020 	jirl	$r0,$r1,0

1c00453c <intc_handler>:
intc_handler():
1c00453c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004540:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004544:	29806076 	st.w	$r22,$r3,24(0x18)
1c004548:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00454c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004550:	0380158c 	ori	$r12,$r12,0x5
1c004554:	2a00018c 	ld.bu	$r12,$r12,0
1c004558:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00455c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004560:	0340058c 	andi	$r12,$r12,0x1
1c004564:	4000f980 	beqz	$r12,248(0xf8) # 1c00465c <intc_handler+0x120>
1c004568:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00456c:	57f283ff 	bl	-3456(0xffff280) # 1c0037ec <TIM_GetITStatus>
1c004570:	0015008c 	move	$r12,$r4
1c004574:	4000e980 	beqz	$r12,232(0xe8) # 1c00465c <intc_handler+0x120>
1c004578:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00457c:	02aa318c 	addi.w	$r12,$r12,-1396(0xa8c)
1c004580:	2880018d 	ld.w	$r13,$r12,0
1c004584:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004588:	02aa718c 	addi.w	$r12,$r12,-1380(0xa9c)
1c00458c:	2880018c 	ld.w	$r12,$r12,0
1c004590:	6000358d 	blt	$r12,$r13,52(0x34) # 1c0045c4 <intc_handler+0x88>
1c004594:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004598:	02a9b18c 	addi.w	$r12,$r12,-1428(0xa6c)
1c00459c:	2880018c 	ld.w	$r12,$r12,0
1c0045a0:	44002580 	bnez	$r12,36(0x24) # 1c0045c4 <intc_handler+0x88>
1c0045a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045a8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0045ac:	57d09bff 	bl	-12136(0xfffd098) # 1c001644 <gpio_write_pin>
1c0045b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0045b4:	02a9418c 	addi.w	$r12,$r12,-1456(0xa50)
1c0045b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0045bc:	2980018d 	st.w	$r13,$r12,0
1c0045c0:	50004c00 	b	76(0x4c) # 1c00460c <intc_handler+0xd0>
1c0045c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0045c8:	02a9018c 	addi.w	$r12,$r12,-1472(0xa40)
1c0045cc:	2880018d 	ld.w	$r13,$r12,0
1c0045d0:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045d4:	02a9418c 	addi.w	$r12,$r12,-1456(0xa50)
1c0045d8:	2880018c 	ld.w	$r12,$r12,0
1c0045dc:	6400318d 	bge	$r12,$r13,48(0x30) # 1c00460c <intc_handler+0xd0>
1c0045e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0045e4:	02a8818c 	addi.w	$r12,$r12,-1504(0xa20)
1c0045e8:	2880018d 	ld.w	$r13,$r12,0
1c0045ec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0045f0:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c00460c <intc_handler+0xd0>
1c0045f4:	00150005 	move	$r5,$r0
1c0045f8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0045fc:	57d04bff 	bl	-12216(0xfffd048) # 1c001644 <gpio_write_pin>
1c004600:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004604:	02a8018c 	addi.w	$r12,$r12,-1536(0xa00)
1c004608:	29800180 	st.w	$r0,$r12,0
1c00460c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004610:	02a7e18c 	addi.w	$r12,$r12,-1544(0x9f8)
1c004614:	2880018c 	ld.w	$r12,$r12,0
1c004618:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00461c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004620:	02a7a18c 	addi.w	$r12,$r12,-1560(0x9e8)
1c004624:	2980018d 	st.w	$r13,$r12,0
1c004628:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00462c:	02a7718c 	addi.w	$r12,$r12,-1572(0x9dc)
1c004630:	2880018d 	ld.w	$r13,$r12,0
1c004634:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004638:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004648 <intc_handler+0x10c>
1c00463c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004640:	02a7218c 	addi.w	$r12,$r12,-1592(0x9c8)
1c004644:	29800180 	st.w	$r0,$r12,0
1c004648:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00464c:	57f1efff 	bl	-3604(0xffff1ec) # 1c003838 <TIM_ClearIT>
1c004650:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004654:	02807084 	addi.w	$r4,$r4,28(0x1c)
1c004658:	57d5a7ff 	bl	-10844(0xfffd5a4) # 1c001bfc <myprintf>
1c00465c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004660:	0340118c 	andi	$r12,$r12,0x4
1c004664:	40001580 	beqz	$r12,20(0x14) # 1c004678 <intc_handler+0x13c>
1c004668:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00466c:	03800d8c 	ori	$r12,$r12,0x3
1c004670:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004674:	2900018d 	st.b	$r13,$r12,0
1c004678:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00467c:	0340218c 	andi	$r12,$r12,0x8
1c004680:	40007d80 	beqz	$r12,124(0x7c) # 1c0046fc <intc_handler+0x1c0>
1c004684:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004688:	0380098c 	ori	$r12,$r12,0x2
1c00468c:	2a00018c 	ld.bu	$r12,$r12,0
1c004690:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004694:	0340118c 	andi	$r12,$r12,0x4
1c004698:	40005580 	beqz	$r12,84(0x54) # 1c0046ec <intc_handler+0x1b0>
1c00469c:	50003800 	b	56(0x38) # 1c0046d4 <intc_handler+0x198>
1c0046a0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0046a4:	57dd4bff 	bl	-8888(0xfffdd48) # 1c0023ec <UART_ReceiveData>
1c0046a8:	0015008c 	move	$r12,$r4
1c0046ac:	0015018d 	move	$r13,$r12
1c0046b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0046b4:	02a5618c 	addi.w	$r12,$r12,-1704(0x958)
1c0046b8:	2900018d 	st.b	$r13,$r12,0
1c0046bc:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0046c0:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c0046c4:	02a520a5 	addi.w	$r5,$r5,-1720(0x948)
1c0046c8:	1cc7ffa4 	pcaddu12i	$r4,409597(0x63ffd)
1c0046cc:	28a52084 	ld.w	$r4,$r4,-1720(0x948)
1c0046d0:	540f6000 	bl	3936(0xf60) # 1c005630 <Queue_Wirte>
1c0046d4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0046d8:	0380158c 	ori	$r12,$r12,0x5
1c0046dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0046e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0046e4:	0340058c 	andi	$r12,$r12,0x1
1c0046e8:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c0046a0 <intc_handler+0x164>
1c0046ec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0046f0:	03800d8c 	ori	$r12,$r12,0x3
1c0046f4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0046f8:	2900018d 	st.b	$r13,$r12,0
1c0046fc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004700:	03800d8c 	ori	$r12,$r12,0x3
1c004704:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004708:	2900018d 	st.b	$r13,$r12,0
1c00470c:	03400000 	andi	$r0,$r0,0x0
1c004710:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004714:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004718:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00471c:	4c000020 	jirl	$r0,$r1,0

1c004720 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004720:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004724:	29803061 	st.w	$r1,$r3,12(0xc)
1c004728:	29802076 	st.w	$r22,$r3,8(0x8)
1c00472c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004730:	57e48fff 	bl	-7028(0xfffe48c) # 1c002bbc <Set_Timer_clear>
1c004734:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004738:	02bd8084 	addi.w	$r4,$r4,-160(0xf60)
1c00473c:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c001bfc <myprintf>
1c004740:	57e45fff 	bl	-7076(0xfffe45c) # 1c002b9c <Set_Timer_stop>
1c004744:	03400000 	andi	$r0,$r0,0x0
1c004748:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00474c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004750:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004754:	4c000020 	jirl	$r0,$r1,0

1c004758 <IIC_Delay>:
IIC_Delay():
1c004758:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00475c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004760:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004764:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004768:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00476c:	50001000 	b	16(0x10) # 1c00477c <IIC_Delay+0x24>
1c004770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004774:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004778:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00477c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004780:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004770 <IIC_Delay+0x18>
1c004784:	03400000 	andi	$r0,$r0,0x0
1c004788:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00478c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004790:	4c000020 	jirl	$r0,$r1,0

1c004794 <IIC_Init>:
IIC_Init():
1c004794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00479c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a4:	00150005 	move	$r5,$r0
1c0047a8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047ac:	57cf13ff 	bl	-12528(0xfffcf10) # 1c0016bc <gpio_pin_remap>
1c0047b0:	00150005 	move	$r5,$r0
1c0047b4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0047b8:	57cf07ff 	bl	-12540(0xfffcf04) # 1c0016bc <gpio_pin_remap>
1c0047bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047c4:	57d107ff 	bl	-12028(0xfffd104) # 1c0018c8 <gpio_set_direction>
1c0047c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047cc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0047d0:	57d0fbff 	bl	-12040(0xfffd0f8) # 1c0018c8 <gpio_set_direction>
1c0047d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047d8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0047dc:	57ce6bff 	bl	-12696(0xfffce68) # 1c001644 <gpio_write_pin>
1c0047e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047e4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047e8:	57ce5fff 	bl	-12708(0xfffce5c) # 1c001644 <gpio_write_pin>
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047fc:	4c000020 	jirl	$r0,$r1,0

1c004800 <SDA_IN>:
SDA_IN():
1c004800:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004804:	29803061 	st.w	$r1,$r3,12(0xc)
1c004808:	29802076 	st.w	$r22,$r3,8(0x8)
1c00480c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004810:	00150005 	move	$r5,$r0
1c004814:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004818:	57d0b3ff 	bl	-12112(0xfffd0b0) # 1c0018c8 <gpio_set_direction>
1c00481c:	03400000 	andi	$r0,$r0,0x0
1c004820:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004824:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004828:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00482c:	4c000020 	jirl	$r0,$r1,0

1c004830 <SDA_OUT>:
SDA_OUT():
1c004830:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004834:	29803061 	st.w	$r1,$r3,12(0xc)
1c004838:	29802076 	st.w	$r22,$r3,8(0x8)
1c00483c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004840:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004844:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004848:	57d083ff 	bl	-12160(0xfffd080) # 1c0018c8 <gpio_set_direction>
1c00484c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004850:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004854:	57cdf3ff 	bl	-12816(0xfffcdf0) # 1c001644 <gpio_write_pin>
1c004858:	03400000 	andi	$r0,$r0,0x0
1c00485c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004860:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004864:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004868:	4c000020 	jirl	$r0,$r1,0

1c00486c <IIC_Start>:
IIC_Start():
1c00486c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004870:	29803061 	st.w	$r1,$r3,12(0xc)
1c004874:	29802076 	st.w	$r22,$r3,8(0x8)
1c004878:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00487c:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004830 <SDA_OUT>
1c004880:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004884:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004888:	57cdbfff 	bl	-12868(0xfffcdbc) # 1c001644 <gpio_write_pin>
1c00488c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004890:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004894:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c001644 <gpio_write_pin>
1c004898:	57fec3ff 	bl	-320(0xffffec0) # 1c004758 <IIC_Delay>
1c00489c:	00150005 	move	$r5,$r0
1c0048a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0048a4:	57cda3ff 	bl	-12896(0xfffcda0) # 1c001644 <gpio_write_pin>
1c0048a8:	57feb3ff 	bl	-336(0xffffeb0) # 1c004758 <IIC_Delay>
1c0048ac:	00150005 	move	$r5,$r0
1c0048b0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0048b4:	57cd93ff 	bl	-12912(0xfffcd90) # 1c001644 <gpio_write_pin>
1c0048b8:	03400000 	andi	$r0,$r0,0x0
1c0048bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048c8:	4c000020 	jirl	$r0,$r1,0

1c0048cc <IIC_Stop>:
IIC_Stop():
1c0048cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048dc:	57ff57ff 	bl	-172(0xfffff54) # 1c004830 <SDA_OUT>
1c0048e0:	00150005 	move	$r5,$r0
1c0048e4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0048e8:	57cd5fff 	bl	-12964(0xfffcd5c) # 1c001644 <gpio_write_pin>
1c0048ec:	00150005 	move	$r5,$r0
1c0048f0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0048f4:	57cd53ff 	bl	-12976(0xfffcd50) # 1c001644 <gpio_write_pin>
1c0048f8:	57fe63ff 	bl	-416(0xffffe60) # 1c004758 <IIC_Delay>
1c0048fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004900:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004904:	57cd43ff 	bl	-12992(0xfffcd40) # 1c001644 <gpio_write_pin>
1c004908:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00490c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004910:	57cd37ff 	bl	-13004(0xfffcd34) # 1c001644 <gpio_write_pin>
1c004914:	57fe47ff 	bl	-444(0xffffe44) # 1c004758 <IIC_Delay>
1c004918:	03400000 	andi	$r0,$r0,0x0
1c00491c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004920:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004924:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004928:	4c000020 	jirl	$r0,$r1,0

1c00492c <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c00492c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004930:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004934:	29806076 	st.w	$r22,$r3,24(0x18)
1c004938:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00493c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004940:	57fec3ff 	bl	-320(0xffffec0) # 1c004800 <SDA_IN>
1c004944:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004948:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00494c:	57ccfbff 	bl	-13064(0xfffccf8) # 1c001644 <gpio_write_pin>
1c004950:	57fe0bff 	bl	-504(0xffffe08) # 1c004758 <IIC_Delay>
1c004954:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004958:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00495c:	57ccebff 	bl	-13080(0xfffcce8) # 1c001644 <gpio_write_pin>
1c004960:	57fdfbff 	bl	-520(0xffffdf8) # 1c004758 <IIC_Delay>
1c004964:	50002800 	b	40(0x28) # 1c00498c <IIC_Wait_Ack+0x60>
1c004968:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00496c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004970:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004974:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004978:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c00497c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c00498c <IIC_Wait_Ack+0x60>
1c004980:	57ff4fff 	bl	-180(0xfffff4c) # 1c0048cc <IIC_Stop>
1c004984:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004988:	50002400 	b	36(0x24) # 1c0049ac <IIC_Wait_Ack+0x80>
1c00498c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004990:	57cc67ff 	bl	-13212(0xfffcc64) # 1c0015f4 <gpio_get_pin>
1c004994:	0015008c 	move	$r12,$r4
1c004998:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004968 <IIC_Wait_Ack+0x3c>
1c00499c:	00150005 	move	$r5,$r0
1c0049a0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0049a4:	57cca3ff 	bl	-13152(0xfffcca0) # 1c001644 <gpio_write_pin>
1c0049a8:	0015000c 	move	$r12,$r0
1c0049ac:	00150184 	move	$r4,$r12
1c0049b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049bc:	4c000020 	jirl	$r0,$r1,0

1c0049c0 <IIC_Send_Byte>:
IIC_Send_Byte():
1c0049c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0049c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0049c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0049cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0049d0:	0015008c 	move	$r12,$r4
1c0049d4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0049d8:	57fe5bff 	bl	-424(0xffffe58) # 1c004830 <SDA_OUT>
1c0049dc:	00150005 	move	$r5,$r0
1c0049e0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0049e4:	57cc63ff 	bl	-13216(0xfffcc60) # 1c001644 <gpio_write_pin>
1c0049e8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0049ec:	50006000 	b	96(0x60) # 1c004a4c <IIC_Send_Byte+0x8c>
1c0049f0:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c0049f4:	64001580 	bge	$r12,$r0,20(0x14) # 1c004a08 <IIC_Send_Byte+0x48>
1c0049f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049fc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004a00:	57cc47ff 	bl	-13244(0xfffcc44) # 1c001644 <gpio_write_pin>
1c004a04:	50001000 	b	16(0x10) # 1c004a14 <IIC_Send_Byte+0x54>
1c004a08:	00150005 	move	$r5,$r0
1c004a0c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004a10:	57cc37ff 	bl	-13260(0xfffcc34) # 1c001644 <gpio_write_pin>
1c004a14:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004a18:	0040858c 	slli.w	$r12,$r12,0x1
1c004a1c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004a20:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a24:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004a28:	57cc1fff 	bl	-13284(0xfffcc1c) # 1c001644 <gpio_write_pin>
1c004a2c:	57fd2fff 	bl	-724(0xffffd2c) # 1c004758 <IIC_Delay>
1c004a30:	00150005 	move	$r5,$r0
1c004a34:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004a38:	57cc0fff 	bl	-13300(0xfffcc0c) # 1c001644 <gpio_write_pin>
1c004a3c:	57fd1fff 	bl	-740(0xffffd1c) # 1c004758 <IIC_Delay>
1c004a40:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004a44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004a4c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004a50:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004a54:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c0049f0 <IIC_Send_Byte+0x30>
1c004a58:	03400000 	andi	$r0,$r0,0x0
1c004a5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004a60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004a64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004a68:	4c000020 	jirl	$r0,$r1,0

1c004a6c <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c004a6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a70:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a74:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a7c:	57fd1bff 	bl	-744(0xffffd18) # 1c004794 <IIC_Init>
1c004a80:	03400000 	andi	$r0,$r0,0x0
1c004a84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a90:	4c000020 	jirl	$r0,$r1,0

1c004a94 <OLED_WR_Byte>:
OLED_WR_Byte():
1c004a94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004aa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004aa4:	0015008c 	move	$r12,$r4
1c004aa8:	001500ad 	move	$r13,$r5
1c004aac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ab0:	001501ac 	move	$r12,$r13
1c004ab4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004ab8:	57fdb7ff 	bl	-588(0xffffdb4) # 1c00486c <IIC_Start>
1c004abc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c004ac0:	57ff03ff 	bl	-256(0xfffff00) # 1c0049c0 <IIC_Send_Byte>
1c004ac4:	57fe6bff 	bl	-408(0xffffe68) # 1c00492c <IIC_Wait_Ack>
1c004ac8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004acc:	00150184 	move	$r4,$r12
1c004ad0:	57fef3ff 	bl	-272(0xffffef0) # 1c0049c0 <IIC_Send_Byte>
1c004ad4:	57fe5bff 	bl	-424(0xffffe58) # 1c00492c <IIC_Wait_Ack>
1c004ad8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004adc:	00150184 	move	$r4,$r12
1c004ae0:	57fee3ff 	bl	-288(0xffffee0) # 1c0049c0 <IIC_Send_Byte>
1c004ae4:	57fe4bff 	bl	-440(0xffffe48) # 1c00492c <IIC_Wait_Ack>
1c004ae8:	57fde7ff 	bl	-540(0xffffde4) # 1c0048cc <IIC_Stop>
1c004aec:	03400000 	andi	$r0,$r0,0x0
1c004af0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004af4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004af8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004afc:	4c000020 	jirl	$r0,$r1,0

1c004b00 <OLED_Set_Pos>:
OLED_Set_Pos():
1c004b00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b08:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b10:	0015008c 	move	$r12,$r4
1c004b14:	001500ad 	move	$r13,$r5
1c004b18:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b1c:	001501ac 	move	$r12,$r13
1c004b20:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004b24:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004b28:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c004b2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b30:	00150005 	move	$r5,$r0
1c004b34:	00150184 	move	$r4,$r12
1c004b38:	57ff5fff 	bl	-164(0xfffff5c) # 1c004a94 <OLED_WR_Byte>
1c004b3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b40:	0044918c 	srli.w	$r12,$r12,0x4
1c004b44:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b48:	0380418c 	ori	$r12,$r12,0x10
1c004b4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b50:	00150005 	move	$r5,$r0
1c004b54:	00150184 	move	$r4,$r12
1c004b58:	57ff3fff 	bl	-196(0xfffff3c) # 1c004a94 <OLED_WR_Byte>
1c004b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b60:	03403d8c 	andi	$r12,$r12,0xf
1c004b64:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b68:	00150005 	move	$r5,$r0
1c004b6c:	00150184 	move	$r4,$r12
1c004b70:	57ff27ff 	bl	-220(0xfffff24) # 1c004a94 <OLED_WR_Byte>
1c004b74:	03400000 	andi	$r0,$r0,0x0
1c004b78:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b7c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b80:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b84:	4c000020 	jirl	$r0,$r1,0

1c004b88 <OLED_Clear>:
OLED_Clear():
1c004b88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b90:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b98:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004b9c:	50006800 	b	104(0x68) # 1c004c04 <OLED_Clear+0x7c>
1c004ba0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ba4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c004ba8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bac:	00150005 	move	$r5,$r0
1c004bb0:	00150184 	move	$r4,$r12
1c004bb4:	57fee3ff 	bl	-288(0xffffee0) # 1c004a94 <OLED_WR_Byte>
1c004bb8:	00150005 	move	$r5,$r0
1c004bbc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004bc0:	57fed7ff 	bl	-300(0xffffed4) # 1c004a94 <OLED_WR_Byte>
1c004bc4:	00150005 	move	$r5,$r0
1c004bc8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004bcc:	57fecbff 	bl	-312(0xffffec8) # 1c004a94 <OLED_WR_Byte>
1c004bd0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004bd4:	50001c00 	b	28(0x1c) # 1c004bf0 <OLED_Clear+0x68>
1c004bd8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004bdc:	00150004 	move	$r4,$r0
1c004be0:	57feb7ff 	bl	-332(0xffffeb4) # 1c004a94 <OLED_WR_Byte>
1c004be4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004be8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004bec:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004bf0:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c004bf4:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c004bd8 <OLED_Clear+0x50>
1c004bf8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004bfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c04:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004c08:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004c0c:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c004ba0 <OLED_Clear+0x18>
1c004c10:	03400000 	andi	$r0,$r0,0x0
1c004c14:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c18:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c20:	4c000020 	jirl	$r0,$r1,0

1c004c24 <OLED_Init>:
OLED_Init():
1c004c24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c28:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c34:	57fe3bff 	bl	-456(0xffffe38) # 1c004a6c <OLED_Hardware_Init>
1c004c38:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004c3c:	57e32bff 	bl	-7384(0xfffe328) # 1c002f64 <delay_ms>
1c004c40:	57ff4bff 	bl	-184(0xfffff48) # 1c004b88 <OLED_Clear>
1c004c44:	00150005 	move	$r5,$r0
1c004c48:	00150004 	move	$r4,$r0
1c004c4c:	57feb7ff 	bl	-332(0xffffeb4) # 1c004b00 <OLED_Set_Pos>
1c004c50:	00150005 	move	$r5,$r0
1c004c54:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c004c58:	57fe3fff 	bl	-452(0xffffe3c) # 1c004a94 <OLED_WR_Byte>
1c004c5c:	00150005 	move	$r5,$r0
1c004c60:	00150004 	move	$r4,$r0
1c004c64:	57fe33ff 	bl	-464(0xffffe30) # 1c004a94 <OLED_WR_Byte>
1c004c68:	00150005 	move	$r5,$r0
1c004c6c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004c70:	57fe27ff 	bl	-476(0xffffe24) # 1c004a94 <OLED_WR_Byte>
1c004c74:	00150005 	move	$r5,$r0
1c004c78:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004c7c:	57fe1bff 	bl	-488(0xffffe18) # 1c004a94 <OLED_WR_Byte>
1c004c80:	00150005 	move	$r5,$r0
1c004c84:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004c88:	57fe0fff 	bl	-500(0xffffe0c) # 1c004a94 <OLED_WR_Byte>
1c004c8c:	00150005 	move	$r5,$r0
1c004c90:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c004c94:	57fe03ff 	bl	-512(0xffffe00) # 1c004a94 <OLED_WR_Byte>
1c004c98:	00150005 	move	$r5,$r0
1c004c9c:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c004ca0:	57fdf7ff 	bl	-524(0xffffdf4) # 1c004a94 <OLED_WR_Byte>
1c004ca4:	00150005 	move	$r5,$r0
1c004ca8:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c004cac:	57fdebff 	bl	-536(0xffffde8) # 1c004a94 <OLED_WR_Byte>
1c004cb0:	00150005 	move	$r5,$r0
1c004cb4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004cb8:	57fddfff 	bl	-548(0xffffddc) # 1c004a94 <OLED_WR_Byte>
1c004cbc:	00150005 	move	$r5,$r0
1c004cc0:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c004cc4:	57fdd3ff 	bl	-560(0xffffdd0) # 1c004a94 <OLED_WR_Byte>
1c004cc8:	00150005 	move	$r5,$r0
1c004ccc:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c004cd0:	57fdc7ff 	bl	-572(0xffffdc4) # 1c004a94 <OLED_WR_Byte>
1c004cd4:	00150005 	move	$r5,$r0
1c004cd8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004cdc:	57fdbbff 	bl	-584(0xffffdb8) # 1c004a94 <OLED_WR_Byte>
1c004ce0:	00150005 	move	$r5,$r0
1c004ce4:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c004ce8:	57fdafff 	bl	-596(0xffffdac) # 1c004a94 <OLED_WR_Byte>
1c004cec:	00150005 	move	$r5,$r0
1c004cf0:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c004cf4:	57fda3ff 	bl	-608(0xffffda0) # 1c004a94 <OLED_WR_Byte>
1c004cf8:	00150005 	move	$r5,$r0
1c004cfc:	00150004 	move	$r4,$r0
1c004d00:	57fd97ff 	bl	-620(0xffffd94) # 1c004a94 <OLED_WR_Byte>
1c004d04:	00150005 	move	$r5,$r0
1c004d08:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c004d0c:	57fd8bff 	bl	-632(0xffffd88) # 1c004a94 <OLED_WR_Byte>
1c004d10:	00150005 	move	$r5,$r0
1c004d14:	02820004 	addi.w	$r4,$r0,128(0x80)
1c004d18:	57fd7fff 	bl	-644(0xffffd7c) # 1c004a94 <OLED_WR_Byte>
1c004d1c:	00150005 	move	$r5,$r0
1c004d20:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c004d24:	57fd73ff 	bl	-656(0xffffd70) # 1c004a94 <OLED_WR_Byte>
1c004d28:	00150005 	move	$r5,$r0
1c004d2c:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c004d30:	57fd67ff 	bl	-668(0xffffd64) # 1c004a94 <OLED_WR_Byte>
1c004d34:	00150005 	move	$r5,$r0
1c004d38:	02836804 	addi.w	$r4,$r0,218(0xda)
1c004d3c:	57fd5bff 	bl	-680(0xffffd58) # 1c004a94 <OLED_WR_Byte>
1c004d40:	00150005 	move	$r5,$r0
1c004d44:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004d48:	57fd4fff 	bl	-692(0xffffd4c) # 1c004a94 <OLED_WR_Byte>
1c004d4c:	00150005 	move	$r5,$r0
1c004d50:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c004d54:	57fd43ff 	bl	-704(0xffffd40) # 1c004a94 <OLED_WR_Byte>
1c004d58:	00150005 	move	$r5,$r0
1c004d5c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004d60:	57fd37ff 	bl	-716(0xffffd34) # 1c004a94 <OLED_WR_Byte>
1c004d64:	00150005 	move	$r5,$r0
1c004d68:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004d6c:	57fd2bff 	bl	-728(0xffffd28) # 1c004a94 <OLED_WR_Byte>
1c004d70:	00150005 	move	$r5,$r0
1c004d74:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004d78:	57fd1fff 	bl	-740(0xffffd1c) # 1c004a94 <OLED_WR_Byte>
1c004d7c:	00150005 	move	$r5,$r0
1c004d80:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c004d84:	57fd13ff 	bl	-752(0xffffd10) # 1c004a94 <OLED_WR_Byte>
1c004d88:	00150005 	move	$r5,$r0
1c004d8c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004d90:	57fd07ff 	bl	-764(0xffffd04) # 1c004a94 <OLED_WR_Byte>
1c004d94:	00150005 	move	$r5,$r0
1c004d98:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c004d9c:	57fcfbff 	bl	-776(0xffffcf8) # 1c004a94 <OLED_WR_Byte>
1c004da0:	00150005 	move	$r5,$r0
1c004da4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004da8:	57fcefff 	bl	-788(0xffffcec) # 1c004a94 <OLED_WR_Byte>
1c004dac:	00150005 	move	$r5,$r0
1c004db0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004db4:	57fce3ff 	bl	-800(0xffffce0) # 1c004a94 <OLED_WR_Byte>
1c004db8:	00150005 	move	$r5,$r0
1c004dbc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004dc0:	57fcd7ff 	bl	-812(0xffffcd4) # 1c004a94 <OLED_WR_Byte>
1c004dc4:	57fdc7ff 	bl	-572(0xffffdc4) # 1c004b88 <OLED_Clear>
1c004dc8:	00150005 	move	$r5,$r0
1c004dcc:	00150004 	move	$r4,$r0
1c004dd0:	57fd33ff 	bl	-720(0xffffd30) # 1c004b00 <OLED_Set_Pos>
1c004dd4:	03400000 	andi	$r0,$r0,0x0
1c004dd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ddc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004de0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004de4:	4c000020 	jirl	$r0,$r1,0

1c004de8 <OLED_ShowChar>:
OLED_ShowChar():
1c004de8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004dec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004df0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004df4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004df8:	0015008c 	move	$r12,$r4
1c004dfc:	001500af 	move	$r15,$r5
1c004e00:	001500ce 	move	$r14,$r6
1c004e04:	001500ed 	move	$r13,$r7
1c004e08:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004e0c:	001501ec 	move	$r12,$r15
1c004e10:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c004e14:	001501cc 	move	$r12,$r14
1c004e18:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c004e1c:	001501ac 	move	$r12,$r13
1c004e20:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c004e24:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e28:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004e2c:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c004e30:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004e34:	58000dac 	beq	$r13,$r12,12(0xc) # 1c004e40 <OLED_ShowChar+0x58>
1c004e38:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004e3c:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c004e40:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c004e44:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004e48:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c004e4c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e50:	50009800 	b	152(0x98) # 1c004ee8 <OLED_ShowChar+0x100>
1c004e54:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c004e58:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004e5c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c004e60:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e68:	001031ac 	add.w	$r12,$r13,$r12
1c004e6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e70:	00150185 	move	$r5,$r12
1c004e74:	001501c4 	move	$r4,$r14
1c004e78:	57fc8bff 	bl	-888(0xffffc88) # 1c004b00 <OLED_Set_Pos>
1c004e7c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004e80:	50004800 	b	72(0x48) # 1c004ec8 <OLED_ShowChar+0xe0>
1c004e84:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c004e88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e8c:	00408d8e 	slli.w	$r14,$r12,0x3
1c004e90:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004e94:	001031cc 	add.w	$r12,$r14,$r12
1c004e98:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c004e9c:	02af81ce 	addi.w	$r14,$r14,-1056(0xbe0)
1c004ea0:	004091ad 	slli.w	$r13,$r13,0x4
1c004ea4:	001035cd 	add.w	$r13,$r14,$r13
1c004ea8:	001031ac 	add.w	$r12,$r13,$r12
1c004eac:	2a00018c 	ld.bu	$r12,$r12,0
1c004eb0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004eb4:	00150184 	move	$r4,$r12
1c004eb8:	57fbdfff 	bl	-1060(0xffffbdc) # 1c004a94 <OLED_WR_Byte>
1c004ebc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ec4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004ec8:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c004ecc:	0044858c 	srli.w	$r12,$r12,0x1
1c004ed0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ed4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c004ed8:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c004e84 <OLED_ShowChar+0x9c>
1c004edc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ee0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ee4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ee8:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c004eec:	00448d8c 	srli.w	$r12,$r12,0x3
1c004ef0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ef4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004ef8:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c004e54 <OLED_ShowChar+0x6c>
1c004efc:	03400000 	andi	$r0,$r0,0x0
1c004f00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f0c:	4c000020 	jirl	$r0,$r1,0

1c004f10 <OLED_DrawFont16>:
OLED_DrawFont16():
1c004f10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004f14:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004f18:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004f1c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004f20:	0015008c 	move	$r12,$r4
1c004f24:	001500ad 	move	$r13,$r5
1c004f28:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c004f2c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004f30:	001501ac 	move	$r12,$r13
1c004f34:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c004f38:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004f3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004f40:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004f44:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c004f48:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004f4c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c004f50:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004f54:	50013800 	b	312(0x138) # 1c00508c <OLED_DrawFont16+0x17c>
1c004f58:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004f5c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004f60:	028431ad 	addi.w	$r13,$r13,268(0x10c)
1c004f64:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004f68:	001c31cc 	mul.w	$r12,$r14,$r12
1c004f6c:	001031ac 	add.w	$r12,$r13,$r12
1c004f70:	2a00018d 	ld.bu	$r13,$r12,0
1c004f74:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004f78:	2a00018c 	ld.bu	$r12,$r12,0
1c004f7c:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c005080 <OLED_DrawFont16+0x170>
1c004f80:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004f84:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004f88:	028391ad 	addi.w	$r13,$r13,228(0xe4)
1c004f8c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004f90:	001c31cc 	mul.w	$r12,$r14,$r12
1c004f94:	001031ac 	add.w	$r12,$r13,$r12
1c004f98:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c004f9c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004fa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fa4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fa8:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c005080 <OLED_DrawFont16+0x170>
1c004fac:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c004fb0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004fb4:	0282e1ad 	addi.w	$r13,$r13,184(0xb8)
1c004fb8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c004fbc:	001c31cc 	mul.w	$r12,$r14,$r12
1c004fc0:	001031ac 	add.w	$r12,$r13,$r12
1c004fc4:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c004fc8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004fcc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004fd0:	2a00018c 	ld.bu	$r12,$r12,0
1c004fd4:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005080 <OLED_DrawFont16+0x170>
1c004fd8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004fdc:	50009400 	b	148(0x94) # 1c005070 <OLED_DrawFont16+0x160>
1c004fe0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c004fe4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004fe8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c004fec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004ff0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004ff4:	001031ac 	add.w	$r12,$r13,$r12
1c004ff8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ffc:	00150185 	move	$r5,$r12
1c005000:	001501c4 	move	$r4,$r14
1c005004:	57faffff 	bl	-1284(0xffffafc) # 1c004b00 <OLED_Set_Pos>
1c005008:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00500c:	50004c00 	b	76(0x4c) # 1c005058 <OLED_DrawFont16+0x148>
1c005010:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005014:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005018:	0040918d 	slli.w	$r13,$r12,0x4
1c00501c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005020:	001031ad 	add.w	$r13,$r13,$r12
1c005024:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005028:	028111ce 	addi.w	$r14,$r14,68(0x44)
1c00502c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005030:	001c31ec 	mul.w	$r12,$r15,$r12
1c005034:	001031cc 	add.w	$r12,$r14,$r12
1c005038:	0010358c 	add.w	$r12,$r12,$r13
1c00503c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005040:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005044:	00150184 	move	$r4,$r12
1c005048:	57fa4fff 	bl	-1460(0xffffa4c) # 1c004a94 <OLED_WR_Byte>
1c00504c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005050:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005054:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005058:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00505c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005060:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005010 <OLED_DrawFont16+0x100>
1c005064:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005068:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00506c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005070:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005074:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005078:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c004fe0 <OLED_DrawFont16+0xd0>
1c00507c:	50001c00 	b	28(0x1c) # 1c005098 <OLED_DrawFont16+0x188>
1c005080:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005088:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00508c:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005090:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005094:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c004f58 <OLED_DrawFont16+0x48>
1c005098:	03400000 	andi	$r0,$r0,0x0
1c00509c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0050a0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0050a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0050a8:	4c000020 	jirl	$r0,$r1,0

1c0050ac <OLED_DrawFont32>:
OLED_DrawFont32():
1c0050ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0050b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0050b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0050b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0050bc:	0015008c 	move	$r12,$r4
1c0050c0:	001500ad 	move	$r13,$r5
1c0050c4:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0050c8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0050cc:	001501ac 	move	$r12,$r13
1c0050d0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0050d4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0050d8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0050dc:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0050e0:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0050e4:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0050e8:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0050ec:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0050f0:	50014400 	b	324(0x144) # 1c005234 <OLED_DrawFont32+0x188>
1c0050f4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0050f8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0050fc:	02bdc1ad 	addi.w	$r13,$r13,-144(0xf70)
1c005100:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005104:	001c31cc 	mul.w	$r12,$r14,$r12
1c005108:	001031ac 	add.w	$r12,$r13,$r12
1c00510c:	2a00018c 	ld.bu	$r12,$r12,0
1c005110:	0015018d 	move	$r13,$r12
1c005114:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005118:	2800018c 	ld.b	$r12,$r12,0
1c00511c:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005228 <OLED_DrawFont32+0x17c>
1c005120:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005124:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005128:	02bd11ad 	addi.w	$r13,$r13,-188(0xf44)
1c00512c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005130:	001c31cc 	mul.w	$r12,$r14,$r12
1c005134:	001031ac 	add.w	$r12,$r13,$r12
1c005138:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00513c:	0015018d 	move	$r13,$r12
1c005140:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005144:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005148:	2800018c 	ld.b	$r12,$r12,0
1c00514c:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005228 <OLED_DrawFont32+0x17c>
1c005150:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005154:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005158:	02bc51ad 	addi.w	$r13,$r13,-236(0xf14)
1c00515c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005160:	001c31cc 	mul.w	$r12,$r14,$r12
1c005164:	001031ac 	add.w	$r12,$r13,$r12
1c005168:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00516c:	0015018d 	move	$r13,$r12
1c005170:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005174:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005178:	2800018c 	ld.b	$r12,$r12,0
1c00517c:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005228 <OLED_DrawFont32+0x17c>
1c005180:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005184:	50009400 	b	148(0x94) # 1c005218 <OLED_DrawFont32+0x16c>
1c005188:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00518c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005190:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005194:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005198:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00519c:	001031ac 	add.w	$r12,$r13,$r12
1c0051a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051a4:	00150185 	move	$r5,$r12
1c0051a8:	001501c4 	move	$r4,$r14
1c0051ac:	57f957ff 	bl	-1708(0xffff954) # 1c004b00 <OLED_Set_Pos>
1c0051b0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0051b4:	50004c00 	b	76(0x4c) # 1c005200 <OLED_DrawFont32+0x154>
1c0051b8:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0051bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0051c0:	0040958d 	slli.w	$r13,$r12,0x5
1c0051c4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051c8:	001031ad 	add.w	$r13,$r13,$r12
1c0051cc:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0051d0:	02bed1ce 	addi.w	$r14,$r14,-76(0xfb4)
1c0051d4:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0051d8:	001c31ec 	mul.w	$r12,$r15,$r12
1c0051dc:	001031cc 	add.w	$r12,$r14,$r12
1c0051e0:	0010358c 	add.w	$r12,$r12,$r13
1c0051e4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0051e8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0051ec:	00150184 	move	$r4,$r12
1c0051f0:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c004a94 <OLED_WR_Byte>
1c0051f4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0051fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005200:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005204:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005208:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0051b8 <OLED_DrawFont32+0x10c>
1c00520c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005210:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005214:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005218:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00521c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005220:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005188 <OLED_DrawFont32+0xdc>
1c005224:	50001c00 	b	28(0x1c) # 1c005240 <OLED_DrawFont32+0x194>
1c005228:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00522c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005230:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005234:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005238:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c00523c:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c0050f4 <OLED_DrawFont32+0x48>
1c005240:	03400000 	andi	$r0,$r0,0x0
1c005244:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005248:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00524c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005250:	4c000020 	jirl	$r0,$r1,0

1c005254 <OLED_Show_Str>:
OLED_Show_Str():
1c005254:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005258:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00525c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005260:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005264:	0015008c 	move	$r12,$r4
1c005268:	001500ae 	move	$r14,$r5
1c00526c:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005270:	001500ed 	move	$r13,$r7
1c005274:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005278:	001501cc 	move	$r12,$r14
1c00527c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005280:	001501ac 	move	$r12,$r13
1c005284:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005288:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00528c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005290:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005294:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005298:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00529c:	580209ac 	beq	$r13,$r12,520(0x208) # 1c0054a4 <OLED_Show_Str+0x250>
1c0052a0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0052a4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0052a8:	5001fc00 	b	508(0x1fc) # 1c0054a4 <OLED_Show_Str+0x250>
1c0052ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052b0:	44012580 	bnez	$r12,292(0x124) # 1c0053d4 <OLED_Show_Str+0x180>
1c0052b4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0052b8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0052bc:	0044858c 	srli.w	$r12,$r12,0x1
1c0052c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052c4:	0015018e 	move	$r14,$r12
1c0052c8:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0052cc:	0011398c 	sub.w	$r12,$r12,$r14
1c0052d0:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c0052fc <OLED_Show_Str+0xa8>
1c0052d4:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c0052d8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0052dc:	00448d8c 	srli.w	$r12,$r12,0x3
1c0052e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052e4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0052e8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0052ec:	001031ac 	add.w	$r12,$r13,$r12
1c0052f0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0052f4:	03401d8c 	andi	$r12,$r12,0x7
1c0052f8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0052fc:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005300:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005304:	00448d8c 	srli.w	$r12,$r12,0x3
1c005308:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00530c:	0015018e 	move	$r14,$r12
1c005310:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005314:	0011398c 	sub.w	$r12,$r12,$r14
1c005318:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005320 <OLED_Show_Str+0xcc>
1c00531c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005320:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005324:	2800018c 	ld.b	$r12,$r12,0
1c005328:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00532c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005330:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005340 <OLED_Show_Str+0xec>
1c005334:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005338:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00533c:	50016800 	b	360(0x168) # 1c0054a4 <OLED_Show_Str+0x250>
1c005340:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005344:	2800018d 	ld.b	$r13,$r12,0
1c005348:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00534c:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c00537c <OLED_Show_Str+0x128>
1c005350:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005354:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005358:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00535c:	001031ac 	add.w	$r12,$r13,$r12
1c005360:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005364:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005368:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00536c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005370:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005374:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005378:	50004c00 	b	76(0x4c) # 1c0053c4 <OLED_Show_Str+0x170>
1c00537c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005380:	2800018c 	ld.b	$r12,$r12,0
1c005384:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005388:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c00538c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005390:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005394:	001501e7 	move	$r7,$r15
1c005398:	001501c6 	move	$r6,$r14
1c00539c:	001501a5 	move	$r5,$r13
1c0053a0:	00150184 	move	$r4,$r12
1c0053a4:	57fa47ff 	bl	-1468(0xffffa44) # 1c004de8 <OLED_ShowChar>
1c0053a8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0053ac:	0044858c 	srli.w	$r12,$r12,0x1
1c0053b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0053b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053b8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0053bc:	001031ac 	add.w	$r12,$r13,$r12
1c0053c0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0053c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0053c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053cc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0053d0:	5000d400 	b	212(0xd4) # 1c0054a4 <OLED_Show_Str+0x250>
1c0053d4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0053d8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0053dc:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c0053e0:	001131cc 	sub.w	$r12,$r14,$r12
1c0053e4:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005410 <OLED_Show_Str+0x1bc>
1c0053e8:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c0053ec:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0053f0:	00448d8c 	srli.w	$r12,$r12,0x3
1c0053f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0053f8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0053fc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005400:	001031ac 	add.w	$r12,$r13,$r12
1c005404:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005408:	03401d8c 	andi	$r12,$r12,0x7
1c00540c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005410:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005414:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005418:	00448d8c 	srli.w	$r12,$r12,0x3
1c00541c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005420:	0015018e 	move	$r14,$r12
1c005424:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005428:	0011398c 	sub.w	$r12,$r12,$r14
1c00542c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005434 <OLED_Show_Str+0x1e0>
1c005430:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005434:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005438:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c00543c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005440:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005460 <OLED_Show_Str+0x20c>
1c005444:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005448:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00544c:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005450:	001501a5 	move	$r5,$r13
1c005454:	00150184 	move	$r4,$r12
1c005458:	57fc57ff 	bl	-940(0xffffc54) # 1c0050ac <OLED_DrawFont32>
1c00545c:	50002800 	b	40(0x28) # 1c005484 <OLED_Show_Str+0x230>
1c005460:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005464:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005468:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005484 <OLED_Show_Str+0x230>
1c00546c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005470:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005474:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005478:	001501a5 	move	$r5,$r13
1c00547c:	00150184 	move	$r4,$r12
1c005480:	57fa93ff 	bl	-1392(0xffffa90) # 1c004f10 <OLED_DrawFont16>
1c005484:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005488:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c00548c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005490:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005494:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005498:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00549c:	001031ac 	add.w	$r12,$r13,$r12
1c0054a0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0054a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0054a8:	2800018c 	ld.b	$r12,$r12,0
1c0054ac:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c0052ac <OLED_Show_Str+0x58>
1c0054b0:	03400000 	andi	$r0,$r0,0x0
1c0054b4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0054b8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0054bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0054c0:	4c000020 	jirl	$r0,$r1,0

1c0054c4 <Queue_Init>:
Queue_Init():
1c0054c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0054d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054dc:	44000d80 	bnez	$r12,12(0xc) # 1c0054e8 <Queue_Init+0x24>
1c0054e0:	0015000c 	move	$r12,$r0
1c0054e4:	50001800 	b	24(0x18) # 1c0054fc <Queue_Init+0x38>
1c0054e8:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c0054ec:	00150005 	move	$r5,$r0
1c0054f0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0054f4:	57dab3ff 	bl	-9552(0xfffdab0) # 1c002fa4 <memset>
1c0054f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0054fc:	00150184 	move	$r4,$r12
1c005500:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005504:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005508:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00550c:	4c000020 	jirl	$r0,$r1,0

1c005510 <Queue_isEmpty>:
Queue_isEmpty():
1c005510:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005514:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005518:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00551c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005520:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005524:	44000d80 	bnez	$r12,12(0xc) # 1c005530 <Queue_isEmpty+0x20>
1c005528:	0015000c 	move	$r12,$r0
1c00552c:	50002400 	b	36(0x24) # 1c005550 <Queue_isEmpty+0x40>
1c005530:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005534:	2a40018d 	ld.hu	$r13,$r12,0
1c005538:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00553c:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005540:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00554c <Queue_isEmpty+0x3c>
1c005544:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005548:	50000800 	b	8(0x8) # 1c005550 <Queue_isEmpty+0x40>
1c00554c:	0015000c 	move	$r12,$r0
1c005550:	00150184 	move	$r4,$r12
1c005554:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005558:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00555c:	4c000020 	jirl	$r0,$r1,0

1c005560 <Queue_HadUse>:
Queue_HadUse():
1c005560:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005564:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005568:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00556c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005570:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005574:	44000d80 	bnez	$r12,12(0xc) # 1c005580 <Queue_HadUse+0x20>
1c005578:	0015000c 	move	$r12,$r0
1c00557c:	50003800 	b	56(0x38) # 1c0055b4 <Queue_HadUse+0x54>
1c005580:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005584:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c005588:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00558c:	2a40018c 	ld.hu	$r12,$r12,0
1c005590:	001131ac 	sub.w	$r12,$r13,$r12
1c005594:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005598:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c00559c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0055a0:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0055a4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0055a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055b0 <Queue_HadUse+0x50>
1c0055ac:	002a0007 	break	0x7
1c0055b0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0055b4:	00150184 	move	$r4,$r12
1c0055b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0055bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055c0:	4c000020 	jirl	$r0,$r1,0

1c0055c4 <Queue_NoUse>:
Queue_NoUse():
1c0055c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0055cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055d0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0055d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055d8:	44000d80 	bnez	$r12,12(0xc) # 1c0055e4 <Queue_NoUse+0x20>
1c0055dc:	0015000c 	move	$r12,$r0
1c0055e0:	50004000 	b	64(0x40) # 1c005620 <Queue_NoUse+0x5c>
1c0055e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055e8:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0055ec:	0015018d 	move	$r13,$r12
1c0055f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055f4:	2a40018c 	ld.hu	$r12,$r12,0
1c0055f8:	001131ac 	sub.w	$r12,$r13,$r12
1c0055fc:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005600:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005604:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005608:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005610 <Queue_NoUse+0x4c>
1c00560c:	002a0007 	break	0x7
1c005610:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005614:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005618:	001131ac 	sub.w	$r12,$r13,$r12
1c00561c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005620:	00150184 	move	$r4,$r12
1c005624:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005628:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00562c:	4c000020 	jirl	$r0,$r1,0

1c005630 <Queue_Wirte>:
Queue_Wirte():
1c005630:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005634:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005638:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00563c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005640:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005644:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005648:	001500cc 	move	$r12,$r6
1c00564c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005650:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005654:	44000d80 	bnez	$r12,12(0xc) # 1c005660 <Queue_Wirte+0x30>
1c005658:	0015000c 	move	$r12,$r0
1c00565c:	50009c00 	b	156(0x9c) # 1c0056f8 <Queue_Wirte+0xc8>
1c005660:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005664:	57ff63ff 	bl	-160(0xfffff60) # 1c0055c4 <Queue_NoUse>
1c005668:	0015008c 	move	$r12,$r4
1c00566c:	0015018d 	move	$r13,$r12
1c005670:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005674:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005680 <Queue_Wirte+0x50>
1c005678:	0015000c 	move	$r12,$r0
1c00567c:	50007c00 	b	124(0x7c) # 1c0056f8 <Queue_Wirte+0xc8>
1c005680:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005684:	50006400 	b	100(0x64) # 1c0056e8 <Queue_Wirte+0xb8>
1c005688:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00568c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005690:	001031ac 	add.w	$r12,$r13,$r12
1c005694:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005698:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c00569c:	001501ae 	move	$r14,$r13
1c0056a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0056a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0056a8:	0010398c 	add.w	$r12,$r12,$r14
1c0056ac:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0056b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0056b4:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0056b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056c0:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0056c4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0056c8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0056d0 <Queue_Wirte+0xa0>
1c0056cc:	002a0007 	break	0x7
1c0056d0:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0056d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0056d8:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0056dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0056e8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0056ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0056f0:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005688 <Queue_Wirte+0x58>
1c0056f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056f8:	00150184 	move	$r4,$r12
1c0056fc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005700:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005704:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005708:	4c000020 	jirl	$r0,$r1,0

1c00570c <Queue_Read>:
Queue_Read():
1c00570c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005710:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005714:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005718:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00571c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005720:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005724:	001500cc 	move	$r12,$r6
1c005728:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00572c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005730:	44000d80 	bnez	$r12,12(0xc) # 1c00573c <Queue_Read+0x30>
1c005734:	0015000c 	move	$r12,$r0
1c005738:	50009c00 	b	156(0x9c) # 1c0057d4 <Queue_Read+0xc8>
1c00573c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005740:	57fe23ff 	bl	-480(0xffffe20) # 1c005560 <Queue_HadUse>
1c005744:	0015008c 	move	$r12,$r4
1c005748:	0015018d 	move	$r13,$r12
1c00574c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005750:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00575c <Queue_Read+0x50>
1c005754:	0015000c 	move	$r12,$r0
1c005758:	50007c00 	b	124(0x7c) # 1c0057d4 <Queue_Read+0xc8>
1c00575c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005760:	50006400 	b	100(0x64) # 1c0057c4 <Queue_Read+0xb8>
1c005764:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005768:	2a40018c 	ld.hu	$r12,$r12,0
1c00576c:	0015018e 	move	$r14,$r12
1c005770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005774:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005778:	001031ac 	add.w	$r12,$r13,$r12
1c00577c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005780:	001039ad 	add.w	$r13,$r13,$r14
1c005784:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005788:	2900018d 	st.b	$r13,$r12,0
1c00578c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005790:	2a40018c 	ld.hu	$r12,$r12,0
1c005794:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005798:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00579c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0057a0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0057a4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0057ac <Queue_Read+0xa0>
1c0057a8:	002a0007 	break	0x7
1c0057ac:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0057b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057b4:	2940018d 	st.h	$r13,$r12,0
1c0057b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0057c4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0057c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0057cc:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005764 <Queue_Read+0x58>
1c0057d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0057d4:	00150184 	move	$r4,$r12
1c0057d8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0057dc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0057e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0057e4:	4c000020 	jirl	$r0,$r1,0

1c0057e8 <LED_On>:
LED_On():
1c0057e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0057ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0057f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0057f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0057f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0057fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005800:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005804:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005808:	00150184 	move	$r4,$r12
1c00580c:	57be3bff 	bl	-16840(0xfffbe38) # 1c001644 <gpio_write_pin>
1c005810:	03400000 	andi	$r0,$r0,0x0
1c005814:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005818:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00581c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005820:	4c000020 	jirl	$r0,$r1,0

1c005824 <LED_Off>:
LED_Off():
1c005824:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005828:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00582c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005830:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005834:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00583c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005840:	00150005 	move	$r5,$r0
1c005844:	00150184 	move	$r4,$r12
1c005848:	57bdffff 	bl	-16900(0xfffbdfc) # 1c001644 <gpio_write_pin>
1c00584c:	03400000 	andi	$r0,$r0,0x0
1c005850:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005854:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005858:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00585c:	4c000020 	jirl	$r0,$r1,0

1c005860 <Beep_On>:
Beep_On():
1c005860:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005864:	29803061 	st.w	$r1,$r3,12(0xc)
1c005868:	29802076 	st.w	$r22,$r3,8(0x8)
1c00586c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005870:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005874:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005878:	57bdcfff 	bl	-16948(0xfffbdcc) # 1c001644 <gpio_write_pin>
1c00587c:	03400000 	andi	$r0,$r0,0x0
1c005880:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005884:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005888:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00588c:	4c000020 	jirl	$r0,$r1,0

1c005890 <Beep_Off>:
Beep_Off():
1c005890:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005894:	29803061 	st.w	$r1,$r3,12(0xc)
1c005898:	29802076 	st.w	$r22,$r3,8(0x8)
1c00589c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058a0:	00150005 	move	$r5,$r0
1c0058a4:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0058a8:	57bd9fff 	bl	-16996(0xfffbd9c) # 1c001644 <gpio_write_pin>
1c0058ac:	03400000 	andi	$r0,$r0,0x0
1c0058b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0058b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0058b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0058bc:	4c000020 	jirl	$r0,$r1,0

1c0058c0 <KEY_Check>:
KEY_Check():
1c0058c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0058c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058d0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0058d4:	57bd23ff 	bl	-17120(0xfffbd20) # 1c0015f4 <gpio_get_pin>
1c0058d8:	0015008c 	move	$r12,$r4
1c0058dc:	44001d80 	bnez	$r12,28(0x1c) # 1c0058f8 <KEY_Check+0x38>
1c0058e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0058e4:	029ca98c 	addi.w	$r12,$r12,1834(0x72a)
1c0058e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0058ec:	2900018d 	st.b	$r13,$r12,0
1c0058f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058f4:	50008800 	b	136(0x88) # 1c00597c <KEY_Check+0xbc>
1c0058f8:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c0058fc:	57bcfbff 	bl	-17160(0xfffbcf8) # 1c0015f4 <gpio_get_pin>
1c005900:	0015008c 	move	$r12,$r4
1c005904:	44001d80 	bnez	$r12,28(0x1c) # 1c005920 <KEY_Check+0x60>
1c005908:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00590c:	029c098c 	addi.w	$r12,$r12,1794(0x702)
1c005910:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005914:	2900018d 	st.b	$r13,$r12,0
1c005918:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00591c:	50006000 	b	96(0x60) # 1c00597c <KEY_Check+0xbc>
1c005920:	02806004 	addi.w	$r4,$r0,24(0x18)
1c005924:	57bcd3ff 	bl	-17200(0xfffbcd0) # 1c0015f4 <gpio_get_pin>
1c005928:	0015008c 	move	$r12,$r4
1c00592c:	44001d80 	bnez	$r12,28(0x1c) # 1c005948 <KEY_Check+0x88>
1c005930:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005934:	029b698c 	addi.w	$r12,$r12,1754(0x6da)
1c005938:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00593c:	2900018d 	st.b	$r13,$r12,0
1c005940:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005944:	50003800 	b	56(0x38) # 1c00597c <KEY_Check+0xbc>
1c005948:	02806404 	addi.w	$r4,$r0,25(0x19)
1c00594c:	57bcabff 	bl	-17240(0xfffbca8) # 1c0015f4 <gpio_get_pin>
1c005950:	0015008c 	move	$r12,$r4
1c005954:	44001d80 	bnez	$r12,28(0x1c) # 1c005970 <KEY_Check+0xb0>
1c005958:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00595c:	029ac98c 	addi.w	$r12,$r12,1714(0x6b2)
1c005960:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005964:	2900018d 	st.b	$r13,$r12,0
1c005968:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00596c:	50001000 	b	16(0x10) # 1c00597c <KEY_Check+0xbc>
1c005970:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005974:	029a698c 	addi.w	$r12,$r12,1690(0x69a)
1c005978:	2a00018c 	ld.bu	$r12,$r12,0
1c00597c:	00150184 	move	$r4,$r12
1c005980:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005984:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005988:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00598c:	4c000020 	jirl	$r0,$r1,0

1c005990 <Danger_waring>:
Danger_waring():
1c005990:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005994:	29803061 	st.w	$r1,$r3,12(0xc)
1c005998:	29802076 	st.w	$r22,$r3,8(0x8)
1c00599c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0059a0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0059a4:	57bc53ff 	bl	-17328(0xfffbc50) # 1c0015f4 <gpio_get_pin>
1c0059a8:	0015008c 	move	$r12,$r4
1c0059ac:	0015018d 	move	$r13,$r12
1c0059b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059b4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0059dc <Danger_waring+0x4c>
1c0059b8:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c0059bc:	57fe2fff 	bl	-468(0xffffe2c) # 1c0057e8 <LED_On>
1c0059c0:	57fea3ff 	bl	-352(0xffffea0) # 1c005860 <Beep_On>
1c0059c4:	02896004 	addi.w	$r4,$r0,600(0x258)
1c0059c8:	57d59fff 	bl	-10852(0xfffd59c) # 1c002f64 <delay_ms>
1c0059cc:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c0059d0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0059d4:	57c9cfff 	bl	-13876(0xfffc9cc) # 1c0023a0 <UART_SendData>
1c0059d8:	50001c00 	b	28(0x1c) # 1c0059f4 <Danger_waring+0x64>
1c0059dc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0059e0:	57bc17ff 	bl	-17388(0xfffbc14) # 1c0015f4 <gpio_get_pin>
1c0059e4:	0015008c 	move	$r12,$r4
1c0059e8:	44000d80 	bnez	$r12,12(0xc) # 1c0059f4 <Danger_waring+0x64>
1c0059ec:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c0059f0:	57fe37ff 	bl	-460(0xffffe34) # 1c005824 <LED_Off>
1c0059f4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0059f8:	57bbffff 	bl	-17412(0xfffbbfc) # 1c0015f4 <gpio_get_pin>
1c0059fc:	0015008c 	move	$r12,$r4
1c005a00:	0015018d 	move	$r13,$r12
1c005a04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a08:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005a28 <Danger_waring+0x98>
1c005a0c:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c005a10:	57fddbff 	bl	-552(0xffffdd8) # 1c0057e8 <LED_On>
1c005a14:	57fe4fff 	bl	-436(0xffffe4c) # 1c005860 <Beep_On>
1c005a18:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c005a1c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005a20:	57c983ff 	bl	-13952(0xfffc980) # 1c0023a0 <UART_SendData>
1c005a24:	50001c00 	b	28(0x1c) # 1c005a40 <Danger_waring+0xb0>
1c005a28:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005a2c:	57bbcbff 	bl	-17464(0xfffbbc8) # 1c0015f4 <gpio_get_pin>
1c005a30:	0015008c 	move	$r12,$r4
1c005a34:	44000d80 	bnez	$r12,12(0xc) # 1c005a40 <Danger_waring+0xb0>
1c005a38:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c005a3c:	57fdebff 	bl	-536(0xffffde8) # 1c005824 <LED_Off>
1c005a40:	02809004 	addi.w	$r4,$r0,36(0x24)
1c005a44:	57bbb3ff 	bl	-17488(0xfffbbb0) # 1c0015f4 <gpio_get_pin>
1c005a48:	0015008c 	move	$r12,$r4
1c005a4c:	0015018d 	move	$r13,$r12
1c005a50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a54:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005a74 <Danger_waring+0xe4>
1c005a58:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c005a5c:	57fd8fff 	bl	-628(0xffffd8c) # 1c0057e8 <LED_On>
1c005a60:	57fe03ff 	bl	-512(0xffffe00) # 1c005860 <Beep_On>
1c005a64:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c005a68:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005a6c:	57c937ff 	bl	-14028(0xfffc934) # 1c0023a0 <UART_SendData>
1c005a70:	50001c00 	b	28(0x1c) # 1c005a8c <Danger_waring+0xfc>
1c005a74:	02809004 	addi.w	$r4,$r0,36(0x24)
1c005a78:	57bb7fff 	bl	-17540(0xfffbb7c) # 1c0015f4 <gpio_get_pin>
1c005a7c:	0015008c 	move	$r12,$r4
1c005a80:	44000d80 	bnez	$r12,12(0xc) # 1c005a8c <Danger_waring+0xfc>
1c005a84:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c005a88:	57fd9fff 	bl	-612(0xffffd9c) # 1c005824 <LED_Off>
1c005a8c:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005a90:	57bb67ff 	bl	-17564(0xfffbb64) # 1c0015f4 <gpio_get_pin>
1c005a94:	0015008c 	move	$r12,$r4
1c005a98:	44003580 	bnez	$r12,52(0x34) # 1c005acc <Danger_waring+0x13c>
1c005a9c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005aa0:	57bb57ff 	bl	-17580(0xfffbb54) # 1c0015f4 <gpio_get_pin>
1c005aa4:	0015008c 	move	$r12,$r4
1c005aa8:	44002580 	bnez	$r12,36(0x24) # 1c005acc <Danger_waring+0x13c>
1c005aac:	02809004 	addi.w	$r4,$r0,36(0x24)
1c005ab0:	57bb47ff 	bl	-17596(0xfffbb44) # 1c0015f4 <gpio_get_pin>
1c005ab4:	0015008c 	move	$r12,$r4
1c005ab8:	44001580 	bnez	$r12,20(0x14) # 1c005acc <Danger_waring+0x13c>
1c005abc:	57fdd7ff 	bl	-556(0xffffdd4) # 1c005890 <Beep_Off>
1c005ac0:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c005ac4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005ac8:	57c8dbff 	bl	-14120(0xfffc8d8) # 1c0023a0 <UART_SendData>
1c005acc:	03400000 	andi	$r0,$r0,0x0
1c005ad0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ad4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005ad8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005adc:	4c000020 	jirl	$r0,$r1,0

1c005ae0 <main>:
main():
1c005ae0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c005ae4:	29817061 	st.w	$r1,$r3,92(0x5c)
1c005ae8:	29816076 	st.w	$r22,$r3,88(0x58)
1c005aec:	02818076 	addi.w	$r22,$r3,96(0x60)
1c005af0:	29beb2c4 	st.w	$r4,$r22,-84(0xfac)
1c005af4:	29bea2c5 	st.w	$r5,$r22,-88(0xfa8)
1c005af8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005afc:	57dc9fff 	bl	-9060(0xfffdc9c) # 1c003798 <timer_init>
1c005b00:	57b82fff 	bl	-18388(0xfffb82c) # 1c00132c <GPIOInit>
1c005b04:	57ec93ff 	bl	-4976(0xfffec90) # 1c004794 <IIC_Init>
1c005b08:	57f11fff 	bl	-3812(0xffff11c) # 1c004c24 <OLED_Init>
1c005b0c:	57d06fff 	bl	-12180(0xfffd06c) # 1c002b78 <EnableInt>
1c005b10:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005b14:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005b18:	0282a0c6 	addi.w	$r6,$r6,168(0xa8)
1c005b1c:	00150005 	move	$r5,$r0
1c005b20:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b24:	57f733ff 	bl	-2256(0xffff730) # 1c005254 <OLED_Show_Str>
1c005b28:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005b2c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005b30:	028280c6 	addi.w	$r6,$r6,160(0xa0)
1c005b34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c005b38:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b3c:	57f71bff 	bl	-2280(0xffff718) # 1c005254 <OLED_Show_Str>
1c005b40:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005b44:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005b48:	028260c6 	addi.w	$r6,$r6,152(0x98)
1c005b4c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005b50:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b54:	57f703ff 	bl	-2304(0xffff700) # 1c005254 <OLED_Show_Str>
1c005b58:	5403fc00 	bl	1020(0x3fc) # 1c005f54 <Motor_Init>
1c005b5c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005b60:	2892d084 	ld.w	$r4,$r4,1204(0x4b4)
1c005b64:	57f963ff 	bl	-1696(0xffff960) # 1c0054c4 <Queue_Init>
1c005b68:	1400038c 	lu12i.w	$r12,28(0x1c)
1c005b6c:	03880184 	ori	$r4,$r12,0x200
1c005b70:	57c8cbff 	bl	-14136(0xfffc8c8) # 1c002438 <Uart0_init>
1c005b74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b78:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005b7c:	57bd4fff 	bl	-17076(0xfffbd4c) # 1c0018c8 <gpio_set_direction>
1c005b80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b84:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005b88:	57bd43ff 	bl	-17088(0xfffbd40) # 1c0018c8 <gpio_set_direction>
1c005b8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b90:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005b94:	57bd37ff 	bl	-17100(0xfffbd34) # 1c0018c8 <gpio_set_direction>
1c005b98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005b9c:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c005ba0:	57bd2bff 	bl	-17112(0xfffbd28) # 1c0018c8 <gpio_set_direction>
1c005ba4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005ba8:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c005bac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005bb0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005bb4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c005bb8:	00150184 	move	$r4,$r12
1c005bbc:	57b9d3ff 	bl	-17968(0xfffb9d0) # 1c00158c <GPIO_Init>
1c005bc0:	0280e00c 	addi.w	$r12,$r0,56(0x38)
1c005bc4:	293f62cc 	st.b	$r12,$r22,-40(0xfd8)
1c005bc8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005bcc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005bd0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005bd4:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c005bd8:	00150184 	move	$r4,$r12
1c005bdc:	57b9b3ff 	bl	-18000(0xfffb9b0) # 1c00158c <GPIO_Init>
1c005be0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005be4:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c005be8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005bec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005bf0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c005bf4:	00150184 	move	$r4,$r12
1c005bf8:	57b997ff 	bl	-18028(0xfffb994) # 1c00158c <GPIO_Init>
1c005bfc:	0280900c 	addi.w	$r12,$r0,36(0x24)
1c005c00:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c005c04:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c08:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005c0c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c005c10:	00150184 	move	$r4,$r12
1c005c14:	57b97bff 	bl	-18056(0xfffb978) # 1c00158c <GPIO_Init>
1c005c18:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c005c1c:	293f62cc 	st.b	$r12,$r22,-40(0xfd8)
1c005c20:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005c24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c28:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005c2c:	02bed2cc 	addi.w	$r12,$r22,-76(0xfb4)
1c005c30:	00150184 	move	$r4,$r12
1c005c34:	57b95bff 	bl	-18088(0xfffb958) # 1c00158c <GPIO_Init>
1c005c38:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c3c:	288f6084 	ld.w	$r4,$r4,984(0x3d8)
1c005c40:	57f8d3ff 	bl	-1840(0xffff8d0) # 1c005510 <Queue_isEmpty>
1c005c44:	0015008c 	move	$r12,$r4
1c005c48:	44014180 	bnez	$r12,320(0x140) # 1c005d88 <main+0x2a8>
1c005c4c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c50:	288f1084 	ld.w	$r4,$r4,964(0x3c4)
1c005c54:	57f90fff 	bl	-1780(0xffff90c) # 1c005560 <Queue_HadUse>
1c005c58:	0015008c 	move	$r12,$r4
1c005c5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005c60:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c64:	288ea18c 	ld.w	$r12,$r12,936(0x3a8)
1c005c68:	2900018d 	st.b	$r13,$r12,0
1c005c6c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005c70:	00150005 	move	$r5,$r0
1c005c74:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c78:	288e9084 	ld.w	$r4,$r4,932(0x3a4)
1c005c7c:	57d32bff 	bl	-11480(0xfffd328) # 1c002fa4 <memset>
1c005c80:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c84:	288e218c 	ld.w	$r12,$r12,904(0x388)
1c005c88:	2a00018c 	ld.bu	$r12,$r12,0
1c005c8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c90:	00150186 	move	$r6,$r12
1c005c94:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005c98:	288e10a5 	ld.w	$r5,$r5,900(0x384)
1c005c9c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005ca0:	288dd084 	ld.w	$r4,$r4,884(0x374)
1c005ca4:	57fa6bff 	bl	-1432(0xffffa68) # 1c00570c <Queue_Read>
1c005ca8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cac:	288d818c 	ld.w	$r12,$r12,864(0x360)
1c005cb0:	2a00018c 	ld.bu	$r12,$r12,0
1c005cb4:	0015018d 	move	$r13,$r12
1c005cb8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cbc:	288d818c 	ld.w	$r12,$r12,864(0x360)
1c005cc0:	0010358c 	add.w	$r12,$r12,$r13
1c005cc4:	29000180 	st.b	$r0,$r12,0
1c005cc8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005ccc:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005cd0:	02bc80a5 	addi.w	$r5,$r5,-224(0xf20)
1c005cd4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cd8:	288d1084 	ld.w	$r4,$r4,836(0x344)
1c005cdc:	57d32bff 	bl	-11480(0xfffd328) # 1c003004 <strncmp>
1c005ce0:	0015008c 	move	$r12,$r4
1c005ce4:	44001580 	bnez	$r12,20(0x14) # 1c005cf8 <main+0x218>
1c005ce8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cec:	028cf18c 	addi.w	$r12,$r12,828(0x33c)
1c005cf0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005cf4:	2980018d 	st.w	$r13,$r12,0
1c005cf8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005cfc:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005d00:	02bbd0a5 	addi.w	$r5,$r5,-268(0xef4)
1c005d04:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d08:	288c5084 	ld.w	$r4,$r4,788(0x314)
1c005d0c:	57d2fbff 	bl	-11528(0xfffd2f8) # 1c003004 <strncmp>
1c005d10:	0015008c 	move	$r12,$r4
1c005d14:	44001580 	bnez	$r12,20(0x14) # 1c005d28 <main+0x248>
1c005d18:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d1c:	028c318c 	addi.w	$r12,$r12,780(0x30c)
1c005d20:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005d24:	2980018d 	st.w	$r13,$r12,0
1c005d28:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005d2c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005d30:	02bb20a5 	addi.w	$r5,$r5,-312(0xec8)
1c005d34:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d38:	288b9084 	ld.w	$r4,$r4,740(0x2e4)
1c005d3c:	57d2cbff 	bl	-11576(0xfffd2c8) # 1c003004 <strncmp>
1c005d40:	0015008c 	move	$r12,$r4
1c005d44:	44001580 	bnez	$r12,20(0x14) # 1c005d58 <main+0x278>
1c005d48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d4c:	028b718c 	addi.w	$r12,$r12,732(0x2dc)
1c005d50:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005d54:	2980018d 	st.w	$r13,$r12,0
1c005d58:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005d5c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005d60:	02ba70a5 	addi.w	$r5,$r5,-356(0xe9c)
1c005d64:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d68:	288ad084 	ld.w	$r4,$r4,692(0x2b4)
1c005d6c:	57d29bff 	bl	-11624(0xfffd298) # 1c003004 <strncmp>
1c005d70:	0015008c 	move	$r12,$r4
1c005d74:	44001580 	bnez	$r12,20(0x14) # 1c005d88 <main+0x2a8>
1c005d78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d7c:	028ab18c 	addi.w	$r12,$r12,684(0x2ac)
1c005d80:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d84:	2980018d 	st.w	$r13,$r12,0
1c005d88:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005d8c:	57d1dbff 	bl	-11816(0xfffd1d8) # 1c002f64 <delay_ms>
1c005d90:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005d94:	57b863ff 	bl	-18336(0xfffb860) # 1c0015f4 <gpio_get_pin>
1c005d98:	0015008c 	move	$r12,$r4
1c005d9c:	0015018d 	move	$r13,$r12
1c005da0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005da4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005dbc <main+0x2dc>
1c005da8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dac:	0289f18c 	addi.w	$r12,$r12,636(0x27c)
1c005db0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005db4:	2980018d 	st.w	$r13,$r12,0
1c005db8:	50008400 	b	132(0x84) # 1c005e3c <main+0x35c>
1c005dbc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005dc0:	57b837ff 	bl	-18380(0xfffb834) # 1c0015f4 <gpio_get_pin>
1c005dc4:	0015008c 	move	$r12,$r4
1c005dc8:	0015018d 	move	$r13,$r12
1c005dcc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005dd0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005de8 <main+0x308>
1c005dd4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dd8:	0289418c 	addi.w	$r12,$r12,592(0x250)
1c005ddc:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005de0:	2980018d 	st.w	$r13,$r12,0
1c005de4:	50005800 	b	88(0x58) # 1c005e3c <main+0x35c>
1c005de8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c005dec:	57b80bff 	bl	-18424(0xfffb808) # 1c0015f4 <gpio_get_pin>
1c005df0:	0015008c 	move	$r12,$r4
1c005df4:	0015018d 	move	$r13,$r12
1c005df8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005dfc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e14 <main+0x334>
1c005e00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e04:	0288918c 	addi.w	$r12,$r12,548(0x224)
1c005e08:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e0c:	2980018d 	st.w	$r13,$r12,0
1c005e10:	50002c00 	b	44(0x2c) # 1c005e3c <main+0x35c>
1c005e14:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005e18:	57b7dfff 	bl	-18468(0xfffb7dc) # 1c0015f4 <gpio_get_pin>
1c005e1c:	0015008c 	move	$r12,$r4
1c005e20:	0015018d 	move	$r13,$r12
1c005e24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e28:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005e3c <main+0x35c>
1c005e2c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e30:	0287e18c 	addi.w	$r12,$r12,504(0x1f8)
1c005e34:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005e38:	2980018d 	st.w	$r13,$r12,0
1c005e3c:	57fa87ff 	bl	-1404(0xffffa84) # 1c0058c0 <KEY_Check>
1c005e40:	0015008c 	move	$r12,$r4
1c005e44:	0015018d 	move	$r13,$r12
1c005e48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e4c:	0287058c 	addi.w	$r12,$r12,449(0x1c1)
1c005e50:	2900018d 	st.b	$r13,$r12,0
1c005e54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e58:	0286d58c 	addi.w	$r12,$r12,437(0x1b5)
1c005e5c:	2a00018c 	ld.bu	$r12,$r12,0
1c005e60:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e64:	5800418d 	beq	$r12,$r13,64(0x40) # 1c005ea4 <main+0x3c4>
1c005e68:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e6c:	600011ac 	blt	$r13,$r12,16(0x10) # 1c005e7c <main+0x39c>
1c005e70:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005e74:	58001d8d 	beq	$r12,$r13,28(0x1c) # 1c005e90 <main+0x3b0>
1c005e78:	50006800 	b	104(0x68) # 1c005ee0 <main+0x400>
1c005e7c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005e80:	5800398d 	beq	$r12,$r13,56(0x38) # 1c005eb8 <main+0x3d8>
1c005e84:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005e88:	5800458d 	beq	$r12,$r13,68(0x44) # 1c005ecc <main+0x3ec>
1c005e8c:	50005400 	b	84(0x54) # 1c005ee0 <main+0x400>
1c005e90:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e94:	0286518c 	addi.w	$r12,$r12,404(0x194)
1c005e98:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005e9c:	2980018d 	st.w	$r13,$r12,0
1c005ea0:	50004000 	b	64(0x40) # 1c005ee0 <main+0x400>
1c005ea4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ea8:	0286018c 	addi.w	$r12,$r12,384(0x180)
1c005eac:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005eb0:	2980018d 	st.w	$r13,$r12,0
1c005eb4:	50002c00 	b	44(0x2c) # 1c005ee0 <main+0x400>
1c005eb8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ebc:	0285b18c 	addi.w	$r12,$r12,364(0x16c)
1c005ec0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005ec4:	2980018d 	st.w	$r13,$r12,0
1c005ec8:	50001800 	b	24(0x18) # 1c005ee0 <main+0x400>
1c005ecc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ed0:	0285618c 	addi.w	$r12,$r12,344(0x158)
1c005ed4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005ed8:	2980018d 	st.w	$r13,$r12,0
1c005edc:	03400000 	andi	$r0,$r0,0x0
1c005ee0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ee4:	0285118c 	addi.w	$r12,$r12,324(0x144)
1c005ee8:	2880018c 	ld.w	$r12,$r12,0
1c005eec:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005ef0:	5800398d 	beq	$r12,$r13,56(0x38) # 1c005f28 <main+0x448>
1c005ef4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005ef8:	600011ac 	blt	$r13,$r12,16(0x10) # 1c005f08 <main+0x428>
1c005efc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f00:	58001d8d 	beq	$r12,$r13,28(0x1c) # 1c005f1c <main+0x43c>
1c005f04:	50004800 	b	72(0x48) # 1c005f4c <main+0x46c>
1c005f08:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005f0c:	5800298d 	beq	$r12,$r13,40(0x28) # 1c005f34 <main+0x454>
1c005f10:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005f14:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c005f40 <main+0x460>
1c005f18:	50003400 	b	52(0x34) # 1c005f4c <main+0x46c>
1c005f1c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005f20:	54007000 	bl	112(0x70) # 1c005f90 <motor_setspeed>
1c005f24:	50002800 	b	40(0x28) # 1c005f4c <main+0x46c>
1c005f28:	02801804 	addi.w	$r4,$r0,6(0x6)
1c005f2c:	54006400 	bl	100(0x64) # 1c005f90 <motor_setspeed>
1c005f30:	50001c00 	b	28(0x1c) # 1c005f4c <main+0x46c>
1c005f34:	02802004 	addi.w	$r4,$r0,8(0x8)
1c005f38:	54005800 	bl	88(0x58) # 1c005f90 <motor_setspeed>
1c005f3c:	50001000 	b	16(0x10) # 1c005f4c <main+0x46c>
1c005f40:	00150004 	move	$r4,$r0
1c005f44:	54004c00 	bl	76(0x4c) # 1c005f90 <motor_setspeed>
1c005f48:	03400000 	andi	$r0,$r0,0x0
1c005f4c:	57fa47ff 	bl	-1468(0xffffa44) # 1c005990 <Danger_waring>
1c005f50:	53fcebff 	b	-792(0xffffce8) # 1c005c38 <main+0x158>

1c005f54 <Motor_Init>:
Motor_Init():
1c005f54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f58:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f68:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c005f6c:	57b95fff 	bl	-18084(0xfffb95c) # 1c0018c8 <gpio_set_direction>
1c005f70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f74:	02809804 	addi.w	$r4,$r0,38(0x26)
1c005f78:	57b953ff 	bl	-18096(0xfffb950) # 1c0018c8 <gpio_set_direction>
1c005f7c:	03400000 	andi	$r0,$r0,0x0
1c005f80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005f84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f8c:	4c000020 	jirl	$r0,$r1,0

1c005f90 <motor_setspeed>:
motor_setspeed():
1c005f90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005f94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005f98:	29806076 	st.w	$r22,$r3,24(0x18)
1c005f9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005fa0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fa8:	60002d80 	blt	$r12,$r0,44(0x2c) # 1c005fd4 <motor_setspeed+0x44>
1c005fac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005fb0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c005fb4:	57b693ff 	bl	-18800(0xfffb690) # 1c001644 <gpio_write_pin>
1c005fb8:	00150005 	move	$r5,$r0
1c005fbc:	02809804 	addi.w	$r4,$r0,38(0x26)
1c005fc0:	57b687ff 	bl	-18812(0xfffb684) # 1c001644 <gpio_write_pin>
1c005fc4:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c005fc8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005fcc:	57e4fbff 	bl	-6920(0xfffe4f8) # 1c0044c4 <TIM_SetCompare1>
1c005fd0:	50003000 	b	48(0x30) # 1c006000 <motor_setspeed+0x70>
1c005fd4:	00150005 	move	$r5,$r0
1c005fd8:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c005fdc:	57b66bff 	bl	-18840(0xfffb668) # 1c001644 <gpio_write_pin>
1c005fe0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005fe4:	02809804 	addi.w	$r4,$r0,38(0x26)
1c005fe8:	57b65fff 	bl	-18852(0xfffb65c) # 1c001644 <gpio_write_pin>
1c005fec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ff0:	0011300c 	sub.w	$r12,$r0,$r12
1c005ff4:	00150185 	move	$r5,$r12
1c005ff8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005ffc:	57e4cbff 	bl	-6968(0xfffe4c8) # 1c0044c4 <TIM_SetCompare1>
1c006000:	03400000 	andi	$r0,$r0,0x0
1c006004:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006008:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00600c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006010:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006020 <msg_wakeup>:
msg_wakeup():
1c006020:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01cb80 <_sidata+0x14f84>
1c006024:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006029 <hexdecarr>:
hexdecarr():
1c006029:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00602d:	37363534 	0x37363534
1c006031:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfec169 <_start-0x13e97>
1c006035:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec599 <_start-0x13a67>
1c006039:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00603d:	79654b0a 	0x79654b0a
1c006041:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006045:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006049:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00604d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01d0bd <_sidata+0x154c1>
1c006051:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffcfb1 <_start-0x304f>
1c006055:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006059:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffcfbd <_start-0x3043>
1c00605d:	72616220 	0x72616220
1c006061:	0a0d216b 	0x0a0d216b
1c006065:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006069:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffc1dd <_start-0x3e23>
1c00606d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006071:	1c000a0d 	pcaddu12i	$r13,80(0x50)
1c006075:	381c001e 	stx.d	$r30,$r0,$r0
1c006079:	381c001f 	stx.d	$r31,$r0,$r0
1c00607d:	381c001f 	stx.d	$r31,$r0,$r0
1c006081:	381c001f 	stx.d	$r31,$r0,$r0
1c006085:	381c001f 	stx.d	$r31,$r0,$r0
1c006089:	381c001f 	stx.d	$r31,$r0,$r0
1c00608d:	381c001f 	stx.d	$r31,$r0,$r0
1c006091:	381c001f 	stx.d	$r31,$r0,$r0
1c006095:	381c001f 	stx.d	$r31,$r0,$r0
1c006099:	381c001f 	stx.d	$r31,$r0,$r0
1c00609d:	341c001f 	0x341c001f
1c0060a1:	bc1c001e 	0xbc1c001e
1c0060a5:	bc1c001e 	0xbc1c001e
1c0060a9:	bc1c001e 	0xbc1c001e
1c0060ad:	bc1c001e 	0xbc1c001e
1c0060b1:	bc1c001e 	0xbc1c001e
1c0060b5:	bc1c001e 	0xbc1c001e
1c0060b9:	bc1c001e 	0xbc1c001e
1c0060bd:	bc1c001e 	0xbc1c001e
1c0060c1:	bc1c001e 	0xbc1c001e
1c0060c5:	381c001e 	stx.d	$r30,$r0,$r0
1c0060c9:	381c001f 	stx.d	$r31,$r0,$r0
1c0060cd:	381c001f 	stx.d	$r31,$r0,$r0
1c0060d1:	381c001f 	stx.d	$r31,$r0,$r0
1c0060d5:	381c001f 	stx.d	$r31,$r0,$r0
1c0060d9:	381c001f 	stx.d	$r31,$r0,$r0
1c0060dd:	381c001f 	stx.d	$r31,$r0,$r0
1c0060e1:	381c001f 	stx.d	$r31,$r0,$r0
1c0060e5:	381c001f 	stx.d	$r31,$r0,$r0
1c0060e9:	381c001f 	stx.d	$r31,$r0,$r0
1c0060ed:	381c001f 	stx.d	$r31,$r0,$r0
1c0060f1:	381c001f 	stx.d	$r31,$r0,$r0
1c0060f5:	381c001f 	stx.d	$r31,$r0,$r0
1c0060f9:	381c001f 	stx.d	$r31,$r0,$r0
1c0060fd:	381c001f 	stx.d	$r31,$r0,$r0
1c006101:	381c001f 	stx.d	$r31,$r0,$r0
1c006105:	381c001f 	stx.d	$r31,$r0,$r0
1c006109:	381c001f 	stx.d	$r31,$r0,$r0
1c00610d:	381c001f 	stx.d	$r31,$r0,$r0
1c006111:	381c001f 	stx.d	$r31,$r0,$r0
1c006115:	381c001f 	stx.d	$r31,$r0,$r0
1c006119:	381c001f 	stx.d	$r31,$r0,$r0
1c00611d:	381c001f 	stx.d	$r31,$r0,$r0
1c006121:	381c001f 	stx.d	$r31,$r0,$r0
1c006125:	381c001f 	stx.d	$r31,$r0,$r0
1c006129:	381c001f 	stx.d	$r31,$r0,$r0
1c00612d:	381c001f 	stx.d	$r31,$r0,$r0
1c006131:	381c001f 	stx.d	$r31,$r0,$r0
1c006135:	381c001f 	stx.d	$r31,$r0,$r0
1c006139:	381c001f 	stx.d	$r31,$r0,$r0
1c00613d:	381c001f 	stx.d	$r31,$r0,$r0
1c006141:	381c001f 	stx.d	$r31,$r0,$r0
1c006145:	381c001f 	stx.d	$r31,$r0,$r0
1c006149:	381c001f 	stx.d	$r31,$r0,$r0
1c00614d:	381c001f 	stx.d	$r31,$r0,$r0
1c006151:	381c001f 	stx.d	$r31,$r0,$r0
1c006155:	381c001f 	stx.d	$r31,$r0,$r0
1c006159:	381c001f 	stx.d	$r31,$r0,$r0
1c00615d:	381c001f 	stx.d	$r31,$r0,$r0
1c006161:	381c001f 	stx.d	$r31,$r0,$r0
1c006165:	ac1c001f 	0xac1c001f
1c006169:	d41c001d 	0xd41c001d
1c00616d:	3c1c001c 	0x3c1c001c
1c006171:	381c001d 	stx.d	$r29,$r0,$r0
1c006175:	381c001f 	stx.d	$r31,$r0,$r0
1c006179:	381c001f 	stx.d	$r31,$r0,$r0
1c00617d:	381c001f 	stx.d	$r31,$r0,$r0
1c006181:	381c001f 	stx.d	$r31,$r0,$r0
1c006185:	381c001f 	stx.d	$r31,$r0,$r0
1c006189:	381c001f 	stx.d	$r31,$r0,$r0
1c00618d:	381c001f 	stx.d	$r31,$r0,$r0
1c006191:	381c001f 	stx.d	$r31,$r0,$r0
1c006195:	381c001f 	stx.d	$r31,$r0,$r0
1c006199:	741c001f 	0x741c001f
1c00619d:	e41c001d 	0xe41c001d
1c0061a1:	381c001d 	stx.d	$r29,$r0,$r0
1c0061a5:	381c001f 	stx.d	$r31,$r0,$r0
1c0061a9:	a81c001f 	0xa81c001f
1c0061ad:	381c001c 	stx.d	$r28,$r0,$r0
1c0061b1:	041c001f 	csrrd	$r31,0x700
1c0061b5:	381c001d 	stx.d	$r29,$r0,$r0
1c0061b9:	381c001f 	stx.d	$r31,$r0,$r0
1c0061bd:	e41c001f 	0xe41c001f
1c0061c1:	0a1c001d 	xvfmadd.s	$xr29,$xr0,$xr0,$xr24
1c0061c5:	7c000000 	0x7c000000
1c0061c9:	7c7c7c7c 	0x7c7c7c7c
1c0061cd:	7c7c7c7c 	0x7c7c7c7c
1c0061d1:	7c7c7c7c 	0x7c7c7c7c
1c0061d5:	7c7c7c7c 	0x7c7c7c7c
1c0061d9:	7c7c7c7c 	0x7c7c7c7c
1c0061dd:	7c7c7c7c 	0x7c7c7c7c
1c0061e1:	7c7c7c7c 	0x7c7c7c7c
1c0061e5:	7c7c7c7c 	0x7c7c7c7c
1c0061e9:	7c7c7c7c 	0x7c7c7c7c
1c0061ed:	7c7c7c7c 	0x7c7c7c7c
1c0061f1:	7c7c7c7c 	0x7c7c7c7c
1c0061f5:	7c7c7c7c 	0x7c7c7c7c
1c0061f9:	7c7c7c7c 	0x7c7c7c7c
1c0061fd:	7c7c7c7c 	0x7c7c7c7c
1c006201:	7c7c7c7c 	0x7c7c7c7c
1c006205:	7c7c7c7c 	0x7c7c7c7c
1c006209:	7c7c7c7c 	0x7c7c7c7c
1c00620d:	7c7c7c7c 	0x7c7c7c7c
1c006211:	7c7c7c7c 	0x7c7c7c7c
1c006215:	7c7c7c7c 	0x7c7c7c7c
1c006219:	7c7c7c7c 	0x7c7c7c7c
1c00621d:	7c7c7c7c 	0x7c7c7c7c
1c006221:	7c7c7c7c 	0x7c7c7c7c
1c006225:	7c7c7c7c 	0x7c7c7c7c
1c006229:	7c00000a 	0x7c00000a
1c00622d:	7c20207c 	0x7c20207c
1c006231:	7c7c7c7c 	0x7c7c7c7c
1c006235:	7c7c7c7c 	0x7c7c7c7c
1c006239:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00623d:	7c202020 	0x7c202020
1c006241:	7c7c7c7c 	0x7c7c7c7c
1c006245:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006249:	7c202020 	0x7c202020
1c00624d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006251:	7c7c2020 	0x7c7c2020
1c006255:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006259:	7c7c7c20 	0x7c7c7c20
1c00625d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006261:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006265:	7c7c7c7c 	0x7c7c7c7c
1c006269:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00626d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006271:	7c7c7c7c 	0x7c7c7c7c
1c006275:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006279:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00627d:	7c7c7c7c 	0x7c7c7c7c
1c006281:	7c202020 	0x7c202020
1c006285:	7c7c7c7c 	0x7c7c7c7c
1c006289:	7c7c2020 	0x7c7c2020
1c00628d:	7c00000a 	0x7c00000a
1c006291:	7c20207c 	0x7c20207c
1c006295:	7c7c7c7c 	0x7c7c7c7c
1c006299:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00629d:	7c7c2020 	0x7c7c2020
1c0062a1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0062a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062a9:	7c7c2020 	0x7c7c2020
1c0062ad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0062b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062b5:	7c202020 	0x7c202020
1c0062b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062bd:	7c7c7c20 	0x7c7c7c20
1c0062c1:	7c20207c 	0x7c20207c
1c0062c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062c9:	7c7c7c20 	0x7c7c7c20
1c0062cd:	7c202020 	0x7c202020
1c0062d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062d5:	7c7c7c20 	0x7c7c7c20
1c0062d9:	7c202020 	0x7c202020
1c0062dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062e1:	7c7c7c20 	0x7c7c7c20
1c0062e5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0062e9:	7c7c7c7c 	0x7c7c7c7c
1c0062ed:	7c7c2020 	0x7c7c2020
1c0062f1:	7c00000a 	0x7c00000a
1c0062f5:	7c20207c 	0x7c20207c
1c0062f9:	7c7c7c7c 	0x7c7c7c7c
1c0062fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006301:	7c7c7c20 	0x7c7c7c20
1c006305:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006309:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00630d:	7c7c7c20 	0x7c7c7c20
1c006311:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006315:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006319:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00631d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006321:	7c7c7c20 	0x7c7c7c20
1c006325:	7c7c2020 	0x7c7c2020
1c006329:	7c7c7c7c 	0x7c7c7c7c
1c00632d:	7c7c7c7c 	0x7c7c7c7c
1c006331:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006335:	7c7c7c20 	0x7c7c7c20
1c006339:	7c7c7c7c 	0x7c7c7c7c
1c00633d:	7c7c2020 	0x7c7c2020
1c006341:	7c7c7c7c 	0x7c7c7c7c
1c006345:	7c7c7c20 	0x7c7c7c20
1c006349:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00634d:	7c7c7c20 	0x7c7c7c20
1c006351:	7c7c2020 	0x7c7c2020
1c006355:	7c00000a 	0x7c00000a
1c006359:	7c20207c 	0x7c20207c
1c00635d:	7c7c7c7c 	0x7c7c7c7c
1c006361:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006365:	7c7c7c20 	0x7c7c7c20
1c006369:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00636d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006371:	7c7c7c20 	0x7c7c7c20
1c006375:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006379:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00637d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006381:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006385:	7c7c7c20 	0x7c7c7c20
1c006389:	7c7c2020 	0x7c7c2020
1c00638d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006391:	7c7c7c20 	0x7c7c7c20
1c006395:	7c7c7c7c 	0x7c7c7c7c
1c006399:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00639d:	7c7c7c7c 	0x7c7c7c7c
1c0063a1:	7c7c2020 	0x7c7c2020
1c0063a5:	7c7c7c7c 	0x7c7c7c7c
1c0063a9:	7c7c7c20 	0x7c7c7c20
1c0063ad:	7c7c2020 	0x7c7c2020
1c0063b1:	7c7c2020 	0x7c7c2020
1c0063b5:	7c7c2020 	0x7c7c2020
1c0063b9:	7c00000a 	0x7c00000a
1c0063bd:	7c20207c 	0x7c20207c
1c0063c1:	7c7c7c7c 	0x7c7c7c7c
1c0063c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063c9:	7c7c7c20 	0x7c7c7c20
1c0063cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063d5:	7c7c7c20 	0x7c7c7c20
1c0063d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063e1:	7c7c7c20 	0x7c7c7c20
1c0063e5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0063e9:	7c7c7c20 	0x7c7c7c20
1c0063ed:	7c7c2020 	0x7c7c2020
1c0063f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063f5:	7c7c7c20 	0x7c7c7c20
1c0063f9:	7c7c7c7c 	0x7c7c7c7c
1c0063fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006401:	7c7c7c20 	0x7c7c7c20
1c006405:	7c7c2020 	0x7c7c2020
1c006409:	7c7c7c7c 	0x7c7c7c7c
1c00640d:	7c7c7c20 	0x7c7c7c20
1c006411:	7c7c2020 	0x7c7c2020
1c006415:	7c20207c 	0x7c20207c
1c006419:	7c7c2020 	0x7c7c2020
1c00641d:	7c00000a 	0x7c00000a
1c006421:	7c20207c 	0x7c20207c
1c006425:	7c7c7c7c 	0x7c7c7c7c
1c006429:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00642d:	7c7c2020 	0x7c7c2020
1c006431:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006435:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006439:	7c7c2020 	0x7c7c2020
1c00643d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006441:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006445:	7c7c7c20 	0x7c7c7c20
1c006449:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00644d:	7c7c7c20 	0x7c7c7c20
1c006451:	7c202020 	0x7c202020
1c006455:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006459:	7c7c7c20 	0x7c7c7c20
1c00645d:	7c202020 	0x7c202020
1c006461:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006465:	7c7c7c7c 	0x7c7c7c7c
1c006469:	7c202020 	0x7c202020
1c00646d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006471:	7c7c7c20 	0x7c7c7c20
1c006475:	7c7c2020 	0x7c7c2020
1c006479:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00647d:	7c7c2020 	0x7c7c2020
1c006481:	7c00000a 	0x7c00000a
1c006485:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006489:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00648d:	7c7c7c7c 	0x7c7c7c7c
1c006491:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006495:	7c202020 	0x7c202020
1c006499:	7c7c7c7c 	0x7c7c7c7c
1c00649d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0064a1:	7c202020 	0x7c202020
1c0064a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0064a9:	7c7c7c20 	0x7c7c7c20
1c0064ad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0064b1:	7c7c7c20 	0x7c7c7c20
1c0064b5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0064b9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0064bd:	7c7c7c7c 	0x7c7c7c7c
1c0064c1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0064c5:	7c202020 	0x7c202020
1c0064c9:	7c7c7c7c 	0x7c7c7c7c
1c0064cd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0064d1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0064d5:	7c7c7c7c 	0x7c7c7c7c
1c0064d9:	7c7c2020 	0x7c7c2020
1c0064dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0064e1:	7c7c2020 	0x7c7c2020
1c0064e5:	7c00000a 	0x7c00000a
1c0064e9:	7c7c7c7c 	0x7c7c7c7c
1c0064ed:	7c7c7c7c 	0x7c7c7c7c
1c0064f1:	7c7c7c7c 	0x7c7c7c7c
1c0064f5:	7c7c7c7c 	0x7c7c7c7c
1c0064f9:	7c7c7c7c 	0x7c7c7c7c
1c0064fd:	7c7c7c7c 	0x7c7c7c7c
1c006501:	7c7c7c7c 	0x7c7c7c7c
1c006505:	7c7c7c7c 	0x7c7c7c7c
1c006509:	7c7c7c7c 	0x7c7c7c7c
1c00650d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006511:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c006515:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006519:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00651d:	7c7c7c5d 	0x7c7c7c5d
1c006521:	7c7c7c7c 	0x7c7c7c7c
1c006525:	7c7c7c7c 	0x7c7c7c7c
1c006529:	7c7c7c7c 	0x7c7c7c7c
1c00652d:	7c7c7c7c 	0x7c7c7c7c
1c006531:	7c7c7c7c 	0x7c7c7c7c
1c006535:	7c7c7c7c 	0x7c7c7c7c
1c006539:	7c7c7c7c 	0x7c7c7c7c
1c00653d:	7c7c7c7c 	0x7c7c7c7c
1c006541:	7c7c7c7c 	0x7c7c7c7c
1c006545:	7c7c7c7c 	0x7c7c7c7c
1c006549:	0900000a 	0x0900000a
1c00654d:	0a006425 	0x0a006425
1c006551:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006555:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006559:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00655d:	0050550a 	0x0050550a
1c006561:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006565:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00dab1 <_sidata+0x5eb5>
1c006569:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00656d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006571:	756f430a 	0x756f430a
1c006575:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006579:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00657d:	3030090a 	0x3030090a
1c006581:	09313009 	0x09313009
1c006585:	30093230 	0x30093230
1c006589:	34300933 	0x34300933
1c00658d:	09353009 	0x09353009
1c006591:	30093630 	0x30093630
1c006595:	38300937 	fldx.s	$f23,$r9,$r2
1c006599:	09393009 	0x09393009
1c00659d:	31093031 	0x31093031
1c0065a1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0065a5:	746e630a 	0x746e630a
1c0065a9:	09000000 	0x09000000
1c0065ad:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0065b1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0065b5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0065b9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c70d <_sidata+0x4b11>
1c0065bd:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0065c1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfedb11 <_start-0x124ef>
1c0065c5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0065c9:	09000000 	0x09000000
1c0065cd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0065d1:	09000000 	0x09000000
1c0065d5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0065d9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0065dd:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0065e1:	3a515249 	0x3a515249
1c0065e5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0065e9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd45d <_start-0x2ba3>
1c0065ed:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0065f1:	0d3e2020 	0x0d3e2020
1c0065f5:	0a00000a 	0x0a00000a
1c0065f9:	2e2e2e2e 	0x2e2e2e2e
1c0065fd:	2e2e2e2e 	0x2e2e2e2e
1c006601:	2e2e2e2e 	0x2e2e2e2e
1c006605:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab555 <_sidata+0x3a3959>
1c006609:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00660d:	2e2e2e54 	0x2e2e2e54
1c006611:	2e2e2e2e 	0x2e2e2e2e
1c006615:	2e2e2e2e 	0x2e2e2e2e
1c006619:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00661d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c006621:	2e2e2e0a 	0x2e2e2e0a
1c006625:	2e2e2e2e 	0x2e2e2e2e
1c006629:	2e2e2e2e 	0x2e2e2e2e
1c00662d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39a859 <_sidata+0x392c5d>
1c006631:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1ac8d <_start-0x2e5373>
1c006635:	2e2e4c49 	0x2e2e4c49
1c006639:	2e2e2e2e 	0x2e2e2e2e
1c00663d:	2e2e2e2e 	0x2e2e2e2e
1c006641:	2e2e2e2e 	0x2e2e2e2e
1c006645:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006649:	2e2e2e0a 	0x2e2e2e0a
1c00664d:	2e2e2e2e 	0x2e2e2e2e
1c006651:	2e2e2e2e 	0x2e2e2e2e
1c006655:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38a781 <_sidata+0x382b85>
1c006659:	2e2e2e43 	0x2e2e2e43
1c00665d:	2e2e2e2e 	0x2e2e2e2e
1c006661:	2e2e2e2e 	0x2e2e2e2e
1c006665:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006669:	5000000a 	b	2621440(0x280000) # 1c286669 <_sidata+0x27ea6d>
1c00666d:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c006671:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01d8d5 <_sidata+0x15cd9>
1c006675:	5420736c 	bl	-38789008(0xdb02070) # 19b086e5 <_start-0x24f791b>
1c006679:	72656d69 	0x72656d69
1c00667d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01d2dd <_sidata+0x156e1>
1c006681:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c0186f1 <_sidata+0x10af5>
1c006685:	7265746e 	0x7265746e
1c006689:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00668d:	0a0d2e2e 	0x0a0d2e2e
1c006691:	43000000 	beqz	$r0,196608(0x30000) # 1c036691 <_sidata+0x2ea95>
1c006695:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006699:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d401 <_sidata+0x15805>
1c00669d:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00c9bd <_sidata+0x4dc1>
1c0066a1:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0066a5:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01db11 <_sidata+0x15f15>
1c0066a9:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0066ad:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0066b1:	 	0x9400000a

1c0066b4 <Ext_IrqHandle>:
1c0066b4:	1c003894 	pcaddu12i	$r20,452(0x1c4)
1c0066b8:	1c0038e0 	pcaddu12i	$r0,455(0x1c7)
1c0066bc:	1c00392c 	pcaddu12i	$r12,457(0x1c9)
1c0066c0:	1c003978 	pcaddu12i	$r24,459(0x1cb)
1c0066c4:	1c0039c4 	pcaddu12i	$r4,462(0x1ce)
1c0066c8:	1c003a10 	pcaddu12i	$r16,464(0x1d0)
1c0066cc:	1c003a5c 	pcaddu12i	$r28,466(0x1d2)
1c0066d0:	1c003aa8 	pcaddu12i	$r8,469(0x1d5)
1c0066d4:	1c003af4 	pcaddu12i	$r20,471(0x1d7)
1c0066d8:	1c003b40 	pcaddu12i	$r0,474(0x1da)
1c0066dc:	1c003b8c 	pcaddu12i	$r12,476(0x1dc)
1c0066e0:	1c003bd8 	pcaddu12i	$r24,478(0x1de)
1c0066e4:	1c003c24 	pcaddu12i	$r4,481(0x1e1)
1c0066e8:	1c003c70 	pcaddu12i	$r16,483(0x1e3)
1c0066ec:	1c003cbc 	pcaddu12i	$r28,485(0x1e5)
1c0066f0:	1c003d08 	pcaddu12i	$r8,488(0x1e8)
1c0066f4:	1c003d54 	pcaddu12i	$r20,490(0x1ea)
1c0066f8:	1c003da0 	pcaddu12i	$r0,493(0x1ed)
1c0066fc:	1c003dec 	pcaddu12i	$r12,495(0x1ef)
1c006700:	1c003e38 	pcaddu12i	$r24,497(0x1f1)
1c006704:	1c003e84 	pcaddu12i	$r4,500(0x1f4)
1c006708:	1c003ed0 	pcaddu12i	$r16,502(0x1f6)
1c00670c:	1c003f1c 	pcaddu12i	$r28,504(0x1f8)
1c006710:	1c003f68 	pcaddu12i	$r8,507(0x1fb)
1c006714:	1c003fb4 	pcaddu12i	$r20,509(0x1fd)
1c006718:	1c004000 	pcaddu12i	$r0,512(0x200)
1c00671c:	1c00404c 	pcaddu12i	$r12,514(0x202)
1c006720:	1c004098 	pcaddu12i	$r24,516(0x204)
1c006724:	1c0040e4 	pcaddu12i	$r4,519(0x207)
1c006728:	1c004130 	pcaddu12i	$r16,521(0x209)
1c00672c:	1c00417c 	pcaddu12i	$r28,523(0x20b)
1c006730:	1c0041c8 	pcaddu12i	$r8,526(0x20e)
1c006734:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006738:	1c00445c 	pcaddu12i	$r28,546(0x222)
1c00673c:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006740:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006744:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006748:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c00674c:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006750:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006754:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006758:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c00675c:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006760:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006764:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006768:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c00676c:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006770:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006774:	1c004478 	pcaddu12i	$r24,547(0x223)

1c006778 <__FUNCTION__.1653>:
1c006778:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbf0 <_sidata+0x15ff4>
1c00677c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7e0 <_sidata+0x15be4>
1c006780:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff97e0 <_start-0x6820>
1c006784:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8f4 <_start-0x270c>
1c006788:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5e8 <_sidata+0x59ec>
1c00678c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006790 <__FUNCTION__.1657>:
1c006790:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc08 <_sidata+0x1600c>
1c006794:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7f8 <_sidata+0x15bfc>
1c006798:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff98f8 <_start-0x6708>
1c00679c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd90c <_start-0x26f4>
1c0067a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d600 <_sidata+0x5a04>
1c0067a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067a8 <__FUNCTION__.1661>:
1c0067a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc20 <_sidata+0x16024>
1c0067ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d810 <_sidata+0x15c14>
1c0067b0:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9a10 <_start-0x65f0>
1c0067b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd924 <_start-0x26dc>
1c0067b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d618 <_sidata+0x5a1c>
1c0067bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067c0 <__FUNCTION__.1665>:
1c0067c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc38 <_sidata+0x1603c>
1c0067c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d828 <_sidata+0x15c2c>
1c0067c8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9b28 <_start-0x64d8>
1c0067cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd93c <_start-0x26c4>
1c0067d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d630 <_sidata+0x5a34>
1c0067d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067d8 <__FUNCTION__.1669>:
1c0067d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc50 <_sidata+0x16054>
1c0067dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d840 <_sidata+0x15c44>
1c0067e0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9c40 <_start-0x63c0>
1c0067e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd954 <_start-0x26ac>
1c0067e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d648 <_sidata+0x5a4c>
1c0067ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067f0 <__FUNCTION__.1673>:
1c0067f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc68 <_sidata+0x1606c>
1c0067f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d858 <_sidata+0x15c5c>
1c0067f8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9d58 <_start-0x62a8>
1c0067fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd96c <_start-0x2694>
1c006800:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d660 <_sidata+0x5a64>
1c006804:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006808 <__FUNCTION__.1677>:
1c006808:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc80 <_sidata+0x16084>
1c00680c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d870 <_sidata+0x15c74>
1c006810:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9e70 <_start-0x6190>
1c006814:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd984 <_start-0x267c>
1c006818:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d678 <_sidata+0x5a7c>
1c00681c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006820 <__FUNCTION__.1681>:
1c006820:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc98 <_sidata+0x1609c>
1c006824:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d888 <_sidata+0x15c8c>
1c006828:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9f88 <_start-0x6078>
1c00682c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd99c <_start-0x2664>
1c006830:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d690 <_sidata+0x5a94>
1c006834:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006838 <__FUNCTION__.1685>:
1c006838:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dcb0 <_sidata+0x160b4>
1c00683c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8a0 <_sidata+0x15ca4>
1c006840:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff98a0 <_start-0x6760>
1c006844:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9b4 <_start-0x264c>
1c006848:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6a8 <_sidata+0x5aac>
1c00684c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006850 <__FUNCTION__.1689>:
1c006850:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dcc8 <_sidata+0x160cc>
1c006854:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8b8 <_sidata+0x15cbc>
1c006858:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff99b8 <_start-0x6648>
1c00685c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9cc <_start-0x2634>
1c006860:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6c0 <_sidata+0x5ac4>
1c006864:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006868 <__FUNCTION__.1693>:
1c006868:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dce0 <_sidata+0x160e4>
1c00686c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8d0 <_sidata+0x15cd4>
1c006870:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9ad0 <_start-0x6530>
1c006874:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9e4 <_start-0x261c>
1c006878:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6d8 <_sidata+0x5adc>
1c00687c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006880 <__FUNCTION__.1697>:
1c006880:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dcf8 <_sidata+0x160fc>
1c006884:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8e8 <_sidata+0x15cec>
1c006888:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff9be8 <_start-0x6418>
1c00688c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9fc <_start-0x2604>
1c006890:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6f0 <_sidata+0x5af4>
1c006894:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006898 <__FUNCTION__.1701>:
1c006898:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd10 <_sidata+0x16114>
1c00689c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d900 <_sidata+0x15d04>
1c0068a0:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9d00 <_start-0x6300>
1c0068a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda14 <_start-0x25ec>
1c0068a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d708 <_sidata+0x5b0c>
1c0068ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068b0 <__FUNCTION__.1705>:
1c0068b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd28 <_sidata+0x1612c>
1c0068b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d918 <_sidata+0x15d1c>
1c0068b8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9e18 <_start-0x61e8>
1c0068bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda2c <_start-0x25d4>
1c0068c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d720 <_sidata+0x5b24>
1c0068c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068c8 <__FUNCTION__.1709>:
1c0068c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd40 <_sidata+0x16144>
1c0068cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d930 <_sidata+0x15d34>
1c0068d0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9f30 <_start-0x60d0>
1c0068d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda44 <_start-0x25bc>
1c0068d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d738 <_sidata+0x5b3c>
1c0068dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068e0 <__FUNCTION__.1713>:
1c0068e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd58 <_sidata+0x1615c>
1c0068e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d948 <_sidata+0x15d4c>
1c0068e8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa048 <_start-0x5fb8>
1c0068ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda5c <_start-0x25a4>
1c0068f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d750 <_sidata+0x5b54>
1c0068f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068f8 <__FUNCTION__.1717>:
1c0068f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd70 <_sidata+0x16174>
1c0068fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d960 <_sidata+0x15d64>
1c006900:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9960 <_start-0x66a0>
1c006904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda74 <_start-0x258c>
1c006908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d768 <_sidata+0x5b6c>
1c00690c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006910 <__FUNCTION__.1721>:
1c006910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd88 <_sidata+0x1618c>
1c006914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d978 <_sidata+0x15d7c>
1c006918:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9a78 <_start-0x6588>
1c00691c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda8c <_start-0x2574>
1c006920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d780 <_sidata+0x5b84>
1c006924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006928 <__FUNCTION__.1725>:
1c006928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dda0 <_sidata+0x161a4>
1c00692c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d990 <_sidata+0x15d94>
1c006930:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9b90 <_start-0x6470>
1c006934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdaa4 <_start-0x255c>
1c006938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d798 <_sidata+0x5b9c>
1c00693c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006940 <__FUNCTION__.1729>:
1c006940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ddb8 <_sidata+0x161bc>
1c006944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9a8 <_sidata+0x15dac>
1c006948:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9ca8 <_start-0x6358>
1c00694c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdabc <_start-0x2544>
1c006950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7b0 <_sidata+0x5bb4>
1c006954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006958 <__FUNCTION__.1733>:
1c006958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ddd0 <_sidata+0x161d4>
1c00695c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9c0 <_sidata+0x15dc4>
1c006960:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9dc0 <_start-0x6240>
1c006964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdad4 <_start-0x252c>
1c006968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7c8 <_sidata+0x5bcc>
1c00696c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006970 <__FUNCTION__.1737>:
1c006970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dde8 <_sidata+0x161ec>
1c006974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9d8 <_sidata+0x15ddc>
1c006978:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9ed8 <_start-0x6128>
1c00697c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdaec <_start-0x2514>
1c006980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7e0 <_sidata+0x5be4>
1c006984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006988 <__FUNCTION__.1741>:
1c006988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de00 <_sidata+0x16204>
1c00698c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9f0 <_sidata+0x15df4>
1c006990:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9ff0 <_start-0x6010>
1c006994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb04 <_start-0x24fc>
1c006998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7f8 <_sidata+0x5bfc>
1c00699c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069a0 <__FUNCTION__.1745>:
1c0069a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de18 <_sidata+0x1621c>
1c0069a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da08 <_sidata+0x15e0c>
1c0069a8:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffa108 <_start-0x5ef8>
1c0069ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb1c <_start-0x24e4>
1c0069b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d810 <_sidata+0x5c14>
1c0069b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069b8 <__FUNCTION__.1749>:
1c0069b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de30 <_sidata+0x16234>
1c0069bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da20 <_sidata+0x15e24>
1c0069c0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9a24 <_start-0x65dc>
1c0069c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb34 <_start-0x24cc>
1c0069c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d828 <_sidata+0x5c2c>
1c0069cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069d0 <__FUNCTION__.1753>:
1c0069d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de48 <_sidata+0x1624c>
1c0069d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da38 <_sidata+0x15e3c>
1c0069d8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9b3c <_start-0x64c4>
1c0069dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb4c <_start-0x24b4>
1c0069e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d840 <_sidata+0x5c44>
1c0069e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069e8 <__FUNCTION__.1757>:
1c0069e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de60 <_sidata+0x16264>
1c0069ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da50 <_sidata+0x15e54>
1c0069f0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9c54 <_start-0x63ac>
1c0069f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb64 <_start-0x249c>
1c0069f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d858 <_sidata+0x5c5c>
1c0069fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a00 <__FUNCTION__.1761>:
1c006a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de78 <_sidata+0x1627c>
1c006a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da68 <_sidata+0x15e6c>
1c006a08:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9d6c <_start-0x6294>
1c006a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb7c <_start-0x2484>
1c006a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d870 <_sidata+0x5c74>
1c006a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a18 <__FUNCTION__.1765>:
1c006a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de90 <_sidata+0x16294>
1c006a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da80 <_sidata+0x15e84>
1c006a20:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9e84 <_start-0x617c>
1c006a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb94 <_start-0x246c>
1c006a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d888 <_sidata+0x5c8c>
1c006a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a30 <__FUNCTION__.1769>:
1c006a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dea8 <_sidata+0x162ac>
1c006a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da98 <_sidata+0x15e9c>
1c006a38:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9f9c <_start-0x6064>
1c006a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbac <_start-0x2454>
1c006a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8a0 <_sidata+0x5ca4>
1c006a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a48 <__FUNCTION__.1773>:
1c006a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dec0 <_sidata+0x162c4>
1c006a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dab0 <_sidata+0x15eb4>
1c006a50:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffa0b4 <_start-0x5f4c>
1c006a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbc4 <_start-0x243c>
1c006a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8b8 <_sidata+0x5cbc>
1c006a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a60 <__FUNCTION__.1777>:
1c006a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ded8 <_sidata+0x162dc>
1c006a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dac8 <_sidata+0x15ecc>
1c006a68:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffa1cc <_start-0x5e34>
1c006a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbdc <_start-0x2424>
1c006a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8d0 <_sidata+0x5cd4>
1c006a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a78 <asc2_1608>:
	...
1c006a88:	f8000000 	0xf8000000
1c006a8c:	00000000 	0x00000000
1c006a90:	33000000 	0x33000000
1c006a94:	00000000 	0x00000000
1c006a98:	020c1000 	slti	$r0,$r0,772(0x304)
1c006a9c:	00020c10 	0x00020c10
	...
1c006aa8:	78c04000 	0x78c04000
1c006aac:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c006ab0:	043f0400 	csrrd	$r0,0xfc1
1c006ab4:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c006ab8:	88887000 	0x88887000
1c006abc:	003008fc 	0x003008fc
1c006ac0:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c006ac4:	001e21ff 	mulh.d	$r31,$r15,$r8
1c006ac8:	80f008f0 	0x80f008f0
1c006acc:	00001860 	cto.w	$r0,$r3
1c006ad0:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c006ad4:	001e211e 	mulh.d	$r30,$r8,$r8
1c006ad8:	8808f000 	0x8808f000
1c006adc:	00000070 	0x00000070
1c006ae0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c006ae4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c006ae8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c006af8:	e0000000 	0xe0000000
1c006afc:	00020418 	0x00020418
1c006b00:	07000000 	0x07000000
1c006b04:	00402018 	0x00402018
1c006b08:	18040200 	pcaddi	$r0,8208(0x2010)
1c006b0c:	000000e0 	0x000000e0
1c006b10:	18204000 	pcaddi	$r0,66048(0x10200)
1c006b14:	00000007 	0x00000007
1c006b18:	f0804040 	0xf0804040
1c006b1c:	00404080 	0x00404080
1c006b20:	0f010202 	0x0f010202
1c006b24:	00020201 	0x00020201
1c006b28:	00000000 	0x00000000
1c006b2c:	000000e0 	0x000000e0
1c006b30:	01010100 	fadd.d	$f0,$f8,$f0
1c006b34:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c006b40:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c006b50:	01010100 	fadd.d	$f0,$f8,$f0
1c006b54:	00010101 	0x00010101
	...
1c006b60:	00303000 	0x00303000
	...
1c006b6c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c006b70:	07186000 	0x07186000
1c006b74:	00000000 	0x00000000
1c006b78:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c006b7c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006b80:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c006b84:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006b88:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c006b8c:	000000f8 	0x000000f8
1c006b90:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c006b94:	0020203f 	div.w	$r31,$r1,$r8
1c006b98:	08087000 	0x08087000
1c006b9c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006ba0:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c006ba4:	00302122 	0x00302122
1c006ba8:	08083000 	0x08083000
1c006bac:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006bb0:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c006bb4:	001c2221 	mul.w	$r1,$r17,$r8
1c006bb8:	40800000 	beqz	$r0,32768(0x8000) # 1c00ebb8 <_sidata+0x6fbc>
1c006bbc:	0000f830 	0x0000f830
1c006bc0:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c006bc4:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c006bc8:	8888f800 	0x8888f800
1c006bcc:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c006bd0:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c006bd4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006bd8:	8810e000 	0x8810e000
1c006bdc:	00009088 	0x00009088
1c006be0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c006be4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006be8:	08081800 	0x08081800
1c006bec:	00186888 	sra.w	$r8,$r4,$r26
1c006bf0:	3e000000 	0x3e000000
1c006bf4:	00000001 	0x00000001
1c006bf8:	08887000 	0x08887000
1c006bfc:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006c00:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c006c04:	001c2221 	mul.w	$r1,$r17,$r8
1c006c08:	0808f000 	0x0808f000
1c006c0c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006c10:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c006c14:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c006c18:	c0000000 	0xc0000000
1c006c1c:	000000c0 	0x000000c0
1c006c20:	30000000 	0x30000000
1c006c24:	00000030 	0x00000030
1c006c28:	80000000 	0x80000000
1c006c2c:	00000000 	0x00000000
1c006c30:	e0000000 	0xe0000000
1c006c34:	00000000 	0x00000000
1c006c38:	40800000 	beqz	$r0,32768(0x8000) # 1c00ec38 <_sidata+0x703c>
1c006c3c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006c40:	04020100 	csrxchg	$r0,$r8,0x80
1c006c44:	00201008 	div.w	$r8,$r0,$r4
1c006c48:	40404000 	beqz	$r0,16448(0x4040) # 1c00ac88 <_sidata+0x308c>
1c006c4c:	00404040 	0x00404040
1c006c50:	02020200 	slti	$r0,$r16,128(0x80)
1c006c54:	00020202 	0x00020202
1c006c58:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c006c5c:	00008040 	0x00008040
1c006c60:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c006c64:	00010204 	0x00010204
1c006c68:	08487000 	0x08487000
1c006c6c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006c70:	30000000 	0x30000000
1c006c74:	00000037 	0x00000037
1c006c78:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c006c7c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c006c80:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c006c84:	0017282f 	sll.w	$r15,$r1,$r10
1c006c88:	38c00000 	0x38c00000
1c006c8c:	000000e0 	0x000000e0
1c006c90:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c006c94:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c006c98:	8888f808 	0x8888f808
1c006c9c:	00007088 	0x00007088
1c006ca0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006ca4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006ca8:	080830c0 	0x080830c0
1c006cac:	00380808 	0x00380808
1c006cb0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006cb4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006cb8:	0808f808 	0x0808f808
1c006cbc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006cc0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006cc4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006cc8:	8888f808 	0x8888f808
1c006ccc:	001008e8 	add.w	$r8,$r7,$r2
1c006cd0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006cd4:	00182023 	sra.w	$r3,$r1,$r8
1c006cd8:	8888f808 	0x8888f808
1c006cdc:	001008e8 	add.w	$r8,$r7,$r2
1c006ce0:	00203f20 	div.w	$r0,$r25,$r15
1c006ce4:	00000003 	0x00000003
1c006ce8:	080830c0 	0x080830c0
1c006cec:	00003808 	revb.2w	$r8,$r0
1c006cf0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006cf4:	00021e22 	0x00021e22
1c006cf8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006cfc:	08f80800 	0x08f80800
1c006d00:	01213f20 	0x01213f20
1c006d04:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c006d08:	f8080800 	0xf8080800
1c006d0c:	00000808 	0x00000808
1c006d10:	3f202000 	0x3f202000
1c006d14:	00002020 	clo.d	$r0,$r1
1c006d18:	08080000 	0x08080000
1c006d1c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c006d20:	808080c0 	0x808080c0
1c006d24:	0000007f 	0x0000007f
1c006d28:	c088f808 	0xc088f808
1c006d2c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c006d30:	01203f20 	0x01203f20
1c006d34:	00203826 	div.w	$r6,$r1,$r14
1c006d38:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006d3c:	00000000 	0x00000000
1c006d40:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006d44:	00302020 	0x00302020
1c006d48:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c006d4c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c006d50:	3e013f20 	0x3e013f20
1c006d54:	00203f01 	div.w	$r1,$r24,$r15
1c006d58:	c030f808 	0xc030f808
1c006d5c:	08f80800 	0x08f80800
1c006d60:	00203f20 	div.w	$r0,$r25,$r15
1c006d64:	003f1807 	0x003f1807
1c006d68:	080810e0 	0x080810e0
1c006d6c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006d70:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c006d74:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006d78:	0808f808 	0x0808f808
1c006d7c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006d80:	01213f20 	0x01213f20
1c006d84:	00000101 	0x00000101
1c006d88:	080810e0 	0x080810e0
1c006d8c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006d90:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c006d94:	004f5030 	0x004f5030
1c006d98:	8888f808 	0x8888f808
1c006d9c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c006da0:	00203f20 	div.w	$r0,$r25,$r15
1c006da4:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c006da8:	08887000 	0x08887000
1c006dac:	00380808 	0x00380808
1c006db0:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c006db4:	001c2221 	mul.w	$r1,$r17,$r8
1c006db8:	f8080818 	0xf8080818
1c006dbc:	00180808 	sra.w	$r8,$r0,$r2
1c006dc0:	3f200000 	0x3f200000
1c006dc4:	00000020 	0x00000020
1c006dc8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006dcc:	08f80800 	0x08f80800
1c006dd0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006dd4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006dd8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c006ddc:	0838c800 	0x0838c800
1c006de0:	38070000 	0x38070000
1c006de4:	0000010e 	0x0000010e
1c006de8:	f800f808 	0xf800f808
1c006dec:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c006df0:	013e0300 	0x013e0300
1c006df4:	0000033e 	0x0000033e
1c006df8:	80681808 	0x80681808
1c006dfc:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c006e00:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c006e04:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c006e08:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c006e0c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006e10:	3f200000 	0x3f200000
1c006e14:	00000020 	0x00000020
1c006e18:	08080810 	0x08080810
1c006e1c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006e20:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c006e24:	00182020 	sra.w	$r0,$r1,$r8
1c006e28:	fe000000 	0xfe000000
1c006e2c:	00020202 	0x00020202
1c006e30:	7f000000 	0x7f000000
1c006e34:	00404040 	0x00404040
1c006e38:	c0380400 	0xc0380400
1c006e3c:	00000000 	0x00000000
1c006e40:	01000000 	0x01000000
1c006e44:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c006e48:	02020200 	slti	$r0,$r16,128(0x80)
1c006e4c:	000000fe 	0x000000fe
1c006e50:	40404000 	beqz	$r0,16448(0x4040) # 1c00ae90 <_sidata+0x3294>
1c006e54:	0000007f 	0x0000007f
1c006e58:	02040000 	slti	$r0,$r0,256(0x100)
1c006e5c:	00000402 	0x00000402
	...
1c006e70:	80808080 	0x80808080
1c006e74:	80808080 	0x80808080
1c006e78:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c006e88:	80800000 	0x80800000
1c006e8c:	00000080 	0x00000080
1c006e90:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c006e94:	00203f12 	div.w	$r18,$r24,$r15
1c006e98:	8000f010 	0x8000f010
1c006e9c:	00000080 	0x00000080
1c006ea0:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c006ea4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006ea8:	80000000 	0x80000000
1c006eac:	00008080 	0x00008080
1c006eb0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006eb4:	00112020 	sub.w	$r0,$r1,$r8
1c006eb8:	80800000 	0x80800000
1c006ebc:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c006ec0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006ec4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006ec8:	80800000 	0x80800000
1c006ecc:	00008080 	0x00008080
1c006ed0:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c006ed4:	00172424 	sll.w	$r4,$r1,$r9
1c006ed8:	e0808000 	0xe0808000
1c006edc:	00209090 	mod.w	$r16,$r4,$r4
1c006ee0:	3f202000 	0x3f202000
1c006ee4:	00002020 	clo.d	$r0,$r1
1c006ee8:	80800000 	0x80800000
1c006eec:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006ef0:	94946b00 	0x94946b00
1c006ef4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c006ef8:	8000f010 	0x8000f010
1c006efc:	00008080 	0x00008080
1c006f00:	00213f20 	div.wu	$r0,$r25,$r15
1c006f04:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006f08:	98988000 	0x98988000
1c006f0c:	00000000 	0x00000000
1c006f10:	3f202000 	0x3f202000
1c006f14:	00002020 	clo.d	$r0,$r1
1c006f18:	80000000 	0x80000000
1c006f1c:	00009898 	0x00009898
1c006f20:	8080c000 	0x8080c000
1c006f24:	00007f80 	0x00007f80
1c006f28:	0000f010 	0x0000f010
1c006f2c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006f30:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c006f34:	00203029 	div.w	$r9,$r1,$r12
1c006f38:	f8101000 	0xf8101000
1c006f3c:	00000000 	0x00000000
1c006f40:	3f202000 	0x3f202000
1c006f44:	00002020 	clo.d	$r0,$r1
1c006f48:	80808080 	0x80808080
1c006f4c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006f50:	00203f20 	div.w	$r0,$r25,$r15
1c006f54:	3f00203f 	0x3f00203f
1c006f58:	80008080 	0x80008080
1c006f5c:	00008080 	0x00008080
1c006f60:	00213f20 	div.wu	$r0,$r25,$r15
1c006f64:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006f68:	80800000 	0x80800000
1c006f6c:	00008080 	0x00008080
1c006f70:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006f74:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006f78:	80008080 	0x80008080
1c006f7c:	00000080 	0x00000080
1c006f80:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c006f84:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006f88:	80000000 	0x80000000
1c006f8c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c006f90:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006f94:	80ff9120 	0x80ff9120
1c006f98:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006f9c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006fa0:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c006fa4:	00010020 	asrtle.d	$r1,$r0
1c006fa8:	80800000 	0x80800000
1c006fac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006fb0:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c006fb4:	00192424 	srl.d	$r4,$r1,$r9
1c006fb8:	e0808000 	0xe0808000
1c006fbc:	00008080 	0x00008080
1c006fc0:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c006fc4:	00102020 	add.w	$r0,$r1,$r8
1c006fc8:	00008080 	0x00008080
1c006fcc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006fd0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006fd4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006fd8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006fdc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006fe0:	300c0300 	0x300c0300
1c006fe4:	0000030c 	0x0000030c
1c006fe8:	80008080 	0x80008080
1c006fec:	80800080 	0x80800080
1c006ff0:	0c300e01 	0x0c300e01
1c006ff4:	01063807 	0x01063807
1c006ff8:	80808000 	0x80808000
1c006ffc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007000:	0e312000 	0x0e312000
1c007004:	0020312e 	div.w	$r14,$r9,$r12
1c007008:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00700c:	80808000 	0x80808000
1c007010:	78868100 	0x78868100
1c007014:	00010618 	0x00010618
1c007018:	80808000 	0x80808000
1c00701c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007020:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007024:	00302122 	0x00302122
1c007028:	00000000 	0x00000000
1c00702c:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007030:	00000000 	0x00000000
1c007034:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04b070 <_sidata+0x43474>
1c007038:	00000000 	0x00000000
1c00703c:	000000ff 	0x000000ff
1c007040:	00000000 	0x00000000
1c007044:	000000ff 	0x000000ff
1c007048:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c00704c:	00000000 	0x00000000
1c007050:	013e4040 	0x013e4040
1c007054:	00000000 	0x00000000
1c007058:	02010200 	slti	$r0,$r16,64(0x40)
1c00705c:	00020402 	0x00020402
	...

1c007068 <tfont16>:
1c007068:	40baa4e7 	beqz	$r7,1882788(0x1cbaa4) # 1c1d2b0c <_sidata+0x1caf10>
1c00706c:	42424240 	beqz	$r18,148032(0x24240) # 1c02b2ac <_sidata+0x236b0>
1c007070:	42c24242 	beqz	$r18,705088(0xac240) # 1c0b32b0 <_sidata+0xab6b4>
1c007074:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab2b4 <_sidata+0xa36b8>
1c007078:	20004040 	ll.w	$r0,$r2,64(0x40)
1c00707c:	00060810 	alsl.wu	$r16,$r0,$r2,0x1
1c007080:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c007084:	04020000 	csrrd	$r0,0x80
1c007088:	e6003008 	0xe6003008
1c00708c:	0000be98 	0x0000be98
1c007090:	9292fe00 	0x9292fe00
1c007094:	92929292 	0x92929292
1c007098:	0000fe92 	0x0000fe92
1c00709c:	42400000 	beqz	$r0,147456(0x24000) # 1c02b09c <_sidata+0x234a0>
1c0070a0:	7f405844 	0x7f405844
1c0070a4:	7f404040 	0x7f404040
1c0070a8:	46485040 	bnez	$r2,149584(0x24850) # 1c02b8f8 <_sidata+0x23cfc>
1c0070ac:	aee50040 	0xaee50040
1c0070b0:	040c109e 	csrxchg	$r30,$r4,0x304
1c0070b4:	05641484 	0x05641484
1c0070b8:	0404f406 	csrrd	$r6,0x13d
1c0070bc:	0c140404 	fcmp.cun.s	$fcc4,$f0,$f1
1c0070c0:	84840400 	0x84840400
1c0070c4:	14244744 	lu12i.w	$r4,74298(0x1223a)
1c0070c8:	140c070c 	lu12i.w	$r12,24632(0x6038)
1c0070cc:	04844424 	csrwr	$r4,0x2111
1c0070d0:	8caae900 	0x8caae900
1c0070d4:	8282fa02 	0x8282fa02
1c0070d8:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
1c0070dc:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c0070e0:	00402050 	0x00402050
1c0070e4:	84481808 	0x84481808
1c0070e8:	44403f44 	bnez	$r26,1065020(0x10403c) # 1c10b124 <_sidata+0x103528>
1c0070ec:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00bf2c <_sidata+0x4330>
1c0070f0:	00404758 	0x00404758
1c0070f4:	02be99e7 	addi.w	$r7,$r15,-90(0xfa6)
1c0070f8:	2222e202 	ll.d	$r2,$r16,8928(0x22e0)
1c0070fc:	22262a32 	ll.d	$r18,$r17,9768(0x2628)
1c007100:	e2222222 	0xe2222222
1c007104:	00000202 	0x00000202
1c007108:	4242ff00 	beqz	$r24,148220(0x242fc) # 1c02b404 <_sidata+0x23808>
1c00710c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ab34c <_sidata+0xa3750>
1c007110:	ff424242 	0xff424242
1c007114:	e7000000 	0xe7000000
1c007118:	242491a7 	ldptr.w	$r7,$r13,9360(0x2490)
1c00711c:	22a3fea4 	ll.d	$r4,$r21,-23556(0xa3fc)
1c007120:	00cc2200 	bstrpick.d	$r0,$r16,0xc,0x8
1c007124:	0000ff00 	0x0000ff00
1c007128:	06080000 	cacop	0x0,$r0,512(0x200)
1c00712c:	0100ff01 	fadd.s	$f1,$f24,$f31
1c007130:	04040404 	csrrd	$r4,0x101
1c007134:	0202ff04 	slti	$r4,$r24,191(0xbf)
1c007138:	8de80002 	0x8de80002
1c00713c:	246484a3 	ldptr.w	$r3,$r5,25732(0x6484)
1c007140:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c007144:	2f2424a4 	0x2f2424a4
1c007148:	64a42424 	bge	$r1,$r4,42020(0xa424) # 1c01156c <_sidata+0x9970>
1c00714c:	22424000 	ll.d	$r0,$r0,16960(0x4240)
1c007150:	060a1222 	cacop	0x2,$r17,644(0x284)
1c007154:	120a06ff 	addu16i.d	$r31,$r23,-32127(0x8281)
1c007158:	40422222 	beqz	$r17,541216(0x84220) # 1c08b378 <_sidata+0x8377c>
1c00715c:	9b88e500 	0x9b88e500
1c007160:	4cd02040 	jirl	$r0,$r2,53280(0xd020)
1c007164:	10c84443 	addu16i.d	$r3,$r2,12817(0x3211)
1c007168:	00f80020 	bstrpick.d	$r0,$r1,0x38,0x0
1c00716c:	0000ff00 	0x0000ff00
1c007170:	403f0000 	beqz	$r0,16128(0x3f00) # 1c00b070 <_sidata+0x3474>
1c007174:	40474844 	beqz	$r2,1066824(0x104748) # 1c10b8bc <_sidata+0x103cc0>
1c007178:	400f0070 	beqz	$r3,-4190464(0x400f00) # 1bc08078 <_start-0x3f7f88>
1c00717c:	00007f80 	0x00007f80

1c007180 <tfont32>:
1c007180:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c007184:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007188:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00718c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007190:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c007194:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007198:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00719c:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c0071a8:	f8fc0000 	0xf8fc0000
1c0071ac:	08080808 	0x08080808
1c0071b0:	08080b0c 	0x08080b0c
1c0071b4:	08080808 	0x08080808
1c0071b8:	f8fc0808 	0xf8fc0808
	...
1c0071c8:	ffff0000 	0xffff0000
1c0071cc:	08080808 	0x08080808
1c0071d0:	08080808 	0x08080808
1c0071d4:	08080808 	0x08080808
1c0071d8:	ffff0808 	0xffff0808
	...
1c0071e8:	3f7f0000 	0x3f7f0000
1c0071ec:	08080808 	0x08080808
1c0071f0:	08080808 	0x08080808
1c0071f4:	08080808 	0x08080808
1c0071f8:	3f7f0808 	0x3f7f0808
1c0071fc:	00000000 	0x00000000
1c007200:	e7000000 	0xe7000000
1c007204:	000091a7 	0x000091a7
1c007208:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c00720c:	e0e02020 	0xe0e02020
1c007210:	18181030 	pcaddi	$r16,49281(0xc081)
1c007214:	80000000 	0x80000000
1c007218:	00000080 	0x00000080
1c00721c:	f8fc0000 	0xf8fc0000
1c007220:	00000008 	0x00000008
1c007224:	00000000 	0x00000000
1c007228:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00722c:	ffff9010 	0xffff9010
1c007230:	18101010 	pcaddi	$r16,32896(0x8080)
1c007234:	c0000010 	0xc0000010
1c007238:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c00723c:	ffff0000 	0xffff0000
	...
1c007248:	18204080 	pcaddi	$r0,66052(0x10204)
1c00724c:	ffff030e 	0xffff030e
1c007250:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe7850 <_start-0x187b0>
1c007254:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c007258:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c00725c:	ffff1010 	0xffff1010
1c007260:	0c0c0808 	0x0c0c0808
1c007264:	01000000 	0x01000000
1c007268:	00000000 	0x00000000
1c00726c:	3f7f0000 	0x3f7f0000
	...
1c00727c:	3f7f0000 	0x3f7f0000
1c007280:	00000000 	0x00000000
1c007284:	8de80000 	0x8de80000
1c007288:	000000a3 	0x000000a3
1c00728c:	80808080 	0x80808080
1c007290:	80808080 	0x80808080
1c007294:	8088f8fc 	0x8088f8fc
1c007298:	80808080 	0x80808080
1c00729c:	8088f8fc 	0x8088f8fc
1c0072a0:	e0c08080 	0xe0c08080
1c0072a4:	000080c0 	0x000080c0
1c0072a8:	00000000 	0x00000000
1c0072ac:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c0072b0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0072b4:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c0072b8:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c0072bc:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c0072c0:	f0d01010 	0xf0d01010
1c0072c4:	00001038 	clo.w	$r24,$r1
1c0072c8:	00000000 	0x00000000
1c0072cc:	02020200 	slti	$r0,$r16,128(0x80)
1c0072d0:	c2820202 	0xc2820202
1c0072d4:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c0072d8:	0e02ffff 	0x0e02ffff
1c0072dc:	82c26212 	0x82c26212
1c0072e0:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c0072e4:	00000203 	0x00000203
1c0072e8:	10000000 	addu16i.d	$r0,$r0,0
1c0072ec:	06040808 	cacop	0x8,$r0,258(0x102)
1c0072f0:	00010102 	0x00010102
1c0072f4:	00000000 	0x00000000
1c0072f8:	00003f7f 	revb.d	$r31,$r27
1c0072fc:	01000000 	0x01000000
1c007300:	0e060303 	0x0e060303
1c007304:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c007308:	9b88e500 	0x9b88e500
1c00730c:	00000000 	0x00000000
1c007310:	c0000000 	0xc0000000
1c007314:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c007318:	80c04060 	0x80c04060
	...
1c007324:	f8000000 	0xf8000000
1c007328:	000000f8 	0x000000f8
1c00732c:	40800000 	beqz	$r0,32768(0x8000) # 1c00f32c <_sidata+0x7730>
1c007330:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c007334:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007338:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c00733c:	00000207 	0x00000207
1c007340:	0002ff00 	0x0002ff00
1c007344:	ff000000 	0xff000000
1c007348:	000000ff 	0x000000ff
1c00734c:	00000100 	0x00000100
1c007350:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c007354:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c009354 <_sidata+0x1758>
1c007358:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c00735c:	00008000 	0x00008000
1c007360:	00007f00 	0x00007f00
1c007364:	ff000000 	0xff000000
1c007368:	000000ff 	0x000000ff
1c00736c:	00000000 	0x00000000
1c007370:	303f0700 	0x303f0700
1c007374:	30303030 	0x30303030
1c007378:	30303030 	0x30303030
1c00737c:	00103f38 	add.w	$r24,$r25,$r15
1c007380:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007384:	3f703030 	0x3f703030
1c007388:	0000001f 	0x0000001f
1c00738c:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c0073a4:	40800000 	beqz	$r0,32768(0x8000) # 1c00f3a4 <_sidata+0x77a8>
1c0073a8:	00102040 	add.w	$r0,$r2,$r8
	...
1c0073c0:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c0073c4:	00000306 	0x00000306
	...
1c0073e0:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c0073e4:	000000c0 	0x000000c0
	...
1c007404:	04020100 	csrxchg	$r0,$r8,0x80
1c007408:	0010080c 	add.w	$r12,$r0,$r2
1c00740c:	e5000000 	0xe5000000
1c007410:	0000978c 	0x0000978c
	...
1c00741c:	08f8fc00 	0x08f8fc00
1c007420:	00000000 	0x00000000
1c007424:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c007434:	08080808 	0x08080808
1c007438:	08080808 	0x08080808
1c00743c:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c007440:	00000000 	0x00000000
1c007444:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcb540 <_start-0x34ac0>
1c007448:	18103020 	pcaddi	$r0,33153(0x8181)
1c00744c:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c007458:	80000000 	0x80000000
1c00745c:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c007460:	00000000 	0x00000000
1c007464:	0000ffff 	0x0000ffff
1c007468:	00000000 	0x00000000
1c00746c:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c007470:	00000000 	0x00000000
1c007474:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c007478:	00010103 	0x00010103
1c00747c:	003f7f00 	0x003f7f00
1c007480:	00000000 	0x00000000
1c007484:	30303f1f 	0x30303f1f
1c007488:	30303030 	0x30303030
1c00748c:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c007490:	bae40000 	0xbae40000
1c007494:	800000ac 	0x800000ac
1c007498:	80808080 	0x80808080
1c00749c:	80808080 	0x80808080
1c0074a0:	8c808080 	0x8c808080
1c0074a4:	80b0f898 	0x80b0f898
1c0074a8:	80808080 	0x80808080
1c0074ac:	c0808080 	0xc0808080
1c0074b0:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c0074bc:	08f8f800 	0x08f8f800
1c0074c0:	08080808 	0x08080808
1c0074c4:	08080808 	0x08080808
1c0074c8:	f8080808 	0xf8080808
1c0074cc:	000008fc 	0x000008fc
	...
1c0074dc:	e4cf0f00 	0xe4cf0f00
1c0074e0:	04040444 	csrxchg	$r4,$r2,0x101
1c0074e4:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c0074e8:	cf442404 	0xcf442404
1c0074ec:	0000008f 	0x0000008f
1c0074f0:	00000000 	0x00000000
1c0074f4:	20000000 	ll.w	$r0,$r0,0
1c0074f8:	04081010 	csrrd	$r16,0x204
1c0074fc:	00010306 	0x00010306
1c007500:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c007504:	00003f3f 	revb.d	$r31,$r25
1c007508:	00000000 	0x00000000
1c00750c:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c007510:	00000018 	0x00000018
1c007514:	89bcef00 	0x89bcef00
1c007518:	00000000 	0x00000000
1c00751c:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007520:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c007540:	06010000 	cacop	0x0,$r0,64(0x40)
1c007544:	0000f03c 	0x0000f03c
	...
1c007560:	c0800000 	0xc0800000
1c007564:	00000f78 	0x00000f78
	...
1c00757c:	0c081000 	0x0c081000
1c007580:	00010306 	0x00010306
	...
1c007598:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c00759c:	40404000 	beqz	$r0,16448(0x4040) # 1c00b5dc <_sidata+0x39e0>
1c0075a0:	e0202020 	0xe0202020
1c0075a4:	181030e0 	pcaddi	$r0,33159(0x8187)
1c0075a8:	00000018 	0x00000018
1c0075ac:	00008080 	0x00008080
1c0075b0:	fc000000 	0xfc000000
1c0075b4:	000008f8 	0x000008f8
1c0075b8:	00000000 	0x00000000
1c0075bc:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0075c0:	ff901010 	0xff901010
1c0075c4:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c0075c8:	00001018 	clo.w	$r24,$r0
1c0075cc:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c0075d0:	ff000000 	0xff000000
1c0075d4:	000000ff 	0x000000ff
1c0075d8:	00000000 	0x00000000
1c0075dc:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c0075e0:	ff030e18 	0xff030e18
1c0075e4:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c0075e8:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c0075ec:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c0075f0:	ff101010 	0xff101010
1c0075f4:	0c0808ff 	0x0c0808ff
1c0075f8:	0000000c 	0x0000000c
1c0075fc:	00000001 	0x00000001
1c007600:	7f000000 	0x7f000000
1c007604:	0000003f 	0x0000003f
	...
1c007610:	7f000000 	0x7f000000
1c007614:	0000003f 	0x0000003f
1c007618:	e6000000 	0xe6000000
1c00761c:	0000808a 	0x0000808a
1c007620:	00000000 	0x00000000
1c007624:	08f8fc00 	0x08f8fc00
	...
1c007630:	f8fc0000 	0xf8fc0000
1c007634:	00000008 	0x00000008
	...
1c007640:	02020202 	slti	$r2,$r16,128(0x80)
1c007644:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c007648:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ab9c8 <_sidata+0xa3dcc>
1c00764c:	82828282 	0x82828282
1c007650:	ffff8282 	0xffff8282
1c007654:	82828282 	0x82828282
1c007658:	020383c2 	slti	$r2,$r30,224(0xe0)
1c00765c:	00000000 	0x00000000
1c007660:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c007664:	01ffff02 	0x01ffff02
1c007668:	00000000 	0x00000000
1c00766c:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c007670:	8000c070 	0x8000c070
1c007674:	0f3c70c0 	0x0f3c70c0
1c007678:	00000003 	0x00000003
1c00767c:	00000000 	0x00000000
1c007680:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c007684:	003f3f70 	0x003f3f70
1c007688:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c00768c:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c007690:	0703060c 	0x0703060c
1c007694:	38180c0f 	stx.w	$r15,$r0,$r3
1c007698:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c00769c:	8fe50000 	0x8fe50000
1c0076a0:	00000091 	0x00000091
1c0076a4:	f0800000 	0xf0800000
1c0076a8:	00000070 	0x00000070
1c0076ac:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c0076b0:	00000000 	0x00000000
1c0076b4:	70100800 	0x70100800
1c0076b8:	0000c0e0 	0x0000c0e0
	...
1c0076c4:	05070e04 	0x05070e04
1c0076c8:	84040404 	0x84040404
1c0076cc:	8487fff4 	0x8487fff4
1c0076d0:	84848484 	0x84848484
1c0076d4:	84848484 	0x84848484
1c0076d8:	0484c584 	csrxchg	$r4,$r12,0x2131
1c0076dc:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c0076e8:	0f3ce080 	0x0f3ce080
1c0076ec:	06010003 	cacop	0x3,$r0,64(0x40)
1c0076f0:	80e03018 	0x80e03018
1c0076f4:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c0076f8:	00000307 	0x00000307
1c0076fc:	00000000 	0x00000000
1c007700:	20000000 	ll.w	$r0,$r0,0
1c007704:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c007708:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c00770c:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c007710:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c007714:	0c060703 	0x0c060703
1c007718:	3038181c 	0x3038181c
1c00771c:	00103030 	add.w	$r16,$r1,$r12
1c007720:	95b1e500 	0x95b1e500
1c007724:	00000000 	0x00000000
1c007728:	08f80400 	0x08f80400
1c00772c:	08080808 	0x08080808
1c007730:	08080808 	0x08080808
1c007734:	08080808 	0x08080808
1c007738:	08080808 	0x08080808
1c00773c:	08f8fc08 	0x08f8fc08
	...
1c007748:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c00774c:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c007750:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c007754:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c007758:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c00775c:	00233321 	div.du	$r1,$r25,$r12
	...
1c007768:	043fff00 	csrxchg	$r0,$r24,0xfff
1c00776c:	fc040404 	0xfc040404
1c007770:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c007774:	04c4740c 	csrrd	$r12,0x311d
1c007778:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00bbfc <_sidata+0x4000>
1c00777c:	06062434 	cacop	0x14,$r1,393(0x189)
1c007780:	00000004 	0x00000004
1c007784:	18204000 	pcaddi	$r0,66048(0x10200)
1c007788:	00000107 	0x00000107
1c00778c:	3f000000 	0x3f000000
1c007790:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c007794:	03000004 	lu52i.d	$r4,$r0,0
1c007798:	180c0607 	pcaddi	$r7,24624(0x6030)
1c00779c:	30383818 	0x30383818
1c0077a0:	00001010 	clo.w	$r16,$r0
1c0077a4:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c0077a8:	80808000 	0x80808000
1c0077ac:	80808080 	0x80808080
1c0077b0:	80808080 	0x80808080
1c0077b4:	88b8fce0 	0x88b8fce0
1c0077b8:	80808080 	0x80808080
1c0077bc:	80808080 	0x80808080
1c0077c0:	c0e0c080 	0xc0e0c080
1c0077c4:	00000080 	0x00000080
1c0077c8:	00000000 	0x00000000
1c0077cc:	c0800000 	0xc0800000
1c0077d0:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c0077d4:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c0077d8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0077dc:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c0077e8:	04081000 	csrrd	$r0,0x204
1c0077ec:	00010306 	0x00010306
1c0077f0:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfebaec <_start-0x14514>
1c0077f4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0aba34 <_sidata+0xa3e38>
1c0077f8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0aba38 <_sidata+0xa3e3c>
1c0077fc:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c007810:	00003f7f 	revb.d	$r31,$r27
1c007814:	00000000 	0x00000000
1c007818:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00781c:	003f7030 	0x003f7030
1c007820:	00000000 	0x00000000
1c007824:	e9000000 	0xe9000000
1c007828:	00009099 	0x00009099
1c00782c:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c007830:	f0101010 	0xf0101010
1c007834:	00001078 	clo.w	$r24,$r3
1c007838:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c00783c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007840:	f8101010 	0xf8101010
1c007844:	00000010 	0x00000010
1c007848:	00000000 	0x00000000
1c00784c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007850:	c33e0000 	0xc33e0000
1c007854:	00000000 	0x00000000
1c007858:	8484ffff 	0x8484ffff
1c00785c:	84848484 	0x84848484
1c007860:	ff848484 	0xff848484
	...
1c00786c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007870:	c0c04000 	0xc0c04000
1c007874:	00007eff 	0x00007eff
1c007878:	0000ffff 	0x0000ffff
1c00787c:	c0701e01 	0xc0701e01
1c007880:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c007884:	0000040e 	0x0000040e
1c007888:	00000000 	0x00000000
1c00788c:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c007890:	00010000 	asrtle.d	$r0,$r0
1c007894:	00000000 	0x00000000
1c007898:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c00789c:	01020204 	0x01020204
1c0078a0:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c0078a4:	00183818 	sra.w	$r24,$r0,$r14
1c0078a8:	85e50000 	0x85e50000
1c0078ac:	000000ac 	0x000000ac
1c0078b0:	00000000 	0x00000000
1c0078b4:	80000000 	0x80000000
1c0078b8:	001078e0 	add.w	$r0,$r7,$r30
1c0078bc:	1c000000 	pcaddu12i	$r0,0
1c0078c0:	000080e0 	0x000080e0
	...
1c0078d0:	c0800000 	0xc0800000
1c0078d4:	070e3860 	0x070e3860
1c0078d8:	00000001 	0x00000001
1c0078dc:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c0078e0:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c0078e4:	c0c0e070 	0xc0c0e070
1c0078e8:	00000080 	0x00000080
1c0078ec:	04000000 	csrrd	$r0,0x0
1c0078f0:	00010302 	0x00010302
1c0078f4:	c0000000 	0xc0000000
1c0078f8:	071c3860 	0x071c3860
1c0078fc:	00000103 	0x00000103
1c007900:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c007904:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c007908:	00010103 	0x00010103
1c00790c:	00000000 	0x00000000
1c007910:	38080000 	ldx.w	$r0,$r0,$r0
1c007914:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c007918:	08081818 	0x08081818
1c00791c:	08080808 	0x08080808
1c007920:	0f090808 	0x0f090808
1c007924:	00307c1e 	0x00307c1e
1c007928:	00000000 	0x00000000
1c00792c:	b88fe500 	0xb88fe500
1c007930:	00000000 	0x00000000
1c007934:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007938:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00793c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007940:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007944:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007948:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c00794c:	00000000 	0x00000000
1c007950:	04000000 	csrrd	$r0,0x0
1c007954:	84c40404 	0x84c40404
1c007958:	84848484 	0x84848484
1c00795c:	84848484 	0x84848484
1c007960:	0684c484 	0x0684c484
1c007964:	00000406 	0x00000406
1c007968:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c007974:	ffff0000 	0xffff0000
1c007978:	40404040 	beqz	$r2,16448(0x4040) # 1c00b9b8 <_sidata+0x3dbc>
1c00797c:	40404040 	beqz	$r2,16448(0x4040) # 1c00b9bc <_sidata+0x3dc0>
1c007980:	0000ff40 	0x0000ff40
1c007984:	00000000 	0x00000000
1c007988:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c007994:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c0079a0:	00010100 	asrtle.d	$r8,$r0
1c0079a4:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c0079a8:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c0079ac:	00000000 	0x00000000
1c0079b0:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c0079b4:	00000000 	0x00000000
1c0079b8:	f0080000 	0xf0080000
1c0079bc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0079c0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0079c4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0079c8:	f0f81010 	0xf0f81010
	...
1c0079d8:	ff000000 	0xff000000
1c0079dc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abc1c <_sidata+0xa4020>
1c0079e0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abc20 <_sidata+0xa4024>
1c0079e4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abc24 <_sidata+0xa4028>
1c0079e8:	ffff4242 	0xffff4242
	...
1c0079f4:	08000000 	0x08000000
1c0079f8:	c0e17030 	0xc0e17030
1c0079fc:	fe000000 	0xfe000000
1c007a00:	000000fe 	0x000000fe
1c007a04:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c007a08:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c013a88 <_sidata+0xbe8c>
1c007a0c:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c007a10:	00000000 	0x00000000
1c007a14:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007a18:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c007a1c:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c007a20:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c007a24:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c007a28:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c007a2c:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c007a30:	e7000000 	0xe7000000
1c007a34:	0000baa4 	0x0000baa4
1c007a38:	00000000 	0x00000000
1c007a3c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a40:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a44:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a48:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a4c:	30382020 	0x30382020
1c007a50:	00000020 	0x00000020
1c007a54:	00000000 	0x00000000
1c007a58:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a5c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a60:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a64:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c007a68:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a6c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007a70:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c007a74:	00000000 	0x00000000
1c007a78:	80000000 	0x80000000
1c007a7c:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c007a80:	00000406 	0x00000406
1c007a84:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c007a88:	04020000 	csrrd	$r0,0x80
1c007a8c:	e0701808 	0xe0701808
1c007a90:	000080c0 	0x000080c0
1c007a94:	00000000 	0x00000000
1c007a98:	01030408 	fsub.d	$f8,$f0,$f1
1c007a9c:	08000000 	0x08000000
1c007aa0:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c007aa4:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c007ab0:	00030701 	0x00030701
1c007ab4:	aee50000 	0xaee50000
1c007ab8:	0000009e 	0x0000009e
1c007abc:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c007ac0:	00000000 	0x00000000
1c007ac4:	04000000 	csrrd	$r0,0x0
1c007ac8:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c007ad4:	00000080 	0x00000080
1c007ad8:	00000000 	0x00000000
1c007adc:	810f1c18 	0x810f1c18
1c007ae0:	09010101 	0x09010101
1c007ae4:	01713919 	0x01713919
1c007ae8:	fdff0101 	0xfdff0101
1c007aec:	01010105 	fadd.d	$f5,$f8,$f0
1c007af0:	07090101 	0x07090101
1c007af4:	00020307 	0x00020307
1c007af8:	10000000 	addu16i.d	$r0,$r0,0
1c007afc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b00:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c007b04:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b08:	93bffcd0 	0x93bffcd0
1c007b0c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b10:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b14:	00101818 	add.w	$r24,$r0,$r6
1c007b18:	40000000 	beqz	$r0,0 # 1c007b18 <tfont32+0x998>
1c007b1c:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007b20:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c007b24:	070e0c18 	0x070e0c18
1c007b28:	01000003 	0x01000003
1c007b2c:	06020301 	cacop	0x1,$r24,128(0x80)
1c007b30:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c007b34:	00000030 	0x00000030
1c007b38:	8caae900 	0x8caae900
1c007b3c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007b40:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c007b44:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c007b48:	00000000 	0x00000000
1c007b4c:	f0800000 	0xf0800000
1c007b50:	80e8183c 	0x80e8183c
	...
1c007b5c:	80000000 	0x80000000
1c007b60:	00001fff 	ctz.w	$r31,$r31
1c007b64:	003fff00 	0x003fff00
1c007b68:	50204080 	b	33562688(0x2002040) # 1e009ba8 <_sidata+0x2001fac>
1c007b6c:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30beb0 <_sidata+0x3042b4>
1c007b70:	43404040 	beqz	$r2,213056(0x34040) # 1c03bbb0 <_sidata+0x33fb4>
1c007b74:	70784c66 	0x70784c66
1c007b78:	00202070 	div.w	$r16,$r3,$r8
1c007b7c:	c1c14000 	0xc1c14000
1c007b80:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c007b84:	ff810121 	0xff810121
1c007b88:	1c00000f 	pcaddu12i	$r15,0
1c007b8c:	0c02c0f0 	0x0c02c0f0
1c007b90:	0000e0f8 	0x0000e0f8
1c007b94:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c007ba0:	18080800 	pcaddi	$r0,16448(0x4040)
1c007ba4:	070f1838 	0x070f1838
1c007ba8:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c007bac:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c007bb0:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c007bb4:	18101013 	pcaddi	$r19,32896(0x8080)
1c007bb8:	00001018 	clo.w	$r24,$r0
1c007bbc:	6f746f4d 	bgeu	$r26,$r13,-35732(0x3746c) # 1bfff028 <_start-0xfd8>
1c007bc0:	6f432072 	bgeu	$r3,$r18,-48352(0x34320) # 1bffbee0 <_start-0x4120>
1c007bc4:	6172746e 	blt	$r3,$r14,94836(0x17274) # 1c01ee38 <_sidata+0x1723c>
1c007bc8:	0000006c 	0x0000006c
1c007bcc:	65657053 	bge	$r2,$r19,91504(0x16570) # 1c01e13c <_sidata+0x16540>
1c007bd0:	6f432064 	bgeu	$r3,$r4,-48352(0x34320) # 1bffbef0 <_start-0x4110>
1c007bd4:	6172746e 	blt	$r3,$r14,94836(0x17274) # 1c01ee48 <_sidata+0x1724c>
1c007bd8:	0000006c 	0x0000006c
1c007bdc:	75636553 	0x75636553
1c007be0:	79746972 	0x79746972
1c007be4:	65684320 	bge	$r25,$r0,92224(0x16840) # 1c01e424 <_sidata+0x16828>
1c007be8:	00006b63 	rdtime.d	$r3,$r27
1c007bec:	00000030 	0x00000030
1c007bf0:	00000031 	0x00000031
1c007bf4:	00000032 	0x00000032
1c007bf8:	00000033 	0x00000033

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006029 	pcaddu12i	$r9,769(0x301)
80001008:	8000013c 	0x8000013c
8000100c:	8000101c 	0x8000101c
80001010:	8000000c 	0x8000000c
80001014:	1c006020 	pcaddu12i	$r0,769(0x301)
80001018:	80000174 	0x80000174

8000101c <g_SystemFreq>:
8000101c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001020 <pwm_cmp0>:
80001020:	00000001 	0x00000001

80001024 <value>:
80001024:	00000002 	0x00000002

Disassembly of section .bss:

80000000 <gpio_state0>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <count_motor>:
80000004:	00000000 	0x00000000

80000008 <receive_Data.1838>:
	...

80000009 <key_value>:
	...

8000000a <last_key.1896>:
	...

8000000c <Circular_queue>:
	...

8000013c <Read_length>:
8000013c:	00000000 	0x00000000

80000140 <str>:
	...

80000174 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
