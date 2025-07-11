
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438012f 	lu12i.w	$r15,114697(0x1c009)
1c00000c:	038251ef 	ori	$r15,$r15,0x94
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
1c000048:	038b91ad 	ori	$r13,$r13,0x2e4
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
1c001090:	54395800 	bl	14680(0x3958) # 1c0049e8 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5439a000 	bl	14752(0x39a0) # 1c004a38 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543a2c00 	bl	14892(0x3a2c) # 1c004acc <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543a6000 	bl	14944(0x3a60) # 1c004b08 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54388000 	bl	14464(0x3880) # 1c004930 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543e5c00 	bl	15964(0x3e5c) # 1c004f14 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543be400 	bl	15332(0x3be4) # 1c004cac <intc_handler>
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
1c001290:	28b64084 	ld.w	$r4,$r4,-624(0xd90)
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
1c0013d4:	541dbc00 	bl	7612(0x1dbc) # 1c003190 <DisableInt>
1c0013d8:	541d1c00 	bl	7452(0x1d1c) # 1c0030f4 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54255c00 	bl	9564(0x255c) # 1c00393c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54249c00 	bl	9372(0x249c) # 1c003884 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54167c00 	bl	5756(0x167c) # 1c002a70 <Uart0_init>
1c0013f8:	541f8c00 	bl	8076(0x1f8c) # 1c003384 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541d9800 	bl	7576(0x1d98) # 1c0031b4 <EnableInt>
1c001420:	54202c00 	bl	8236(0x202c) # 1c00344c <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541df400 	bl	7668(0x1df4) # 1c00321c <Wake_Set>
1c00142c:	5424e400 	bl	9444(0x24e4) # 1c003910 <WDG_DogFeed>
1c001430:	541e9800 	bl	7832(0x1e98) # 1c0032c8 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001444:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541ee800 	bl	7912(0x1ee8) # 1c003334 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00145c:	02b0d084 	addi.w	$r4,$r4,-972(0xc34)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	5449a400 	bl	18852(0x49a4) # 1c005e08 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00147c:	02b08084 	addi.w	$r4,$r4,-992(0xc20)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54498400 	bl	18820(0x4984) # 1c005e08 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00149c:	02b04084 	addi.w	$r4,$r4,-1008(0xc10)
1c0014a0:	5406f400 	bl	1780(0x6f4) # 1c001b94 <myprintf>
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

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <gpio_set_direction>:
gpio_set_direction():
1c001860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00186c:	0015008c 	move	$r12,$r4
1c001870:	001500ad 	move	$r13,$r5
1c001874:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001878:	001501ac 	move	$r12,$r13
1c00187c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001880:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00188c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001890:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c0018f4 <gpio_set_direction+0x94>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0381018c 	ori	$r12,$r12,0x40
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0014300c 	nor	$r12,$r0,$r12
1c0018b0:	0015018e 	move	$r14,$r12
1c0018b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b8:	0381018c 	ori	$r12,$r12,0x40
1c0018bc:	0014b9ad 	and	$r13,$r13,$r14
1c0018c0:	2980018d 	st.w	$r13,$r12,0
1c0018c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c8:	0381018c 	ori	$r12,$r12,0x40
1c0018cc:	2880018d 	ld.w	$r13,$r12,0
1c0018d0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0015018e 	move	$r14,$r12
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	0381018c 	ori	$r12,$r12,0x40
1c0018e8:	001539ad 	or	$r13,$r13,$r14
1c0018ec:	2980018d 	st.w	$r13,$r12,0
1c0018f0:	50008c00 	b	140(0x8c) # 1c00197c <gpio_set_direction+0x11c>
1c0018f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018fc:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001978 <gpio_set_direction+0x118>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001908:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001978 <gpio_set_direction+0x118>
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	0381418c 	ori	$r12,$r12,0x50
1c001920:	2880018d 	ld.w	$r13,$r12,0
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381418c 	ori	$r12,$r12,0x50
1c001940:	0014b9ad 	and	$r13,$r13,$r14
1c001944:	2980018d 	st.w	$r13,$r12,0
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381418c 	ori	$r12,$r12,0x50
1c001950:	2880018d 	ld.w	$r13,$r12,0
1c001954:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00195c:	001731cc 	sll.w	$r12,$r14,$r12
1c001960:	0015018e 	move	$r14,$r12
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	0381418c 	ori	$r12,$r12,0x50
1c00196c:	001539ad 	or	$r13,$r13,$r14
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000800 	b	8(0x8) # 1c00197c <gpio_set_direction+0x11c>
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001980:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001984:	4c000020 	jirl	$r0,$r1,0

1c001988 <myputchar>:
myputchar():
1c001988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00198c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001990:	29806076 	st.w	$r22,$r3,24(0x18)
1c001994:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001998:	0015008c 	move	$r12,$r4
1c00199c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019a4:	00150185 	move	$r5,$r12
1c0019a8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019ac:	540fe400 	bl	4068(0xfe4) # 1c002990 <UART_SendData>
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019c0:	4c000020 	jirl	$r0,$r1,0

1c0019c4 <printbase>:
printbase():
1c0019c4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019c8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019cc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019d0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019d4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019d8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019dc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019e0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019e4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019e8:	40002580 	beqz	$r12,36(0x24) # 1c001a0c <printbase+0x48>
1c0019ec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a0c <printbase+0x48>
1c0019f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f8:	0011300c 	sub.w	$r12,$r0,$r12
1c0019fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a00:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a04:	57ff87ff 	bl	-124(0xfffff84) # 1c001988 <myputchar>
1c001a08:	50000c00 	b	12(0xc) # 1c001a14 <printbase+0x50>
1c001a0c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a18:	50005000 	b	80(0x50) # 1c001a68 <printbase+0xa4>
1c001a1c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a20:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a30 <printbase+0x6c>
1c001a2c:	002a0007 	break	0x7
1c001a30:	00005dcc 	ext.w.b	$r12,$r14
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a3c:	001035cd 	add.w	$r13,$r14,$r13
1c001a40:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a44:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a48:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001a50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a58 <printbase+0x94>
1c001a54:	002a0007 	break	0x7
1c001a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a6c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a1c <printbase+0x58>
1c001a70:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a7c:	001231ad 	slt	$r13,$r13,$r12
1c001a80:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a84:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a88:	001531cc 	or	$r12,$r14,$r12
1c001a8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a90:	50007400 	b	116(0x74) # 1c001b04 <printbase+0x140>
1c001a94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ab8 <printbase+0xf4>
1c001aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001aa8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001aac:	001031ac 	add.w	$r12,$r13,$r12
1c001ab0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <printbase+0xf8>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001ac0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ac4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ac8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001ae0 <printbase+0x11c>
1c001acc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ad4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001adc:	50001400 	b	20(0x14) # 1c001af0 <printbase+0x12c>
1c001ae0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001aec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af0:	00150184 	move	$r4,$r12
1c001af4:	57fe97ff 	bl	-364(0xffffe94) # 1c001988 <myputchar>
1c001af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001afc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001a94 <printbase+0xd0>
1c001b0c:	0015000c 	move	$r12,$r0
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b18:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b1c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <puts>:
puts():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b38:	50003000 	b	48(0x30) # 1c001b68 <puts+0x44>
1c001b3c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b40:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b44:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b50 <puts+0x2c>
1c001b48:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b4c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001988 <myputchar>
1c001b50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b54:	00150184 	move	$r4,$r12
1c001b58:	57fe33ff 	bl	-464(0xffffe30) # 1c001988 <myputchar>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b64:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001b70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b74:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b78:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b3c <puts+0x18>
1c001b7c:	0015000c 	move	$r12,$r0
1c001b80:	00150184 	move	$r4,$r12
1c001b84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <myprintf>:
myprintf():
1c001b94:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001b98:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b9c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001ba0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001ba4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ba8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bac:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bb0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bb4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bb8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bbc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bc0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bc4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bc8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001bdc:	50033000 	b	816(0x330) # 1c001f0c <myprintf+0x378>
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001be8:	001031ac 	add.w	$r12,$r13,$r12
1c001bec:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001bf4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001bfc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ee0 <myprintf+0x34c>
1c001c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	2800018c 	ld.b	$r12,$r12,0
1c001c1c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c20:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c24:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ed0 <myprintf+0x33c>
1c001c28:	0040898d 	slli.w	$r13,$r12,0x2
1c001c2c:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c30:	0292218c 	addi.w	$r12,$r12,1160(0x488)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2880018c 	ld.w	$r12,$r12,0
1c001c3c:	4c000180 	jirl	$r0,$r12,0
1c001c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	00150184 	move	$r4,$r12
1c001c4c:	57fedbff 	bl	-296(0xffffed8) # 1c001b24 <puts>
1c001c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c68:	50029800 	b	664(0x298) # 1c001f00 <myprintf+0x36c>
1c001c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001988 <myputchar>
1c001c80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	50026800 	b	616(0x268) # 1c001f00 <myprintf+0x36c>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	00150007 	move	$r7,$r0
1c001ca8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd13ff 	bl	-752(0xffffd10) # 1c0019c4 <printbase>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50023000 	b	560(0x230) # 1c001f00 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019c4 <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	5001f800 	b	504(0x1f8) # 1c001f00 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	00150007 	move	$r7,$r0
1c001d18:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fca3ff 	bl	-864(0xffffca0) # 1c0019c4 <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001c000 	b	448(0x1c0) # 1c001f00 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fc6bff 	bl	-920(0xffffc68) # 1c0019c4 <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	50018800 	b	392(0x188) # 1c001f00 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc33ff 	bl	-976(0xffffc30) # 1c0019c4 <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50015000 	b	336(0x150) # 1c001f00 <myprintf+0x36c>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001988 <myputchar>
1c001dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc8:	50013800 	b	312(0x138) # 1c001f00 <myprintf+0x36c>
1c001dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ddc:	50003c00 	b	60(0x3c) # 1c001e18 <myprintf+0x284>
1c001de0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001de8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001df8:	001031cc 	add.w	$r12,$r14,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e04:	001031ac 	add.w	$r12,$r13,$r12
1c001e08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e24:	001031ac 	add.w	$r12,$r13,$r12
1c001e28:	2800018d 	ld.b	$r13,$r12,0
1c001e2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e30:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c08 <myprintf+0x74>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e40:	001031ac 	add.w	$r12,$r13,$r12
1c001e44:	2800018d 	ld.b	$r13,$r12,0
1c001e48:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e4c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001de0 <myprintf+0x24c>
1c001e50:	53fdbbff 	b	-584(0xffffdb8) # 1c001c08 <myprintf+0x74>
1c001e54:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e58:	50003c00 	b	60(0x3c) # 1c001e94 <myprintf+0x300>
1c001e5c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e64:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e70:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e74:	001031cc 	add.w	$r12,$r14,$r12
1c001e78:	2800018c 	ld.b	$r12,$r12,0
1c001e7c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea0:	001031ac 	add.w	$r12,$r13,$r12
1c001ea4:	2800018d 	ld.b	$r13,$r12,0
1c001ea8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eac:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c08 <myprintf+0x74>
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ebc:	001031ac 	add.w	$r12,$r13,$r12
1c001ec0:	2800018d 	ld.b	$r13,$r12,0
1c001ec4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ec8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e5c <myprintf+0x2c8>
1c001ecc:	53fd3fff 	b	-708(0xffffd3c) # 1c001c08 <myprintf+0x74>
1c001ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001988 <myputchar>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	50002400 	b	36(0x24) # 1c001f00 <myprintf+0x36c>
1c001ee0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ee8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001ef4 <myprintf+0x360>
1c001eec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ef0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001988 <myputchar>
1c001ef4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001988 <myputchar>
1c001f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f14:	001031ac 	add.w	$r12,$r13,$r12
1c001f18:	2800018c 	ld.b	$r12,$r12,0
1c001f1c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001be0 <myprintf+0x4c>
1c001f20:	0015000c 	move	$r12,$r0
1c001f24:	00150184 	move	$r4,$r12
1c001f28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f2c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <vsputs>:
vsputs():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f50:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f54:	54182000 	bl	6176(0x1820) # 1c003774 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	5417b000 	bl	6064(0x17b0) # 1c003718 <strcpy>
1c001f6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f74:	001031ac 	add.w	$r12,$r13,$r12
1c001f78:	00150184 	move	$r4,$r12
1c001f7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <vsputchar>:
vsputchar():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001f9c:	001500ac 	move	$r12,$r5
1c001fa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fac:	2900018d 	st.b	$r13,$r12,0
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	00150184 	move	$r4,$r12
1c001fc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <vsprintbase>:
vsprintbase():
1c001fd0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fd4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fd8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fdc:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fe0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001fe4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001fe8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001fec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ff0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ff4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ff8:	40002d80 	beqz	$r12,44(0x2c) # 1c002024 <vsprintbase+0x54>
1c001ffc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002000:	64002580 	bge	$r12,$r0,36(0x24) # 1c002024 <vsprintbase+0x54>
1c002004:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002008:	0011300c 	sub.w	$r12,$r0,$r12
1c00200c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002010:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002014:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002018:	57ff77ff 	bl	-140(0xfffff74) # 1c001f8c <vsputchar>
1c00201c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002020:	50000c00 	b	12(0xc) # 1c00202c <vsprintbase+0x5c>
1c002024:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00202c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002030:	50005000 	b	80(0x50) # 1c002080 <vsprintbase+0xb0>
1c002034:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002038:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00203c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002040:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002048 <vsprintbase+0x78>
1c002044:	002a0007 	break	0x7
1c002048:	00005dcc 	ext.w.b	$r12,$r14
1c00204c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002050:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002054:	001035cd 	add.w	$r13,$r14,$r13
1c002058:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00205c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002060:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002064:	002135cc 	div.wu	$r12,$r14,$r13
1c002068:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002070 <vsprintbase+0xa0>
1c00206c:	002a0007 	break	0x7
1c002070:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00207c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002080:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002084:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002034 <vsprintbase+0x64>
1c002088:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00208c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002090:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002094:	001231ad 	slt	$r13,$r13,$r12
1c002098:	0013b5ce 	masknez	$r14,$r14,$r13
1c00209c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020a0:	001531cc 	or	$r12,$r14,$r12
1c0020a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a8:	50008400 	b	132(0x84) # 1c00212c <vsprintbase+0x15c>
1c0020ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020d0 <vsprintbase+0x100>
1c0020b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020cc:	50000800 	b	8(0x8) # 1c0020d4 <vsprintbase+0x104>
1c0020d0:	0015000c 	move	$r12,$r0
1c0020d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020fc <vsprintbase+0x12c>
1c0020e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f4:	00005d8c 	ext.w.b	$r12,$r12
1c0020f8:	50001800 	b	24(0x18) # 1c002110 <vsprintbase+0x140>
1c0020fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002108:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00210c:	00005d8c 	ext.w.b	$r12,$r12
1c002110:	00150185 	move	$r5,$r12
1c002114:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002118:	57fe77ff 	bl	-396(0xffffe74) # 1c001f8c <vsputchar>
1c00211c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002124:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002128:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020ac <vsprintbase+0xdc>
1c002134:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002138:	00150184 	move	$r4,$r12
1c00213c:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002140:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002144:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <vsprintf>:
vsprintf():
1c00214c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002150:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002154:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002158:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00215c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002160:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002164:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002174:	50036c00 	b	876(0x36c) # 1c0024e0 <vsprintf+0x394>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002180:	001031ac 	add.w	$r12,$r13,$r12
1c002184:	2a00018c 	ld.bu	$r12,$r12,0
1c002188:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00218c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002190:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002194:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024a4 <vsprintf+0x358>
1c002198:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021ac:	001031ac 	add.w	$r12,$r13,$r12
1c0021b0:	2800018c 	ld.b	$r12,$r12,0
1c0021b4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021b8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021bc:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00248c <vsprintf+0x340>
1c0021c0:	0040898d 	slli.w	$r13,$r12,0x2
1c0021c4:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021c8:	0281018c 	addi.w	$r12,$r12,64(0x40)
1c0021cc:	001031ac 	add.w	$r12,$r13,$r12
1c0021d0:	2880018c 	ld.w	$r12,$r12,0
1c0021d4:	4c000180 	jirl	$r0,$r12,0
1c0021d8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021dc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021e0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021e4:	2880018c 	ld.w	$r12,$r12,0
1c0021e8:	00150185 	move	$r5,$r12
1c0021ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021f0:	57fd4bff 	bl	-696(0xffffd48) # 1c001f38 <vsputs>
1c0021f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002204:	5002d000 	b	720(0x2d0) # 1c0024d4 <vsprintf+0x388>
1c002208:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00220c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002210:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002214:	2880018c 	ld.w	$r12,$r12,0
1c002218:	00005d8c 	ext.w.b	$r12,$r12
1c00221c:	00150185 	move	$r5,$r12
1c002220:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002224:	57fd6bff 	bl	-664(0xffffd68) # 1c001f8c <vsputchar>
1c002228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00222c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002238:	50029c00 	b	668(0x29c) # 1c0024d4 <vsprintf+0x388>
1c00223c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002240:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002244:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	00150008 	move	$r8,$r0
1c002250:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002254:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002258:	00150185 	move	$r5,$r12
1c00225c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002260:	57fd73ff 	bl	-656(0xffffd70) # 1c001fd0 <vsprintbase>
1c002264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002274:	50026000 	b	608(0x260) # 1c0024d4 <vsprintf+0x388>
1c002278:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00227c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002280:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002284:	2880018c 	ld.w	$r12,$r12,0
1c002288:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00228c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002290:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002294:	00150185 	move	$r5,$r12
1c002298:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00229c:	57fd37ff 	bl	-716(0xffffd34) # 1c001fd0 <vsprintbase>
1c0022a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50022400 	b	548(0x224) # 1c0024d4 <vsprintf+0x388>
1c0022b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022b8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022bc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022c0:	2880018c 	ld.w	$r12,$r12,0
1c0022c4:	00150008 	move	$r8,$r0
1c0022c8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022cc:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022d0:	00150185 	move	$r5,$r12
1c0022d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022d8:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fd0 <vsprintbase>
1c0022dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	5001e800 	b	488(0x1e8) # 1c0024d4 <vsprintf+0x388>
1c0022f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022f4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022f8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022fc:	2880018c 	ld.w	$r12,$r12,0
1c002300:	00150008 	move	$r8,$r0
1c002304:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002308:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00230c:	00150185 	move	$r5,$r12
1c002310:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002314:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fd0 <vsprintbase>
1c002318:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	5001ac00 	b	428(0x1ac) # 1c0024d4 <vsprintf+0x388>
1c00232c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002330:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002334:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002338:	2880018c 	ld.w	$r12,$r12,0
1c00233c:	00150008 	move	$r8,$r0
1c002340:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002344:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002348:	00150185 	move	$r5,$r12
1c00234c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002350:	57fc83ff 	bl	-896(0xffffc80) # 1c001fd0 <vsprintbase>
1c002354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002364:	50017000 	b	368(0x170) # 1c0024d4 <vsprintf+0x388>
1c002368:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00236c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002370:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f8c <vsputchar>
1c002374:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00237c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002384:	50015000 	b	336(0x150) # 1c0024d4 <vsprintf+0x388>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002398:	50003c00 	b	60(0x3c) # 1c0023d4 <vsprintf+0x288>
1c00239c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023b4:	001031cc 	add.w	$r12,$r14,$r12
1c0023b8:	2800018c 	ld.b	$r12,$r12,0
1c0023bc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	2800018d 	ld.b	$r13,$r12,0
1c0023e8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023ec:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021a0 <vsprintf+0x54>
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2800018d 	ld.b	$r13,$r12,0
1c002404:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002408:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00239c <vsprintf+0x250>
1c00240c:	53fd97ff 	b	-620(0xffffd94) # 1c0021a0 <vsprintf+0x54>
1c002410:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002414:	50003c00 	b	60(0x3c) # 1c002450 <vsprintf+0x304>
1c002418:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00241c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002420:	001c31ad 	mul.w	$r13,$r13,$r12
1c002424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002430:	001031cc 	add.w	$r12,$r14,$r12
1c002434:	2800018c 	ld.b	$r12,$r12,0
1c002438:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00243c:	001031ac 	add.w	$r12,$r13,$r12
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00244c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00245c:	001031ac 	add.w	$r12,$r13,$r12
1c002460:	2800018d 	ld.b	$r13,$r12,0
1c002464:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002468:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021a0 <vsprintf+0x54>
1c00246c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002474:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002478:	001031ac 	add.w	$r12,$r13,$r12
1c00247c:	2800018d 	ld.b	$r13,$r12,0
1c002480:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002484:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002418 <vsprintf+0x2cc>
1c002488:	53fd1bff 	b	-744(0xffffd18) # 1c0021a0 <vsprintf+0x54>
1c00248c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002490:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002494:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f8c <vsputchar>
1c002498:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	50003400 	b	52(0x34) # 1c0024d4 <vsprintf+0x388>
1c0024a4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024c0 <vsprintf+0x374>
1c0024b0:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024b4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b8:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f8c <vsputchar>
1c0024bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c0:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024c4:	00150185 	move	$r5,$r12
1c0024c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024cc:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f8c <vsputchar>
1c0024d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024e8:	001031ac 	add.w	$r12,$r13,$r12
1c0024ec:	2800018c 	ld.b	$r12,$r12,0
1c0024f0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002178 <vsprintf+0x2c>
1c0024f4:	00150005 	move	$r5,$r0
1c0024f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024fc:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f8c <vsputchar>
1c002500:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00250c:	001131ac 	sub.w	$r12,$r13,$r12
1c002510:	00150184 	move	$r4,$r12
1c002514:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002518:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00251c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002520:	4c000020 	jirl	$r0,$r1,0

1c002524 <sprintf>:
sprintf():
1c002524:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002528:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00252c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002530:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00253c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002540:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002544:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002548:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00254c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002550:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002554:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002558:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00255c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002564:	00150186 	move	$r6,$r12
1c002568:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00256c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002570:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00214c <vsprintf>
1c002574:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00257c:	00150184 	move	$r4,$r12
1c002580:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002584:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002588:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00258c:	4c000020 	jirl	$r0,$r1,0

1c002590 <UART_Init>:
UART_Init():
1c002590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b8:	03403d8c 	andi	$r12,$r12,0xf
1c0025bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025c4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0025d0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025d8:	40000d80 	beqz	$r12,12(0xc) # 1c0025e4 <UART_Init+0x54>
1c0025dc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025e0:	44001980 	bnez	$r12,24(0x18) # 1c0025f8 <UART_Init+0x68>
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0025f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0025fc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002600:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002618 <UART_Init+0x88>
1c002604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002608:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00260c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002610:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002620:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002624:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002628:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00262c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00263c <UART_Init+0xac>
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002638:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002698 <UART_Init+0x108>
1c00263c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002640:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002644:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002648:	2880018c 	ld.w	$r12,$r12,0
1c00264c:	002131ae 	div.wu	$r14,$r13,$r12
1c002650:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002658 <UART_Init+0xc8>
1c002654:	002a0007 	break	0x7
1c002658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00265c:	002135cc 	div.wu	$r12,$r14,$r13
1c002660:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002668 <UART_Init+0xd8>
1c002664:	002a0007 	break	0x7
1c002668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00266c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002670:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002678:	2880018e 	ld.w	$r14,$r12,0
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	001c31ce 	mul.w	$r14,$r14,$r12
1c002684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002688:	001c31cc 	mul.w	$r12,$r14,$r12
1c00268c:	001131ac 	sub.w	$r12,$r13,$r12
1c002690:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002694:	50005400 	b	84(0x54) # 1c0026e8 <UART_Init+0x158>
1c002698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00269c:	2880018c 	ld.w	$r12,$r12,0
1c0026a0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0026a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026b0 <UART_Init+0x120>
1c0026ac:	002a0007 	break	0x7
1c0026b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0026b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026c0 <UART_Init+0x130>
1c0026bc:	002a0007 	break	0x7
1c0026c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2880018d 	ld.w	$r13,$r12,0
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026dc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0026e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026ec:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2880018c 	ld.w	$r12,$r12,0
1c0026fc:	002131ae 	div.wu	$r14,$r13,$r12
1c002700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002708 <UART_Init+0x178>
1c002704:	002a0007 	break	0x7
1c002708:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00270c:	002135cc 	div.wu	$r12,$r14,$r13
1c002710:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002718 <UART_Init+0x188>
1c002714:	002a0007 	break	0x7
1c002718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	2900018d 	st.b	$r13,$r12,0
1c00274c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002750:	0044a18c 	srli.w	$r12,$r12,0x8
1c002754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002764:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00276c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002774:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00277c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	0341fd8c 	andi	$r12,$r12,0x7f
1c002788:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00278c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002790:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	29000580 	st.b	$r0,$r12,1(0x1)
1c00279c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027ac:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027b0:	001531ac 	or	$r12,$r13,$r12
1c0027b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027d0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027d4:	001531ac 	or	$r12,$r13,$r12
1c0027d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027f4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0027f8:	001531ac 	or	$r12,$r13,$r12
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002804:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00280c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002810:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002814:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002818:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00282c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002834:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00283c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002840:	001531ac 	or	$r12,$r13,$r12
1c002844:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002860:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002864:	001531ac 	or	$r12,$r13,$r12
1c002868:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002878:	2a00018c 	ld.bu	$r12,$r12,0
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <UART_StructInit>:
UART_StructInit():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002894:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002898:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028a4:	038801ad 	ori	$r13,$r13,0x200
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028b4:	038801ad 	ori	$r13,$r13,0x200
1c0028b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028c4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028dc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ec:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0028f8:	03400000 	andi	$r0,$r0,0x0
1c0028fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <UART_ITConfig>:
UART_ITConfig():
1c002908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00290c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002914:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002918:	001500ac 	move	$r12,$r5
1c00291c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002920:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002928:	40002980 	beqz	$r12,40(0x28) # 1c002950 <UART_ITConfig+0x48>
1c00292c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002930:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002934:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002938:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00293c:	001531ac 	or	$r12,$r13,$r12
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002948:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00294c:	50003400 	b	52(0x34) # 1c002980 <UART_ITConfig+0x78>
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	00005d8d 	ext.w.b	$r13,$r12
1c002960:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002964:	0014300c 	nor	$r12,$r0,$r12
1c002968:	00005d8c 	ext.w.b	$r12,$r12
1c00296c:	0014b1ac 	and	$r12,$r13,$r12
1c002970:	00005d8c 	ext.w.b	$r12,$r12
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002988:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00298c:	4c000020 	jirl	$r0,$r1,0

1c002990 <UART_SendData>:
UART_SendData():
1c002990:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002994:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00299c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029a0:	001500ac 	move	$r12,$r5
1c0029a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029ac:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029b0:	2900018d 	st.b	$r13,$r12,0
1c0029b4:	03400000 	andi	$r0,$r0,0x0
1c0029b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029c0:	4c000020 	jirl	$r0,$r1,0

1c0029c4 <UART_SendString>:
UART_SendString():
1c0029c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029d8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029dc:	50002800 	b	40(0x28) # 1c002a04 <UART_SendString+0x40>
1c0029e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029e4:	2800018c 	ld.b	$r12,$r12,0
1c0029e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029ec:	00150185 	move	$r5,$r12
1c0029f0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0029f4:	57ff9fff 	bl	-100(0xfffff9c) # 1c002990 <UART_SendData>
1c0029f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a08:	2800018c 	ld.b	$r12,$r12,0
1c002a0c:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c0029e0 <UART_SendString+0x1c>
1c002a10:	03400000 	andi	$r0,$r0,0x0
1c002a14:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a18:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a20:	4c000020 	jirl	$r0,$r1,0

1c002a24 <UART_ReceiveData>:
UART_ReceiveData():
1c002a24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a28:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a30:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a34:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a38:	03400000 	andi	$r0,$r0,0x0
1c002a3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a40:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a44:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a48:	0340058c 	andi	$r12,$r12,0x1
1c002a4c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a3c <UART_ReceiveData+0x18>
1c002a50:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a54:	2a00018c 	ld.bu	$r12,$r12,0
1c002a58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a60:	00150184 	move	$r4,$r12
1c002a64:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002a68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a6c:	4c000020 	jirl	$r0,$r1,0

1c002a70 <Uart0_init>:
Uart0_init():
1c002a70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a88:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002a8c:	57ebcbff 	bl	-5176(0xfffebc8) # 1c001654 <gpio_pin_remap>
1c002a90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a94:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002a98:	57ebbfff 	bl	-5188(0xfffebbc) # 1c001654 <gpio_pin_remap>
1c002a9c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002aa0:	00150184 	move	$r4,$r12
1c002aa4:	57fdebff 	bl	-536(0xffffde8) # 1c00288c <UART_StructInit>
1c002aa8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002aac:	2895a18c 	ld.w	$r12,$r12,1384(0x568)
1c002ab0:	2880018c 	ld.w	$r12,$r12,0
1c002ab4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ab8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002ac0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ac4:	00150185 	move	$r5,$r12
1c002ac8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002acc:	57fac7ff 	bl	-1340(0xffffac4) # 1c002590 <UART_Init>
1c002ad0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002ad4:	0380098c 	ori	$r12,$r12,0x2
1c002ad8:	2a00018c 	ld.bu	$r12,$r12,0
1c002adc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002ae0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002ae4:	0380098c 	ori	$r12,$r12,0x2
1c002ae8:	038021ad 	ori	$r13,$r13,0x8
1c002aec:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002af0:	2900018d 	st.b	$r13,$r12,0
1c002af4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002af8:	2a00018c 	ld.bu	$r12,$r12,0
1c002afc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b00:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b04:	038021ad 	ori	$r13,$r13,0x8
1c002b08:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b0c:	2900018d 	st.b	$r13,$r12,0
1c002b10:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b18:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b1c:	57fdefff 	bl	-532(0xffffdec) # 1c002908 <UART_ITConfig>
1c002b20:	03400000 	andi	$r0,$r0,0x0
1c002b24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b30:	4c000020 	jirl	$r0,$r1,0

1c002b34 <Uart1_init>:
Uart1_init():
1c002b34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b44:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b4c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b50:	57eb07ff 	bl	-5372(0xfffeb04) # 1c001654 <gpio_pin_remap>
1c002b54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b58:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b5c:	57eafbff 	bl	-5384(0xfffeaf8) # 1c001654 <gpio_pin_remap>
1c002b60:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b64:	00150184 	move	$r4,$r12
1c002b68:	57fd27ff 	bl	-732(0xffffd24) # 1c00288c <UART_StructInit>
1c002b6c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002b70:	2892918c 	ld.w	$r12,$r12,1188(0x4a4)
1c002b74:	2880018c 	ld.w	$r12,$r12,0
1c002b78:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002b7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b80:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002b84:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b88:	00150185 	move	$r5,$r12
1c002b8c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002b90:	57fa03ff 	bl	-1536(0xffffa00) # 1c002590 <UART_Init>
1c002b94:	00150006 	move	$r6,$r0
1c002b98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b9c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002ba0:	57fd6bff 	bl	-664(0xffffd68) # 1c002908 <UART_ITConfig>
1c002ba4:	03400000 	andi	$r0,$r0,0x0
1c002ba8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002bac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bb4:	4c000020 	jirl	$r0,$r1,0

1c002bb8 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002bb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bbc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bc0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bc4:	1400006c 	lu12i.w	$r12,3(0x3)
1c002bc8:	03ba018c 	ori	$r12,$r12,0xe80
1c002bcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bd0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002bd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd8:	2880018d 	ld.w	$r13,$r12,0
1c002bdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002be0:	038101ad 	ori	$r13,$r13,0x40
1c002be4:	2980018d 	st.w	$r13,$r12,0
1c002be8:	03400000 	andi	$r0,$r0,0x0
1c002bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bf0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002bf4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002bf8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002bec <CLOCK_WaitForHSEStartUp+0x34>
1c002bfc:	50001c00 	b	28(0x1c) # 1c002c18 <CLOCK_WaitForHSEStartUp+0x60>
1c002c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c04:	2880018e 	ld.w	$r14,$r12,0
1c002c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c0c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c10:	0014b5cd 	and	$r13,$r14,$r13
1c002c14:	2980018d 	st.w	$r13,$r12,0
1c002c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c1c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c20:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c00 <CLOCK_WaitForHSEStartUp+0x48>
1c002c24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c28:	2880018d 	ld.w	$r13,$r12,0
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	038201ad 	ori	$r13,$r13,0x80
1c002c34:	2980018d 	st.w	$r13,$r12,0
1c002c38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c44:	00150184 	move	$r4,$r12
1c002c48:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c50:	4c000020 	jirl	$r0,$r1,0

1c002c54 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c58:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002c64:	50008800 	b	136(0x88) # 1c002cec <CLOCK_WaitForLSEStartUp+0x98>
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	2880018e 	ld.w	$r14,$r12,0
1c002c70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c74:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c78:	0014b5cd 	and	$r13,$r14,$r13
1c002c7c:	2980018d 	st.w	$r13,$r12,0
1c002c80:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c88:	50001400 	b	20(0x14) # 1c002c9c <CLOCK_WaitForLSEStartUp+0x48>
1c002c8c:	03400000 	andi	$r0,$r0,0x0
1c002c90:	03400000 	andi	$r0,$r0,0x0
1c002c94:	03400000 	andi	$r0,$r0,0x0
1c002c98:	03400000 	andi	$r0,$r0,0x0
1c002c9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ca0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ca4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ca8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c8c <CLOCK_WaitForLSEStartUp+0x38>
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	2880018d 	ld.w	$r13,$r12,0
1c002cb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb8:	038081ad 	ori	$r13,$r13,0x20
1c002cbc:	2980018d 	st.w	$r13,$r12,0
1c002cc0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cc8:	50001400 	b	20(0x14) # 1c002cdc <CLOCK_WaitForLSEStartUp+0x88>
1c002ccc:	03400000 	andi	$r0,$r0,0x0
1c002cd0:	03400000 	andi	$r0,$r0,0x0
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	03400000 	andi	$r0,$r0,0x0
1c002cdc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ce0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ce4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002ce8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002ccc <CLOCK_WaitForLSEStartUp+0x78>
1c002cec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf0:	0380118c 	ori	$r12,$r12,0x4
1c002cf4:	2880018d 	ld.w	$r13,$r12,0
1c002cf8:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002cfc:	0014b1ac 	and	$r12,$r13,$r12
1c002d00:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002c68 <CLOCK_WaitForLSEStartUp+0x14>
1c002d04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d08:	0380118c 	ori	$r12,$r12,0x4
1c002d0c:	2880018d 	ld.w	$r13,$r12,0
1c002d10:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d14:	0014b1ac 	and	$r12,$r13,$r12
1c002d18:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002c68 <CLOCK_WaitForLSEStartUp+0x14>
1c002d1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d24:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d28:	00150184 	move	$r4,$r12
1c002d2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d34:	4c000020 	jirl	$r0,$r1,0

1c002d38 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d54:	2880018e 	ld.w	$r14,$r12,0
1c002d58:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d5c:	0014300d 	nor	$r13,$r0,$r12
1c002d60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d64:	0014b5cd 	and	$r13,$r14,$r13
1c002d68:	2980018d 	st.w	$r13,$r12,0
1c002d6c:	1400002c 	lu12i.w	$r12,1(0x1)
1c002d70:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002d74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d78:	50001400 	b	20(0x14) # 1c002d8c <CLOCK_HSEConfig+0x54>
1c002d7c:	03400000 	andi	$r0,$r0,0x0
1c002d80:	03400000 	andi	$r0,$r0,0x0
1c002d84:	03400000 	andi	$r0,$r0,0x0
1c002d88:	03400000 	andi	$r0,$r0,0x0
1c002d8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d94:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d98:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d7c <CLOCK_HSEConfig+0x44>
1c002d9c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002da0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002da4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002db4 <CLOCK_HSEConfig+0x7c>
1c002da8:	57fe13ff 	bl	-496(0xffffe10) # 1c002bb8 <CLOCK_WaitForHSEStartUp>
1c002dac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002db0:	50002400 	b	36(0x24) # 1c002dd4 <CLOCK_HSEConfig+0x9c>
1c002db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db8:	2880018e 	ld.w	$r14,$r12,0
1c002dbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002dc4:	0014b5cd 	and	$r13,$r14,$r13
1c002dc8:	2980018d 	st.w	$r13,$r12,0
1c002dcc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002dd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dd8:	00150184 	move	$r4,$r12
1c002ddc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002de0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002de4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002de8:	4c000020 	jirl	$r0,$r1,0

1c002dec <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002dec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002df0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002df4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002df8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002dfc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e04:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e08:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e0c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e1c <CLOCK_LSEConfig+0x30>
1c002e10:	57fe47ff 	bl	-444(0xffffe44) # 1c002c54 <CLOCK_WaitForLSEStartUp>
1c002e14:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e18:	50002400 	b	36(0x24) # 1c002e3c <CLOCK_LSEConfig+0x50>
1c002e1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e20:	2880018e 	ld.w	$r14,$r12,0
1c002e24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e28:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e2c:	0014b5cd 	and	$r13,$r14,$r13
1c002e30:	2980018d 	st.w	$r13,$r12,0
1c002e34:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e40:	00150184 	move	$r4,$r12
1c002e44:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e48:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e50:	4c000020 	jirl	$r0,$r1,0

1c002e54 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e58:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e60:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e68:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e6c:	2980018d 	st.w	$r13,$r12,0
1c002e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e74:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002e78:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e80:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002e84:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e8c:	29803180 	st.w	$r0,$r12,12(0xc)
1c002e90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e94:	29804180 	st.w	$r0,$r12,16(0x10)
1c002e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e9c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	29806180 	st.w	$r0,$r12,24(0x18)
1c002ea8:	03400000 	andi	$r0,$r0,0x0
1c002eac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002eb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002eb4:	4c000020 	jirl	$r0,$r1,0

1c002eb8 <CLOCK_Init>:
CLOCK_Init():
1c002eb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ebc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ec0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ec4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ec8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ecc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed4:	2880018e 	ld.w	$r14,$r12,0
1c002ed8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002edc:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002ee0:	0014b5cd 	and	$r13,$r14,$r13
1c002ee4:	2980018d 	st.w	$r13,$r12,0
1c002ee8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eec:	2880018e 	ld.w	$r14,$r12,0
1c002ef0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ef4:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002ef8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002efc:	001535cd 	or	$r13,$r14,$r13
1c002f00:	2980018d 	st.w	$r13,$r12,0
1c002f04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f08:	2880018e 	ld.w	$r14,$r12,0
1c002f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f10:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f14:	0014b5cd 	and	$r13,$r14,$r13
1c002f18:	2980018d 	st.w	$r13,$r12,0
1c002f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f20:	2880018e 	ld.w	$r14,$r12,0
1c002f24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f28:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f30:	001535cd 	or	$r13,$r14,$r13
1c002f34:	2980018d 	st.w	$r13,$r12,0
1c002f38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f3c:	2880018e 	ld.w	$r14,$r12,0
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f48:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f4c:	0014b5cd 	and	$r13,$r14,$r13
1c002f50:	2980018d 	st.w	$r13,$r12,0
1c002f54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f58:	2880018e 	ld.w	$r14,$r12,0
1c002f5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f60:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002f64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f68:	001535cd 	or	$r13,$r14,$r13
1c002f6c:	2980018d 	st.w	$r13,$r12,0
1c002f70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f74:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f78:	00150184 	move	$r4,$r12
1c002f7c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d38 <CLOCK_HSEConfig>
1c002f80:	0015008d 	move	$r13,$r4
1c002f84:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f88:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f94 <CLOCK_Init+0xdc>
1c002f8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f90:	50015000 	b	336(0x150) # 1c0030e0 <CLOCK_Init+0x228>
1c002f94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f98:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002f9c:	00150184 	move	$r4,$r12
1c002fa0:	57fe4fff 	bl	-436(0xffffe4c) # 1c002dec <CLOCK_LSEConfig>
1c002fa4:	0015008d 	move	$r13,$r4
1c002fa8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fac:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fb8 <CLOCK_Init+0x100>
1c002fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fb4:	50012c00 	b	300(0x12c) # 1c0030e0 <CLOCK_Init+0x228>
1c002fb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fbc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002fc0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002fc4:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030c0 <CLOCK_Init+0x208>
1c002fc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fcc:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002fd0:	4000a180 	beqz	$r12,160(0xa0) # 1c003070 <CLOCK_Init+0x1b8>
1c002fd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd8:	2880018e 	ld.w	$r14,$r12,0
1c002fdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fe0:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002fe4:	03bffdad 	ori	$r13,$r13,0xfff
1c002fe8:	0014b5cd 	and	$r13,$r14,$r13
1c002fec:	2980018d 	st.w	$r13,$r12,0
1c002ff0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ff4:	2880018e 	ld.w	$r14,$r12,0
1c002ff8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ffc:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003000:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003004:	001535cd 	or	$r13,$r14,$r13
1c003008:	2980018d 	st.w	$r13,$r12,0
1c00300c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003010:	0386c18c 	ori	$r12,$r12,0x1b0
1c003014:	2880018c 	ld.w	$r12,$r12,0
1c003018:	40004180 	beqz	$r12,64(0x40) # 1c003058 <CLOCK_Init+0x1a0>
1c00301c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003020:	0386c18c 	ori	$r12,$r12,0x1b0
1c003024:	2880018c 	ld.w	$r12,$r12,0
1c003028:	0040898e 	slli.w	$r14,$r12,0x2
1c00302c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003030:	002031cd 	div.w	$r13,$r14,$r12
1c003034:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00303c <CLOCK_Init+0x184>
1c003038:	002a0007 	break	0x7
1c00303c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003040:	001c31ac 	mul.w	$r12,$r13,$r12
1c003044:	0015018d 	move	$r13,$r12
1c003048:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00304c:	02bf718c 	addi.w	$r12,$r12,-36(0xfdc)
1c003050:	2980018d 	st.w	$r13,$r12,0
1c003054:	50008000 	b	128(0x80) # 1c0030d4 <CLOCK_Init+0x21c>
1c003058:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00305c:	02bf318c 	addi.w	$r12,$r12,-52(0xfcc)
1c003060:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c003064:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003068:	2980018d 	st.w	$r13,$r12,0
1c00306c:	50006800 	b	104(0x68) # 1c0030d4 <CLOCK_Init+0x21c>
1c003070:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003074:	0386c18c 	ori	$r12,$r12,0x1b0
1c003078:	2880018c 	ld.w	$r12,$r12,0
1c00307c:	40002d80 	beqz	$r12,44(0x2c) # 1c0030a8 <CLOCK_Init+0x1f0>
1c003080:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003084:	0386c18c 	ori	$r12,$r12,0x1b0
1c003088:	2880018d 	ld.w	$r13,$r12,0
1c00308c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003090:	001c31ac 	mul.w	$r12,$r13,$r12
1c003094:	0015018d 	move	$r13,$r12
1c003098:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00309c:	02be318c 	addi.w	$r12,$r12,-116(0xf8c)
1c0030a0:	2980018d 	st.w	$r13,$r12,0
1c0030a4:	50003000 	b	48(0x30) # 1c0030d4 <CLOCK_Init+0x21c>
1c0030a8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030ac:	02bdf18c 	addi.w	$r12,$r12,-132(0xf7c)
1c0030b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030b4:	038801ad 	ori	$r13,$r13,0x200
1c0030b8:	2980018d 	st.w	$r13,$r12,0
1c0030bc:	50001800 	b	24(0x18) # 1c0030d4 <CLOCK_Init+0x21c>
1c0030c0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030c4:	02bd918c 	addi.w	$r12,$r12,-156(0xf64)
1c0030c8:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030cc:	038801ad 	ori	$r13,$r13,0x200
1c0030d0:	2980018d 	st.w	$r13,$r12,0
1c0030d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030e0:	00150184 	move	$r4,$r12
1c0030e4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030e8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030f0:	4c000020 	jirl	$r0,$r1,0

1c0030f4 <SystemClockInit>:
SystemClockInit():
1c0030f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0030fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003100:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003104:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003108:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00310c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003110:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003114:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003118:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00311c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003120:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003124:	00150184 	move	$r4,$r12
1c003128:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e54 <CLOCK_StructInit>
1c00312c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003130:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003134:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003138:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00313c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003140:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003144:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003148:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00314c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003150:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003154:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003158:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00315c:	00150184 	move	$r4,$r12
1c003160:	57fd5bff 	bl	-680(0xffffd58) # 1c002eb8 <CLOCK_Init>
1c003164:	0015008d 	move	$r13,$r4
1c003168:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00316c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003178 <SystemClockInit+0x84>
1c003170:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003174:	50000800 	b	8(0x8) # 1c00317c <SystemClockInit+0x88>
1c003178:	0015000c 	move	$r12,$r0
1c00317c:	00150184 	move	$r4,$r12
1c003180:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003184:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003188:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00318c:	4c000020 	jirl	$r0,$r1,0

1c003190 <DisableInt>:
DisableInt():
1c003190:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003194:	29803076 	st.w	$r22,$r3,12(0xc)
1c003198:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00319c:	0380100c 	ori	$r12,$r0,0x4
1c0031a0:	04000180 	csrxchg	$r0,$r12,0x0
1c0031a4:	03400000 	andi	$r0,$r0,0x0
1c0031a8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031b0:	4c000020 	jirl	$r0,$r1,0

1c0031b4 <EnableInt>:
EnableInt():
1c0031b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031b8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031c0:	0380100c 	ori	$r12,$r0,0x4
1c0031c4:	0400018c 	csrxchg	$r12,$r12,0x0
1c0031c8:	03400000 	andi	$r0,$r0,0x0
1c0031cc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031d4:	4c000020 	jirl	$r0,$r1,0

1c0031d8 <Set_Timer_stop>:
Set_Timer_stop():
1c0031d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031dc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031e4:	04010420 	csrwr	$r0,0x41
1c0031e8:	03400000 	andi	$r0,$r0,0x0
1c0031ec:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031f4:	4c000020 	jirl	$r0,$r1,0

1c0031f8 <Set_Timer_clear>:
Set_Timer_clear():
1c0031f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031fc:	29803076 	st.w	$r22,$r3,12(0xc)
1c003200:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003204:	0380040c 	ori	$r12,$r0,0x1
1c003208:	0401102c 	csrwr	$r12,0x44
1c00320c:	03400000 	andi	$r0,$r0,0x0
1c003210:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003214:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003218:	4c000020 	jirl	$r0,$r1,0

1c00321c <Wake_Set>:
Wake_Set():
1c00321c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003220:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003224:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00322c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003230:	40006980 	beqz	$r12,104(0x68) # 1c003298 <Wake_Set+0x7c>
1c003234:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003238:	0040a18c 	slli.w	$r12,$r12,0x8
1c00323c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003240:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003248:	0380218c 	ori	$r12,$r12,0x8
1c00324c:	2880018d 	ld.w	$r13,$r12,0
1c003250:	14001fec 	lu12i.w	$r12,255(0xff)
1c003254:	03bffd8c 	ori	$r12,$r12,0xfff
1c003258:	0014b1ac 	and	$r12,$r13,$r12
1c00325c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003260:	001031ac 	add.w	$r12,$r13,$r12
1c003264:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003268:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00326c:	0380318c 	ori	$r12,$r12,0xc
1c003270:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003274:	2980018d 	st.w	$r13,$r12,0
1c003278:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00327c:	0380118c 	ori	$r12,$r12,0x4
1c003280:	2880018d 	ld.w	$r13,$r12,0
1c003284:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003288:	0380118c 	ori	$r12,$r12,0x4
1c00328c:	038601ad 	ori	$r13,$r13,0x180
1c003290:	2980018d 	st.w	$r13,$r12,0
1c003294:	50002400 	b	36(0x24) # 1c0032b8 <Wake_Set+0x9c>
1c003298:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00329c:	0380118c 	ori	$r12,$r12,0x4
1c0032a0:	2880018e 	ld.w	$r14,$r12,0
1c0032a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a8:	0380118c 	ori	$r12,$r12,0x4
1c0032ac:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0032b0:	0014b5cd 	and	$r13,$r14,$r13
1c0032b4:	2980018d 	st.w	$r13,$r12,0
1c0032b8:	03400000 	andi	$r0,$r0,0x0
1c0032bc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032c4:	4c000020 	jirl	$r0,$r1,0

1c0032c8 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0032c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032dc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032e0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032e4:	0014b1ac 	and	$r12,$r13,$r12
1c0032e8:	44000d80 	bnez	$r12,12(0xc) # 1c0032f4 <PMU_GetRstRrc+0x2c>
1c0032ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032f0:	50003000 	b	48(0x30) # 1c003320 <PMU_GetRstRrc+0x58>
1c0032f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032f8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032fc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003300:	0014b1ad 	and	$r13,$r13,$r12
1c003304:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003308:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003318 <PMU_GetRstRrc+0x50>
1c00330c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003310:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003314:	50000c00 	b	12(0xc) # 1c003320 <PMU_GetRstRrc+0x58>
1c003318:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00331c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003324:	00150184 	move	$r4,$r12
1c003328:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00332c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003330:	4c000020 	jirl	$r0,$r1,0

1c003334 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003334:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003338:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00333c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003340:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003344:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003348:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00334c:	0380198c 	ori	$r12,$r12,0x6
1c003350:	2a00018c 	ld.bu	$r12,$r12,0
1c003354:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003358:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00335c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003360:	0340058c 	andi	$r12,$r12,0x1
1c003364:	40000d80 	beqz	$r12,12(0xc) # 1c003370 <PMU_GetBootSpiStatus+0x3c>
1c003368:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00336c:	50000800 	b	8(0x8) # 1c003374 <PMU_GetBootSpiStatus+0x40>
1c003370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003374:	00150184 	move	$r4,$r12
1c003378:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00337c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003380:	4c000020 	jirl	$r0,$r1,0

1c003384 <ls1x_logo>:
ls1x_logo():
1c003384:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003388:	29803061 	st.w	$r1,$r3,12(0xc)
1c00338c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003390:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003394:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003398:	02bf0084 	addi.w	$r4,$r4,-64(0xfc0)
1c00339c:	57e7fbff 	bl	-6152(0xfffe7f8) # 1c001b94 <myprintf>
1c0033a0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033a4:	02bee084 	addi.w	$r4,$r4,-72(0xfb8)
1c0033a8:	57e7efff 	bl	-6164(0xfffe7ec) # 1c001b94 <myprintf>
1c0033ac:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033b0:	02804084 	addi.w	$r4,$r4,16(0x10)
1c0033b4:	57e7e3ff 	bl	-6176(0xfffe7e0) # 1c001b94 <myprintf>
1c0033b8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033bc:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c0033c0:	57e7d7ff 	bl	-6188(0xfffe7d4) # 1c001b94 <myprintf>
1c0033c4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033c8:	02830084 	addi.w	$r4,$r4,192(0xc0)
1c0033cc:	57e7cbff 	bl	-6200(0xfffe7c8) # 1c001b94 <myprintf>
1c0033d0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033d4:	02846084 	addi.w	$r4,$r4,280(0x118)
1c0033d8:	57e7bfff 	bl	-6212(0xfffe7bc) # 1c001b94 <myprintf>
1c0033dc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033e0:	0285c084 	addi.w	$r4,$r4,368(0x170)
1c0033e4:	57e7b3ff 	bl	-6224(0xfffe7b0) # 1c001b94 <myprintf>
1c0033e8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033ec:	02872084 	addi.w	$r4,$r4,456(0x1c8)
1c0033f0:	57e7a7ff 	bl	-6236(0xfffe7a4) # 1c001b94 <myprintf>
1c0033f4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033f8:	02888084 	addi.w	$r4,$r4,544(0x220)
1c0033fc:	57e79bff 	bl	-6248(0xfffe798) # 1c001b94 <myprintf>
1c003400:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003404:	0289e084 	addi.w	$r4,$r4,632(0x278)
1c003408:	57e78fff 	bl	-6260(0xfffe78c) # 1c001b94 <myprintf>
1c00340c:	03400000 	andi	$r0,$r0,0x0
1c003410:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003414:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003418:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00341c:	4c000020 	jirl	$r0,$r1,0

1c003420 <get_count>:
get_count():
1c003420:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003424:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003428:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00342c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003430:	0000600c 	rdtimel.w	$r12,$r0
1c003434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00343c:	00150184 	move	$r4,$r12
1c003440:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003444:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003448:	4c000020 	jirl	$r0,$r1,0

1c00344c <open_count>:
open_count():
1c00344c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003450:	29803076 	st.w	$r22,$r3,12(0xc)
1c003454:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003458:	0380400c 	ori	$r12,$r0,0x10
1c00345c:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003460:	03400000 	andi	$r0,$r0,0x0
1c003464:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003468:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00346c:	4c000020 	jirl	$r0,$r1,0

1c003470 <start_count>:
start_count():
1c003470:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003474:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003478:	29806076 	st.w	$r22,$r3,24(0x18)
1c00347c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003480:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003484:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003488:	29800180 	st.w	$r0,$r12,0
1c00348c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003490:	29801180 	st.w	$r0,$r12,4(0x4)
1c003494:	57ff8fff 	bl	-116(0xfffff8c) # 1c003420 <get_count>
1c003498:	0015008d 	move	$r13,$r4
1c00349c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034a0:	2980018d 	st.w	$r13,$r12,0
1c0034a4:	03400000 	andi	$r0,$r0,0x0
1c0034a8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034ac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034b4:	4c000020 	jirl	$r0,$r1,0

1c0034b8 <stop_count>:
stop_count():
1c0034b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034cc:	57ff57ff 	bl	-172(0xfffff54) # 1c003420 <get_count>
1c0034d0:	0015008d 	move	$r13,$r4
1c0034d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034d8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0034dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034e0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034e8:	2880018c 	ld.w	$r12,$r12,0
1c0034ec:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003508 <stop_count+0x50>
1c0034f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034f4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034fc:	2880018c 	ld.w	$r12,$r12,0
1c003500:	001131ac 	sub.w	$r12,$r13,$r12
1c003504:	50002800 	b	40(0x28) # 1c00352c <stop_count+0x74>
1c003508:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00350c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003510:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003514:	2880018c 	ld.w	$r12,$r12,0
1c003518:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00351c:	001131ad 	sub.w	$r13,$r13,$r12
1c003520:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003524:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003528:	001031ac 	add.w	$r12,$r13,$r12
1c00352c:	00150184 	move	$r4,$r12
1c003530:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003534:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003538:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00353c:	4c000020 	jirl	$r0,$r1,0

1c003540 <delay_cycle>:
delay_cycle():
1c003540:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003544:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003548:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00354c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003550:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003554:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003558:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00355c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003560:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003564:	00150184 	move	$r4,$r12
1c003568:	57ff0bff 	bl	-248(0xfffff08) # 1c003470 <start_count>
1c00356c:	50001400 	b	20(0x14) # 1c003580 <delay_cycle+0x40>
1c003570:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003574:	00150184 	move	$r4,$r12
1c003578:	57ff43ff 	bl	-192(0xfffff40) # 1c0034b8 <stop_count>
1c00357c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003584:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003588:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003570 <delay_cycle+0x30>
1c00358c:	03400000 	andi	$r0,$r0,0x0
1c003590:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003594:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003598:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00359c:	4c000020 	jirl	$r0,$r1,0

1c0035a0 <delay_us>:
delay_us():
1c0035a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035b8:	00408d8c 	slli.w	$r12,$r12,0x3
1c0035bc:	00150184 	move	$r4,$r12
1c0035c0:	57ff83ff 	bl	-128(0xfffff80) # 1c003540 <delay_cycle>
1c0035c4:	03400000 	andi	$r0,$r0,0x0
1c0035c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035d4:	4c000020 	jirl	$r0,$r1,0

1c0035d8 <delay_ms>:
delay_ms():
1c0035d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035f0:	1400002c 	lu12i.w	$r12,1(0x1)
1c0035f4:	03bd018c 	ori	$r12,$r12,0xf40
1c0035f8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0035fc:	00150184 	move	$r4,$r12
1c003600:	57ff43ff 	bl	-192(0xfffff40) # 1c003540 <delay_cycle>
1c003604:	03400000 	andi	$r0,$r0,0x0
1c003608:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00360c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003610:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003614:	4c000020 	jirl	$r0,$r1,0

1c003618 <memset>:
memset():
1c003618:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00361c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003620:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003624:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003628:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00362c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003630:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003634:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003638:	50001c00 	b	28(0x1c) # 1c003654 <memset+0x3c>
1c00363c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003640:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003644:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003648:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00364c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003650:	2900018d 	st.b	$r13,$r12,0
1c003654:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003658:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00365c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003660:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00363c <memset+0x24>
1c003664:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003668:	00150184 	move	$r4,$r12
1c00366c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003670:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003674:	4c000020 	jirl	$r0,$r1,0

1c003678 <strncmp>:
strncmp():
1c003678:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00367c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003680:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003684:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003688:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00368c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c003690:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003694:	44003980 	bnez	$r12,56(0x38) # 1c0036cc <strncmp+0x54>
1c003698:	0015000c 	move	$r12,$r0
1c00369c:	50006c00 	b	108(0x6c) # 1c003708 <strncmp+0x90>
1c0036a0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036a4:	40004d80 	beqz	$r12,76(0x4c) # 1c0036f0 <strncmp+0x78>
1c0036a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036ac:	2800018c 	ld.b	$r12,$r12,0
1c0036b0:	40004180 	beqz	$r12,64(0x40) # 1c0036f0 <strncmp+0x78>
1c0036b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036cc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036d0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036d4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0036d8:	40001980 	beqz	$r12,24(0x18) # 1c0036f0 <strncmp+0x78>
1c0036dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e0:	2800018d 	ld.b	$r13,$r12,0
1c0036e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036e8:	2800018c 	ld.b	$r12,$r12,0
1c0036ec:	5bffb5ac 	beq	$r13,$r12,-76(0x3ffb4) # 1c0036a0 <strncmp+0x28>
1c0036f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0036f8:	0015018d 	move	$r13,$r12
1c0036fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003700:	2a00018c 	ld.bu	$r12,$r12,0
1c003704:	001131ac 	sub.w	$r12,$r13,$r12
1c003708:	00150184 	move	$r4,$r12
1c00370c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003710:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003714:	4c000020 	jirl	$r0,$r1,0

1c003718 <strcpy>:
strcpy():
1c003718:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00371c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003720:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003724:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003728:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00372c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003730:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003734:	03400000 	andi	$r0,$r0,0x0
1c003738:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00373c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003740:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003748:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c00374c:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003750:	280001ad 	ld.b	$r13,$r13,0
1c003754:	2900018d 	st.b	$r13,$r12,0
1c003758:	2800018c 	ld.b	$r12,$r12,0
1c00375c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003738 <strcpy+0x20>
1c003760:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003764:	00150184 	move	$r4,$r12
1c003768:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00376c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003770:	4c000020 	jirl	$r0,$r1,0

1c003774 <strlen>:
strlen():
1c003774:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003778:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00377c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003780:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003784:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003788:	50001000 	b	16(0x10) # 1c003798 <strlen+0x24>
1c00378c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003790:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003794:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003798:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00379c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0037a0:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0037a4:	2800018c 	ld.b	$r12,$r12,0
1c0037a8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00378c <strlen+0x18>
1c0037ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b0:	00150184 	move	$r4,$r12
1c0037b4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037bc:	4c000020 	jirl	$r0,$r1,0

1c0037c0 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0037c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0037c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0037d0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0037d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0037dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037e0:	001531ad 	or	$r13,$r13,$r12
1c0037e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0037ec:	03400000 	andi	$r0,$r0,0x0
1c0037f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0037f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037f8:	4c000020 	jirl	$r0,$r1,0

1c0037fc <WDG_getOddValue>:
WDG_getOddValue():
1c0037fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003800:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003804:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003808:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00380c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003810:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003814:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003818:	50003800 	b	56(0x38) # 1c003850 <WDG_getOddValue+0x54>
1c00381c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003820:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003824:	001731ac 	sll.w	$r12,$r13,$r12
1c003828:	0015018d 	move	$r13,$r12
1c00382c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003830:	0014b1ac 	and	$r12,$r13,$r12
1c003834:	40001180 	beqz	$r12,16(0x10) # 1c003844 <WDG_getOddValue+0x48>
1c003838:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00383c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003840:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003844:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003848:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00384c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003850:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003854:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003858:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c00381c <WDG_getOddValue+0x20>
1c00385c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003860:	0340058c 	andi	$r12,$r12,0x1
1c003864:	44000d80 	bnez	$r12,12(0xc) # 1c003870 <WDG_getOddValue+0x74>
1c003868:	1400010c 	lu12i.w	$r12,8(0x8)
1c00386c:	50000800 	b	8(0x8) # 1c003874 <WDG_getOddValue+0x78>
1c003870:	0015000c 	move	$r12,$r0
1c003874:	00150184 	move	$r4,$r12
1c003878:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00387c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003880:	4c000020 	jirl	$r0,$r1,0

1c003884 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003884:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003888:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00388c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003890:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003894:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003898:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00389c:	140000ec 	lu12i.w	$r12,7(0x7)
1c0038a0:	03bffd8c 	ori	$r12,$r12,0xfff
1c0038a4:	0014b1ac 	and	$r12,$r13,$r12
1c0038a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038ac:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0038b0:	57ff4fff 	bl	-180(0xfffff4c) # 1c0037fc <WDG_getOddValue>
1c0038b4:	0015008c 	move	$r12,$r4
1c0038b8:	0015018d 	move	$r13,$r12
1c0038bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038c0:	0015358c 	or	$r12,$r12,$r13
1c0038c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038cc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0038d0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0038d4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0038d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038dc:	0014300c 	nor	$r12,$r0,$r12
1c0038e0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0038e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038e8:	001531ac 	or	$r12,$r13,$r12
1c0038ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038f8:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0038fc:	03400000 	andi	$r0,$r0,0x0
1c003900:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003904:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003908:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00390c:	4c000020 	jirl	$r0,$r1,0

1c003910 <WDG_DogFeed>:
WDG_DogFeed():
1c003910:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003914:	29803076 	st.w	$r22,$r3,12(0xc)
1c003918:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00391c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003920:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003924:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003928:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003934:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003938:	4c000020 	jirl	$r0,$r1,0

1c00393c <WdgInit>:
WdgInit():
1c00393c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003940:	29803061 	st.w	$r1,$r3,12(0xc)
1c003944:	29802076 	st.w	$r22,$r3,8(0x8)
1c003948:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00394c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003950:	03bffd84 	ori	$r4,$r12,0xfff
1c003954:	57ff33ff 	bl	-208(0xfffff30) # 1c003884 <WDG_SetWatchDog>
1c003958:	03400000 	andi	$r0,$r0,0x0
1c00395c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003960:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003964:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003968:	4c000020 	jirl	$r0,$r1,0

1c00396c <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c00396c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003970:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003974:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003978:	0015008c 	move	$r12,$r4
1c00397c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003980:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003984:	0040898c 	slli.w	$r12,$r12,0x2
1c003988:	0015018d 	move	$r13,$r12
1c00398c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003990:	0381018c 	ori	$r12,$r12,0x40
1c003994:	001031ac 	add.w	$r12,$r13,$r12
1c003998:	2880018c 	ld.w	$r12,$r12,0
1c00399c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039a0:	037ffd8c 	andi	$r12,$r12,0xfff
1c0039a4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039a8:	00150184 	move	$r4,$r12
1c0039ac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039b4:	4c000020 	jirl	$r0,$r1,0

1c0039b8 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c0039b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039c4:	0015008c 	move	$r12,$r4
1c0039c8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0039cc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0039d0:	0040898c 	slli.w	$r12,$r12,0x2
1c0039d4:	0015018d 	move	$r13,$r12
1c0039d8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0039dc:	0382018c 	ori	$r12,$r12,0x80
1c0039e0:	001031ac 	add.w	$r12,$r13,$r12
1c0039e4:	2880018c 	ld.w	$r12,$r12,0
1c0039e8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039ec:	037ffd8c 	andi	$r12,$r12,0xfff
1c0039f0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039f4:	00150184 	move	$r4,$r12
1c0039f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a00:	4c000020 	jirl	$r0,$r1,0

1c003a04 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003a04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a08:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a0c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a14:	0015008c 	move	$r12,$r4
1c003a18:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003a1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a20:	50003400 	b	52(0x34) # 1c003a54 <Printf_KeyChannel+0x50>
1c003a24:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a2c:	001831ac 	sra.w	$r12,$r13,$r12
1c003a30:	0340058c 	andi	$r12,$r12,0x1
1c003a34:	40001580 	beqz	$r12,20(0x14) # 1c003a48 <Printf_KeyChannel+0x44>
1c003a38:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003a3c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003a40:	02b28084 	addi.w	$r4,$r4,-864(0xca0)
1c003a44:	57e153ff 	bl	-7856(0xfffe150) # 1c001b94 <myprintf>
1c003a48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a58:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a5c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003a24 <Printf_KeyChannel+0x20>
1c003a60:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003a64:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c003a68:	57e12fff 	bl	-7892(0xfffe12c) # 1c001b94 <myprintf>
1c003a6c:	03400000 	andi	$r0,$r0,0x0
1c003a70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003a74:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003a78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a7c:	4c000020 	jirl	$r0,$r1,0

1c003a80 <Printf_KeyType>:
Printf_KeyType():
1c003a80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a88:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a90:	0015008c 	move	$r12,$r4
1c003a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a9c:	0340058c 	andi	$r12,$r12,0x1
1c003aa0:	40001180 	beqz	$r12,16(0x10) # 1c003ab0 <Printf_KeyType+0x30>
1c003aa4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003aa8:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c003aac:	57e0ebff 	bl	-7960(0xfffe0e8) # 1c001b94 <myprintf>
1c003ab0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ab4:	0340098c 	andi	$r12,$r12,0x2
1c003ab8:	40001180 	beqz	$r12,16(0x10) # 1c003ac8 <Printf_KeyType+0x48>
1c003abc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ac0:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c003ac4:	57e0d3ff 	bl	-7984(0xfffe0d0) # 1c001b94 <myprintf>
1c003ac8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003acc:	0340118c 	andi	$r12,$r12,0x4
1c003ad0:	40001180 	beqz	$r12,16(0x10) # 1c003ae0 <Printf_KeyType+0x60>
1c003ad4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ad8:	02b08084 	addi.w	$r4,$r4,-992(0xc20)
1c003adc:	57e0bbff 	bl	-8008(0xfffe0b8) # 1c001b94 <myprintf>
1c003ae0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ae4:	0340218c 	andi	$r12,$r12,0x8
1c003ae8:	40001180 	beqz	$r12,16(0x10) # 1c003af8 <Printf_KeyType+0x78>
1c003aec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003af0:	02b05084 	addi.w	$r4,$r4,-1004(0xc14)
1c003af4:	57e0a3ff 	bl	-8032(0xfffe0a0) # 1c001b94 <myprintf>
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b08:	4c000020 	jirl	$r0,$r1,0

1c003b0c <Printf_KeyVal>:
Printf_KeyVal():
1c003b0c:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003b10:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003b14:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003b18:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003b1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b20:	5000d800 	b	216(0xd8) # 1c003bf8 <Printf_KeyVal+0xec>
1c003b24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b28:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b2c:	00150184 	move	$r4,$r12
1c003b30:	57fe8bff 	bl	-376(0xffffe88) # 1c0039b8 <TOUCH_GetCountValue>
1c003b34:	0015008c 	move	$r12,$r4
1c003b38:	0015018d 	move	$r13,$r12
1c003b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b40:	0040898c 	slli.w	$r12,$r12,0x2
1c003b44:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b48:	001031cc 	add.w	$r12,$r14,$r12
1c003b4c:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b58:	00150184 	move	$r4,$r12
1c003b5c:	57fe13ff 	bl	-496(0xffffe10) # 1c00396c <TOUCH_GetBaseVal>
1c003b60:	0015008c 	move	$r12,$r4
1c003b64:	0015018d 	move	$r13,$r12
1c003b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b6c:	0040898c 	slli.w	$r12,$r12,0x2
1c003b70:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b74:	001031cc 	add.w	$r12,$r14,$r12
1c003b78:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b80:	0040898c 	slli.w	$r12,$r12,0x2
1c003b84:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b88:	001031ac 	add.w	$r12,$r13,$r12
1c003b8c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003b90:	40004980 	beqz	$r12,72(0x48) # 1c003bd8 <Printf_KeyVal+0xcc>
1c003b94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b98:	0040898c 	slli.w	$r12,$r12,0x2
1c003b9c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ba0:	001031ac 	add.w	$r12,$r13,$r12
1c003ba4:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bac:	0040898c 	slli.w	$r12,$r12,0x2
1c003bb0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003bb4:	001031cc 	add.w	$r12,$r14,$r12
1c003bb8:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003bbc:	001131ad 	sub.w	$r13,$r13,$r12
1c003bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc4:	0040898c 	slli.w	$r12,$r12,0x2
1c003bc8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003bcc:	001031cc 	add.w	$r12,$r14,$r12
1c003bd0:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003bd4:	50001800 	b	24(0x18) # 1c003bec <Printf_KeyVal+0xe0>
1c003bd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bdc:	0040898c 	slli.w	$r12,$r12,0x2
1c003be0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003be4:	001031ac 	add.w	$r12,$r13,$r12
1c003be8:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003bf4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bf8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003bfc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c00:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003b24 <Printf_KeyVal+0x18>
1c003c04:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c08:	02ac2084 	addi.w	$r4,$r4,-1272(0xb08)
1c003c0c:	57df8bff 	bl	-8312(0xfffdf88) # 1c001b94 <myprintf>
1c003c10:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c14:	02ac9084 	addi.w	$r4,$r4,-1244(0xb24)
1c003c18:	57df7fff 	bl	-8324(0xfffdf7c) # 1c001b94 <myprintf>
1c003c1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c20:	50003400 	b	52(0x34) # 1c003c54 <Printf_KeyVal+0x148>
1c003c24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c28:	0040898c 	slli.w	$r12,$r12,0x2
1c003c2c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c30:	001031ac 	add.w	$r12,$r13,$r12
1c003c34:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c38:	00150185 	move	$r5,$r12
1c003c3c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c40:	02ac0084 	addi.w	$r4,$r4,-1280(0xb00)
1c003c44:	57df53ff 	bl	-8368(0xfffdf50) # 1c001b94 <myprintf>
1c003c48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c58:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c5c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003c24 <Printf_KeyVal+0x118>
1c003c60:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c64:	02ab9084 	addi.w	$r4,$r4,-1308(0xae4)
1c003c68:	57df2fff 	bl	-8404(0xfffdf2c) # 1c001b94 <myprintf>
1c003c6c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c70:	50003400 	b	52(0x34) # 1c003ca4 <Printf_KeyVal+0x198>
1c003c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c78:	0040898c 	slli.w	$r12,$r12,0x2
1c003c7c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c80:	001031ac 	add.w	$r12,$r13,$r12
1c003c84:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003c88:	00150185 	move	$r5,$r12
1c003c8c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c90:	02aac084 	addi.w	$r4,$r4,-1360(0xab0)
1c003c94:	57df03ff 	bl	-8448(0xfffdf00) # 1c001b94 <myprintf>
1c003c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ca4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ca8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cac:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003c74 <Printf_KeyVal+0x168>
1c003cb0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cb4:	02aa8084 	addi.w	$r4,$r4,-1376(0xaa0)
1c003cb8:	57dedfff 	bl	-8484(0xfffdedc) # 1c001b94 <myprintf>
1c003cbc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003cc0:	50007400 	b	116(0x74) # 1c003d34 <Printf_KeyVal+0x228>
1c003cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cc8:	0040898c 	slli.w	$r12,$r12,0x2
1c003ccc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cd0:	001031ac 	add.w	$r12,$r13,$r12
1c003cd4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003cd8:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003d04 <Printf_KeyVal+0x1f8>
1c003cdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ce0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ce4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ce8:	001031ac 	add.w	$r12,$r13,$r12
1c003cec:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003cf0:	00150185 	move	$r5,$r12
1c003cf4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cf8:	02a9a084 	addi.w	$r4,$r4,-1432(0xa68)
1c003cfc:	57de9bff 	bl	-8552(0xfffde98) # 1c001b94 <myprintf>
1c003d00:	50002800 	b	40(0x28) # 1c003d28 <Printf_KeyVal+0x21c>
1c003d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d08:	0040898c 	slli.w	$r12,$r12,0x2
1c003d0c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d10:	001031ac 	add.w	$r12,$r13,$r12
1c003d14:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d18:	00150185 	move	$r5,$r12
1c003d1c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d20:	02a92084 	addi.w	$r4,$r4,-1464(0xa48)
1c003d24:	57de73ff 	bl	-8592(0xfffde70) # 1c001b94 <myprintf>
1c003d28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d38:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d3c:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003cc4 <Printf_KeyVal+0x1b8>
1c003d40:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d44:	02a68084 	addi.w	$r4,$r4,-1632(0x9a0)
1c003d48:	57de4fff 	bl	-8628(0xfffde4c) # 1c001b94 <myprintf>
1c003d4c:	03400000 	andi	$r0,$r0,0x0
1c003d50:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003d54:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003d58:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003d5c:	4c000020 	jirl	$r0,$r1,0

1c003d60 <TIM_Init>:
TIM_Init():
1c003d60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d64:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d6c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003d70:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d74:	29800180 	st.w	$r0,$r12,0
1c003d78:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d7c:	0380118c 	ori	$r12,$r12,0x4
1c003d80:	29800180 	st.w	$r0,$r12,0
1c003d84:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d88:	0380218c 	ori	$r12,$r12,0x8
1c003d8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d90:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003d94:	2980018d 	st.w	$r13,$r12,0
1c003d98:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d9c:	0380318c 	ori	$r12,$r12,0xc
1c003da0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003da4:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003da8:	2980018d 	st.w	$r13,$r12,0
1c003dac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003db0:	2880018e 	ld.w	$r14,$r12,0
1c003db4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db8:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003dbc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dc0:	001535cd 	or	$r13,$r14,$r13
1c003dc4:	2980018d 	st.w	$r13,$r12,0
1c003dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dcc:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003dd0:	40002180 	beqz	$r12,32(0x20) # 1c003df0 <TIM_Init+0x90>
1c003dd4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003dd8:	2a00018c 	ld.bu	$r12,$r12,0
1c003ddc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003de0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003de4:	038005ad 	ori	$r13,$r13,0x1
1c003de8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003dec:	2900018d 	st.b	$r13,$r12,0
1c003df0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003df4:	2880018e 	ld.w	$r14,$r12,0
1c003df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dfc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003e00:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e04:	001535cd 	or	$r13,$r14,$r13
1c003e08:	2980018d 	st.w	$r13,$r12,0
1c003e0c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e10:	2880018e 	ld.w	$r14,$r12,0
1c003e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e18:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003e1c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e20:	001535cd 	or	$r13,$r14,$r13
1c003e24:	2980018d 	st.w	$r13,$r12,0
1c003e28:	03400000 	andi	$r0,$r0,0x0
1c003e2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e34:	4c000020 	jirl	$r0,$r1,0

1c003e38 <TIM_StructInit>:
TIM_StructInit():
1c003e38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e3c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e4c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003e50:	038801ad 	ori	$r13,$r13,0x200
1c003e54:	2980018d 	st.w	$r13,$r12,0
1c003e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e5c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003e60:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e68:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003e6c:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e74:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003e78:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003e7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e80:	1400002d 	lu12i.w	$r13,1(0x1)
1c003e84:	03bcfdad 	ori	$r13,$r13,0xf3f
1c003e88:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003e8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e90:	1400026d 	lu12i.w	$r13,19(0x13)
1c003e94:	03a201ad 	ori	$r13,$r13,0x880
1c003e98:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ea0:	29803180 	st.w	$r0,$r12,12(0xc)
1c003ea4:	03400000 	andi	$r0,$r0,0x0
1c003ea8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003eac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003eb0:	4c000020 	jirl	$r0,$r1,0

1c003eb4 <timer_init>:
timer_init():
1c003eb4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003eb8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003ebc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003ec0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003ec4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c003ec8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003ecc:	00150184 	move	$r4,$r12
1c003ed0:	57ff6bff 	bl	-152(0xfffff68) # 1c003e38 <TIM_StructInit>
1c003ed4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003ed8:	1400002c 	lu12i.w	$r12,1(0x1)
1c003edc:	03bd018c 	ori	$r12,$r12,0xf40
1c003ee0:	001c31ac 	mul.w	$r12,$r13,$r12
1c003ee4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003ee8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003eec:	00150184 	move	$r4,$r12
1c003ef0:	57fe73ff 	bl	-400(0xffffe70) # 1c003d60 <TIM_Init>
1c003ef4:	03400000 	andi	$r0,$r0,0x0
1c003ef8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003efc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003f00:	02810063 	addi.w	$r3,$r3,64(0x40)
1c003f04:	4c000020 	jirl	$r0,$r1,0

1c003f08 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003f08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f0c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003f10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003f14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003f18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f1c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f20:	2880018d 	ld.w	$r13,$r12,0
1c003f24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003f28:	0014b1ac 	and	$r12,$r13,$r12
1c003f2c:	40001180 	beqz	$r12,16(0x10) # 1c003f3c <TIM_GetITStatus+0x34>
1c003f30:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003f34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f38:	50000800 	b	8(0x8) # 1c003f40 <TIM_GetITStatus+0x38>
1c003f3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f44:	00150184 	move	$r4,$r12
1c003f48:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003f4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f50:	4c000020 	jirl	$r0,$r1,0

1c003f54 <TIM_ClearIT>:
TIM_ClearIT():
1c003f54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f58:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f60:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f64:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f68:	2880018e 	ld.w	$r14,$r12,0
1c003f6c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f70:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f74:	001535cd 	or	$r13,$r14,$r13
1c003f78:	2980018d 	st.w	$r13,$r12,0
1c003f7c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f80:	03800d8c 	ori	$r12,$r12,0x3
1c003f84:	2a00018c 	ld.bu	$r12,$r12,0
1c003f88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003f8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f90:	03800d8c 	ori	$r12,$r12,0x3
1c003f94:	038005ad 	ori	$r13,$r13,0x1
1c003f98:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003f9c:	2900018d 	st.b	$r13,$r12,0
1c003fa0:	03400000 	andi	$r0,$r0,0x0
1c003fa4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003fa8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003fac:	4c000020 	jirl	$r0,$r1,0

1c003fb0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003fb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fb4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fb8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fc0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003fc4:	02a480c6 	addi.w	$r6,$r6,-1760(0x920)
1c003fc8:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c003fcc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fd0:	029e8084 	addi.w	$r4,$r4,1952(0x7a0)
1c003fd4:	57dbc3ff 	bl	-9280(0xfffdbc0) # 1c001b94 <myprintf>
1c003fd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003fdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fe0:	03808184 	ori	$r4,$r12,0x20
1c003fe4:	57f7dfff 	bl	-2084(0xffff7dc) # 1c0037c0 <EXTI_ClearITPendingBit>
1c003fe8:	03400000 	andi	$r0,$r0,0x0
1c003fec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ff0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ff4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ff8:	4c000020 	jirl	$r0,$r1,0

1c003ffc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003ffc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004000:	29803061 	st.w	$r1,$r3,12(0xc)
1c004004:	29802076 	st.w	$r22,$r3,8(0x8)
1c004008:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00400c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004010:	02a3b0c6 	addi.w	$r6,$r6,-1812(0x8ec)
1c004014:	02806005 	addi.w	$r5,$r0,24(0x18)
1c004018:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00401c:	029d5084 	addi.w	$r4,$r4,1876(0x754)
1c004020:	57db77ff 	bl	-9356(0xfffdb74) # 1c001b94 <myprintf>
1c004024:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004028:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00402c:	03808184 	ori	$r4,$r12,0x20
1c004030:	57f793ff 	bl	-2160(0xffff790) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004034:	03400000 	andi	$r0,$r0,0x0
1c004038:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00403c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004040:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004044:	4c000020 	jirl	$r0,$r1,0

1c004048 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004048:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00404c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004050:	29802076 	st.w	$r22,$r3,8(0x8)
1c004054:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004058:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00405c:	02a2e0c6 	addi.w	$r6,$r6,-1864(0x8b8)
1c004060:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c004064:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004068:	029c2084 	addi.w	$r4,$r4,1800(0x708)
1c00406c:	57db2bff 	bl	-9432(0xfffdb28) # 1c001b94 <myprintf>
1c004070:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004074:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004078:	03808184 	ori	$r4,$r12,0x20
1c00407c:	57f747ff 	bl	-2236(0xffff744) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004080:	03400000 	andi	$r0,$r0,0x0
1c004084:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004088:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00408c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004090:	4c000020 	jirl	$r0,$r1,0

1c004094 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004094:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004098:	29803061 	st.w	$r1,$r3,12(0xc)
1c00409c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040a4:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040a8:	02a210c6 	addi.w	$r6,$r6,-1916(0x884)
1c0040ac:	02808805 	addi.w	$r5,$r0,34(0x22)
1c0040b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040b4:	029af084 	addi.w	$r4,$r4,1724(0x6bc)
1c0040b8:	57dadfff 	bl	-9508(0xfffdadc) # 1c001b94 <myprintf>
1c0040bc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0040c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040c4:	03808184 	ori	$r4,$r12,0x20
1c0040c8:	57f6fbff 	bl	-2312(0xffff6f8) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0040cc:	03400000 	andi	$r0,$r0,0x0
1c0040d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040dc:	4c000020 	jirl	$r0,$r1,0

1c0040e0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0040e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040f0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040f4:	02a140c6 	addi.w	$r6,$r6,-1968(0x850)
1c0040f8:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c0040fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004100:	0299c084 	addi.w	$r4,$r4,1648(0x670)
1c004104:	57da93ff 	bl	-9584(0xfffda90) # 1c001b94 <myprintf>
1c004108:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00410c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004110:	03808184 	ori	$r4,$r12,0x20
1c004114:	57f6afff 	bl	-2388(0xffff6ac) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004118:	03400000 	andi	$r0,$r0,0x0
1c00411c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004120:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004124:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004128:	4c000020 	jirl	$r0,$r1,0

1c00412c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00412c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004130:	29803061 	st.w	$r1,$r3,12(0xc)
1c004134:	29802076 	st.w	$r22,$r3,8(0x8)
1c004138:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00413c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004140:	02a070c6 	addi.w	$r6,$r6,-2020(0x81c)
1c004144:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c004148:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00414c:	02989084 	addi.w	$r4,$r4,1572(0x624)
1c004150:	57da47ff 	bl	-9660(0xfffda44) # 1c001b94 <myprintf>
1c004154:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004158:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00415c:	03808184 	ori	$r4,$r12,0x20
1c004160:	57f663ff 	bl	-2464(0xffff660) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004164:	03400000 	andi	$r0,$r0,0x0
1c004168:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00416c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004170:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004174:	4c000020 	jirl	$r0,$r1,0

1c004178 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004178:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00417c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004180:	29802076 	st.w	$r22,$r3,8(0x8)
1c004184:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004188:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00418c:	029fa0c6 	addi.w	$r6,$r6,2024(0x7e8)
1c004190:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004194:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004198:	02976084 	addi.w	$r4,$r4,1496(0x5d8)
1c00419c:	57d9fbff 	bl	-9736(0xfffd9f8) # 1c001b94 <myprintf>
1c0041a0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0041a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041a8:	03808184 	ori	$r4,$r12,0x20
1c0041ac:	57f617ff 	bl	-2540(0xffff614) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0041b0:	03400000 	andi	$r0,$r0,0x0
1c0041b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041c0:	4c000020 	jirl	$r0,$r1,0

1c0041c4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0041c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041d8:	029ed0c6 	addi.w	$r6,$r6,1972(0x7b4)
1c0041dc:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c0041e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041e4:	02963084 	addi.w	$r4,$r4,1420(0x58c)
1c0041e8:	57d9afff 	bl	-9812(0xfffd9ac) # 1c001b94 <myprintf>
1c0041ec:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0041f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041f4:	03808184 	ori	$r4,$r12,0x20
1c0041f8:	57f5cbff 	bl	-2616(0xffff5c8) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0041fc:	03400000 	andi	$r0,$r0,0x0
1c004200:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004204:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004208:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00420c:	4c000020 	jirl	$r0,$r1,0

1c004210 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004210:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004214:	29803061 	st.w	$r1,$r3,12(0xc)
1c004218:	29802076 	st.w	$r22,$r3,8(0x8)
1c00421c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004220:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004224:	029e00c6 	addi.w	$r6,$r6,1920(0x780)
1c004228:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c00422c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004230:	02950084 	addi.w	$r4,$r4,1344(0x540)
1c004234:	57d963ff 	bl	-9888(0xfffd960) # 1c001b94 <myprintf>
1c004238:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00423c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004240:	03808184 	ori	$r4,$r12,0x20
1c004244:	57f57fff 	bl	-2692(0xffff57c) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004248:	03400000 	andi	$r0,$r0,0x0
1c00424c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004250:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004254:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004258:	4c000020 	jirl	$r0,$r1,0

1c00425c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00425c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004260:	29803061 	st.w	$r1,$r3,12(0xc)
1c004264:	29802076 	st.w	$r22,$r3,8(0x8)
1c004268:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00426c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004270:	029d30c6 	addi.w	$r6,$r6,1868(0x74c)
1c004274:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004278:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00427c:	0293d084 	addi.w	$r4,$r4,1268(0x4f4)
1c004280:	57d917ff 	bl	-9964(0xfffd914) # 1c001b94 <myprintf>
1c004284:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004288:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00428c:	03808184 	ori	$r4,$r12,0x20
1c004290:	57f533ff 	bl	-2768(0xffff530) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004294:	03400000 	andi	$r0,$r0,0x0
1c004298:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00429c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042a4:	4c000020 	jirl	$r0,$r1,0

1c0042a8 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0042a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042bc:	029c60c6 	addi.w	$r6,$r6,1816(0x718)
1c0042c0:	02811405 	addi.w	$r5,$r0,69(0x45)
1c0042c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042c8:	0292a084 	addi.w	$r4,$r4,1192(0x4a8)
1c0042cc:	57d8cbff 	bl	-10040(0xfffd8c8) # 1c001b94 <myprintf>
1c0042d0:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0042d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042d8:	03808184 	ori	$r4,$r12,0x20
1c0042dc:	57f4e7ff 	bl	-2844(0xffff4e4) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0042e0:	03400000 	andi	$r0,$r0,0x0
1c0042e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042f0:	4c000020 	jirl	$r0,$r1,0

1c0042f4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0042f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004300:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004304:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004308:	029b90c6 	addi.w	$r6,$r6,1764(0x6e4)
1c00430c:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c004310:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004314:	02917084 	addi.w	$r4,$r4,1116(0x45c)
1c004318:	57d87fff 	bl	-10116(0xfffd87c) # 1c001b94 <myprintf>
1c00431c:	03a00005 	ori	$r5,$r0,0x800
1c004320:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004324:	03808184 	ori	$r4,$r12,0x20
1c004328:	57f49bff 	bl	-2920(0xffff498) # 1c0037c0 <EXTI_ClearITPendingBit>
1c00432c:	03400000 	andi	$r0,$r0,0x0
1c004330:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004334:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004338:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00433c:	4c000020 	jirl	$r0,$r1,0

1c004340 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004340:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004344:	29803061 	st.w	$r1,$r3,12(0xc)
1c004348:	29802076 	st.w	$r22,$r3,8(0x8)
1c00434c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004350:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004354:	029ac0c6 	addi.w	$r6,$r6,1712(0x6b0)
1c004358:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c00435c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004360:	02904084 	addi.w	$r4,$r4,1040(0x410)
1c004364:	57d833ff 	bl	-10192(0xfffd830) # 1c001b94 <myprintf>
1c004368:	14000025 	lu12i.w	$r5,1(0x1)
1c00436c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004370:	03808184 	ori	$r4,$r12,0x20
1c004374:	57f44fff 	bl	-2996(0xffff44c) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004378:	03400000 	andi	$r0,$r0,0x0
1c00437c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004380:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004388:	4c000020 	jirl	$r0,$r1,0

1c00438c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00438c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004390:	29803061 	st.w	$r1,$r3,12(0xc)
1c004394:	29802076 	st.w	$r22,$r3,8(0x8)
1c004398:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00439c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043a0:	0299f0c6 	addi.w	$r6,$r6,1660(0x67c)
1c0043a4:	02815005 	addi.w	$r5,$r0,84(0x54)
1c0043a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043ac:	028f1084 	addi.w	$r4,$r4,964(0x3c4)
1c0043b0:	57d7e7ff 	bl	-10268(0xfffd7e4) # 1c001b94 <myprintf>
1c0043b4:	14000045 	lu12i.w	$r5,2(0x2)
1c0043b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043bc:	03808184 	ori	$r4,$r12,0x20
1c0043c0:	57f403ff 	bl	-3072(0xffff400) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0043c4:	03400000 	andi	$r0,$r0,0x0
1c0043c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043d4:	4c000020 	jirl	$r0,$r1,0

1c0043d8 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0043d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043ec:	029920c6 	addi.w	$r6,$r6,1608(0x648)
1c0043f0:	02816405 	addi.w	$r5,$r0,89(0x59)
1c0043f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043f8:	028de084 	addi.w	$r4,$r4,888(0x378)
1c0043fc:	57d79bff 	bl	-10344(0xfffd798) # 1c001b94 <myprintf>
1c004400:	14000085 	lu12i.w	$r5,4(0x4)
1c004404:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004408:	03808184 	ori	$r4,$r12,0x20
1c00440c:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004410:	03400000 	andi	$r0,$r0,0x0
1c004414:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004418:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00441c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004420:	4c000020 	jirl	$r0,$r1,0

1c004424 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004424:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004428:	29803061 	st.w	$r1,$r3,12(0xc)
1c00442c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004430:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004434:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004438:	029850c6 	addi.w	$r6,$r6,1556(0x614)
1c00443c:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c004440:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004444:	028cb084 	addi.w	$r4,$r4,812(0x32c)
1c004448:	57d74fff 	bl	-10420(0xfffd74c) # 1c001b94 <myprintf>
1c00444c:	14000105 	lu12i.w	$r5,8(0x8)
1c004450:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004454:	03808184 	ori	$r4,$r12,0x20
1c004458:	57f36bff 	bl	-3224(0xffff368) # 1c0037c0 <EXTI_ClearITPendingBit>
1c00445c:	03400000 	andi	$r0,$r0,0x0
1c004460:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004464:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004468:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00446c:	4c000020 	jirl	$r0,$r1,0

1c004470 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004470:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004474:	29803061 	st.w	$r1,$r3,12(0xc)
1c004478:	29802076 	st.w	$r22,$r3,8(0x8)
1c00447c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004480:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004484:	029780c6 	addi.w	$r6,$r6,1504(0x5e0)
1c004488:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00448c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004490:	028b8084 	addi.w	$r4,$r4,736(0x2e0)
1c004494:	57d703ff 	bl	-10496(0xfffd700) # 1c001b94 <myprintf>
1c004498:	14000205 	lu12i.w	$r5,16(0x10)
1c00449c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044a0:	03808184 	ori	$r4,$r12,0x20
1c0044a4:	57f31fff 	bl	-3300(0xffff31c) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0044a8:	03400000 	andi	$r0,$r0,0x0
1c0044ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b8:	4c000020 	jirl	$r0,$r1,0

1c0044bc <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0044bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044d0:	0296b0c6 	addi.w	$r6,$r6,1452(0x5ac)
1c0044d4:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c0044d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044dc:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c0044e0:	57d6b7ff 	bl	-10572(0xfffd6b4) # 1c001b94 <myprintf>
1c0044e4:	14000405 	lu12i.w	$r5,32(0x20)
1c0044e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044ec:	03808184 	ori	$r4,$r12,0x20
1c0044f0:	57f2d3ff 	bl	-3376(0xffff2d0) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0044f4:	03400000 	andi	$r0,$r0,0x0
1c0044f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004500:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004504:	4c000020 	jirl	$r0,$r1,0

1c004508 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004508:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00450c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004510:	29802076 	st.w	$r22,$r3,8(0x8)
1c004514:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004518:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00451c:	0295e0c6 	addi.w	$r6,$r6,1400(0x578)
1c004520:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c004524:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004528:	02892084 	addi.w	$r4,$r4,584(0x248)
1c00452c:	57d66bff 	bl	-10648(0xfffd668) # 1c001b94 <myprintf>
1c004530:	14000805 	lu12i.w	$r5,64(0x40)
1c004534:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004538:	03808184 	ori	$r4,$r12,0x20
1c00453c:	57f287ff 	bl	-3452(0xffff284) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004540:	03400000 	andi	$r0,$r0,0x0
1c004544:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004548:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00454c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004550:	4c000020 	jirl	$r0,$r1,0

1c004554 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004554:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004558:	29803061 	st.w	$r1,$r3,12(0xc)
1c00455c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004560:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004564:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004568:	029510c6 	addi.w	$r6,$r6,1348(0x544)
1c00456c:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004570:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004574:	0287f084 	addi.w	$r4,$r4,508(0x1fc)
1c004578:	57d61fff 	bl	-10724(0xfffd61c) # 1c001b94 <myprintf>
1c00457c:	14001005 	lu12i.w	$r5,128(0x80)
1c004580:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004584:	03808184 	ori	$r4,$r12,0x20
1c004588:	57f23bff 	bl	-3528(0xffff238) # 1c0037c0 <EXTI_ClearITPendingBit>
1c00458c:	03400000 	andi	$r0,$r0,0x0
1c004590:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004594:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004598:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00459c:	4c000020 	jirl	$r0,$r1,0

1c0045a0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0045a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045b4:	029440c6 	addi.w	$r6,$r6,1296(0x510)
1c0045b8:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0045bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045c0:	0286c084 	addi.w	$r4,$r4,432(0x1b0)
1c0045c4:	57d5d3ff 	bl	-10800(0xfffd5d0) # 1c001b94 <myprintf>
1c0045c8:	14002005 	lu12i.w	$r5,256(0x100)
1c0045cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045d0:	03808184 	ori	$r4,$r12,0x20
1c0045d4:	57f1efff 	bl	-3604(0xffff1ec) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0045d8:	03400000 	andi	$r0,$r0,0x0
1c0045dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e8:	4c000020 	jirl	$r0,$r1,0

1c0045ec <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0045ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004600:	029370c6 	addi.w	$r6,$r6,1244(0x4dc)
1c004604:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c004608:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00460c:	02859084 	addi.w	$r4,$r4,356(0x164)
1c004610:	57d587ff 	bl	-10876(0xfffd584) # 1c001b94 <myprintf>
1c004614:	14004005 	lu12i.w	$r5,512(0x200)
1c004618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00461c:	03808184 	ori	$r4,$r12,0x20
1c004620:	57f1a3ff 	bl	-3680(0xffff1a0) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004624:	03400000 	andi	$r0,$r0,0x0
1c004628:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00462c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004630:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004634:	4c000020 	jirl	$r0,$r1,0

1c004638 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004638:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00463c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004640:	29802076 	st.w	$r22,$r3,8(0x8)
1c004644:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004648:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00464c:	0292a0c6 	addi.w	$r6,$r6,1192(0x4a8)
1c004650:	02820805 	addi.w	$r5,$r0,130(0x82)
1c004654:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004658:	02846084 	addi.w	$r4,$r4,280(0x118)
1c00465c:	57d53bff 	bl	-10952(0xfffd538) # 1c001b94 <myprintf>
1c004660:	14008005 	lu12i.w	$r5,1024(0x400)
1c004664:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004668:	03808184 	ori	$r4,$r12,0x20
1c00466c:	57f157ff 	bl	-3756(0xffff154) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004670:	03400000 	andi	$r0,$r0,0x0
1c004674:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004678:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00467c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004680:	4c000020 	jirl	$r0,$r1,0

1c004684 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004684:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004688:	29803061 	st.w	$r1,$r3,12(0xc)
1c00468c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004690:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004694:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004698:	0291d0c6 	addi.w	$r6,$r6,1140(0x474)
1c00469c:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c0046a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046a4:	02833084 	addi.w	$r4,$r4,204(0xcc)
1c0046a8:	57d4efff 	bl	-11028(0xfffd4ec) # 1c001b94 <myprintf>
1c0046ac:	14010005 	lu12i.w	$r5,2048(0x800)
1c0046b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046b4:	03808184 	ori	$r4,$r12,0x20
1c0046b8:	57f10bff 	bl	-3832(0xffff108) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046cc:	4c000020 	jirl	$r0,$r1,0

1c0046d0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0046d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046e4:	029100c6 	addi.w	$r6,$r6,1088(0x440)
1c0046e8:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c0046ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046f0:	02820084 	addi.w	$r4,$r4,128(0x80)
1c0046f4:	57d4a3ff 	bl	-11104(0xfffd4a0) # 1c001b94 <myprintf>
1c0046f8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0046fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004700:	03808184 	ori	$r4,$r12,0x20
1c004704:	57f0bfff 	bl	-3908(0xffff0bc) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004708:	03400000 	andi	$r0,$r0,0x0
1c00470c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004710:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004718:	4c000020 	jirl	$r0,$r1,0

1c00471c <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c00471c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004720:	29803061 	st.w	$r1,$r3,12(0xc)
1c004724:	29802076 	st.w	$r22,$r3,8(0x8)
1c004728:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00472c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004730:	029030c6 	addi.w	$r6,$r6,1036(0x40c)
1c004734:	02824405 	addi.w	$r5,$r0,145(0x91)
1c004738:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00473c:	0280d084 	addi.w	$r4,$r4,52(0x34)
1c004740:	57d457ff 	bl	-11180(0xfffd454) # 1c001b94 <myprintf>
1c004744:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004748:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00474c:	03808184 	ori	$r4,$r12,0x20
1c004750:	57f073ff 	bl	-3984(0xffff070) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004754:	03400000 	andi	$r0,$r0,0x0
1c004758:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00475c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004760:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004764:	4c000020 	jirl	$r0,$r1,0

1c004768 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004768:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00476c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004770:	29802076 	st.w	$r22,$r3,8(0x8)
1c004774:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004778:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00477c:	028f60c6 	addi.w	$r6,$r6,984(0x3d8)
1c004780:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004784:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004788:	02bfa084 	addi.w	$r4,$r4,-24(0xfe8)
1c00478c:	57d40bff 	bl	-11256(0xfffd408) # 1c001b94 <myprintf>
1c004790:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004794:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004798:	03808184 	ori	$r4,$r12,0x20
1c00479c:	57f027ff 	bl	-4060(0xffff024) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0047a0:	03400000 	andi	$r0,$r0,0x0
1c0047a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b0:	4c000020 	jirl	$r0,$r1,0

1c0047b4 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0047b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047c8:	028e90c6 	addi.w	$r6,$r6,932(0x3a4)
1c0047cc:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c0047d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047d4:	02be7084 	addi.w	$r4,$r4,-100(0xf9c)
1c0047d8:	57d3bfff 	bl	-11332(0xfffd3bc) # 1c001b94 <myprintf>
1c0047dc:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0047e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047e4:	03808184 	ori	$r4,$r12,0x20
1c0047e8:	57efdbff 	bl	-4136(0xfffefd8) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047fc:	4c000020 	jirl	$r0,$r1,0

1c004800 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004800:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004804:	29803061 	st.w	$r1,$r3,12(0xc)
1c004808:	29802076 	st.w	$r22,$r3,8(0x8)
1c00480c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004810:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004814:	028dc0c6 	addi.w	$r6,$r6,880(0x370)
1c004818:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c00481c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004820:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c004824:	57d373ff 	bl	-11408(0xfffd370) # 1c001b94 <myprintf>
1c004828:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00482c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004830:	03808184 	ori	$r4,$r12,0x20
1c004834:	57ef8fff 	bl	-4212(0xfffef8c) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004838:	03400000 	andi	$r0,$r0,0x0
1c00483c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004840:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004844:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004848:	4c000020 	jirl	$r0,$r1,0

1c00484c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00484c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004850:	29803061 	st.w	$r1,$r3,12(0xc)
1c004854:	29802076 	st.w	$r22,$r3,8(0x8)
1c004858:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00485c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004860:	028cf0c6 	addi.w	$r6,$r6,828(0x33c)
1c004864:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004868:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00486c:	02bc1084 	addi.w	$r4,$r4,-252(0xf04)
1c004870:	57d327ff 	bl	-11484(0xfffd324) # 1c001b94 <myprintf>
1c004874:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004878:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00487c:	03808184 	ori	$r4,$r12,0x20
1c004880:	57ef43ff 	bl	-4288(0xfffef40) # 1c0037c0 <EXTI_ClearITPendingBit>
1c004884:	03400000 	andi	$r0,$r0,0x0
1c004888:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00488c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004890:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004894:	4c000020 	jirl	$r0,$r1,0

1c004898 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004898:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00489c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048ac:	028c20c6 	addi.w	$r6,$r6,776(0x308)
1c0048b0:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c0048b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048b8:	02bae084 	addi.w	$r4,$r4,-328(0xeb8)
1c0048bc:	57d2dbff 	bl	-11560(0xfffd2d8) # 1c001b94 <myprintf>
1c0048c0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0048c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c8:	03808184 	ori	$r4,$r12,0x20
1c0048cc:	57eef7ff 	bl	-4364(0xfffeef4) # 1c0037c0 <EXTI_ClearITPendingBit>
1c0048d0:	03400000 	andi	$r0,$r0,0x0
1c0048d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048e0:	4c000020 	jirl	$r0,$r1,0

1c0048e4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0048e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048f8:	028b50c6 	addi.w	$r6,$r6,724(0x2d4)
1c0048fc:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c004900:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004904:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c004908:	57d28fff 	bl	-11636(0xfffd28c) # 1c001b94 <myprintf>
1c00490c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004910:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004914:	03808184 	ori	$r4,$r12,0x20
1c004918:	57eeabff 	bl	-4440(0xfffeea8) # 1c0037c0 <EXTI_ClearITPendingBit>
1c00491c:	03400000 	andi	$r0,$r0,0x0
1c004920:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004924:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004928:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00492c:	4c000020 	jirl	$r0,$r1,0

1c004930 <ext_handler>:
ext_handler():
1c004930:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004934:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004938:	29806076 	st.w	$r22,$r3,24(0x18)
1c00493c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004940:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004944:	0380f18c 	ori	$r12,$r12,0x3c
1c004948:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00494c:	2980018d 	st.w	$r13,$r12,0
1c004950:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004954:	0380818c 	ori	$r12,$r12,0x20
1c004958:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00495c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004960:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004964:	0380818c 	ori	$r12,$r12,0x20
1c004968:	2880018c 	ld.w	$r12,$r12,0
1c00496c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004970:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004974:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004978:	0014b1ac 	and	$r12,$r13,$r12
1c00497c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004980:	03400000 	andi	$r0,$r0,0x0
1c004984:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004988:	50004000 	b	64(0x40) # 1c0049c8 <ext_handler+0x98>
1c00498c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004994:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004998:	0340058c 	andi	$r12,$r12,0x1
1c00499c:	40002180 	beqz	$r12,32(0x20) # 1c0049bc <ext_handler+0x8c>
1c0049a0:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0049a4:	02b9f1ad 	addi.w	$r13,$r13,-388(0xe7c)
1c0049a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049ac:	0040898c 	slli.w	$r12,$r12,0x2
1c0049b0:	001031ac 	add.w	$r12,$r13,$r12
1c0049b4:	2880018c 	ld.w	$r12,$r12,0
1c0049b8:	4c000181 	jirl	$r1,$r12,0
1c0049bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0049cc:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0049d0:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00498c <ext_handler+0x5c>
1c0049d4:	03400000 	andi	$r0,$r0,0x0
1c0049d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049e4:	4c000020 	jirl	$r0,$r1,0

1c0049e8 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0049e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049fc:	0380f18c 	ori	$r12,$r12,0x3c
1c004a00:	1400020d 	lu12i.w	$r13,16(0x10)
1c004a04:	2980018d 	st.w	$r13,$r12,0
1c004a08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a0c:	0380118c 	ori	$r12,$r12,0x4
1c004a10:	2880018c 	ld.w	$r12,$r12,0
1c004a14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a18:	57eefbff 	bl	-4360(0xfffeef8) # 1c003910 <WDG_DogFeed>
1c004a1c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004a20:	57e7ffff 	bl	-6148(0xfffe7fc) # 1c00321c <Wake_Set>
1c004a24:	03400000 	andi	$r0,$r0,0x0
1c004a28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a34:	4c000020 	jirl	$r0,$r1,0

1c004a38 <TOUCH>:
TOUCH():
1c004a38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a3c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a40:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a44:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a48:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a4c:	0380118c 	ori	$r12,$r12,0x4
1c004a50:	2880018c 	ld.w	$r12,$r12,0
1c004a54:	0044c18c 	srli.w	$r12,$r12,0x10
1c004a58:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004a5c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004a60:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004a64:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a68:	0380118c 	ori	$r12,$r12,0x4
1c004a6c:	2880018c 	ld.w	$r12,$r12,0
1c004a70:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a74:	03403d8c 	andi	$r12,$r12,0xf
1c004a78:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004a7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a80:	0380f18c 	ori	$r12,$r12,0x3c
1c004a84:	1400040d 	lu12i.w	$r13,32(0x20)
1c004a88:	2980018d 	st.w	$r13,$r12,0
1c004a8c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a90:	0380118c 	ori	$r12,$r12,0x4
1c004a94:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004a98:	2980018d 	st.w	$r13,$r12,0
1c004a9c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004aa0:	00150184 	move	$r4,$r12
1c004aa4:	57efdfff 	bl	-4132(0xfffefdc) # 1c003a80 <Printf_KeyType>
1c004aa8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004aac:	00150184 	move	$r4,$r12
1c004ab0:	57ef57ff 	bl	-4268(0xfffef54) # 1c003a04 <Printf_KeyChannel>
1c004ab4:	57f05bff 	bl	-4008(0xffff058) # 1c003b0c <Printf_KeyVal>
1c004ab8:	03400000 	andi	$r0,$r0,0x0
1c004abc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ac0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ac4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ac8:	4c000020 	jirl	$r0,$r1,0

1c004acc <UART2_INT>:
UART2_INT():
1c004acc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ad0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004ad4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004adc:	0380f18c 	ori	$r12,$r12,0x3c
1c004ae0:	1400080d 	lu12i.w	$r13,64(0x40)
1c004ae4:	2980018d 	st.w	$r13,$r12,0
1c004ae8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004aec:	0380098c 	ori	$r12,$r12,0x2
1c004af0:	2a00018c 	ld.bu	$r12,$r12,0
1c004af4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004af8:	03400000 	andi	$r0,$r0,0x0
1c004afc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b04:	4c000020 	jirl	$r0,$r1,0

1c004b08 <BAT_FAIL>:
BAT_FAIL():
1c004b08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b10:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b1c:	0380118c 	ori	$r12,$r12,0x4
1c004b20:	2880018c 	ld.w	$r12,$r12,0
1c004b24:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004b28:	03407d8c 	andi	$r12,$r12,0x1f
1c004b2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b34:	0380118c 	ori	$r12,$r12,0x4
1c004b38:	2880018e 	ld.w	$r14,$r12,0
1c004b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b40:	0380f18c 	ori	$r12,$r12,0x3c
1c004b44:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004b48:	0014b5cd 	and	$r13,$r14,$r13
1c004b4c:	2980018d 	st.w	$r13,$r12,0
1c004b50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b54:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004b58:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004bc8 <BAT_FAIL+0xc0>
1c004b5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b60:	0040898d 	slli.w	$r13,$r12,0x2
1c004b64:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004b68:	02b4e18c 	addi.w	$r12,$r12,-712(0xd38)
1c004b6c:	001031ac 	add.w	$r12,$r13,$r12
1c004b70:	2880018c 	ld.w	$r12,$r12,0
1c004b74:	4c000180 	jirl	$r0,$r12,0
1c004b78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b7c:	02b0e084 	addi.w	$r4,$r4,-968(0xc38)
1c004b80:	57d017ff 	bl	-12268(0xfffd014) # 1c001b94 <myprintf>
1c004b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b88:	0380118c 	ori	$r12,$r12,0x4
1c004b8c:	29800180 	st.w	$r0,$r12,0
1c004b90:	50003c00 	b	60(0x3c) # 1c004bcc <BAT_FAIL+0xc4>
1c004b94:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b98:	02b11084 	addi.w	$r4,$r4,-956(0xc44)
1c004b9c:	57cffbff 	bl	-12296(0xfffcff8) # 1c001b94 <myprintf>
1c004ba0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ba4:	0380118c 	ori	$r12,$r12,0x4
1c004ba8:	2880018e 	ld.w	$r14,$r12,0
1c004bac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bb0:	0380118c 	ori	$r12,$r12,0x4
1c004bb4:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004bb8:	03bffdad 	ori	$r13,$r13,0xfff
1c004bbc:	0014b5cd 	and	$r13,$r14,$r13
1c004bc0:	2980018d 	st.w	$r13,$r12,0
1c004bc4:	50000800 	b	8(0x8) # 1c004bcc <BAT_FAIL+0xc4>
1c004bc8:	03400000 	andi	$r0,$r0,0x0
1c004bcc:	03400000 	andi	$r0,$r0,0x0
1c004bd0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004bd4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004bd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bdc:	4c000020 	jirl	$r0,$r1,0

1c004be0 <TIM_SetCompare1>:
TIM_SetCompare1():
1c004be0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004be4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004be8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004bf0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004bf4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c004bfc:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c004c48 <TIM_SetCompare1+0x68>
1c004c00:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c04:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004c08:	6400198d 	bge	$r12,$r13,24(0x18) # 1c004c20 <TIM_SetCompare1+0x40>
1c004c0c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c10:	0290018c 	addi.w	$r12,$r12,1024(0x400)
1c004c14:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c004c18:	2980018d 	st.w	$r13,$r12,0
1c004c1c:	50002c00 	b	44(0x2c) # 1c004c48 <TIM_SetCompare1+0x68>
1c004c20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004c24:	64001580 	bge	$r12,$r0,20(0x14) # 1c004c38 <TIM_SetCompare1+0x58>
1c004c28:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c2c:	028f918c 	addi.w	$r12,$r12,996(0x3e4)
1c004c30:	29800180 	st.w	$r0,$r12,0
1c004c34:	50001400 	b	20(0x14) # 1c004c48 <TIM_SetCompare1+0x68>
1c004c38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c3c:	028f518c 	addi.w	$r12,$r12,980(0x3d4)
1c004c40:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c44:	2980018d 	st.w	$r13,$r12,0
1c004c48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c4c:	0280d40c 	addi.w	$r12,$r0,53(0x35)
1c004c50:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c004c9c <TIM_SetCompare1+0xbc>
1c004c54:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c58:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004c5c:	6400198d 	bge	$r12,$r13,24(0x18) # 1c004c74 <TIM_SetCompare1+0x94>
1c004c60:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c64:	028ec18c 	addi.w	$r12,$r12,944(0x3b0)
1c004c68:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c004c6c:	2980018d 	st.w	$r13,$r12,0
1c004c70:	50002c00 	b	44(0x2c) # 1c004c9c <TIM_SetCompare1+0xbc>
1c004c74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004c78:	64001580 	bge	$r12,$r0,20(0x14) # 1c004c8c <TIM_SetCompare1+0xac>
1c004c7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c80:	028e518c 	addi.w	$r12,$r12,916(0x394)
1c004c84:	29800180 	st.w	$r0,$r12,0
1c004c88:	50001400 	b	20(0x14) # 1c004c9c <TIM_SetCompare1+0xbc>
1c004c8c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c90:	028e118c 	addi.w	$r12,$r12,900(0x384)
1c004c94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c98:	2980018d 	st.w	$r13,$r12,0
1c004c9c:	03400000 	andi	$r0,$r0,0x0
1c004ca0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004ca4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ca8:	4c000020 	jirl	$r0,$r1,0

1c004cac <intc_handler>:
intc_handler():
1c004cac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cb0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cb4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cb8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cbc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004cc0:	0380158c 	ori	$r12,$r12,0x5
1c004cc4:	2a00018c 	ld.bu	$r12,$r12,0
1c004cc8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ccc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004cd0:	0340058c 	andi	$r12,$r12,0x1
1c004cd4:	40017d80 	beqz	$r12,380(0x17c) # 1c004e50 <intc_handler+0x1a4>
1c004cd8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004cdc:	57f22fff 	bl	-3540(0xffff22c) # 1c003f08 <TIM_GetITStatus>
1c004ce0:	0015008c 	move	$r12,$r4
1c004ce4:	40016d80 	beqz	$r12,364(0x16c) # 1c004e50 <intc_handler+0x1a4>
1c004ce8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cec:	028c718c 	addi.w	$r12,$r12,796(0x31c)
1c004cf0:	2880018d 	ld.w	$r13,$r12,0
1c004cf4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cf8:	028c618c 	addi.w	$r12,$r12,792(0x318)
1c004cfc:	2880018c 	ld.w	$r12,$r12,0
1c004d00:	6000358d 	blt	$r12,$r13,52(0x34) # 1c004d34 <intc_handler+0x88>
1c004d04:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d08:	028bf18c 	addi.w	$r12,$r12,764(0x2fc)
1c004d0c:	2880018c 	ld.w	$r12,$r12,0
1c004d10:	44002580 	bnez	$r12,36(0x24) # 1c004d34 <intc_handler+0x88>
1c004d14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d18:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004d1c:	57c8c3ff 	bl	-14144(0xfffc8c0) # 1c0015dc <gpio_write_pin>
1c004d20:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d24:	028b818c 	addi.w	$r12,$r12,736(0x2e0)
1c004d28:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004d2c:	2980018d 	st.w	$r13,$r12,0
1c004d30:	50004c00 	b	76(0x4c) # 1c004d7c <intc_handler+0xd0>
1c004d34:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d38:	028b418c 	addi.w	$r12,$r12,720(0x2d0)
1c004d3c:	2880018d 	ld.w	$r13,$r12,0
1c004d40:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d44:	028b318c 	addi.w	$r12,$r12,716(0x2cc)
1c004d48:	2880018c 	ld.w	$r12,$r12,0
1c004d4c:	6400318d 	bge	$r12,$r13,48(0x30) # 1c004d7c <intc_handler+0xd0>
1c004d50:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d54:	028ac18c 	addi.w	$r12,$r12,688(0x2b0)
1c004d58:	2880018d 	ld.w	$r13,$r12,0
1c004d5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d60:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c004d7c <intc_handler+0xd0>
1c004d64:	00150005 	move	$r5,$r0
1c004d68:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004d6c:	57c873ff 	bl	-14224(0xfffc870) # 1c0015dc <gpio_write_pin>
1c004d70:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d74:	028a418c 	addi.w	$r12,$r12,656(0x290)
1c004d78:	29800180 	st.w	$r0,$r12,0
1c004d7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d80:	028a318c 	addi.w	$r12,$r12,652(0x28c)
1c004d84:	2880018d 	ld.w	$r13,$r12,0
1c004d88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d8c:	028a218c 	addi.w	$r12,$r12,648(0x288)
1c004d90:	2880018c 	ld.w	$r12,$r12,0
1c004d94:	6000158d 	blt	$r12,$r13,20(0x14) # 1c004da8 <intc_handler+0xfc>
1c004d98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d9c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004da0:	57c83fff 	bl	-14276(0xfffc83c) # 1c0015dc <gpio_write_pin>
1c004da4:	50002c00 	b	44(0x2c) # 1c004dd0 <intc_handler+0x124>
1c004da8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dac:	0289818c 	addi.w	$r12,$r12,608(0x260)
1c004db0:	2880018d 	ld.w	$r13,$r12,0
1c004db4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004db8:	0289718c 	addi.w	$r12,$r12,604(0x25c)
1c004dbc:	2880018c 	ld.w	$r12,$r12,0
1c004dc0:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004dd0 <intc_handler+0x124>
1c004dc4:	00150005 	move	$r5,$r0
1c004dc8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004dcc:	57c813ff 	bl	-14320(0xfffc810) # 1c0015dc <gpio_write_pin>
1c004dd0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dd4:	0288d18c 	addi.w	$r12,$r12,564(0x234)
1c004dd8:	2880018c 	ld.w	$r12,$r12,0
1c004ddc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004de0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004de4:	0288918c 	addi.w	$r12,$r12,548(0x224)
1c004de8:	2980018d 	st.w	$r13,$r12,0
1c004dec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004df0:	0288718c 	addi.w	$r12,$r12,540(0x21c)
1c004df4:	2880018c 	ld.w	$r12,$r12,0
1c004df8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004dfc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e00:	0288318c 	addi.w	$r12,$r12,524(0x20c)
1c004e04:	2980018d 	st.w	$r13,$r12,0
1c004e08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e0c:	0287f18c 	addi.w	$r12,$r12,508(0x1fc)
1c004e10:	2880018d 	ld.w	$r13,$r12,0
1c004e14:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e18:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004e28 <intc_handler+0x17c>
1c004e1c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e20:	0287a18c 	addi.w	$r12,$r12,488(0x1e8)
1c004e24:	29800180 	st.w	$r0,$r12,0
1c004e28:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e2c:	0287818c 	addi.w	$r12,$r12,480(0x1e0)
1c004e30:	2880018d 	ld.w	$r13,$r12,0
1c004e34:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e38:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004e48 <intc_handler+0x19c>
1c004e3c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e40:	0287318c 	addi.w	$r12,$r12,460(0x1cc)
1c004e44:	29800180 	st.w	$r0,$r12,0
1c004e48:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004e4c:	57f10bff 	bl	-3832(0xffff108) # 1c003f54 <TIM_ClearIT>
1c004e50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e54:	0340118c 	andi	$r12,$r12,0x4
1c004e58:	40001580 	beqz	$r12,20(0x14) # 1c004e6c <intc_handler+0x1c0>
1c004e5c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004e60:	03800d8c 	ori	$r12,$r12,0x3
1c004e64:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004e68:	2900018d 	st.b	$r13,$r12,0
1c004e6c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e70:	0340218c 	andi	$r12,$r12,0x8
1c004e74:	40007d80 	beqz	$r12,124(0x7c) # 1c004ef0 <intc_handler+0x244>
1c004e78:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004e7c:	0380098c 	ori	$r12,$r12,0x2
1c004e80:	2a00018c 	ld.bu	$r12,$r12,0
1c004e84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e88:	0340118c 	andi	$r12,$r12,0x4
1c004e8c:	40005580 	beqz	$r12,84(0x54) # 1c004ee0 <intc_handler+0x234>
1c004e90:	50003800 	b	56(0x38) # 1c004ec8 <intc_handler+0x21c>
1c004e94:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004e98:	57db8fff 	bl	-9332(0xfffdb8c) # 1c002a24 <UART_ReceiveData>
1c004e9c:	0015008c 	move	$r12,$r4
1c004ea0:	0015018d 	move	$r13,$r12
1c004ea4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ea8:	0285c18c 	addi.w	$r12,$r12,368(0x170)
1c004eac:	2900018d 	st.b	$r13,$r12,0
1c004eb0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004eb4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004eb8:	028580a5 	addi.w	$r5,$r5,352(0x160)
1c004ebc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ec0:	28857084 	ld.w	$r4,$r4,348(0x15c)
1c004ec4:	541fdc00 	bl	8156(0x1fdc) # 1c006ea0 <Queue_Wirte>
1c004ec8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004ecc:	0380158c 	ori	$r12,$r12,0x5
1c004ed0:	2a00018c 	ld.bu	$r12,$r12,0
1c004ed4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ed8:	0340058c 	andi	$r12,$r12,0x1
1c004edc:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004e94 <intc_handler+0x1e8>
1c004ee0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ee4:	03800d8c 	ori	$r12,$r12,0x3
1c004ee8:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004eec:	2900018d 	st.b	$r13,$r12,0
1c004ef0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ef4:	03800d8c 	ori	$r12,$r12,0x3
1c004ef8:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004efc:	2900018d 	st.b	$r13,$r12,0
1c004f00:	03400000 	andi	$r0,$r0,0x0
1c004f04:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f08:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f10:	4c000020 	jirl	$r0,$r1,0

1c004f14 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004f14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f18:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f24:	57e2d7ff 	bl	-7468(0xfffe2d4) # 1c0031f8 <Set_Timer_clear>
1c004f28:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f2c:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c004f30:	57cc67ff 	bl	-13212(0xfffcc64) # 1c001b94 <myprintf>
1c004f34:	57e2a7ff 	bl	-7516(0xfffe2a4) # 1c0031d8 <Set_Timer_stop>
1c004f38:	03400000 	andi	$r0,$r0,0x0
1c004f3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f40:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f48:	4c000020 	jirl	$r0,$r1,0

1c004f4c <IIC_Delay>:
IIC_Delay():
1c004f4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004f54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f60:	50001000 	b	16(0x10) # 1c004f70 <IIC_Delay+0x24>
1c004f64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f68:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004f6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f74:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004f64 <IIC_Delay+0x18>
1c004f78:	03400000 	andi	$r0,$r0,0x0
1c004f7c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004f80:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f84:	4c000020 	jirl	$r0,$r1,0

1c004f88 <IIC_Init>:
IIC_Init():
1c004f88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f90:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f98:	00150005 	move	$r5,$r0
1c004f9c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fa0:	57c6b7ff 	bl	-14668(0xfffc6b4) # 1c001654 <gpio_pin_remap>
1c004fa4:	00150005 	move	$r5,$r0
1c004fa8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fac:	57c6abff 	bl	-14680(0xfffc6a8) # 1c001654 <gpio_pin_remap>
1c004fb0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fb4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fb8:	57c8abff 	bl	-14168(0xfffc8a8) # 1c001860 <gpio_set_direction>
1c004fbc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fc0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fc4:	57c89fff 	bl	-14180(0xfffc89c) # 1c001860 <gpio_set_direction>
1c004fc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fcc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fd0:	57c60fff 	bl	-14836(0xfffc60c) # 1c0015dc <gpio_write_pin>
1c004fd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fd8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fdc:	57c603ff 	bl	-14848(0xfffc600) # 1c0015dc <gpio_write_pin>
1c004fe0:	03400000 	andi	$r0,$r0,0x0
1c004fe4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fe8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004fec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ff0:	4c000020 	jirl	$r0,$r1,0

1c004ff4 <SDA_IN>:
SDA_IN():
1c004ff4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ff8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ffc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005000:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005004:	00150005 	move	$r5,$r0
1c005008:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00500c:	57c857ff 	bl	-14252(0xfffc854) # 1c001860 <gpio_set_direction>
1c005010:	03400000 	andi	$r0,$r0,0x0
1c005014:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005018:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00501c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005020:	4c000020 	jirl	$r0,$r1,0

1c005024 <SDA_OUT>:
SDA_OUT():
1c005024:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005028:	29803061 	st.w	$r1,$r3,12(0xc)
1c00502c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005030:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005034:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005038:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00503c:	57c827ff 	bl	-14300(0xfffc824) # 1c001860 <gpio_set_direction>
1c005040:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005044:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005048:	57c597ff 	bl	-14956(0xfffc594) # 1c0015dc <gpio_write_pin>
1c00504c:	03400000 	andi	$r0,$r0,0x0
1c005050:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005054:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005058:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00505c:	4c000020 	jirl	$r0,$r1,0

1c005060 <IIC_Start>:
IIC_Start():
1c005060:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005064:	29803061 	st.w	$r1,$r3,12(0xc)
1c005068:	29802076 	st.w	$r22,$r3,8(0x8)
1c00506c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005070:	57ffb7ff 	bl	-76(0xfffffb4) # 1c005024 <SDA_OUT>
1c005074:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005078:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00507c:	57c563ff 	bl	-15008(0xfffc560) # 1c0015dc <gpio_write_pin>
1c005080:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005084:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005088:	57c557ff 	bl	-15020(0xfffc554) # 1c0015dc <gpio_write_pin>
1c00508c:	57fec3ff 	bl	-320(0xffffec0) # 1c004f4c <IIC_Delay>
1c005090:	00150005 	move	$r5,$r0
1c005094:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005098:	57c547ff 	bl	-15036(0xfffc544) # 1c0015dc <gpio_write_pin>
1c00509c:	57feb3ff 	bl	-336(0xffffeb0) # 1c004f4c <IIC_Delay>
1c0050a0:	00150005 	move	$r5,$r0
1c0050a4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050a8:	57c537ff 	bl	-15052(0xfffc534) # 1c0015dc <gpio_write_pin>
1c0050ac:	03400000 	andi	$r0,$r0,0x0
1c0050b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050bc:	4c000020 	jirl	$r0,$r1,0

1c0050c0 <IIC_Stop>:
IIC_Stop():
1c0050c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050d0:	57ff57ff 	bl	-172(0xfffff54) # 1c005024 <SDA_OUT>
1c0050d4:	00150005 	move	$r5,$r0
1c0050d8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050dc:	57c503ff 	bl	-15104(0xfffc500) # 1c0015dc <gpio_write_pin>
1c0050e0:	00150005 	move	$r5,$r0
1c0050e4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050e8:	57c4f7ff 	bl	-15116(0xfffc4f4) # 1c0015dc <gpio_write_pin>
1c0050ec:	57fe63ff 	bl	-416(0xffffe60) # 1c004f4c <IIC_Delay>
1c0050f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0050f4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050f8:	57c4e7ff 	bl	-15132(0xfffc4e4) # 1c0015dc <gpio_write_pin>
1c0050fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005100:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005104:	57c4dbff 	bl	-15144(0xfffc4d8) # 1c0015dc <gpio_write_pin>
1c005108:	57fe47ff 	bl	-444(0xffffe44) # 1c004f4c <IIC_Delay>
1c00510c:	03400000 	andi	$r0,$r0,0x0
1c005110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005114:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00511c:	4c000020 	jirl	$r0,$r1,0

1c005120 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c005120:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005124:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005128:	29806076 	st.w	$r22,$r3,24(0x18)
1c00512c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005130:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005134:	57fec3ff 	bl	-320(0xffffec0) # 1c004ff4 <SDA_IN>
1c005138:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00513c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005140:	57c49fff 	bl	-15204(0xfffc49c) # 1c0015dc <gpio_write_pin>
1c005144:	57fe0bff 	bl	-504(0xffffe08) # 1c004f4c <IIC_Delay>
1c005148:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00514c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005150:	57c48fff 	bl	-15220(0xfffc48c) # 1c0015dc <gpio_write_pin>
1c005154:	57fdfbff 	bl	-520(0xffffdf8) # 1c004f4c <IIC_Delay>
1c005158:	50002800 	b	40(0x28) # 1c005180 <IIC_Wait_Ack+0x60>
1c00515c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005160:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005164:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005168:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00516c:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c005170:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005180 <IIC_Wait_Ack+0x60>
1c005174:	57ff4fff 	bl	-180(0xfffff4c) # 1c0050c0 <IIC_Stop>
1c005178:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00517c:	50002400 	b	36(0x24) # 1c0051a0 <IIC_Wait_Ack+0x80>
1c005180:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005184:	57c40bff 	bl	-15352(0xfffc408) # 1c00158c <gpio_get_pin>
1c005188:	0015008c 	move	$r12,$r4
1c00518c:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c00515c <IIC_Wait_Ack+0x3c>
1c005190:	00150005 	move	$r5,$r0
1c005194:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005198:	57c447ff 	bl	-15292(0xfffc444) # 1c0015dc <gpio_write_pin>
1c00519c:	0015000c 	move	$r12,$r0
1c0051a0:	00150184 	move	$r4,$r12
1c0051a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0051a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0051ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0051b0:	4c000020 	jirl	$r0,$r1,0

1c0051b4 <IIC_Send_Byte>:
IIC_Send_Byte():
1c0051b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0051b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0051bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0051c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0051c4:	0015008c 	move	$r12,$r4
1c0051c8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0051cc:	57fe5bff 	bl	-424(0xffffe58) # 1c005024 <SDA_OUT>
1c0051d0:	00150005 	move	$r5,$r0
1c0051d4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0051d8:	57c407ff 	bl	-15356(0xfffc404) # 1c0015dc <gpio_write_pin>
1c0051dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0051e0:	50006000 	b	96(0x60) # 1c005240 <IIC_Send_Byte+0x8c>
1c0051e4:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c0051e8:	64001580 	bge	$r12,$r0,20(0x14) # 1c0051fc <IIC_Send_Byte+0x48>
1c0051ec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051f0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0051f4:	57c3ebff 	bl	-15384(0xfffc3e8) # 1c0015dc <gpio_write_pin>
1c0051f8:	50001000 	b	16(0x10) # 1c005208 <IIC_Send_Byte+0x54>
1c0051fc:	00150005 	move	$r5,$r0
1c005200:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005204:	57c3dbff 	bl	-15400(0xfffc3d8) # 1c0015dc <gpio_write_pin>
1c005208:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00520c:	0040858c 	slli.w	$r12,$r12,0x1
1c005210:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005214:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005218:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00521c:	57c3c3ff 	bl	-15424(0xfffc3c0) # 1c0015dc <gpio_write_pin>
1c005220:	57fd2fff 	bl	-724(0xffffd2c) # 1c004f4c <IIC_Delay>
1c005224:	00150005 	move	$r5,$r0
1c005228:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00522c:	57c3b3ff 	bl	-15440(0xfffc3b0) # 1c0015dc <gpio_write_pin>
1c005230:	57fd1fff 	bl	-740(0xffffd1c) # 1c004f4c <IIC_Delay>
1c005234:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005238:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00523c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005240:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005244:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005248:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c0051e4 <IIC_Send_Byte+0x30>
1c00524c:	03400000 	andi	$r0,$r0,0x0
1c005250:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005254:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005258:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00525c:	4c000020 	jirl	$r0,$r1,0

1c005260 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c005260:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005264:	29803061 	st.w	$r1,$r3,12(0xc)
1c005268:	29802076 	st.w	$r22,$r3,8(0x8)
1c00526c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005270:	57fd1bff 	bl	-744(0xffffd18) # 1c004f88 <IIC_Init>
1c005274:	03400000 	andi	$r0,$r0,0x0
1c005278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00527c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005284:	4c000020 	jirl	$r0,$r1,0

1c005288 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005288:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00528c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005290:	29806076 	st.w	$r22,$r3,24(0x18)
1c005294:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005298:	0015008c 	move	$r12,$r4
1c00529c:	001500ad 	move	$r13,$r5
1c0052a0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052a4:	001501ac 	move	$r12,$r13
1c0052a8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0052ac:	57fdb7ff 	bl	-588(0xffffdb4) # 1c005060 <IIC_Start>
1c0052b0:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0052b4:	57ff03ff 	bl	-256(0xfffff00) # 1c0051b4 <IIC_Send_Byte>
1c0052b8:	57fe6bff 	bl	-408(0xffffe68) # 1c005120 <IIC_Wait_Ack>
1c0052bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0052c0:	00150184 	move	$r4,$r12
1c0052c4:	57fef3ff 	bl	-272(0xffffef0) # 1c0051b4 <IIC_Send_Byte>
1c0052c8:	57fe5bff 	bl	-424(0xffffe58) # 1c005120 <IIC_Wait_Ack>
1c0052cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052d0:	00150184 	move	$r4,$r12
1c0052d4:	57fee3ff 	bl	-288(0xffffee0) # 1c0051b4 <IIC_Send_Byte>
1c0052d8:	57fe4bff 	bl	-440(0xffffe48) # 1c005120 <IIC_Wait_Ack>
1c0052dc:	57fde7ff 	bl	-540(0xffffde4) # 1c0050c0 <IIC_Stop>
1c0052e0:	03400000 	andi	$r0,$r0,0x0
1c0052e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0052e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0052ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052f0:	4c000020 	jirl	$r0,$r1,0

1c0052f4 <OLED_Set_Pos>:
OLED_Set_Pos():
1c0052f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c005300:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005304:	0015008c 	move	$r12,$r4
1c005308:	001500ad 	move	$r13,$r5
1c00530c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005310:	001501ac 	move	$r12,$r13
1c005314:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005318:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00531c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005320:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005324:	00150005 	move	$r5,$r0
1c005328:	00150184 	move	$r4,$r12
1c00532c:	57ff5fff 	bl	-164(0xfffff5c) # 1c005288 <OLED_WR_Byte>
1c005330:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005334:	0044918c 	srli.w	$r12,$r12,0x4
1c005338:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00533c:	0380418c 	ori	$r12,$r12,0x10
1c005340:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005344:	00150005 	move	$r5,$r0
1c005348:	00150184 	move	$r4,$r12
1c00534c:	57ff3fff 	bl	-196(0xfffff3c) # 1c005288 <OLED_WR_Byte>
1c005350:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005354:	03403d8c 	andi	$r12,$r12,0xf
1c005358:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00535c:	00150005 	move	$r5,$r0
1c005360:	00150184 	move	$r4,$r12
1c005364:	57ff27ff 	bl	-220(0xfffff24) # 1c005288 <OLED_WR_Byte>
1c005368:	03400000 	andi	$r0,$r0,0x0
1c00536c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005370:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005374:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005378:	4c000020 	jirl	$r0,$r1,0

1c00537c <OLED_Clear>:
OLED_Clear():
1c00537c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005380:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005384:	29806076 	st.w	$r22,$r3,24(0x18)
1c005388:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00538c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005390:	50006800 	b	104(0x68) # 1c0053f8 <OLED_Clear+0x7c>
1c005394:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005398:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00539c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0053a0:	00150005 	move	$r5,$r0
1c0053a4:	00150184 	move	$r4,$r12
1c0053a8:	57fee3ff 	bl	-288(0xffffee0) # 1c005288 <OLED_WR_Byte>
1c0053ac:	00150005 	move	$r5,$r0
1c0053b0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0053b4:	57fed7ff 	bl	-300(0xffffed4) # 1c005288 <OLED_WR_Byte>
1c0053b8:	00150005 	move	$r5,$r0
1c0053bc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0053c0:	57fecbff 	bl	-312(0xffffec8) # 1c005288 <OLED_WR_Byte>
1c0053c4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0053c8:	50001c00 	b	28(0x1c) # 1c0053e4 <OLED_Clear+0x68>
1c0053cc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0053d0:	00150004 	move	$r4,$r0
1c0053d4:	57feb7ff 	bl	-332(0xffffeb4) # 1c005288 <OLED_WR_Byte>
1c0053d8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0053dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053e0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0053e4:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c0053e8:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c0053cc <OLED_Clear+0x50>
1c0053ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0053f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0053f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0053fc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005400:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005394 <OLED_Clear+0x18>
1c005404:	03400000 	andi	$r0,$r0,0x0
1c005408:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00540c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005410:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005414:	4c000020 	jirl	$r0,$r1,0

1c005418 <OLED_Init>:
OLED_Init():
1c005418:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00541c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005420:	29802076 	st.w	$r22,$r3,8(0x8)
1c005424:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005428:	57fe3bff 	bl	-456(0xffffe38) # 1c005260 <OLED_Hardware_Init>
1c00542c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005430:	57e1abff 	bl	-7768(0xfffe1a8) # 1c0035d8 <delay_ms>
1c005434:	57ff4bff 	bl	-184(0xfffff48) # 1c00537c <OLED_Clear>
1c005438:	00150005 	move	$r5,$r0
1c00543c:	00150004 	move	$r4,$r0
1c005440:	57feb7ff 	bl	-332(0xffffeb4) # 1c0052f4 <OLED_Set_Pos>
1c005444:	00150005 	move	$r5,$r0
1c005448:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c00544c:	57fe3fff 	bl	-452(0xffffe3c) # 1c005288 <OLED_WR_Byte>
1c005450:	00150005 	move	$r5,$r0
1c005454:	00150004 	move	$r4,$r0
1c005458:	57fe33ff 	bl	-464(0xffffe30) # 1c005288 <OLED_WR_Byte>
1c00545c:	00150005 	move	$r5,$r0
1c005460:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005464:	57fe27ff 	bl	-476(0xffffe24) # 1c005288 <OLED_WR_Byte>
1c005468:	00150005 	move	$r5,$r0
1c00546c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005470:	57fe1bff 	bl	-488(0xffffe18) # 1c005288 <OLED_WR_Byte>
1c005474:	00150005 	move	$r5,$r0
1c005478:	02820404 	addi.w	$r4,$r0,129(0x81)
1c00547c:	57fe0fff 	bl	-500(0xffffe0c) # 1c005288 <OLED_WR_Byte>
1c005480:	00150005 	move	$r5,$r0
1c005484:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005488:	57fe03ff 	bl	-512(0xffffe00) # 1c005288 <OLED_WR_Byte>
1c00548c:	00150005 	move	$r5,$r0
1c005490:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005494:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005288 <OLED_WR_Byte>
1c005498:	00150005 	move	$r5,$r0
1c00549c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0054a0:	57fdebff 	bl	-536(0xffffde8) # 1c005288 <OLED_WR_Byte>
1c0054a4:	00150005 	move	$r5,$r0
1c0054a8:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0054ac:	57fddfff 	bl	-548(0xffffddc) # 1c005288 <OLED_WR_Byte>
1c0054b0:	00150005 	move	$r5,$r0
1c0054b4:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0054b8:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005288 <OLED_WR_Byte>
1c0054bc:	00150005 	move	$r5,$r0
1c0054c0:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0054c4:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005288 <OLED_WR_Byte>
1c0054c8:	00150005 	move	$r5,$r0
1c0054cc:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0054d0:	57fdbbff 	bl	-584(0xffffdb8) # 1c005288 <OLED_WR_Byte>
1c0054d4:	00150005 	move	$r5,$r0
1c0054d8:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0054dc:	57fdafff 	bl	-596(0xffffdac) # 1c005288 <OLED_WR_Byte>
1c0054e0:	00150005 	move	$r5,$r0
1c0054e4:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0054e8:	57fda3ff 	bl	-608(0xffffda0) # 1c005288 <OLED_WR_Byte>
1c0054ec:	00150005 	move	$r5,$r0
1c0054f0:	00150004 	move	$r4,$r0
1c0054f4:	57fd97ff 	bl	-620(0xffffd94) # 1c005288 <OLED_WR_Byte>
1c0054f8:	00150005 	move	$r5,$r0
1c0054fc:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005500:	57fd8bff 	bl	-632(0xffffd88) # 1c005288 <OLED_WR_Byte>
1c005504:	00150005 	move	$r5,$r0
1c005508:	02820004 	addi.w	$r4,$r0,128(0x80)
1c00550c:	57fd7fff 	bl	-644(0xffffd7c) # 1c005288 <OLED_WR_Byte>
1c005510:	00150005 	move	$r5,$r0
1c005514:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005518:	57fd73ff 	bl	-656(0xffffd70) # 1c005288 <OLED_WR_Byte>
1c00551c:	00150005 	move	$r5,$r0
1c005520:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c005524:	57fd67ff 	bl	-668(0xffffd64) # 1c005288 <OLED_WR_Byte>
1c005528:	00150005 	move	$r5,$r0
1c00552c:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005530:	57fd5bff 	bl	-680(0xffffd58) # 1c005288 <OLED_WR_Byte>
1c005534:	00150005 	move	$r5,$r0
1c005538:	02804804 	addi.w	$r4,$r0,18(0x12)
1c00553c:	57fd4fff 	bl	-692(0xffffd4c) # 1c005288 <OLED_WR_Byte>
1c005540:	00150005 	move	$r5,$r0
1c005544:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005548:	57fd43ff 	bl	-704(0xffffd40) # 1c005288 <OLED_WR_Byte>
1c00554c:	00150005 	move	$r5,$r0
1c005550:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005554:	57fd37ff 	bl	-716(0xffffd34) # 1c005288 <OLED_WR_Byte>
1c005558:	00150005 	move	$r5,$r0
1c00555c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005560:	57fd2bff 	bl	-728(0xffffd28) # 1c005288 <OLED_WR_Byte>
1c005564:	00150005 	move	$r5,$r0
1c005568:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00556c:	57fd1fff 	bl	-740(0xffffd1c) # 1c005288 <OLED_WR_Byte>
1c005570:	00150005 	move	$r5,$r0
1c005574:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005578:	57fd13ff 	bl	-752(0xffffd10) # 1c005288 <OLED_WR_Byte>
1c00557c:	00150005 	move	$r5,$r0
1c005580:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005584:	57fd07ff 	bl	-764(0xffffd04) # 1c005288 <OLED_WR_Byte>
1c005588:	00150005 	move	$r5,$r0
1c00558c:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005590:	57fcfbff 	bl	-776(0xffffcf8) # 1c005288 <OLED_WR_Byte>
1c005594:	00150005 	move	$r5,$r0
1c005598:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c00559c:	57fcefff 	bl	-788(0xffffcec) # 1c005288 <OLED_WR_Byte>
1c0055a0:	00150005 	move	$r5,$r0
1c0055a4:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0055a8:	57fce3ff 	bl	-800(0xffffce0) # 1c005288 <OLED_WR_Byte>
1c0055ac:	00150005 	move	$r5,$r0
1c0055b0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0055b4:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005288 <OLED_WR_Byte>
1c0055b8:	57fdc7ff 	bl	-572(0xffffdc4) # 1c00537c <OLED_Clear>
1c0055bc:	00150005 	move	$r5,$r0
1c0055c0:	00150004 	move	$r4,$r0
1c0055c4:	57fd33ff 	bl	-720(0xffffd30) # 1c0052f4 <OLED_Set_Pos>
1c0055c8:	03400000 	andi	$r0,$r0,0x0
1c0055cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0055d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055d8:	4c000020 	jirl	$r0,$r1,0

1c0055dc <OLED_ShowChar>:
OLED_ShowChar():
1c0055dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055e0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055e4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055ec:	0015008c 	move	$r12,$r4
1c0055f0:	001500af 	move	$r15,$r5
1c0055f4:	001500ce 	move	$r14,$r6
1c0055f8:	001500ed 	move	$r13,$r7
1c0055fc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005600:	001501ec 	move	$r12,$r15
1c005604:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005608:	001501cc 	move	$r12,$r14
1c00560c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005610:	001501ac 	move	$r12,$r13
1c005614:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005618:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00561c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005620:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c005624:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005628:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005634 <OLED_ShowChar+0x58>
1c00562c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005630:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005634:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c005638:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00563c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005640:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005644:	50009800 	b	152(0x98) # 1c0056dc <OLED_ShowChar+0x100>
1c005648:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00564c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005650:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005654:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005658:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00565c:	001031ac 	add.w	$r12,$r13,$r12
1c005660:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005664:	00150185 	move	$r5,$r12
1c005668:	001501c4 	move	$r4,$r14
1c00566c:	57fc8bff 	bl	-888(0xffffc88) # 1c0052f4 <OLED_Set_Pos>
1c005670:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005674:	50004800 	b	72(0x48) # 1c0056bc <OLED_ShowChar+0xe0>
1c005678:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c00567c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005680:	00408d8e 	slli.w	$r14,$r12,0x3
1c005684:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005688:	001031cc 	add.w	$r12,$r14,$r12
1c00568c:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005690:	029551ce 	addi.w	$r14,$r14,1364(0x554)
1c005694:	004091ad 	slli.w	$r13,$r13,0x4
1c005698:	001035cd 	add.w	$r13,$r14,$r13
1c00569c:	001031ac 	add.w	$r12,$r13,$r12
1c0056a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0056a4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0056a8:	00150184 	move	$r4,$r12
1c0056ac:	57fbdfff 	bl	-1060(0xffffbdc) # 1c005288 <OLED_WR_Byte>
1c0056b0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0056b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056b8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0056bc:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0056c0:	0044858c 	srli.w	$r12,$r12,0x1
1c0056c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056c8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0056cc:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c005678 <OLED_ShowChar+0x9c>
1c0056d0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0056dc:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0056e0:	00448d8c 	srli.w	$r12,$r12,0x3
1c0056e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056e8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056ec:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c005648 <OLED_ShowChar+0x6c>
1c0056f0:	03400000 	andi	$r0,$r0,0x0
1c0056f4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0056f8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0056fc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005700:	4c000020 	jirl	$r0,$r1,0

1c005704 <OLED_DrawFont16>:
OLED_DrawFont16():
1c005704:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005708:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00570c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005710:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005714:	0015008c 	move	$r12,$r4
1c005718:	001500ad 	move	$r13,$r5
1c00571c:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005720:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005724:	001501ac 	move	$r12,$r13
1c005728:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00572c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005730:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005734:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005738:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c00573c:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005740:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005744:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005748:	50013800 	b	312(0x138) # 1c005880 <OLED_DrawFont16+0x17c>
1c00574c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005750:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005754:	02aa01ad 	addi.w	$r13,$r13,-1408(0xa80)
1c005758:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00575c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005760:	001031ac 	add.w	$r12,$r13,$r12
1c005764:	2a00018d 	ld.bu	$r13,$r12,0
1c005768:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00576c:	2a00018c 	ld.bu	$r12,$r12,0
1c005770:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c005874 <OLED_DrawFont16+0x170>
1c005774:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005778:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c00577c:	02a961ad 	addi.w	$r13,$r13,-1448(0xa58)
1c005780:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005784:	001c31cc 	mul.w	$r12,$r14,$r12
1c005788:	001031ac 	add.w	$r12,$r13,$r12
1c00578c:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c005790:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005794:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005798:	2a00018c 	ld.bu	$r12,$r12,0
1c00579c:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c005874 <OLED_DrawFont16+0x170>
1c0057a0:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057a4:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0057a8:	02a8b1ad 	addi.w	$r13,$r13,-1492(0xa2c)
1c0057ac:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0057b0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0057b4:	001031ac 	add.w	$r12,$r13,$r12
1c0057b8:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0057bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057c0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0057c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0057c8:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005874 <OLED_DrawFont16+0x170>
1c0057cc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0057d0:	50009400 	b	148(0x94) # 1c005864 <OLED_DrawFont16+0x160>
1c0057d4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0057d8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0057dc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0057e0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0057e4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057e8:	001031ac 	add.w	$r12,$r13,$r12
1c0057ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057f0:	00150185 	move	$r5,$r12
1c0057f4:	001501c4 	move	$r4,$r14
1c0057f8:	57faffff 	bl	-1284(0xffffafc) # 1c0052f4 <OLED_Set_Pos>
1c0057fc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005800:	50004c00 	b	76(0x4c) # 1c00584c <OLED_DrawFont16+0x148>
1c005804:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005808:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00580c:	0040918d 	slli.w	$r13,$r12,0x4
1c005810:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005814:	001031ad 	add.w	$r13,$r13,$r12
1c005818:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c00581c:	02a6e1ce 	addi.w	$r14,$r14,-1608(0x9b8)
1c005820:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005824:	001c31ec 	mul.w	$r12,$r15,$r12
1c005828:	001031cc 	add.w	$r12,$r14,$r12
1c00582c:	0010358c 	add.w	$r12,$r12,$r13
1c005830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005834:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005838:	00150184 	move	$r4,$r12
1c00583c:	57fa4fff 	bl	-1460(0xffffa4c) # 1c005288 <OLED_WR_Byte>
1c005840:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005844:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005848:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00584c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005850:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005854:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005804 <OLED_DrawFont16+0x100>
1c005858:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00585c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005860:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005864:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005868:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00586c:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0057d4 <OLED_DrawFont16+0xd0>
1c005870:	50001c00 	b	28(0x1c) # 1c00588c <OLED_DrawFont16+0x188>
1c005874:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005878:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00587c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005880:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005884:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005888:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c00574c <OLED_DrawFont16+0x48>
1c00588c:	03400000 	andi	$r0,$r0,0x0
1c005890:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005894:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005898:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00589c:	4c000020 	jirl	$r0,$r1,0

1c0058a0 <OLED_DrawFont32>:
OLED_DrawFont32():
1c0058a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0058a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0058a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0058ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0058b0:	0015008c 	move	$r12,$r4
1c0058b4:	001500ad 	move	$r13,$r5
1c0058b8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0058bc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0058c0:	001501ac 	move	$r12,$r13
1c0058c4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0058c8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058cc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0058d0:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0058d4:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0058d8:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0058dc:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0058e0:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0058e4:	50014400 	b	324(0x144) # 1c005a28 <OLED_DrawFont32+0x188>
1c0058e8:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0058ec:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0058f0:	02a391ad 	addi.w	$r13,$r13,-1820(0x8e4)
1c0058f4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0058f8:	001c31cc 	mul.w	$r12,$r14,$r12
1c0058fc:	001031ac 	add.w	$r12,$r13,$r12
1c005900:	2a00018c 	ld.bu	$r12,$r12,0
1c005904:	0015018d 	move	$r13,$r12
1c005908:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00590c:	2800018c 	ld.b	$r12,$r12,0
1c005910:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005a1c <OLED_DrawFont32+0x17c>
1c005914:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005918:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c00591c:	02a2e1ad 	addi.w	$r13,$r13,-1864(0x8b8)
1c005920:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005924:	001c31cc 	mul.w	$r12,$r14,$r12
1c005928:	001031ac 	add.w	$r12,$r13,$r12
1c00592c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005930:	0015018d 	move	$r13,$r12
1c005934:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005938:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00593c:	2800018c 	ld.b	$r12,$r12,0
1c005940:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005a1c <OLED_DrawFont32+0x17c>
1c005944:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005948:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c00594c:	02a221ad 	addi.w	$r13,$r13,-1912(0x888)
1c005950:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005954:	001c31cc 	mul.w	$r12,$r14,$r12
1c005958:	001031ac 	add.w	$r12,$r13,$r12
1c00595c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005960:	0015018d 	move	$r13,$r12
1c005964:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005968:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00596c:	2800018c 	ld.b	$r12,$r12,0
1c005970:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005a1c <OLED_DrawFont32+0x17c>
1c005974:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005978:	50009400 	b	148(0x94) # 1c005a0c <OLED_DrawFont32+0x16c>
1c00597c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005980:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005984:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005988:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00598c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005990:	001031ac 	add.w	$r12,$r13,$r12
1c005994:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005998:	00150185 	move	$r5,$r12
1c00599c:	001501c4 	move	$r4,$r14
1c0059a0:	57f957ff 	bl	-1708(0xffff954) # 1c0052f4 <OLED_Set_Pos>
1c0059a4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059a8:	50004c00 	b	76(0x4c) # 1c0059f4 <OLED_DrawFont32+0x154>
1c0059ac:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0059b0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0059b4:	0040958d 	slli.w	$r13,$r12,0x5
1c0059b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059bc:	001031ad 	add.w	$r13,$r13,$r12
1c0059c0:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c0059c4:	02b021ce 	addi.w	$r14,$r14,-1016(0xc08)
1c0059c8:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0059cc:	001c31ec 	mul.w	$r12,$r15,$r12
1c0059d0:	001031cc 	add.w	$r12,$r14,$r12
1c0059d4:	0010358c 	add.w	$r12,$r12,$r13
1c0059d8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0059dc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0059e0:	00150184 	move	$r4,$r12
1c0059e4:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c005288 <OLED_WR_Byte>
1c0059e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059f4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0059f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0059fc:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0059ac <OLED_DrawFont32+0x10c>
1c005a00:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a08:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005a0c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005a10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005a14:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c00597c <OLED_DrawFont32+0xdc>
1c005a18:	50001c00 	b	28(0x1c) # 1c005a34 <OLED_DrawFont32+0x194>
1c005a1c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005a20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a24:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a28:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005a2c:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005a30:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c0058e8 <OLED_DrawFont32+0x48>
1c005a34:	03400000 	andi	$r0,$r0,0x0
1c005a38:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005a3c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005a40:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005a44:	4c000020 	jirl	$r0,$r1,0

1c005a48 <OLED_Show_Str>:
OLED_Show_Str():
1c005a48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a4c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a50:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005a54:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005a58:	0015008c 	move	$r12,$r4
1c005a5c:	001500ae 	move	$r14,$r5
1c005a60:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005a64:	001500ed 	move	$r13,$r7
1c005a68:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005a6c:	001501cc 	move	$r12,$r14
1c005a70:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005a74:	001501ac 	move	$r12,$r13
1c005a78:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005a7c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005a80:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a84:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a88:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005a8c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005a90:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005c98 <OLED_Show_Str+0x250>
1c005a94:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005a98:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005a9c:	5001fc00 	b	508(0x1fc) # 1c005c98 <OLED_Show_Str+0x250>
1c005aa0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005aa4:	44012580 	bnez	$r12,292(0x124) # 1c005bc8 <OLED_Show_Str+0x180>
1c005aa8:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005aac:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005ab0:	0044858c 	srli.w	$r12,$r12,0x1
1c005ab4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ab8:	0015018e 	move	$r14,$r12
1c005abc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005ac0:	0011398c 	sub.w	$r12,$r12,$r14
1c005ac4:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005af0 <OLED_Show_Str+0xa8>
1c005ac8:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005acc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005ad0:	00448d8c 	srli.w	$r12,$r12,0x3
1c005ad4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ad8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005adc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005ae0:	001031ac 	add.w	$r12,$r13,$r12
1c005ae4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005ae8:	03401d8c 	andi	$r12,$r12,0x7
1c005aec:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005af0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005af4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005af8:	00448d8c 	srli.w	$r12,$r12,0x3
1c005afc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b00:	0015018e 	move	$r14,$r12
1c005b04:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005b08:	0011398c 	sub.w	$r12,$r12,$r14
1c005b0c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005b14 <OLED_Show_Str+0xcc>
1c005b10:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005b14:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b18:	2800018c 	ld.b	$r12,$r12,0
1c005b1c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b20:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005b24:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005b34 <OLED_Show_Str+0xec>
1c005b28:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b2c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b30:	50016800 	b	360(0x168) # 1c005c98 <OLED_Show_Str+0x250>
1c005b34:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b38:	2800018d 	ld.b	$r13,$r12,0
1c005b3c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005b40:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005b70 <OLED_Show_Str+0x128>
1c005b44:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b48:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b4c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b50:	001031ac 	add.w	$r12,$r13,$r12
1c005b54:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005b58:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005b5c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005b60:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b68:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005b6c:	50004c00 	b	76(0x4c) # 1c005bb8 <OLED_Show_Str+0x170>
1c005b70:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b74:	2800018c 	ld.b	$r12,$r12,0
1c005b78:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005b7c:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005b80:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b84:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b88:	001501e7 	move	$r7,$r15
1c005b8c:	001501c6 	move	$r6,$r14
1c005b90:	001501a5 	move	$r5,$r13
1c005b94:	00150184 	move	$r4,$r12
1c005b98:	57fa47ff 	bl	-1468(0xffffa44) # 1c0055dc <OLED_ShowChar>
1c005b9c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005ba0:	0044858c 	srli.w	$r12,$r12,0x1
1c005ba4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ba8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bac:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005bb0:	001031ac 	add.w	$r12,$r13,$r12
1c005bb4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005bb8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bc0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005bc4:	5000d400 	b	212(0xd4) # 1c005c98 <OLED_Show_Str+0x250>
1c005bc8:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005bcc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bd0:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005bd4:	001131cc 	sub.w	$r12,$r14,$r12
1c005bd8:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005c04 <OLED_Show_Str+0x1bc>
1c005bdc:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005be0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005be4:	00448d8c 	srli.w	$r12,$r12,0x3
1c005be8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005bec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bf0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005bf4:	001031ac 	add.w	$r12,$r13,$r12
1c005bf8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005bfc:	03401d8c 	andi	$r12,$r12,0x7
1c005c00:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005c04:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c08:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c0c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c14:	0015018e 	move	$r14,$r12
1c005c18:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005c1c:	0011398c 	sub.w	$r12,$r12,$r14
1c005c20:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005c28 <OLED_Show_Str+0x1e0>
1c005c24:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005c28:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005c2c:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005c30:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005c34:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005c54 <OLED_Show_Str+0x20c>
1c005c38:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c3c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c40:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005c44:	001501a5 	move	$r5,$r13
1c005c48:	00150184 	move	$r4,$r12
1c005c4c:	57fc57ff 	bl	-940(0xffffc54) # 1c0058a0 <OLED_DrawFont32>
1c005c50:	50002800 	b	40(0x28) # 1c005c78 <OLED_Show_Str+0x230>
1c005c54:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005c58:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005c5c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005c78 <OLED_Show_Str+0x230>
1c005c60:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c64:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c68:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005c6c:	001501a5 	move	$r5,$r13
1c005c70:	00150184 	move	$r4,$r12
1c005c74:	57fa93ff 	bl	-1392(0xffffa90) # 1c005704 <OLED_DrawFont16>
1c005c78:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005c7c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005c80:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005c84:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c88:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c8c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c90:	001031ac 	add.w	$r12,$r13,$r12
1c005c94:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005c98:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005c9c:	2800018c 	ld.b	$r12,$r12,0
1c005ca0:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005aa0 <OLED_Show_Str+0x58>
1c005ca4:	03400000 	andi	$r0,$r0,0x0
1c005ca8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005cac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005cb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005cb4:	4c000020 	jirl	$r0,$r1,0

1c005cb8 <Servo_SetAngle>:
Servo_SetAngle():
1c005cb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005cbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005cc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c005cc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005cc8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005ccc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005cd0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005cd4:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c005d08 <Servo_SetAngle+0x50>
1c005cd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005cdc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005ce0:	57b8ffff 	bl	-18180(0xfffb8fc) # 1c0015dc <gpio_write_pin>
1c005ce4:	02864004 	addi.w	$r4,$r0,400(0x190)
1c005ce8:	57d8bbff 	bl	-10056(0xfffd8b8) # 1c0035a0 <delay_us>
1c005cec:	00150005 	move	$r5,$r0
1c005cf0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005cf4:	57b8ebff 	bl	-18200(0xfffb8e8) # 1c0015dc <gpio_write_pin>
1c005cf8:	1400008c 	lu12i.w	$r12,4(0x4)
1c005cfc:	03b24184 	ori	$r4,$r12,0xc90
1c005d00:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c0035a0 <delay_us>
1c005d04:	5000f000 	b	240(0xf0) # 1c005df4 <Servo_SetAngle+0x13c>
1c005d08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005d0c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005d10:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c005d44 <Servo_SetAngle+0x8c>
1c005d14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d18:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d1c:	57b8c3ff 	bl	-18240(0xfffb8c0) # 1c0015dc <gpio_write_pin>
1c005d20:	028bb804 	addi.w	$r4,$r0,750(0x2ee)
1c005d24:	57d87fff 	bl	-10116(0xfffd87c) # 1c0035a0 <delay_us>
1c005d28:	00150005 	move	$r5,$r0
1c005d2c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d30:	57b8afff 	bl	-18260(0xfffb8ac) # 1c0015dc <gpio_write_pin>
1c005d34:	1400008c 	lu12i.w	$r12,4(0x4)
1c005d38:	03acc984 	ori	$r4,$r12,0xb32
1c005d3c:	57d867ff 	bl	-10140(0xfffd864) # 1c0035a0 <delay_us>
1c005d40:	5000b400 	b	180(0xb4) # 1c005df4 <Servo_SetAngle+0x13c>
1c005d44:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005d48:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005d4c:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c005d80 <Servo_SetAngle+0xc8>
1c005d50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d54:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d58:	57b887ff 	bl	-18300(0xfffb884) # 1c0015dc <gpio_write_pin>
1c005d5c:	0292c004 	addi.w	$r4,$r0,1200(0x4b0)
1c005d60:	57d843ff 	bl	-10176(0xfffd840) # 1c0035a0 <delay_us>
1c005d64:	00150005 	move	$r5,$r0
1c005d68:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d6c:	57b873ff 	bl	-18320(0xfffb870) # 1c0015dc <gpio_write_pin>
1c005d70:	1400008c 	lu12i.w	$r12,4(0x4)
1c005d74:	03a5c184 	ori	$r4,$r12,0x970
1c005d78:	57d82bff 	bl	-10200(0xfffd828) # 1c0035a0 <delay_us>
1c005d7c:	50007800 	b	120(0x78) # 1c005df4 <Servo_SetAngle+0x13c>
1c005d80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005d84:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005d88:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c005dbc <Servo_SetAngle+0x104>
1c005d8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d90:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d94:	57b84bff 	bl	-18360(0xfffb848) # 1c0015dc <gpio_write_pin>
1c005d98:	02986004 	addi.w	$r4,$r0,1560(0x618)
1c005d9c:	57d807ff 	bl	-10236(0xfffd804) # 1c0035a0 <delay_us>
1c005da0:	00150005 	move	$r5,$r0
1c005da4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005da8:	57b837ff 	bl	-18380(0xfffb834) # 1c0015dc <gpio_write_pin>
1c005dac:	1400008c 	lu12i.w	$r12,4(0x4)
1c005db0:	03a02184 	ori	$r4,$r12,0x808
1c005db4:	57d7efff 	bl	-10260(0xfffd7ec) # 1c0035a0 <delay_us>
1c005db8:	50003c00 	b	60(0x3c) # 1c005df4 <Servo_SetAngle+0x13c>
1c005dbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005dc0:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005dc4:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005df4 <Servo_SetAngle+0x13c>
1c005dc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005dcc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005dd0:	57b80fff 	bl	-18420(0xfffb80c) # 1c0015dc <gpio_write_pin>
1c005dd4:	029e7804 	addi.w	$r4,$r0,1950(0x79e)
1c005dd8:	57d7cbff 	bl	-10296(0xfffd7c8) # 1c0035a0 <delay_us>
1c005ddc:	00150005 	move	$r5,$r0
1c005de0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005de4:	57b7fbff 	bl	-18440(0xfffb7f8) # 1c0015dc <gpio_write_pin>
1c005de8:	1400008c 	lu12i.w	$r12,4(0x4)
1c005dec:	039a0984 	ori	$r4,$r12,0x682
1c005df0:	57d7b3ff 	bl	-10320(0xfffd7b0) # 1c0035a0 <delay_us>
1c005df4:	03400000 	andi	$r0,$r0,0x0
1c005df8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005dfc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e04:	4c000020 	jirl	$r0,$r1,0

1c005e08 <main>:
main():
1c005e08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e18:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005e1c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005e20:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005e24:	57e093ff 	bl	-8048(0xfffe090) # 1c003eb4 <timer_init>
1c005e28:	57b507ff 	bl	-19196(0xfffb504) # 1c00132c <GPIOInit>
1c005e2c:	57f5efff 	bl	-2580(0xffff5ec) # 1c005418 <OLED_Init>
1c005e30:	57d387ff 	bl	-11388(0xfffd384) # 1c0031b4 <EnableInt>
1c005e34:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e38:	28879084 	ld.w	$r4,$r4,484(0x1e4)
1c005e3c:	540ef800 	bl	3832(0xef8) # 1c006d34 <Queue_Init>
1c005e40:	1400038c 	lu12i.w	$r12,28(0x1c)
1c005e44:	03880184 	ori	$r4,$r12,0x200
1c005e48:	57cc2bff 	bl	-13272(0xfffcc28) # 1c002a70 <Uart0_init>
1c005e4c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005e50:	0286e0a5 	addi.w	$r5,$r5,440(0x1b8)
1c005e54:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005e58:	57cb6fff 	bl	-13460(0xfffcb6c) # 1c0029c4 <UART_SendString>
1c005e5c:	1400038c 	lu12i.w	$r12,28(0x1c)
1c005e60:	03880184 	ori	$r4,$r12,0x200
1c005e64:	57ccd3ff 	bl	-13104(0xfffccd0) # 1c002b34 <Uart1_init>
1c005e68:	5407ac00 	bl	1964(0x7ac) # 1c006614 <Motor_Init>
1c005e6c:	540c2000 	bl	3104(0xc20) # 1c006a8c <HX711_Init>
1c005e70:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005e74:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005e78:	028650c6 	addi.w	$r6,$r6,404(0x194)
1c005e7c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005e80:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005e84:	57fbc7ff 	bl	-1084(0xffffbc4) # 1c005a48 <OLED_Show_Str>
1c005e88:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005e8c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005e90:	028640c6 	addi.w	$r6,$r6,400(0x190)
1c005e94:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005e98:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005e9c:	57fbafff 	bl	-1108(0xffffbac) # 1c005a48 <OLED_Show_Str>
1c005ea0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ea4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005ea8:	57b9bbff 	bl	-17992(0xfffb9b8) # 1c001860 <gpio_set_direction>
1c005eac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005eb0:	02809004 	addi.w	$r4,$r0,36(0x24)
1c005eb4:	57b9afff 	bl	-18004(0xfffb9ac) # 1c001860 <gpio_set_direction>
1c005eb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ebc:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005ec0:	57b9a3ff 	bl	-18016(0xfffb9a0) # 1c001860 <gpio_set_direction>
1c005ec4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ec8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005ecc:	57b997ff 	bl	-18028(0xfffb994) # 1c001860 <gpio_set_direction>
1c005ed0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ed4:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c005ed8:	57b98bff 	bl	-18040(0xfffb988) # 1c001860 <gpio_set_direction>
1c005edc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ee0:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c005ee4:	0284f8a5 	addi.w	$r5,$r5,318(0x13e)
1c005ee8:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c005eec:	0284d084 	addi.w	$r4,$r4,308(0x134)
1c005ef0:	540a6000 	bl	2656(0xa60) # 1c006950 <DHT11_Read_Data>
1c005ef4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c005ef8:	00150005 	move	$r5,$r0
1c005efc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f00:	28846084 	ld.w	$r4,$r4,280(0x118)
1c005f04:	57d717ff 	bl	-10476(0xfffd714) # 1c003618 <memset>
1c005f08:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f0c:	0284518c 	addi.w	$r12,$r12,276(0x114)
1c005f10:	2a40018d 	ld.hu	$r13,$r12,0
1c005f14:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005f18:	002131ae 	div.wu	$r14,$r13,$r12
1c005f1c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005f24 <main+0x11c>
1c005f20:	002a0007 	break	0x7
1c005f24:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005f28:	0015018f 	move	$r15,$r12
1c005f2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f30:	0283c18c 	addi.w	$r12,$r12,240(0xf0)
1c005f34:	2a40018d 	ld.hu	$r13,$r12,0
1c005f38:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005f3c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005f40:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005f48 <main+0x140>
1c005f44:	002a0007 	break	0x7
1c005f48:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005f4c:	00150187 	move	$r7,$r12
1c005f50:	001501e6 	move	$r6,$r15
1c005f54:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005f58:	028370a5 	addi.w	$r5,$r5,220(0xdc)
1c005f5c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f60:	2882e084 	ld.w	$r4,$r4,184(0xb8)
1c005f64:	57c5c3ff 	bl	-14912(0xfffc5c0) # 1c002524 <sprintf>
1c005f68:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005f6c:	2882b0a5 	ld.w	$r5,$r5,172(0xac)
1c005f70:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005f74:	57ca53ff 	bl	-13744(0xfffca50) # 1c0029c4 <UART_SendString>
1c005f78:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c005f7c:	00150005 	move	$r5,$r0
1c005f80:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f84:	28825084 	ld.w	$r4,$r4,148(0x94)
1c005f88:	57d693ff 	bl	-10608(0xfffd690) # 1c003618 <memset>
1c005f8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f90:	0282498c 	addi.w	$r12,$r12,146(0x92)
1c005f94:	2a40018d 	ld.hu	$r13,$r12,0
1c005f98:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005f9c:	002131ae 	div.wu	$r14,$r13,$r12
1c005fa0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005fa8 <main+0x1a0>
1c005fa4:	002a0007 	break	0x7
1c005fa8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005fac:	0015018f 	move	$r15,$r12
1c005fb0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fb4:	0281b98c 	addi.w	$r12,$r12,110(0x6e)
1c005fb8:	2a40018d 	ld.hu	$r13,$r12,0
1c005fbc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005fc0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005fc4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005fcc <main+0x1c4>
1c005fc8:	002a0007 	break	0x7
1c005fcc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005fd0:	00150187 	move	$r7,$r12
1c005fd4:	001501e6 	move	$r6,$r15
1c005fd8:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005fdc:	028190a5 	addi.w	$r5,$r5,100(0x64)
1c005fe0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005fe4:	2880d084 	ld.w	$r4,$r4,52(0x34)
1c005fe8:	57c53fff 	bl	-15044(0xfffc53c) # 1c002524 <sprintf>
1c005fec:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005ff0:	2880a0a5 	ld.w	$r5,$r5,40(0x28)
1c005ff4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005ff8:	57c9cfff 	bl	-13876(0xfffc9cc) # 1c0029c4 <UART_SendString>
1c005ffc:	540bb800 	bl	3000(0xbb8) # 1c006bb4 <HX711_Read_Data>
1c006000:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c006004:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c006008:	540c9000 	bl	3216(0xc90) # 1c006c98 <HX711_Convert_Weight_Int>
1c00600c:	29bf82c4 	st.w	$r4,$r22,-32(0xfe0)
1c006010:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006014:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c006018:	2a40018d 	ld.hu	$r13,$r12,0
1c00601c:	0285240c 	addi.w	$r12,$r0,329(0x149)
1c006020:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c006034 <main+0x22c>
1c006024:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006028:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00602c:	57b5b3ff 	bl	-19024(0xfffb5b0) # 1c0015dc <gpio_write_pin>
1c006030:	50001000 	b	16(0x10) # 1c006040 <main+0x238>
1c006034:	00150005 	move	$r5,$r0
1c006038:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00603c:	57b5a3ff 	bl	-19040(0xfffb5a0) # 1c0015dc <gpio_write_pin>
1c006040:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006044:	0289600c 	addi.w	$r12,$r0,600(0x258)
1c006048:	6401998d 	bge	$r12,$r13,408(0x198) # 1c0061e0 <main+0x3d8>
1c00604c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006050:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006054:	600019ac 	blt	$r13,$r12,24(0x18) # 1c00606c <main+0x264>
1c006058:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00605c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006060:	001131ac 	sub.w	$r12,$r13,$r12
1c006064:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006068:	50001400 	b	20(0x14) # 1c00607c <main+0x274>
1c00606c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006070:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006074:	001131ac 	sub.w	$r12,$r13,$r12
1c006078:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00607c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006080:	1400030c 	lu12i.w	$r12,24(0x18)
1c006084:	039a818c 	ori	$r12,$r12,0x6a0
1c006088:	6000fd8d 	blt	$r12,$r13,252(0xfc) # 1c006184 <main+0x37c>
1c00608c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006090:	00150005 	move	$r5,$r0
1c006094:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006098:	28be0084 	ld.w	$r4,$r4,-128(0xf80)
1c00609c:	57d57fff 	bl	-10884(0xfffd57c) # 1c003618 <memset>
1c0060a0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0060a4:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c0060a8:	002031af 	div.w	$r15,$r13,$r12
1c0060ac:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0060b4 <main+0x2ac>
1c0060b0:	002a0007 	break	0x7
1c0060b4:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c0060b8:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c0060bc:	0020b1cd 	mod.w	$r13,$r14,$r12
1c0060c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0060c8 <main+0x2c0>
1c0060c4:	002a0007 	break	0x7
1c0060c8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0060cc:	002031ae 	div.w	$r14,$r13,$r12
1c0060d0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0060d8 <main+0x2d0>
1c0060d4:	002a0007 	break	0x7
1c0060d8:	001501c7 	move	$r7,$r14
1c0060dc:	001501e6 	move	$r6,$r15
1c0060e0:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0060e4:	02bda0a5 	addi.w	$r5,$r5,-152(0xf68)
1c0060e8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0060ec:	28bcb084 	ld.w	$r4,$r4,-212(0xf2c)
1c0060f0:	57c437ff 	bl	-15308(0xfffc434) # 1c002524 <sprintf>
1c0060f4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0060f8:	28bc80a5 	ld.w	$r5,$r5,-224(0xf20)
1c0060fc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006100:	57c8c7ff 	bl	-14140(0xfffc8c4) # 1c0029c4 <UART_SendString>
1c006104:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006108:	02bc618c 	addi.w	$r12,$r12,-232(0xf18)
1c00610c:	2a40018d 	ld.hu	$r13,$r12,0
1c006110:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006114:	002131ae 	div.wu	$r14,$r13,$r12
1c006118:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006120 <main+0x318>
1c00611c:	002a0007 	break	0x7
1c006120:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006124:	0015018f 	move	$r15,$r12
1c006128:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00612c:	02bbd98c 	addi.w	$r12,$r12,-266(0xef6)
1c006130:	2a40018d 	ld.hu	$r13,$r12,0
1c006134:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006138:	002131ae 	div.wu	$r14,$r13,$r12
1c00613c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006144 <main+0x33c>
1c006140:	002a0007 	break	0x7
1c006144:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006148:	00150190 	move	$r16,$r12
1c00614c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006150:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c006154:	002031ae 	div.w	$r14,$r13,$r12
1c006158:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006160 <main+0x358>
1c00615c:	002a0007 	break	0x7
1c006160:	001501c7 	move	$r7,$r14
1c006164:	00150206 	move	$r6,$r16
1c006168:	001501e5 	move	$r5,$r15
1c00616c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006170:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c006174:	57ba23ff 	bl	-17888(0xfffba20) # 1c001b94 <myprintf>
1c006178:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00617c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006180:	5000b800 	b	184(0xb8) # 1c006238 <main+0x430>
1c006184:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006188:	02ba618c 	addi.w	$r12,$r12,-360(0xe98)
1c00618c:	2a40018d 	ld.hu	$r13,$r12,0
1c006190:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006194:	002131ae 	div.wu	$r14,$r13,$r12
1c006198:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0061a0 <main+0x398>
1c00619c:	002a0007 	break	0x7
1c0061a0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0061a4:	0015018f 	move	$r15,$r12
1c0061a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061ac:	02b9d98c 	addi.w	$r12,$r12,-394(0xe76)
1c0061b0:	2a40018d 	ld.hu	$r13,$r12,0
1c0061b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0061b8:	002131ae 	div.wu	$r14,$r13,$r12
1c0061bc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0061c4 <main+0x3bc>
1c0061c0:	002a0007 	break	0x7
1c0061c4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0061c8:	00150186 	move	$r6,$r12
1c0061cc:	001501e5 	move	$r5,$r15
1c0061d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0061d4:	02ba4084 	addi.w	$r4,$r4,-368(0xe90)
1c0061d8:	57b9bfff 	bl	-17988(0xfffb9bc) # 1c001b94 <myprintf>
1c0061dc:	50005c00 	b	92(0x5c) # 1c006238 <main+0x430>
1c0061e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061e4:	02b8f18c 	addi.w	$r12,$r12,-452(0xe3c)
1c0061e8:	2a40018d 	ld.hu	$r13,$r12,0
1c0061ec:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0061f0:	002131ae 	div.wu	$r14,$r13,$r12
1c0061f4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0061fc <main+0x3f4>
1c0061f8:	002a0007 	break	0x7
1c0061fc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006200:	0015018f 	move	$r15,$r12
1c006204:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006208:	02b8698c 	addi.w	$r12,$r12,-486(0xe1a)
1c00620c:	2a40018d 	ld.hu	$r13,$r12,0
1c006210:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006214:	002131ae 	div.wu	$r14,$r13,$r12
1c006218:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006220 <main+0x418>
1c00621c:	002a0007 	break	0x7
1c006220:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006224:	00150186 	move	$r6,$r12
1c006228:	001501e5 	move	$r5,$r15
1c00622c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006230:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c006234:	57b963ff 	bl	-18080(0xfffb960) # 1c001b94 <myprintf>
1c006238:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00623c:	57b353ff 	bl	-19632(0xfffb350) # 1c00158c <gpio_get_pin>
1c006240:	0015008c 	move	$r12,$r4
1c006244:	0015018d 	move	$r13,$r12
1c006248:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00624c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006264 <main+0x45c>
1c006250:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006254:	02b7218c 	addi.w	$r12,$r12,-568(0xdc8)
1c006258:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00625c:	2980018d 	st.w	$r13,$r12,0
1c006260:	5000ac00 	b	172(0xac) # 1c00630c <main+0x504>
1c006264:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006268:	57b327ff 	bl	-19676(0xfffb324) # 1c00158c <gpio_get_pin>
1c00626c:	0015008c 	move	$r12,$r4
1c006270:	0015018d 	move	$r13,$r12
1c006274:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006278:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00628c <main+0x484>
1c00627c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006280:	02b6718c 	addi.w	$r12,$r12,-612(0xd9c)
1c006284:	29800180 	st.w	$r0,$r12,0
1c006288:	50008400 	b	132(0x84) # 1c00630c <main+0x504>
1c00628c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006290:	57b2ffff 	bl	-19716(0xfffb2fc) # 1c00158c <gpio_get_pin>
1c006294:	0015008c 	move	$r12,$r4
1c006298:	0015018d 	move	$r13,$r12
1c00629c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0062a0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0062b8 <main+0x4b0>
1c0062a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062a8:	02b5d18c 	addi.w	$r12,$r12,-652(0xd74)
1c0062ac:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0062b0:	2980018d 	st.w	$r13,$r12,0
1c0062b4:	50005800 	b	88(0x58) # 1c00630c <main+0x504>
1c0062b8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0062bc:	57b2d3ff 	bl	-19760(0xfffb2d0) # 1c00158c <gpio_get_pin>
1c0062c0:	0015008c 	move	$r12,$r4
1c0062c4:	0015018d 	move	$r13,$r12
1c0062c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0062cc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0062e4 <main+0x4dc>
1c0062d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062d4:	02b5218c 	addi.w	$r12,$r12,-696(0xd48)
1c0062d8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0062dc:	2980018d 	st.w	$r13,$r12,0
1c0062e0:	50002c00 	b	44(0x2c) # 1c00630c <main+0x504>
1c0062e4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0062e8:	57b2a7ff 	bl	-19804(0xfffb2a4) # 1c00158c <gpio_get_pin>
1c0062ec:	0015008c 	move	$r12,$r4
1c0062f0:	0015018d 	move	$r13,$r12
1c0062f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0062f8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00630c <main+0x504>
1c0062fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006300:	02b4718c 	addi.w	$r12,$r12,-740(0xd1c)
1c006304:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c006308:	2980018d 	st.w	$r13,$r12,0
1c00630c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006310:	00150005 	move	$r5,$r0
1c006314:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006318:	28b3d084 	ld.w	$r4,$r4,-780(0xcf4)
1c00631c:	57d2ffff 	bl	-11524(0xfffd2fc) # 1c003618 <memset>
1c006320:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006324:	02b3f18c 	addi.w	$r12,$r12,-772(0xcfc)
1c006328:	2a40018d 	ld.hu	$r13,$r12,0
1c00632c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006330:	002131ae 	div.wu	$r14,$r13,$r12
1c006334:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00633c <main+0x534>
1c006338:	002a0007 	break	0x7
1c00633c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006340:	0015018f 	move	$r15,$r12
1c006344:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006348:	02b3618c 	addi.w	$r12,$r12,-808(0xcd8)
1c00634c:	2a40018d 	ld.hu	$r13,$r12,0
1c006350:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006354:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006358:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006360 <main+0x558>
1c00635c:	002a0007 	break	0x7
1c006360:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006364:	00150187 	move	$r7,$r12
1c006368:	001501e6 	move	$r6,$r15
1c00636c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c006370:	02b400a5 	addi.w	$r5,$r5,-768(0xd00)
1c006374:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006378:	28b25084 	ld.w	$r4,$r4,-876(0xc94)
1c00637c:	57c1abff 	bl	-15960(0xfffc1a8) # 1c002524 <sprintf>
1c006380:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006384:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c006388:	28b210c6 	ld.w	$r6,$r6,-892(0xc84)
1c00638c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006390:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006394:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c005a48 <OLED_Show_Str>
1c006398:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c00639c:	00150005 	move	$r5,$r0
1c0063a0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0063a4:	28b1a084 	ld.w	$r4,$r4,-920(0xc68)
1c0063a8:	57d273ff 	bl	-11664(0xfffd270) # 1c003618 <memset>
1c0063ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063b0:	02b1c98c 	addi.w	$r12,$r12,-910(0xc72)
1c0063b4:	2a40018d 	ld.hu	$r13,$r12,0
1c0063b8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0063bc:	002131ae 	div.wu	$r14,$r13,$r12
1c0063c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0063c8 <main+0x5c0>
1c0063c4:	002a0007 	break	0x7
1c0063c8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0063cc:	0015018f 	move	$r15,$r12
1c0063d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063d4:	02b1398c 	addi.w	$r12,$r12,-946(0xc4e)
1c0063d8:	2a40018d 	ld.hu	$r13,$r12,0
1c0063dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0063e0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0063e4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0063ec <main+0x5e4>
1c0063e8:	002a0007 	break	0x7
1c0063ec:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0063f0:	00150187 	move	$r7,$r12
1c0063f4:	001501e6 	move	$r6,$r15
1c0063f8:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0063fc:	02b1d0a5 	addi.w	$r5,$r5,-908(0xc74)
1c006400:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006404:	28b02084 	ld.w	$r4,$r4,-1016(0xc08)
1c006408:	57c11fff 	bl	-16100(0xfffc11c) # 1c002524 <sprintf>
1c00640c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006410:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c006414:	28afe0c6 	ld.w	$r6,$r6,-1032(0xbf8)
1c006418:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00641c:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006420:	57f62bff 	bl	-2520(0xffff628) # 1c005a48 <OLED_Show_Str>
1c006424:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006428:	00150005 	move	$r5,$r0
1c00642c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006430:	28af7084 	ld.w	$r4,$r4,-1060(0xbdc)
1c006434:	57d1e7ff 	bl	-11804(0xfffd1e4) # 1c003618 <memset>
1c006438:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00643c:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c006440:	002031af 	div.w	$r15,$r13,$r12
1c006444:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00644c <main+0x644>
1c006448:	002a0007 	break	0x7
1c00644c:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006450:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c006454:	0020b1cd 	mod.w	$r13,$r14,$r12
1c006458:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006460 <main+0x658>
1c00645c:	002a0007 	break	0x7
1c006460:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006464:	002031ae 	div.w	$r14,$r13,$r12
1c006468:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006470 <main+0x668>
1c00646c:	002a0007 	break	0x7
1c006470:	001501c7 	move	$r7,$r14
1c006474:	001501e6 	move	$r6,$r15
1c006478:	1c000065 	pcaddu12i	$r5,3(0x3)
1c00647c:	02aff0a5 	addi.w	$r5,$r5,-1028(0xbfc)
1c006480:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006484:	28ae2084 	ld.w	$r4,$r4,-1144(0xb88)
1c006488:	57c09fff 	bl	-16228(0xfffc09c) # 1c002524 <sprintf>
1c00648c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006490:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c006494:	28ade0c6 	ld.w	$r6,$r6,-1160(0xb78)
1c006498:	00150005 	move	$r5,$r0
1c00649c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0064a0:	57f5abff 	bl	-2648(0xffff5a8) # 1c005a48 <OLED_Show_Str>
1c0064a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0064a8:	02add18c 	addi.w	$r12,$r12,-1164(0xb74)
1c0064ac:	2880018c 	ld.w	$r12,$r12,0
1c0064b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0064b4:	5800298d 	beq	$r12,$r13,40(0x28) # 1c0064dc <main+0x6d4>
1c0064b8:	40001980 	beqz	$r12,24(0x18) # 1c0064d0 <main+0x6c8>
1c0064bc:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0064c0:	5800298d 	beq	$r12,$r13,40(0x28) # 1c0064e8 <main+0x6e0>
1c0064c4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0064c8:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c0064f4 <main+0x6ec>
1c0064cc:	50003400 	b	52(0x34) # 1c006500 <main+0x6f8>
1c0064d0:	00150004 	move	$r4,$r0
1c0064d4:	54017c00 	bl	380(0x17c) # 1c006650 <motor_setspeed>
1c0064d8:	50002800 	b	40(0x28) # 1c006500 <main+0x6f8>
1c0064dc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0064e0:	54017000 	bl	368(0x170) # 1c006650 <motor_setspeed>
1c0064e4:	50001c00 	b	28(0x1c) # 1c006500 <main+0x6f8>
1c0064e8:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0064ec:	54016400 	bl	356(0x164) # 1c006650 <motor_setspeed>
1c0064f0:	50001000 	b	16(0x10) # 1c006500 <main+0x6f8>
1c0064f4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0064f8:	54015800 	bl	344(0x158) # 1c006650 <motor_setspeed>
1c0064fc:	03400000 	andi	$r0,$r0,0x0
1c006500:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006504:	28ac6084 	ld.w	$r4,$r4,-1256(0xb18)
1c006508:	54087800 	bl	2168(0x878) # 1c006d80 <Queue_isEmpty>
1c00650c:	0015008c 	move	$r12,$r4
1c006510:	4400f980 	bnez	$r12,248(0xf8) # 1c006608 <main+0x800>
1c006514:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006518:	28ac1084 	ld.w	$r4,$r4,-1276(0xb04)
1c00651c:	5408b400 	bl	2228(0x8b4) # 1c006dd0 <Queue_HadUse>
1c006520:	0015008c 	move	$r12,$r4
1c006524:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006528:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00652c:	28ab918c 	ld.w	$r12,$r12,-1308(0xae4)
1c006530:	2900018d 	st.b	$r13,$r12,0
1c006534:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c006538:	00150005 	move	$r5,$r0
1c00653c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006540:	28ab9084 	ld.w	$r4,$r4,-1308(0xae4)
1c006544:	57d0d7ff 	bl	-12076(0xfffd0d4) # 1c003618 <memset>
1c006548:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00654c:	28ab118c 	ld.w	$r12,$r12,-1340(0xac4)
1c006550:	2a00018c 	ld.bu	$r12,$r12,0
1c006554:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006558:	00150186 	move	$r6,$r12
1c00655c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006560:	28ab10a5 	ld.w	$r5,$r5,-1340(0xac4)
1c006564:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006568:	28aad084 	ld.w	$r4,$r4,-1356(0xab4)
1c00656c:	540a1000 	bl	2576(0xa10) # 1c006f7c <Queue_Read>
1c006570:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006574:	28aa718c 	ld.w	$r12,$r12,-1380(0xa9c)
1c006578:	2a00018c 	ld.bu	$r12,$r12,0
1c00657c:	0015018d 	move	$r13,$r12
1c006580:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006584:	28aa818c 	ld.w	$r12,$r12,-1376(0xaa0)
1c006588:	0010358c 	add.w	$r12,$r12,$r13
1c00658c:	29000180 	st.b	$r0,$r12,0
1c006590:	02800406 	addi.w	$r6,$r0,1(0x1)
1c006594:	1c000065 	pcaddu12i	$r5,3(0x3)
1c006598:	02abd0a5 	addi.w	$r5,$r5,-1292(0xaf4)
1c00659c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0065a0:	28aa1084 	ld.w	$r4,$r4,-1404(0xa84)
1c0065a4:	57d0d7ff 	bl	-12076(0xfffd0d4) # 1c003678 <strncmp>
1c0065a8:	0015008c 	move	$r12,$r4
1c0065ac:	44000d80 	bnez	$r12,12(0xc) # 1c0065b8 <main+0x7b0>
1c0065b0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0065b4:	57f707ff 	bl	-2300(0xffff704) # 1c005cb8 <Servo_SetAngle>
1c0065b8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0065bc:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0065c0:	02ab40a5 	addi.w	$r5,$r5,-1328(0xad0)
1c0065c4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0065c8:	28a97084 	ld.w	$r4,$r4,-1444(0xa5c)
1c0065cc:	57d0afff 	bl	-12116(0xfffd0ac) # 1c003678 <strncmp>
1c0065d0:	0015008c 	move	$r12,$r4
1c0065d4:	44000d80 	bnez	$r12,12(0xc) # 1c0065e0 <main+0x7d8>
1c0065d8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0065dc:	57f6dfff 	bl	-2340(0xffff6dc) # 1c005cb8 <Servo_SetAngle>
1c0065e0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0065e4:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0065e8:	02aab0a5 	addi.w	$r5,$r5,-1364(0xaac)
1c0065ec:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0065f0:	28a8d084 	ld.w	$r4,$r4,-1484(0xa34)
1c0065f4:	57d087ff 	bl	-12156(0xfffd084) # 1c003678 <strncmp>
1c0065f8:	0015008c 	move	$r12,$r4
1c0065fc:	44000d80 	bnez	$r12,12(0xc) # 1c006608 <main+0x800>
1c006600:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006604:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c005cb8 <Servo_SetAngle>
1c006608:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c00660c:	57cfcfff 	bl	-12340(0xfffcfcc) # 1c0035d8 <delay_ms>
1c006610:	53f8d3ff 	b	-1840(0xffff8d0) # 1c005ee0 <main+0xd8>

1c006614 <Motor_Init>:
Motor_Init():
1c006614:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006618:	29803061 	st.w	$r1,$r3,12(0xc)
1c00661c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006620:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006624:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006628:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00662c:	57b237ff 	bl	-19916(0xfffb234) # 1c001860 <gpio_set_direction>
1c006630:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006634:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006638:	57b22bff 	bl	-19928(0xfffb228) # 1c001860 <gpio_set_direction>
1c00663c:	03400000 	andi	$r0,$r0,0x0
1c006640:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006644:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006648:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00664c:	4c000020 	jirl	$r0,$r1,0

1c006650 <motor_setspeed>:
motor_setspeed():
1c006650:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006654:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006658:	29806076 	st.w	$r22,$r3,24(0x18)
1c00665c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006660:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006664:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006668:	60002d80 	blt	$r12,$r0,44(0x2c) # 1c006694 <motor_setspeed+0x44>
1c00666c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006670:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006674:	57af6bff 	bl	-20632(0xfffaf68) # 1c0015dc <gpio_write_pin>
1c006678:	00150005 	move	$r5,$r0
1c00667c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006680:	57af5fff 	bl	-20644(0xfffaf5c) # 1c0015dc <gpio_write_pin>
1c006684:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c006688:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00668c:	57e557ff 	bl	-6828(0xfffe554) # 1c004be0 <TIM_SetCompare1>
1c006690:	50003000 	b	48(0x30) # 1c0066c0 <motor_setspeed+0x70>
1c006694:	00150005 	move	$r5,$r0
1c006698:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00669c:	57af43ff 	bl	-20672(0xfffaf40) # 1c0015dc <gpio_write_pin>
1c0066a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0066a4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0066a8:	57af37ff 	bl	-20684(0xfffaf34) # 1c0015dc <gpio_write_pin>
1c0066ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066b0:	0011300c 	sub.w	$r12,$r0,$r12
1c0066b4:	00150185 	move	$r5,$r12
1c0066b8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0066bc:	57e527ff 	bl	-6876(0xfffe524) # 1c004be0 <TIM_SetCompare1>
1c0066c0:	03400000 	andi	$r0,$r0,0x0
1c0066c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0066c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0066cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0066d0:	4c000020 	jirl	$r0,$r1,0

1c0066d4 <DHT11_Rst>:
DHT11_Rst():
1c0066d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0066d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0066dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0066e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0066e4:	54007000 	bl	112(0x70) # 1c006754 <DHT11_IO_Out>
1c0066e8:	00150005 	move	$r5,$r0
1c0066ec:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0066f0:	57aeefff 	bl	-20756(0xfffaeec) # 1c0015dc <gpio_write_pin>
1c0066f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0066f8:	57cee3ff 	bl	-12576(0xfffcee0) # 1c0035d8 <delay_ms>
1c0066fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006700:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006704:	57aedbff 	bl	-20776(0xfffaed8) # 1c0015dc <gpio_write_pin>
1c006708:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00670c:	57ce97ff 	bl	-12652(0xfffce94) # 1c0035a0 <delay_us>
1c006710:	03400000 	andi	$r0,$r0,0x0
1c006714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00671c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006720:	4c000020 	jirl	$r0,$r1,0

1c006724 <DHT11_IO_In>:
DHT11_IO_In():
1c006724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00672c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006734:	00150005 	move	$r5,$r0
1c006738:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00673c:	57b127ff 	bl	-20188(0xfffb124) # 1c001860 <gpio_set_direction>
1c006740:	03400000 	andi	$r0,$r0,0x0
1c006744:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006748:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00674c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006750:	4c000020 	jirl	$r0,$r1,0

1c006754 <DHT11_IO_Out>:
DHT11_IO_Out():
1c006754:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006758:	29803061 	st.w	$r1,$r3,12(0xc)
1c00675c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006760:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006764:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006768:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00676c:	57b0f7ff 	bl	-20236(0xfffb0f4) # 1c001860 <gpio_set_direction>
1c006770:	03400000 	andi	$r0,$r0,0x0
1c006774:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006778:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00677c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006780:	4c000020 	jirl	$r0,$r1,0

1c006784 <DHT11_Check>:
DHT11_Check():
1c006784:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006788:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00678c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006790:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006794:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006798:	57ff8fff 	bl	-116(0xfffff8c) # 1c006724 <DHT11_IO_In>
1c00679c:	50001000 	b	16(0x10) # 1c0067ac <DHT11_Check+0x28>
1c0067a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0067a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0067ac:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0067b0:	57addfff 	bl	-21028(0xfffaddc) # 1c00158c <gpio_get_pin>
1c0067b4:	0015008c 	move	$r12,$r4
1c0067b8:	40001180 	beqz	$r12,16(0x10) # 1c0067c8 <DHT11_Check+0x44>
1c0067bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0067c0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0067c4:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0067a0 <DHT11_Check+0x1c>
1c0067c8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0067cc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0067d0:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0067dc <DHT11_Check+0x58>
1c0067d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0067d8:	50004c00 	b	76(0x4c) # 1c006824 <DHT11_Check+0xa0>
1c0067dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0067e0:	50001000 	b	16(0x10) # 1c0067f0 <DHT11_Check+0x6c>
1c0067e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0067e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0067f0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0067f4:	57ad9bff 	bl	-21096(0xfffad98) # 1c00158c <gpio_get_pin>
1c0067f8:	0015008c 	move	$r12,$r4
1c0067fc:	44001180 	bnez	$r12,16(0x10) # 1c00680c <DHT11_Check+0x88>
1c006800:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006804:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006808:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0067e4 <DHT11_Check+0x60>
1c00680c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006810:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006814:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c006820 <DHT11_Check+0x9c>
1c006818:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00681c:	50000800 	b	8(0x8) # 1c006824 <DHT11_Check+0xa0>
1c006820:	0015000c 	move	$r12,$r0
1c006824:	00150184 	move	$r4,$r12
1c006828:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00682c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006830:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006834:	4c000020 	jirl	$r0,$r1,0

1c006838 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c006838:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00683c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006840:	29806076 	st.w	$r22,$r3,24(0x18)
1c006844:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006848:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00684c:	50001000 	b	16(0x10) # 1c00685c <DHT11_Read_Bit+0x24>
1c006850:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006854:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006858:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00685c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006860:	57ad2fff 	bl	-21204(0xfffad2c) # 1c00158c <gpio_get_pin>
1c006864:	0015008c 	move	$r12,$r4
1c006868:	40001180 	beqz	$r12,16(0x10) # 1c006878 <DHT11_Read_Bit+0x40>
1c00686c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006870:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006874:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c006850 <DHT11_Read_Bit+0x18>
1c006878:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00687c:	50001000 	b	16(0x10) # 1c00688c <DHT11_Read_Bit+0x54>
1c006880:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006884:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006888:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00688c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006890:	57acffff 	bl	-21252(0xfffacfc) # 1c00158c <gpio_get_pin>
1c006894:	0015008c 	move	$r12,$r4
1c006898:	44001180 	bnez	$r12,16(0x10) # 1c0068a8 <DHT11_Read_Bit+0x70>
1c00689c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0068a0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0068a4:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c006880 <DHT11_Read_Bit+0x48>
1c0068a8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0068ac:	57ccf7ff 	bl	-13068(0xfffccf4) # 1c0035a0 <delay_us>
1c0068b0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0068b4:	57acdbff 	bl	-21288(0xfffacd8) # 1c00158c <gpio_get_pin>
1c0068b8:	0015008c 	move	$r12,$r4
1c0068bc:	40000d80 	beqz	$r12,12(0xc) # 1c0068c8 <DHT11_Read_Bit+0x90>
1c0068c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0068c4:	50000800 	b	8(0x8) # 1c0068cc <DHT11_Read_Bit+0x94>
1c0068c8:	0015000c 	move	$r12,$r0
1c0068cc:	00150184 	move	$r4,$r12
1c0068d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0068d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0068d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0068dc:	4c000020 	jirl	$r0,$r1,0

1c0068e0 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c0068e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0068e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0068e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0068ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0068f0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0068f4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0068f8:	50003400 	b	52(0x34) # 1c00692c <DHT11_Read_Byte+0x4c>
1c0068fc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006900:	0040858c 	slli.w	$r12,$r12,0x1
1c006904:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006908:	57ff33ff 	bl	-208(0xfffff30) # 1c006838 <DHT11_Read_Bit>
1c00690c:	0015008c 	move	$r12,$r4
1c006910:	0015018d 	move	$r13,$r12
1c006914:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006918:	001531ac 	or	$r12,$r13,$r12
1c00691c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006920:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006924:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006928:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00692c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006930:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006934:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0068fc <DHT11_Read_Byte+0x1c>
1c006938:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00693c:	00150184 	move	$r4,$r12
1c006940:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006944:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006948:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00694c:	4c000020 	jirl	$r0,$r1,0

1c006950 <DHT11_Read_Data>:
DHT11_Read_Data():
1c006950:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006954:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006958:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00695c:	29809077 	st.w	$r23,$r3,36(0x24)
1c006960:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006964:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006968:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00696c:	57fd6bff 	bl	-664(0xffffd68) # 1c0066d4 <DHT11_Rst>
1c006970:	57fe17ff 	bl	-492(0xffffe14) # 1c006784 <DHT11_Check>
1c006974:	0015008c 	move	$r12,$r4
1c006978:	4400c180 	bnez	$r12,192(0xc0) # 1c006a38 <DHT11_Read_Data+0xe8>
1c00697c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006980:	50002800 	b	40(0x28) # 1c0069a8 <DHT11_Read_Data+0x58>
1c006984:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c006988:	57ff5bff 	bl	-168(0xfffff58) # 1c0068e0 <DHT11_Read_Byte>
1c00698c:	0015008c 	move	$r12,$r4
1c006990:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006994:	00105dad 	add.w	$r13,$r13,$r23
1c006998:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c00699c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0069a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069a4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0069a8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0069ac:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0069b0:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c006984 <DHT11_Read_Data+0x34>
1c0069b4:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c0069b8:	0015018d 	move	$r13,$r12
1c0069bc:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c0069c0:	001031ac 	add.w	$r12,$r13,$r12
1c0069c4:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c0069c8:	0010358c 	add.w	$r12,$r12,$r13
1c0069cc:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0069d0:	0010358c 	add.w	$r12,$r12,$r13
1c0069d4:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0069d8:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c006a40 <DHT11_Read_Data+0xf0>
1c0069dc:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c0069e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069e4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0069e8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0069ec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069f0:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c0069f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0069f8:	001031ac 	add.w	$r12,$r13,$r12
1c0069fc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006a04:	2940018d 	st.h	$r13,$r12,0
1c006a08:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c006a0c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a10:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006a14:	001c31ac 	mul.w	$r12,$r13,$r12
1c006a18:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a1c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006a20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006a24:	001031ac 	add.w	$r12,$r13,$r12
1c006a28:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006a2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a30:	2940018d 	st.h	$r13,$r12,0
1c006a34:	50000c00 	b	12(0xc) # 1c006a40 <DHT11_Read_Data+0xf0>
1c006a38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006a3c:	50000800 	b	8(0x8) # 1c006a44 <DHT11_Read_Data+0xf4>
1c006a40:	0015000c 	move	$r12,$r0
1c006a44:	00150184 	move	$r4,$r12
1c006a48:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a4c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a50:	28809077 	ld.w	$r23,$r3,36(0x24)
1c006a54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a58:	4c000020 	jirl	$r0,$r1,0

1c006a5c <HX711_IO_In>:
HX711_IO_In():
1c006a5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006a60:	29803061 	st.w	$r1,$r3,12(0xc)
1c006a64:	29802076 	st.w	$r22,$r3,8(0x8)
1c006a68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006a6c:	00150005 	move	$r5,$r0
1c006a70:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006a74:	57adefff 	bl	-21012(0xfffadec) # 1c001860 <gpio_set_direction>
1c006a78:	03400000 	andi	$r0,$r0,0x0
1c006a7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006a80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006a84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006a88:	4c000020 	jirl	$r0,$r1,0

1c006a8c <HX711_Init>:
HX711_Init():
1c006a8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006a90:	29803061 	st.w	$r1,$r3,12(0xc)
1c006a94:	29802076 	st.w	$r22,$r3,8(0x8)
1c006a98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006a9c:	00150005 	move	$r5,$r0
1c006aa0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006aa4:	57abb3ff 	bl	-21584(0xfffabb0) # 1c001654 <gpio_pin_remap>
1c006aa8:	00150005 	move	$r5,$r0
1c006aac:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006ab0:	57aba7ff 	bl	-21596(0xfffaba4) # 1c001654 <gpio_pin_remap>
1c006ab4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006ab8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006abc:	57ada7ff 	bl	-21084(0xfffada4) # 1c001860 <gpio_set_direction>
1c006ac0:	00150005 	move	$r5,$r0
1c006ac4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006ac8:	57ab17ff 	bl	-21740(0xfffab14) # 1c0015dc <gpio_write_pin>
1c006acc:	57ff93ff 	bl	-112(0xfffff90) # 1c006a5c <HX711_IO_In>
1c006ad0:	0015000c 	move	$r12,$r0
1c006ad4:	00150184 	move	$r4,$r12
1c006ad8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006adc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ae0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ae4:	4c000020 	jirl	$r0,$r1,0

1c006ae8 <HX711_Wait_Ready>:
HX711_Wait_Ready():
1c006ae8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006aec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006af0:	29806076 	st.w	$r22,$r3,24(0x18)
1c006af4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006af8:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c006afc:	50001800 	b	24(0x18) # 1c006b14 <HX711_Wait_Ready+0x2c>
1c006b00:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006b04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b08:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006b0c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006b10:	57ca93ff 	bl	-13680(0xfffca90) # 1c0035a0 <delay_us>
1c006b14:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006b18:	57aa77ff 	bl	-21900(0xfffaa74) # 1c00158c <gpio_get_pin>
1c006b1c:	0015008c 	move	$r12,$r4
1c006b20:	40001180 	beqz	$r12,16(0x10) # 1c006b30 <HX711_Wait_Ready+0x48>
1c006b24:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c006b28:	028f9c0c 	addi.w	$r12,$r0,999(0x3e7)
1c006b2c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c006b00 <HX711_Wait_Ready+0x18>
1c006b30:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006b34:	024fa18c 	sltui	$r12,$r12,1000(0x3e8)
1c006b38:	03c0058c 	xori	$r12,$r12,0x1
1c006b3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006b40:	00150184 	move	$r4,$r12
1c006b44:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006b48:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006b4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006b50:	4c000020 	jirl	$r0,$r1,0

1c006b54 <HX711_Read_Bit>:
HX711_Read_Bit():
1c006b54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b58:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b5c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b68:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006b6c:	57aa73ff 	bl	-21904(0xfffaa70) # 1c0015dc <gpio_write_pin>
1c006b70:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006b74:	57ca2fff 	bl	-13780(0xfffca2c) # 1c0035a0 <delay_us>
1c006b78:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006b7c:	57aa13ff 	bl	-22000(0xfffaa10) # 1c00158c <gpio_get_pin>
1c006b80:	0015008c 	move	$r12,$r4
1c006b84:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006b88:	00150005 	move	$r5,$r0
1c006b8c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006b90:	57aa4fff 	bl	-21940(0xfffaa4c) # 1c0015dc <gpio_write_pin>
1c006b94:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006b98:	57ca0bff 	bl	-13816(0xfffca08) # 1c0035a0 <delay_us>
1c006b9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006ba0:	00150184 	move	$r4,$r12
1c006ba4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006ba8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006bac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006bb0:	4c000020 	jirl	$r0,$r1,0

1c006bb4 <HX711_Read_Data>:
HX711_Read_Data():
1c006bb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006bb8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006bbc:	29806076 	st.w	$r22,$r3,24(0x18)
1c006bc0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006bc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006bc8:	57ff23ff 	bl	-224(0xfffff20) # 1c006ae8 <HX711_Wait_Ready>
1c006bcc:	0015008c 	move	$r12,$r4
1c006bd0:	44009180 	bnez	$r12,144(0x90) # 1c006c60 <HX711_Read_Data+0xac>
1c006bd4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c006bd8:	50003400 	b	52(0x34) # 1c006c0c <HX711_Read_Data+0x58>
1c006bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006be0:	0040858c 	slli.w	$r12,$r12,0x1
1c006be4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006be8:	57ff6fff 	bl	-148(0xfffff6c) # 1c006b54 <HX711_Read_Bit>
1c006bec:	0015008c 	move	$r12,$r4
1c006bf0:	0015018d 	move	$r13,$r12
1c006bf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bf8:	0015358c 	or	$r12,$r12,$r13
1c006bfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c00:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006c04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c08:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006c0c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c006c10:	02805c0c 	addi.w	$r12,$r0,23(0x17)
1c006c14:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c006bdc <HX711_Read_Data+0x28>
1c006c18:	293faac0 	st.b	$r0,$r22,-22(0xfea)
1c006c1c:	50003800 	b	56(0x38) # 1c006c54 <HX711_Read_Data+0xa0>
1c006c20:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c24:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006c28:	57a9b7ff 	bl	-22092(0xfffa9b4) # 1c0015dc <gpio_write_pin>
1c006c2c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006c30:	57c973ff 	bl	-13968(0xfffc970) # 1c0035a0 <delay_us>
1c006c34:	00150005 	move	$r5,$r0
1c006c38:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006c3c:	57a9a3ff 	bl	-22112(0xfffa9a0) # 1c0015dc <gpio_write_pin>
1c006c40:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006c44:	57c95fff 	bl	-13988(0xfffc95c) # 1c0035a0 <delay_us>
1c006c48:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c006c4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c50:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c006c54:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c006c58:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006c5c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c006c20 <HX711_Read_Data+0x6c>
1c006c60:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c64:	1401000c 	lu12i.w	$r12,2048(0x800)
1c006c68:	0014b1ac 	and	$r12,$r13,$r12
1c006c6c:	40001580 	beqz	$r12,20(0x14) # 1c006c80 <HX711_Read_Data+0xcc>
1c006c70:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c74:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c006c78:	001531ac 	or	$r12,$r13,$r12
1c006c7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c84:	00150184 	move	$r4,$r12
1c006c88:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006c8c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006c90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006c94:	4c000020 	jirl	$r0,$r1,0

1c006c98 <HX711_Convert_Weight_Int>:
HX711_Convert_Weight_Int():
1c006c98:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006c9c:	2980f076 	st.w	$r22,$r3,60(0x3c)
1c006ca0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006ca4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006ca8:	140008ac 	lu12i.w	$r12,69(0x45)
1c006cac:	03b20d8c 	ori	$r12,$r12,0xc83
1c006cb0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006cb4:	1400094c 	lu12i.w	$r12,74(0x4a)
1c006cb8:	0381f18c 	ori	$r12,$r12,0x7c
1c006cbc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006cc0:	1400008c 	lu12i.w	$r12,4(0x4)
1c006cc4:	03a5c18c 	ori	$r12,$r12,0x970
1c006cc8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006ccc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006cd4:	60000d8d 	blt	$r12,$r13,12(0xc) # 1c006ce0 <HX711_Convert_Weight_Int+0x48>
1c006cd8:	0015000c 	move	$r12,$r0
1c006cdc:	50004800 	b	72(0x48) # 1c006d24 <HX711_Convert_Weight_Int+0x8c>
1c006ce0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ce8:	001131ac 	sub.w	$r12,$r13,$r12
1c006cec:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006cf0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006cf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006cf8:	001131ac 	sub.w	$r12,$r13,$r12
1c006cfc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006d00:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c006d04:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006d08:	002035cc 	div.w	$r12,$r14,$r13
1c006d0c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006d14 <HX711_Convert_Weight_Int+0x7c>
1c006d10:	002a0007 	break	0x7
1c006d14:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006d18:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006d1c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006d20:	001c31ac 	mul.w	$r12,$r13,$r12
1c006d24:	00150184 	move	$r4,$r12
1c006d28:	2880f076 	ld.w	$r22,$r3,60(0x3c)
1c006d2c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006d30:	4c000020 	jirl	$r0,$r1,0

1c006d34 <Queue_Init>:
Queue_Init():
1c006d34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006d38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006d3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006d40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006d44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006d4c:	44000d80 	bnez	$r12,12(0xc) # 1c006d58 <Queue_Init+0x24>
1c006d50:	0015000c 	move	$r12,$r0
1c006d54:	50001800 	b	24(0x18) # 1c006d6c <Queue_Init+0x38>
1c006d58:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c006d5c:	00150005 	move	$r5,$r0
1c006d60:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c006d64:	57c8b7ff 	bl	-14156(0xfffc8b4) # 1c003618 <memset>
1c006d68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006d6c:	00150184 	move	$r4,$r12
1c006d70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006d74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006d78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006d7c:	4c000020 	jirl	$r0,$r1,0

1c006d80 <Queue_isEmpty>:
Queue_isEmpty():
1c006d80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006d84:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006d88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006d8c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006d94:	44000d80 	bnez	$r12,12(0xc) # 1c006da0 <Queue_isEmpty+0x20>
1c006d98:	0015000c 	move	$r12,$r0
1c006d9c:	50002400 	b	36(0x24) # 1c006dc0 <Queue_isEmpty+0x40>
1c006da0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006da4:	2a40018d 	ld.hu	$r13,$r12,0
1c006da8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006dac:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006db0:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006dbc <Queue_isEmpty+0x3c>
1c006db4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006db8:	50000800 	b	8(0x8) # 1c006dc0 <Queue_isEmpty+0x40>
1c006dbc:	0015000c 	move	$r12,$r0
1c006dc0:	00150184 	move	$r4,$r12
1c006dc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006dc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006dcc:	4c000020 	jirl	$r0,$r1,0

1c006dd0 <Queue_HadUse>:
Queue_HadUse():
1c006dd0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006dd4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006dd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006ddc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006de4:	44000d80 	bnez	$r12,12(0xc) # 1c006df0 <Queue_HadUse+0x20>
1c006de8:	0015000c 	move	$r12,$r0
1c006dec:	50003800 	b	56(0x38) # 1c006e24 <Queue_HadUse+0x54>
1c006df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006df4:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c006df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006dfc:	2a40018c 	ld.hu	$r12,$r12,0
1c006e00:	001131ac 	sub.w	$r12,$r13,$r12
1c006e04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006e08:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c006e0c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006e10:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006e14:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006e18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006e20 <Queue_HadUse+0x50>
1c006e1c:	002a0007 	break	0x7
1c006e20:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006e24:	00150184 	move	$r4,$r12
1c006e28:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006e2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006e30:	4c000020 	jirl	$r0,$r1,0

1c006e34 <Queue_NoUse>:
Queue_NoUse():
1c006e34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006e38:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006e3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006e40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e48:	44000d80 	bnez	$r12,12(0xc) # 1c006e54 <Queue_NoUse+0x20>
1c006e4c:	0015000c 	move	$r12,$r0
1c006e50:	50004000 	b	64(0x40) # 1c006e90 <Queue_NoUse+0x5c>
1c006e54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e58:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006e5c:	0015018d 	move	$r13,$r12
1c006e60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e64:	2a40018c 	ld.hu	$r12,$r12,0
1c006e68:	001131ac 	sub.w	$r12,$r13,$r12
1c006e6c:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c006e70:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006e74:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006e78:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006e80 <Queue_NoUse+0x4c>
1c006e7c:	002a0007 	break	0x7
1c006e80:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006e84:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c006e88:	001131ac 	sub.w	$r12,$r13,$r12
1c006e8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006e90:	00150184 	move	$r4,$r12
1c006e94:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006e98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006e9c:	4c000020 	jirl	$r0,$r1,0

1c006ea0 <Queue_Wirte>:
Queue_Wirte():
1c006ea0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006ea4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006ea8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006eac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006eb0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006eb4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006eb8:	001500cc 	move	$r12,$r6
1c006ebc:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006ec0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006ec4:	44000d80 	bnez	$r12,12(0xc) # 1c006ed0 <Queue_Wirte+0x30>
1c006ec8:	0015000c 	move	$r12,$r0
1c006ecc:	50009c00 	b	156(0x9c) # 1c006f68 <Queue_Wirte+0xc8>
1c006ed0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006ed4:	57ff63ff 	bl	-160(0xfffff60) # 1c006e34 <Queue_NoUse>
1c006ed8:	0015008c 	move	$r12,$r4
1c006edc:	0015018d 	move	$r13,$r12
1c006ee0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006ee4:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006ef0 <Queue_Wirte+0x50>
1c006ee8:	0015000c 	move	$r12,$r0
1c006eec:	50007c00 	b	124(0x7c) # 1c006f68 <Queue_Wirte+0xc8>
1c006ef0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006ef4:	50006400 	b	100(0x64) # 1c006f58 <Queue_Wirte+0xb8>
1c006ef8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006efc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006f00:	001031ac 	add.w	$r12,$r13,$r12
1c006f04:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006f08:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c006f0c:	001501ae 	move	$r14,$r13
1c006f10:	2a00018d 	ld.bu	$r13,$r12,0
1c006f14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006f18:	0010398c 	add.w	$r12,$r12,$r14
1c006f1c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006f20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006f24:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f2c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006f30:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006f34:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006f38:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006f40 <Queue_Wirte+0xa0>
1c006f3c:	002a0007 	break	0x7
1c006f40:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006f44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006f48:	2940098d 	st.h	$r13,$r12,2(0x2)
1c006f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006f58:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006f5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006f60:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006ef8 <Queue_Wirte+0x58>
1c006f64:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006f68:	00150184 	move	$r4,$r12
1c006f6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006f70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006f74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006f78:	4c000020 	jirl	$r0,$r1,0

1c006f7c <Queue_Read>:
Queue_Read():
1c006f7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006f80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006f84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006f88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006f8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006f90:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006f94:	001500cc 	move	$r12,$r6
1c006f98:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006f9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006fa0:	44000d80 	bnez	$r12,12(0xc) # 1c006fac <Queue_Read+0x30>
1c006fa4:	0015000c 	move	$r12,$r0
1c006fa8:	50009c00 	b	156(0x9c) # 1c007044 <Queue_Read+0xc8>
1c006fac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006fb0:	57fe23ff 	bl	-480(0xffffe20) # 1c006dd0 <Queue_HadUse>
1c006fb4:	0015008c 	move	$r12,$r4
1c006fb8:	0015018d 	move	$r13,$r12
1c006fbc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006fc0:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006fcc <Queue_Read+0x50>
1c006fc4:	0015000c 	move	$r12,$r0
1c006fc8:	50007c00 	b	124(0x7c) # 1c007044 <Queue_Read+0xc8>
1c006fcc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006fd0:	50006400 	b	100(0x64) # 1c007034 <Queue_Read+0xb8>
1c006fd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006fd8:	2a40018c 	ld.hu	$r12,$r12,0
1c006fdc:	0015018e 	move	$r14,$r12
1c006fe0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fe4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006fe8:	001031ac 	add.w	$r12,$r13,$r12
1c006fec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006ff0:	001039ad 	add.w	$r13,$r13,$r14
1c006ff4:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006ff8:	2900018d 	st.b	$r13,$r12,0
1c006ffc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007000:	2a40018c 	ld.hu	$r12,$r12,0
1c007004:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007008:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00700c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c007010:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007014:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00701c <Queue_Read+0xa0>
1c007018:	002a0007 	break	0x7
1c00701c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c007020:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007024:	2940018d 	st.h	$r13,$r12,0
1c007028:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00702c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007030:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007034:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c007038:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00703c:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006fd4 <Queue_Read+0x58>
1c007040:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007044:	00150184 	move	$r4,$r12
1c007048:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00704c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007050:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007054:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007060 <msg_wakeup>:
msg_wakeup():
1c007060:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01dbc0 <_sidata+0x14b2c>
1c007064:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007069 <hexdecarr>:
hexdecarr():
1c007069:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00706d:	37363534 	0x37363534
1c007071:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed1a9 <_start-0x12e57>
1c007075:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed5d9 <_start-0x12a27>
1c007079:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00707d:	79654b0a 	0x79654b0a
1c007081:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c007085:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c007089:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00708d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e0fd <_sidata+0x15069>
1c007091:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdff1 <_start-0x200f>
1c007095:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c007099:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdffd <_start-0x2003>
1c00709d:	72616220 	0x72616220
1c0070a1:	0a0d216b 	0x0a0d216b
1c0070a5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070a9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd21d <_start-0x2de3>
1c0070ad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0070b1:	b4000a0d 	0xb4000a0d
1c0070b5:	d01c001d 	0xd01c001d
1c0070b9:	d01c001e 	0xd01c001e
1c0070bd:	d01c001e 	0xd01c001e
1c0070c1:	d01c001e 	0xd01c001e
1c0070c5:	d01c001e 	0xd01c001e
1c0070c9:	d01c001e 	0xd01c001e
1c0070cd:	d01c001e 	0xd01c001e
1c0070d1:	d01c001e 	0xd01c001e
1c0070d5:	d01c001e 	0xd01c001e
1c0070d9:	d01c001e 	0xd01c001e
1c0070dd:	cc1c001e 	0xcc1c001e
1c0070e1:	541c001d 	bl	7609344(0x741c00) # 1c748ce1 <_sidata+0x73fc4d>
1c0070e5:	541c001e 	bl	7871488(0x781c00) # 1c788ce5 <_sidata+0x77fc51>
1c0070e9:	541c001e 	bl	7871488(0x781c00) # 1c788ce9 <_sidata+0x77fc55>
1c0070ed:	541c001e 	bl	7871488(0x781c00) # 1c788ced <_sidata+0x77fc59>
1c0070f1:	541c001e 	bl	7871488(0x781c00) # 1c788cf1 <_sidata+0x77fc5d>
1c0070f5:	541c001e 	bl	7871488(0x781c00) # 1c788cf5 <_sidata+0x77fc61>
1c0070f9:	541c001e 	bl	7871488(0x781c00) # 1c788cf9 <_sidata+0x77fc65>
1c0070fd:	541c001e 	bl	7871488(0x781c00) # 1c788cfd <_sidata+0x77fc69>
1c007101:	541c001e 	bl	7871488(0x781c00) # 1c788d01 <_sidata+0x77fc6d>
1c007105:	d01c001e 	0xd01c001e
1c007109:	d01c001e 	0xd01c001e
1c00710d:	d01c001e 	0xd01c001e
1c007111:	d01c001e 	0xd01c001e
1c007115:	d01c001e 	0xd01c001e
1c007119:	d01c001e 	0xd01c001e
1c00711d:	d01c001e 	0xd01c001e
1c007121:	d01c001e 	0xd01c001e
1c007125:	d01c001e 	0xd01c001e
1c007129:	d01c001e 	0xd01c001e
1c00712d:	d01c001e 	0xd01c001e
1c007131:	d01c001e 	0xd01c001e
1c007135:	d01c001e 	0xd01c001e
1c007139:	d01c001e 	0xd01c001e
1c00713d:	d01c001e 	0xd01c001e
1c007141:	d01c001e 	0xd01c001e
1c007145:	d01c001e 	0xd01c001e
1c007149:	d01c001e 	0xd01c001e
1c00714d:	d01c001e 	0xd01c001e
1c007151:	d01c001e 	0xd01c001e
1c007155:	d01c001e 	0xd01c001e
1c007159:	d01c001e 	0xd01c001e
1c00715d:	d01c001e 	0xd01c001e
1c007161:	d01c001e 	0xd01c001e
1c007165:	d01c001e 	0xd01c001e
1c007169:	d01c001e 	0xd01c001e
1c00716d:	d01c001e 	0xd01c001e
1c007171:	d01c001e 	0xd01c001e
1c007175:	d01c001e 	0xd01c001e
1c007179:	d01c001e 	0xd01c001e
1c00717d:	d01c001e 	0xd01c001e
1c007181:	d01c001e 	0xd01c001e
1c007185:	d01c001e 	0xd01c001e
1c007189:	d01c001e 	0xd01c001e
1c00718d:	d01c001e 	0xd01c001e
1c007191:	d01c001e 	0xd01c001e
1c007195:	d01c001e 	0xd01c001e
1c007199:	d01c001e 	0xd01c001e
1c00719d:	d01c001e 	0xd01c001e
1c0071a1:	d01c001e 	0xd01c001e
1c0071a5:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88da5 <_start-0x7725b>
1c0071a9:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008da9 <tfont32+0x7e1>
1c0071ad:	d41c001c 	0xd41c001c
1c0071b1:	d01c001c 	0xd01c001c
1c0071b5:	d01c001e 	0xd01c001e
1c0071b9:	d01c001e 	0xd01c001e
1c0071bd:	d01c001e 	0xd01c001e
1c0071c1:	d01c001e 	0xd01c001e
1c0071c5:	d01c001e 	0xd01c001e
1c0071c9:	d01c001e 	0xd01c001e
1c0071cd:	d01c001e 	0xd01c001e
1c0071d1:	d01c001e 	0xd01c001e
1c0071d5:	d01c001e 	0xd01c001e
1c0071d9:	0c1c001e 	0x0c1c001e
1c0071dd:	7c1c001d 	0x7c1c001d
1c0071e1:	d01c001d 	0xd01c001d
1c0071e5:	d01c001e 	0xd01c001e
1c0071e9:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf88de9 <_start-0x77217>
1c0071ed:	d01c001c 	0xd01c001c
1c0071f1:	9c1c001e 	0x9c1c001e
1c0071f5:	d01c001c 	0xd01c001c
1c0071f9:	d01c001e 	0xd01c001e
1c0071fd:	7c1c001e 	0x7c1c001e
1c007201:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c008e01 <tfont32+0x839>
1c007205:	8c1c0023 	0x8c1c0023
1c007209:	8c1c0024 	0x8c1c0024
1c00720d:	8c1c0024 	0x8c1c0024
1c007211:	8c1c0024 	0x8c1c0024
1c007215:	8c1c0024 	0x8c1c0024
1c007219:	8c1c0024 	0x8c1c0024
1c00721d:	8c1c0024 	0x8c1c0024
1c007221:	8c1c0024 	0x8c1c0024
1c007225:	8c1c0024 	0x8c1c0024
1c007229:	8c1c0024 	0x8c1c0024
1c00722d:	881c0024 	0x881c0024
1c007231:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c007235:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007239:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00723d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007241:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007245:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007249:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00724d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007251:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007255:	8c1c0024 	0x8c1c0024
1c007259:	8c1c0024 	0x8c1c0024
1c00725d:	8c1c0024 	0x8c1c0024
1c007261:	8c1c0024 	0x8c1c0024
1c007265:	8c1c0024 	0x8c1c0024
1c007269:	8c1c0024 	0x8c1c0024
1c00726d:	8c1c0024 	0x8c1c0024
1c007271:	8c1c0024 	0x8c1c0024
1c007275:	8c1c0024 	0x8c1c0024
1c007279:	8c1c0024 	0x8c1c0024
1c00727d:	8c1c0024 	0x8c1c0024
1c007281:	8c1c0024 	0x8c1c0024
1c007285:	8c1c0024 	0x8c1c0024
1c007289:	8c1c0024 	0x8c1c0024
1c00728d:	8c1c0024 	0x8c1c0024
1c007291:	8c1c0024 	0x8c1c0024
1c007295:	8c1c0024 	0x8c1c0024
1c007299:	8c1c0024 	0x8c1c0024
1c00729d:	8c1c0024 	0x8c1c0024
1c0072a1:	8c1c0024 	0x8c1c0024
1c0072a5:	8c1c0024 	0x8c1c0024
1c0072a9:	8c1c0024 	0x8c1c0024
1c0072ad:	8c1c0024 	0x8c1c0024
1c0072b1:	8c1c0024 	0x8c1c0024
1c0072b5:	8c1c0024 	0x8c1c0024
1c0072b9:	8c1c0024 	0x8c1c0024
1c0072bd:	8c1c0024 	0x8c1c0024
1c0072c1:	8c1c0024 	0x8c1c0024
1c0072c5:	8c1c0024 	0x8c1c0024
1c0072c9:	8c1c0024 	0x8c1c0024
1c0072cd:	8c1c0024 	0x8c1c0024
1c0072d1:	8c1c0024 	0x8c1c0024
1c0072d5:	8c1c0024 	0x8c1c0024
1c0072d9:	8c1c0024 	0x8c1c0024
1c0072dd:	8c1c0024 	0x8c1c0024
1c0072e1:	8c1c0024 	0x8c1c0024
1c0072e5:	8c1c0024 	0x8c1c0024
1c0072e9:	8c1c0024 	0x8c1c0024
1c0072ed:	8c1c0024 	0x8c1c0024
1c0072f1:	8c1c0024 	0x8c1c0024
1c0072f5:	f01c0024 	0xf01c0024
1c0072f9:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c0072fd:	781c0022 	0x781c0022
1c007301:	8c1c0022 	0x8c1c0022
1c007305:	8c1c0024 	0x8c1c0024
1c007309:	8c1c0024 	0x8c1c0024
1c00730d:	8c1c0024 	0x8c1c0024
1c007311:	8c1c0024 	0x8c1c0024
1c007315:	8c1c0024 	0x8c1c0024
1c007319:	8c1c0024 	0x8c1c0024
1c00731d:	8c1c0024 	0x8c1c0024
1c007321:	8c1c0024 	0x8c1c0024
1c007325:	8c1c0024 	0x8c1c0024
1c007329:	b41c0024 	0xb41c0024
1c00732d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c007331:	8c1c0023 	0x8c1c0023
1c007335:	8c1c0024 	0x8c1c0024
1c007339:	d81c0024 	0xd81c0024
1c00733d:	8c1c0021 	0x8c1c0021
1c007341:	3c1c0024 	0x3c1c0024
1c007345:	8c1c0022 	0x8c1c0022
1c007349:	8c1c0024 	0x8c1c0024
1c00734d:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c007351:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c007355:	7c000000 	0x7c000000
1c007359:	7c7c7c7c 	0x7c7c7c7c
1c00735d:	7c7c7c7c 	0x7c7c7c7c
1c007361:	7c7c7c7c 	0x7c7c7c7c
1c007365:	7c7c7c7c 	0x7c7c7c7c
1c007369:	7c7c7c7c 	0x7c7c7c7c
1c00736d:	7c7c7c7c 	0x7c7c7c7c
1c007371:	7c7c7c7c 	0x7c7c7c7c
1c007375:	7c7c7c7c 	0x7c7c7c7c
1c007379:	7c7c7c7c 	0x7c7c7c7c
1c00737d:	7c7c7c7c 	0x7c7c7c7c
1c007381:	7c7c7c7c 	0x7c7c7c7c
1c007385:	7c7c7c7c 	0x7c7c7c7c
1c007389:	7c7c7c7c 	0x7c7c7c7c
1c00738d:	7c7c7c7c 	0x7c7c7c7c
1c007391:	7c7c7c7c 	0x7c7c7c7c
1c007395:	7c7c7c7c 	0x7c7c7c7c
1c007399:	7c7c7c7c 	0x7c7c7c7c
1c00739d:	7c7c7c7c 	0x7c7c7c7c
1c0073a1:	7c7c7c7c 	0x7c7c7c7c
1c0073a5:	7c7c7c7c 	0x7c7c7c7c
1c0073a9:	7c7c7c7c 	0x7c7c7c7c
1c0073ad:	7c7c7c7c 	0x7c7c7c7c
1c0073b1:	7c7c7c7c 	0x7c7c7c7c
1c0073b5:	7c7c7c7c 	0x7c7c7c7c
1c0073b9:	7c00000a 	0x7c00000a
1c0073bd:	7c20207c 	0x7c20207c
1c0073c1:	7c7c7c7c 	0x7c7c7c7c
1c0073c5:	7c7c7c7c 	0x7c7c7c7c
1c0073c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073cd:	7c202020 	0x7c202020
1c0073d1:	7c7c7c7c 	0x7c7c7c7c
1c0073d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073d9:	7c202020 	0x7c202020
1c0073dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073e1:	7c7c2020 	0x7c7c2020
1c0073e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073e9:	7c7c7c20 	0x7c7c7c20
1c0073ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073f1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073f5:	7c7c7c7c 	0x7c7c7c7c
1c0073f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073fd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007409:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	7c202020 	0x7c202020
1c007415:	7c7c7c7c 	0x7c7c7c7c
1c007419:	7c7c2020 	0x7c7c2020
1c00741d:	7c00000a 	0x7c00000a
1c007421:	7c20207c 	0x7c20207c
1c007425:	7c7c7c7c 	0x7c7c7c7c
1c007429:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00742d:	7c7c2020 	0x7c7c2020
1c007431:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007435:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007439:	7c7c2020 	0x7c7c2020
1c00743d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007441:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007445:	7c202020 	0x7c202020
1c007449:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00744d:	7c7c7c20 	0x7c7c7c20
1c007451:	7c20207c 	0x7c20207c
1c007455:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007459:	7c7c7c20 	0x7c7c7c20
1c00745d:	7c202020 	0x7c202020
1c007461:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007465:	7c7c7c20 	0x7c7c7c20
1c007469:	7c202020 	0x7c202020
1c00746d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007471:	7c7c7c20 	0x7c7c7c20
1c007475:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007479:	7c7c7c7c 	0x7c7c7c7c
1c00747d:	7c7c2020 	0x7c7c2020
1c007481:	7c00000a 	0x7c00000a
1c007485:	7c20207c 	0x7c20207c
1c007489:	7c7c7c7c 	0x7c7c7c7c
1c00748d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007491:	7c7c7c20 	0x7c7c7c20
1c007495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007499:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00749d:	7c7c7c20 	0x7c7c7c20
1c0074a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0074ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074b1:	7c7c7c20 	0x7c7c7c20
1c0074b5:	7c7c2020 	0x7c7c2020
1c0074b9:	7c7c7c7c 	0x7c7c7c7c
1c0074bd:	7c7c7c7c 	0x7c7c7c7c
1c0074c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0074c5:	7c7c7c20 	0x7c7c7c20
1c0074c9:	7c7c7c7c 	0x7c7c7c7c
1c0074cd:	7c7c2020 	0x7c7c2020
1c0074d1:	7c7c7c7c 	0x7c7c7c7c
1c0074d5:	7c7c7c20 	0x7c7c7c20
1c0074d9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0074dd:	7c7c7c20 	0x7c7c7c20
1c0074e1:	7c7c2020 	0x7c7c2020
1c0074e5:	7c00000a 	0x7c00000a
1c0074e9:	7c20207c 	0x7c20207c
1c0074ed:	7c7c7c7c 	0x7c7c7c7c
1c0074f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f5:	7c7c7c20 	0x7c7c7c20
1c0074f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007501:	7c7c7c20 	0x7c7c7c20
1c007505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007509:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00750d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007511:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007515:	7c7c7c20 	0x7c7c7c20
1c007519:	7c7c2020 	0x7c7c2020
1c00751d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007521:	7c7c7c20 	0x7c7c7c20
1c007525:	7c7c7c7c 	0x7c7c7c7c
1c007529:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00752d:	7c7c7c7c 	0x7c7c7c7c
1c007531:	7c7c2020 	0x7c7c2020
1c007535:	7c7c7c7c 	0x7c7c7c7c
1c007539:	7c7c7c20 	0x7c7c7c20
1c00753d:	7c7c2020 	0x7c7c2020
1c007541:	7c7c2020 	0x7c7c2020
1c007545:	7c7c2020 	0x7c7c2020
1c007549:	7c00000a 	0x7c00000a
1c00754d:	7c20207c 	0x7c20207c
1c007551:	7c7c7c7c 	0x7c7c7c7c
1c007555:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007559:	7c7c7c20 	0x7c7c7c20
1c00755d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007561:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007565:	7c7c7c20 	0x7c7c7c20
1c007569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00756d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007571:	7c7c7c20 	0x7c7c7c20
1c007575:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007579:	7c7c7c20 	0x7c7c7c20
1c00757d:	7c7c2020 	0x7c7c2020
1c007581:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007585:	7c7c7c20 	0x7c7c7c20
1c007589:	7c7c7c7c 	0x7c7c7c7c
1c00758d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007591:	7c7c7c20 	0x7c7c7c20
1c007595:	7c7c2020 	0x7c7c2020
1c007599:	7c7c7c7c 	0x7c7c7c7c
1c00759d:	7c7c7c20 	0x7c7c7c20
1c0075a1:	7c7c2020 	0x7c7c2020
1c0075a5:	7c20207c 	0x7c20207c
1c0075a9:	7c7c2020 	0x7c7c2020
1c0075ad:	7c00000a 	0x7c00000a
1c0075b1:	7c20207c 	0x7c20207c
1c0075b5:	7c7c7c7c 	0x7c7c7c7c
1c0075b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075bd:	7c7c2020 	0x7c7c2020
1c0075c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c9:	7c7c2020 	0x7c7c2020
1c0075cd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d5:	7c7c7c20 	0x7c7c7c20
1c0075d9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0075dd:	7c7c7c20 	0x7c7c7c20
1c0075e1:	7c202020 	0x7c202020
1c0075e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075e9:	7c7c7c20 	0x7c7c7c20
1c0075ed:	7c202020 	0x7c202020
1c0075f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075f5:	7c7c7c7c 	0x7c7c7c7c
1c0075f9:	7c202020 	0x7c202020
1c0075fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007601:	7c7c7c20 	0x7c7c7c20
1c007605:	7c7c2020 	0x7c7c2020
1c007609:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00760d:	7c7c2020 	0x7c7c2020
1c007611:	7c00000a 	0x7c00000a
1c007615:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007619:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00761d:	7c7c7c7c 	0x7c7c7c7c
1c007621:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007625:	7c202020 	0x7c202020
1c007629:	7c7c7c7c 	0x7c7c7c7c
1c00762d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007631:	7c202020 	0x7c202020
1c007635:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007639:	7c7c7c20 	0x7c7c7c20
1c00763d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007641:	7c7c7c20 	0x7c7c7c20
1c007645:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007649:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00764d:	7c7c7c7c 	0x7c7c7c7c
1c007651:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007655:	7c202020 	0x7c202020
1c007659:	7c7c7c7c 	0x7c7c7c7c
1c00765d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007661:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007665:	7c7c7c7c 	0x7c7c7c7c
1c007669:	7c7c2020 	0x7c7c2020
1c00766d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007671:	7c7c2020 	0x7c7c2020
1c007675:	7c00000a 	0x7c00000a
1c007679:	7c7c7c7c 	0x7c7c7c7c
1c00767d:	7c7c7c7c 	0x7c7c7c7c
1c007681:	7c7c7c7c 	0x7c7c7c7c
1c007685:	7c7c7c7c 	0x7c7c7c7c
1c007689:	7c7c7c7c 	0x7c7c7c7c
1c00768d:	7c7c7c7c 	0x7c7c7c7c
1c007691:	7c7c7c7c 	0x7c7c7c7c
1c007695:	7c7c7c7c 	0x7c7c7c7c
1c007699:	7c7c7c7c 	0x7c7c7c7c
1c00769d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0076a1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0076a5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0076a9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0076ad:	7c7c7c5d 	0x7c7c7c5d
1c0076b1:	7c7c7c7c 	0x7c7c7c7c
1c0076b5:	7c7c7c7c 	0x7c7c7c7c
1c0076b9:	7c7c7c7c 	0x7c7c7c7c
1c0076bd:	7c7c7c7c 	0x7c7c7c7c
1c0076c1:	7c7c7c7c 	0x7c7c7c7c
1c0076c5:	7c7c7c7c 	0x7c7c7c7c
1c0076c9:	7c7c7c7c 	0x7c7c7c7c
1c0076cd:	7c7c7c7c 	0x7c7c7c7c
1c0076d1:	7c7c7c7c 	0x7c7c7c7c
1c0076d5:	7c7c7c7c 	0x7c7c7c7c
1c0076d9:	0900000a 	0x0900000a
1c0076dd:	0a006425 	0x0a006425
1c0076e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0076e5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0076e9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0076ed:	0050550a 	0x0050550a
1c0076f1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0076f5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00ec41 <_sidata+0x5bad>
1c0076f9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0076fd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007701:	756f430a 	0x756f430a
1c007705:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007709:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00770d:	3030090a 	0x3030090a
1c007711:	09313009 	0x09313009
1c007715:	30093230 	0x30093230
1c007719:	34300933 	0x34300933
1c00771d:	09353009 	0x09353009
1c007721:	30093630 	0x30093630
1c007725:	38300937 	fldx.s	$f23,$r9,$r2
1c007729:	09393009 	0x09393009
1c00772d:	31093031 	0x31093031
1c007731:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007735:	746e630a 	0x746e630a
1c007739:	09000000 	0x09000000
1c00773d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007741:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007745:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007749:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d89d <_sidata+0x4809>
1c00774d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007751:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeeca1 <_start-0x1135f>
1c007755:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007759:	09000000 	0x09000000
1c00775d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007761:	09000000 	0x09000000
1c007765:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007769:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00776d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007771:	3a515249 	0x3a515249
1c007775:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007779:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe5ed <_start-0x1a13>
1c00777d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007781:	0d3e2020 	0x0d3e2020
1c007785:	0a00000a 	0x0a00000a
1c007789:	2e2e2e2e 	0x2e2e2e2e
1c00778d:	2e2e2e2e 	0x2e2e2e2e
1c007791:	2e2e2e2e 	0x2e2e2e2e
1c007795:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac6e5 <_sidata+0x3a3651>
1c007799:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00779d:	2e2e2e54 	0x2e2e2e54
1c0077a1:	2e2e2e2e 	0x2e2e2e2e
1c0077a5:	2e2e2e2e 	0x2e2e2e2e
1c0077a9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0077ad:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0077b1:	2e2e2e0a 	0x2e2e2e0a
1c0077b5:	2e2e2e2e 	0x2e2e2e2e
1c0077b9:	2e2e2e2e 	0x2e2e2e2e
1c0077bd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b9e9 <_sidata+0x392955>
1c0077c1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1be1d <_start-0x2e41e3>
1c0077c5:	2e2e4c49 	0x2e2e4c49
1c0077c9:	2e2e2e2e 	0x2e2e2e2e
1c0077cd:	2e2e2e2e 	0x2e2e2e2e
1c0077d1:	2e2e2e2e 	0x2e2e2e2e
1c0077d5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0077d9:	2e2e2e0a 	0x2e2e2e0a
1c0077dd:	2e2e2e2e 	0x2e2e2e2e
1c0077e1:	2e2e2e2e 	0x2e2e2e2e
1c0077e5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b911 <_sidata+0x38287d>
1c0077e9:	2e2e2e43 	0x2e2e2e43
1c0077ed:	2e2e2e2e 	0x2e2e2e2e
1c0077f1:	2e2e2e2e 	0x2e2e2e2e
1c0077f5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0077f9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b77f9 <_sidata+0x2ae765>
1c0077fd:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007801:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e569 <_sidata+0x154d5>
1c007805:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00db25 <_sidata+0x4a91>
1c007809:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00780d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ec79 <_sidata+0x15be5>
1c007811:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007815:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c007819:	 	0xb000000a

1c00781c <Ext_IrqHandle>:
1c00781c:	1c003fb0 	pcaddu12i	$r16,509(0x1fd)
1c007820:	1c003ffc 	pcaddu12i	$r28,511(0x1ff)
1c007824:	1c004048 	pcaddu12i	$r8,514(0x202)
1c007828:	1c004094 	pcaddu12i	$r20,516(0x204)
1c00782c:	1c0040e0 	pcaddu12i	$r0,519(0x207)
1c007830:	1c00412c 	pcaddu12i	$r12,521(0x209)
1c007834:	1c004178 	pcaddu12i	$r24,523(0x20b)
1c007838:	1c0041c4 	pcaddu12i	$r4,526(0x20e)
1c00783c:	1c004210 	pcaddu12i	$r16,528(0x210)
1c007840:	1c00425c 	pcaddu12i	$r28,530(0x212)
1c007844:	1c0042a8 	pcaddu12i	$r8,533(0x215)
1c007848:	1c0042f4 	pcaddu12i	$r20,535(0x217)
1c00784c:	1c004340 	pcaddu12i	$r0,538(0x21a)
1c007850:	1c00438c 	pcaddu12i	$r12,540(0x21c)
1c007854:	1c0043d8 	pcaddu12i	$r24,542(0x21e)
1c007858:	1c004424 	pcaddu12i	$r4,545(0x221)
1c00785c:	1c004470 	pcaddu12i	$r16,547(0x223)
1c007860:	1c0044bc 	pcaddu12i	$r28,549(0x225)
1c007864:	1c004508 	pcaddu12i	$r8,552(0x228)
1c007868:	1c004554 	pcaddu12i	$r20,554(0x22a)
1c00786c:	1c0045a0 	pcaddu12i	$r0,557(0x22d)
1c007870:	1c0045ec 	pcaddu12i	$r12,559(0x22f)
1c007874:	1c004638 	pcaddu12i	$r24,561(0x231)
1c007878:	1c004684 	pcaddu12i	$r4,564(0x234)
1c00787c:	1c0046d0 	pcaddu12i	$r16,566(0x236)
1c007880:	1c00471c 	pcaddu12i	$r28,568(0x238)
1c007884:	1c004768 	pcaddu12i	$r8,571(0x23b)
1c007888:	1c0047b4 	pcaddu12i	$r20,573(0x23d)
1c00788c:	1c004800 	pcaddu12i	$r0,576(0x240)
1c007890:	1c00484c 	pcaddu12i	$r12,578(0x242)
1c007894:	1c004898 	pcaddu12i	$r24,580(0x244)
1c007898:	1c0048e4 	pcaddu12i	$r4,583(0x247)
1c00789c:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078a0:	1c004b78 	pcaddu12i	$r24,603(0x25b)
1c0078a4:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078a8:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078ac:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078b0:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078b4:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078b8:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078bc:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078c0:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078c4:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078c8:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078cc:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078d0:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078d4:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078d8:	1c004bc8 	pcaddu12i	$r8,606(0x25e)
1c0078dc:	1c004b94 	pcaddu12i	$r20,604(0x25c)

1c0078e0 <__FUNCTION__.1654>:
1c0078e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed58 <_sidata+0x15cc4>
1c0078e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e948 <_sidata+0x158b4>
1c0078e8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa948 <_start-0x56b8>
1c0078ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea5c <_start-0x15a4>
1c0078f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e750 <_sidata+0x56bc>
1c0078f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078f8 <__FUNCTION__.1658>:
1c0078f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed70 <_sidata+0x15cdc>
1c0078fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e960 <_sidata+0x158cc>
1c007900:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaa60 <_start-0x55a0>
1c007904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea74 <_start-0x158c>
1c007908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e768 <_sidata+0x56d4>
1c00790c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007910 <__FUNCTION__.1662>:
1c007910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed88 <_sidata+0x15cf4>
1c007914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e978 <_sidata+0x158e4>
1c007918:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffab78 <_start-0x5488>
1c00791c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea8c <_start-0x1574>
1c007920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e780 <_sidata+0x56ec>
1c007924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007928 <__FUNCTION__.1666>:
1c007928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eda0 <_sidata+0x15d0c>
1c00792c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e990 <_sidata+0x158fc>
1c007930:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffac90 <_start-0x5370>
1c007934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaa4 <_start-0x155c>
1c007938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e798 <_sidata+0x5704>
1c00793c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007940 <__FUNCTION__.1670>:
1c007940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edb8 <_sidata+0x15d24>
1c007944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9a8 <_sidata+0x15914>
1c007948:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffada8 <_start-0x5258>
1c00794c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeabc <_start-0x1544>
1c007950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b0 <_sidata+0x571c>
1c007954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007958 <__FUNCTION__.1674>:
1c007958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd0 <_sidata+0x15d3c>
1c00795c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c0 <_sidata+0x1592c>
1c007960:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaec0 <_start-0x5140>
1c007964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffead4 <_start-0x152c>
1c007968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7c8 <_sidata+0x5734>
1c00796c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007970 <__FUNCTION__.1678>:
1c007970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede8 <_sidata+0x15d54>
1c007974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d8 <_sidata+0x15944>
1c007978:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffafd8 <_start-0x5028>
1c00797c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaec <_start-0x1514>
1c007980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e0 <_sidata+0x574c>
1c007984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007988 <__FUNCTION__.1682>:
1c007988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee00 <_sidata+0x15d6c>
1c00798c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9f0 <_sidata+0x1595c>
1c007990:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb0f0 <_start-0x4f10>
1c007994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb04 <_start-0x14fc>
1c007998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f8 <_sidata+0x5764>
1c00799c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079a0 <__FUNCTION__.1686>:
1c0079a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee18 <_sidata+0x15d84>
1c0079a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea08 <_sidata+0x15974>
1c0079a8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffaa08 <_start-0x55f8>
1c0079ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb1c <_start-0x14e4>
1c0079b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e810 <_sidata+0x577c>
1c0079b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079b8 <__FUNCTION__.1690>:
1c0079b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee30 <_sidata+0x15d9c>
1c0079bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea20 <_sidata+0x1598c>
1c0079c0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffab20 <_start-0x54e0>
1c0079c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb34 <_start-0x14cc>
1c0079c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e828 <_sidata+0x5794>
1c0079cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079d0 <__FUNCTION__.1694>:
1c0079d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee48 <_sidata+0x15db4>
1c0079d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea38 <_sidata+0x159a4>
1c0079d8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffac38 <_start-0x53c8>
1c0079dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb4c <_start-0x14b4>
1c0079e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e840 <_sidata+0x57ac>
1c0079e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079e8 <__FUNCTION__.1698>:
1c0079e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee60 <_sidata+0x15dcc>
1c0079ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea50 <_sidata+0x159bc>
1c0079f0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffad50 <_start-0x52b0>
1c0079f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb64 <_start-0x149c>
1c0079f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e858 <_sidata+0x57c4>
1c0079fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a00 <__FUNCTION__.1702>:
1c007a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee78 <_sidata+0x15de4>
1c007a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea68 <_sidata+0x159d4>
1c007a08:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffae68 <_start-0x5198>
1c007a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb7c <_start-0x1484>
1c007a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e870 <_sidata+0x57dc>
1c007a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a18 <__FUNCTION__.1706>:
1c007a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee90 <_sidata+0x15dfc>
1c007a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea80 <_sidata+0x159ec>
1c007a20:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffaf80 <_start-0x5080>
1c007a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb94 <_start-0x146c>
1c007a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e888 <_sidata+0x57f4>
1c007a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a30 <__FUNCTION__.1710>:
1c007a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eea8 <_sidata+0x15e14>
1c007a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea98 <_sidata+0x15a04>
1c007a38:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb098 <_start-0x4f68>
1c007a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebac <_start-0x1454>
1c007a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8a0 <_sidata+0x580c>
1c007a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a48 <__FUNCTION__.1714>:
1c007a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eec0 <_sidata+0x15e2c>
1c007a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eab0 <_sidata+0x15a1c>
1c007a50:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb1b0 <_start-0x4e50>
1c007a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebc4 <_start-0x143c>
1c007a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8b8 <_sidata+0x5824>
1c007a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a60 <__FUNCTION__.1718>:
1c007a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eed8 <_sidata+0x15e44>
1c007a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eac8 <_sidata+0x15a34>
1c007a68:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffaac8 <_start-0x5538>
1c007a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebdc <_start-0x1424>
1c007a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8d0 <_sidata+0x583c>
1c007a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a78 <__FUNCTION__.1722>:
1c007a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eef0 <_sidata+0x15e5c>
1c007a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eae0 <_sidata+0x15a4c>
1c007a80:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffabe0 <_start-0x5420>
1c007a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebf4 <_start-0x140c>
1c007a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8e8 <_sidata+0x5854>
1c007a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a90 <__FUNCTION__.1726>:
1c007a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef08 <_sidata+0x15e74>
1c007a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaf8 <_sidata+0x15a64>
1c007a98:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffacf8 <_start-0x5308>
1c007a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec0c <_start-0x13f4>
1c007aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e900 <_sidata+0x586c>
1c007aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007aa8 <__FUNCTION__.1730>:
1c007aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef20 <_sidata+0x15e8c>
1c007aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb10 <_sidata+0x15a7c>
1c007ab0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffae10 <_start-0x51f0>
1c007ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec24 <_start-0x13dc>
1c007ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e918 <_sidata+0x5884>
1c007abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ac0 <__FUNCTION__.1734>:
1c007ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef38 <_sidata+0x15ea4>
1c007ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb28 <_sidata+0x15a94>
1c007ac8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaf28 <_start-0x50d8>
1c007acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec3c <_start-0x13c4>
1c007ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e930 <_sidata+0x589c>
1c007ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ad8 <__FUNCTION__.1738>:
1c007ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef50 <_sidata+0x15ebc>
1c007adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb40 <_sidata+0x15aac>
1c007ae0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffb040 <_start-0x4fc0>
1c007ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec54 <_start-0x13ac>
1c007ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e948 <_sidata+0x58b4>
1c007aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007af0 <__FUNCTION__.1742>:
1c007af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef68 <_sidata+0x15ed4>
1c007af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb58 <_sidata+0x15ac4>
1c007af8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb158 <_start-0x4ea8>
1c007afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec6c <_start-0x1394>
1c007b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e960 <_sidata+0x58cc>
1c007b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b08 <__FUNCTION__.1746>:
1c007b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef80 <_sidata+0x15eec>
1c007b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb70 <_sidata+0x15adc>
1c007b10:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb270 <_start-0x4d90>
1c007b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec84 <_start-0x137c>
1c007b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e978 <_sidata+0x58e4>
1c007b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b20 <__FUNCTION__.1750>:
1c007b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef98 <_sidata+0x15f04>
1c007b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb88 <_sidata+0x15af4>
1c007b28:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffab8c <_start-0x5474>
1c007b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec9c <_start-0x1364>
1c007b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e990 <_sidata+0x58fc>
1c007b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b38 <__FUNCTION__.1754>:
1c007b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efb0 <_sidata+0x15f1c>
1c007b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eba0 <_sidata+0x15b0c>
1c007b40:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffaca4 <_start-0x535c>
1c007b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecb4 <_start-0x134c>
1c007b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9a8 <_sidata+0x5914>
1c007b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b50 <__FUNCTION__.1758>:
1c007b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efc8 <_sidata+0x15f34>
1c007b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebb8 <_sidata+0x15b24>
1c007b58:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffadbc <_start-0x5244>
1c007b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeccc <_start-0x1334>
1c007b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9c0 <_sidata+0x592c>
1c007b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b68 <__FUNCTION__.1762>:
1c007b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efe0 <_sidata+0x15f4c>
1c007b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebd0 <_sidata+0x15b3c>
1c007b70:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaed4 <_start-0x512c>
1c007b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffece4 <_start-0x131c>
1c007b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9d8 <_sidata+0x5944>
1c007b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b80 <__FUNCTION__.1766>:
1c007b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eff8 <_sidata+0x15f64>
1c007b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebe8 <_sidata+0x15b54>
1c007b88:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffafec <_start-0x5014>
1c007b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecfc <_start-0x1304>
1c007b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9f0 <_sidata+0x595c>
1c007b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b98 <__FUNCTION__.1770>:
1c007b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f010 <_sidata+0x15f7c>
1c007b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec00 <_sidata+0x15b6c>
1c007ba0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb104 <_start-0x4efc>
1c007ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed14 <_start-0x12ec>
1c007ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea08 <_sidata+0x5974>
1c007bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bb0 <__FUNCTION__.1774>:
1c007bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f028 <_sidata+0x15f94>
1c007bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec18 <_sidata+0x15b84>
1c007bb8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb21c <_start-0x4de4>
1c007bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed2c <_start-0x12d4>
1c007bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea20 <_sidata+0x598c>
1c007bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bc8 <__FUNCTION__.1778>:
1c007bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f040 <_sidata+0x15fac>
1c007bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec30 <_sidata+0x15b9c>
1c007bd0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb334 <_start-0x4ccc>
1c007bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed44 <_start-0x12bc>
1c007bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea38 <_sidata+0x59a4>
1c007bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007be0 <asc2_1608>:
	...
1c007bf0:	f8000000 	0xf8000000
1c007bf4:	00000000 	0x00000000
1c007bf8:	33000000 	0x33000000
1c007bfc:	00000000 	0x00000000
1c007c00:	020c1000 	slti	$r0,$r0,772(0x304)
1c007c04:	00020c10 	0x00020c10
	...
1c007c10:	78c04000 	0x78c04000
1c007c14:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007c18:	043f0400 	csrrd	$r0,0xfc1
1c007c1c:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007c20:	88887000 	0x88887000
1c007c24:	003008fc 	0x003008fc
1c007c28:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c007c2c:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007c30:	80f008f0 	0x80f008f0
1c007c34:	00001860 	cto.w	$r0,$r3
1c007c38:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007c3c:	001e211e 	mulh.d	$r30,$r8,$r8
1c007c40:	8808f000 	0x8808f000
1c007c44:	00000070 	0x00000070
1c007c48:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007c4c:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007c50:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007c60:	e0000000 	0xe0000000
1c007c64:	00020418 	0x00020418
1c007c68:	07000000 	0x07000000
1c007c6c:	00402018 	0x00402018
1c007c70:	18040200 	pcaddi	$r0,8208(0x2010)
1c007c74:	000000e0 	0x000000e0
1c007c78:	18204000 	pcaddi	$r0,66048(0x10200)
1c007c7c:	00000007 	0x00000007
1c007c80:	f0804040 	0xf0804040
1c007c84:	00404080 	0x00404080
1c007c88:	0f010202 	0x0f010202
1c007c8c:	00020201 	0x00020201
1c007c90:	00000000 	0x00000000
1c007c94:	000000e0 	0x000000e0
1c007c98:	01010100 	fadd.d	$f0,$f8,$f0
1c007c9c:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007ca8:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007cb8:	01010100 	fadd.d	$f0,$f8,$f0
1c007cbc:	00010101 	0x00010101
	...
1c007cc8:	00303000 	0x00303000
	...
1c007cd4:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007cd8:	07186000 	0x07186000
1c007cdc:	00000000 	0x00000000
1c007ce0:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007ce4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ce8:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007cec:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007cf0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007cf4:	000000f8 	0x000000f8
1c007cf8:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007cfc:	0020203f 	div.w	$r31,$r1,$r8
1c007d00:	08087000 	0x08087000
1c007d04:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007d08:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007d0c:	00302122 	0x00302122
1c007d10:	08083000 	0x08083000
1c007d14:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007d18:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007d1c:	001c2221 	mul.w	$r1,$r17,$r8
1c007d20:	40800000 	beqz	$r0,32768(0x8000) # 1c00fd20 <_sidata+0x6c8c>
1c007d24:	0000f830 	0x0000f830
1c007d28:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007d2c:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007d30:	8888f800 	0x8888f800
1c007d34:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007d38:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007d3c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007d40:	8810e000 	0x8810e000
1c007d44:	00009088 	0x00009088
1c007d48:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007d4c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007d50:	08081800 	0x08081800
1c007d54:	00186888 	sra.w	$r8,$r4,$r26
1c007d58:	3e000000 	0x3e000000
1c007d5c:	00000001 	0x00000001
1c007d60:	08887000 	0x08887000
1c007d64:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007d68:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007d6c:	001c2221 	mul.w	$r1,$r17,$r8
1c007d70:	0808f000 	0x0808f000
1c007d74:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007d78:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007d7c:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007d80:	c0000000 	0xc0000000
1c007d84:	000000c0 	0x000000c0
1c007d88:	30000000 	0x30000000
1c007d8c:	00000030 	0x00000030
1c007d90:	80000000 	0x80000000
1c007d94:	00000000 	0x00000000
1c007d98:	e0000000 	0xe0000000
1c007d9c:	00000000 	0x00000000
1c007da0:	40800000 	beqz	$r0,32768(0x8000) # 1c00fda0 <_sidata+0x6d0c>
1c007da4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007da8:	04020100 	csrxchg	$r0,$r8,0x80
1c007dac:	00201008 	div.w	$r8,$r0,$r4
1c007db0:	40404000 	beqz	$r0,16448(0x4040) # 1c00bdf0 <_sidata+0x2d5c>
1c007db4:	00404040 	0x00404040
1c007db8:	02020200 	slti	$r0,$r16,128(0x80)
1c007dbc:	00020202 	0x00020202
1c007dc0:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007dc4:	00008040 	0x00008040
1c007dc8:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007dcc:	00010204 	0x00010204
1c007dd0:	08487000 	0x08487000
1c007dd4:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007dd8:	30000000 	0x30000000
1c007ddc:	00000037 	0x00000037
1c007de0:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007de4:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007de8:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007dec:	0017282f 	sll.w	$r15,$r1,$r10
1c007df0:	38c00000 	0x38c00000
1c007df4:	000000e0 	0x000000e0
1c007df8:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007dfc:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007e00:	8888f808 	0x8888f808
1c007e04:	00007088 	0x00007088
1c007e08:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e0c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007e10:	080830c0 	0x080830c0
1c007e14:	00380808 	0x00380808
1c007e18:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007e1c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007e20:	0808f808 	0x0808f808
1c007e24:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007e28:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e2c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007e30:	8888f808 	0x8888f808
1c007e34:	001008e8 	add.w	$r8,$r7,$r2
1c007e38:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e3c:	00182023 	sra.w	$r3,$r1,$r8
1c007e40:	8888f808 	0x8888f808
1c007e44:	001008e8 	add.w	$r8,$r7,$r2
1c007e48:	00203f20 	div.w	$r0,$r25,$r15
1c007e4c:	00000003 	0x00000003
1c007e50:	080830c0 	0x080830c0
1c007e54:	00003808 	revb.2w	$r8,$r0
1c007e58:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007e5c:	00021e22 	0x00021e22
1c007e60:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007e64:	08f80800 	0x08f80800
1c007e68:	01213f20 	0x01213f20
1c007e6c:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007e70:	f8080800 	0xf8080800
1c007e74:	00000808 	0x00000808
1c007e78:	3f202000 	0x3f202000
1c007e7c:	00002020 	clo.d	$r0,$r1
1c007e80:	08080000 	0x08080000
1c007e84:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007e88:	808080c0 	0x808080c0
1c007e8c:	0000007f 	0x0000007f
1c007e90:	c088f808 	0xc088f808
1c007e94:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007e98:	01203f20 	0x01203f20
1c007e9c:	00203826 	div.w	$r6,$r1,$r14
1c007ea0:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007ea4:	00000000 	0x00000000
1c007ea8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007eac:	00302020 	0x00302020
1c007eb0:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007eb4:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007eb8:	3e013f20 	0x3e013f20
1c007ebc:	00203f01 	div.w	$r1,$r24,$r15
1c007ec0:	c030f808 	0xc030f808
1c007ec4:	08f80800 	0x08f80800
1c007ec8:	00203f20 	div.w	$r0,$r25,$r15
1c007ecc:	003f1807 	0x003f1807
1c007ed0:	080810e0 	0x080810e0
1c007ed4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ed8:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007edc:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007ee0:	0808f808 	0x0808f808
1c007ee4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007ee8:	01213f20 	0x01213f20
1c007eec:	00000101 	0x00000101
1c007ef0:	080810e0 	0x080810e0
1c007ef4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007ef8:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007efc:	004f5030 	0x004f5030
1c007f00:	8888f808 	0x8888f808
1c007f04:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007f08:	00203f20 	div.w	$r0,$r25,$r15
1c007f0c:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007f10:	08887000 	0x08887000
1c007f14:	00380808 	0x00380808
1c007f18:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007f1c:	001c2221 	mul.w	$r1,$r17,$r8
1c007f20:	f8080818 	0xf8080818
1c007f24:	00180808 	sra.w	$r8,$r0,$r2
1c007f28:	3f200000 	0x3f200000
1c007f2c:	00000020 	0x00000020
1c007f30:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007f34:	08f80800 	0x08f80800
1c007f38:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007f3c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007f40:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007f44:	0838c800 	0x0838c800
1c007f48:	38070000 	0x38070000
1c007f4c:	0000010e 	0x0000010e
1c007f50:	f800f808 	0xf800f808
1c007f54:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007f58:	013e0300 	0x013e0300
1c007f5c:	0000033e 	0x0000033e
1c007f60:	80681808 	0x80681808
1c007f64:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007f68:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007f6c:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007f70:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007f74:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007f78:	3f200000 	0x3f200000
1c007f7c:	00000020 	0x00000020
1c007f80:	08080810 	0x08080810
1c007f84:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007f88:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007f8c:	00182020 	sra.w	$r0,$r1,$r8
1c007f90:	fe000000 	0xfe000000
1c007f94:	00020202 	0x00020202
1c007f98:	7f000000 	0x7f000000
1c007f9c:	00404040 	0x00404040
1c007fa0:	c0380400 	0xc0380400
1c007fa4:	00000000 	0x00000000
1c007fa8:	01000000 	0x01000000
1c007fac:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007fb0:	02020200 	slti	$r0,$r16,128(0x80)
1c007fb4:	000000fe 	0x000000fe
1c007fb8:	40404000 	beqz	$r0,16448(0x4040) # 1c00bff8 <_sidata+0x2f64>
1c007fbc:	0000007f 	0x0000007f
1c007fc0:	02040000 	slti	$r0,$r0,256(0x100)
1c007fc4:	00000402 	0x00000402
	...
1c007fd8:	80808080 	0x80808080
1c007fdc:	80808080 	0x80808080
1c007fe0:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007ff0:	80800000 	0x80800000
1c007ff4:	00000080 	0x00000080
1c007ff8:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007ffc:	00203f12 	div.w	$r18,$r24,$r15
1c008000:	8000f010 	0x8000f010
1c008004:	00000080 	0x00000080
1c008008:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00800c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008010:	80000000 	0x80000000
1c008014:	00008080 	0x00008080
1c008018:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00801c:	00112020 	sub.w	$r0,$r1,$r8
1c008020:	80800000 	0x80800000
1c008024:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c008028:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00802c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008030:	80800000 	0x80800000
1c008034:	00008080 	0x00008080
1c008038:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c00803c:	00172424 	sll.w	$r4,$r1,$r9
1c008040:	e0808000 	0xe0808000
1c008044:	00209090 	mod.w	$r16,$r4,$r4
1c008048:	3f202000 	0x3f202000
1c00804c:	00002020 	clo.d	$r0,$r1
1c008050:	80800000 	0x80800000
1c008054:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008058:	94946b00 	0x94946b00
1c00805c:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c008060:	8000f010 	0x8000f010
1c008064:	00008080 	0x00008080
1c008068:	00213f20 	div.wu	$r0,$r25,$r15
1c00806c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008070:	98988000 	0x98988000
1c008074:	00000000 	0x00000000
1c008078:	3f202000 	0x3f202000
1c00807c:	00002020 	clo.d	$r0,$r1
1c008080:	80000000 	0x80000000
1c008084:	00009898 	0x00009898
1c008088:	8080c000 	0x8080c000
1c00808c:	00007f80 	0x00007f80
1c008090:	0000f010 	0x0000f010
1c008094:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008098:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c00809c:	00203029 	div.w	$r9,$r1,$r12
1c0080a0:	f8101000 	0xf8101000
1c0080a4:	00000000 	0x00000000
1c0080a8:	3f202000 	0x3f202000
1c0080ac:	00002020 	clo.d	$r0,$r1
1c0080b0:	80808080 	0x80808080
1c0080b4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0080b8:	00203f20 	div.w	$r0,$r25,$r15
1c0080bc:	3f00203f 	0x3f00203f
1c0080c0:	80008080 	0x80008080
1c0080c4:	00008080 	0x00008080
1c0080c8:	00213f20 	div.wu	$r0,$r25,$r15
1c0080cc:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0080d0:	80800000 	0x80800000
1c0080d4:	00008080 	0x00008080
1c0080d8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0080dc:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0080e0:	80008080 	0x80008080
1c0080e4:	00000080 	0x00000080
1c0080e8:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c0080ec:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0080f0:	80000000 	0x80000000
1c0080f4:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c0080f8:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0080fc:	80ff9120 	0x80ff9120
1c008100:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008104:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008108:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00810c:	00010020 	asrtle.d	$r1,$r0
1c008110:	80800000 	0x80800000
1c008114:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008118:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00811c:	00192424 	srl.d	$r4,$r1,$r9
1c008120:	e0808000 	0xe0808000
1c008124:	00008080 	0x00008080
1c008128:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00812c:	00102020 	add.w	$r0,$r1,$r8
1c008130:	00008080 	0x00008080
1c008134:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008138:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00813c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008140:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008144:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008148:	300c0300 	0x300c0300
1c00814c:	0000030c 	0x0000030c
1c008150:	80008080 	0x80008080
1c008154:	80800080 	0x80800080
1c008158:	0c300e01 	0x0c300e01
1c00815c:	01063807 	0x01063807
1c008160:	80808000 	0x80808000
1c008164:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008168:	0e312000 	0x0e312000
1c00816c:	0020312e 	div.w	$r14,$r9,$r12
1c008170:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008174:	80808000 	0x80808000
1c008178:	78868100 	0x78868100
1c00817c:	00010618 	0x00010618
1c008180:	80808000 	0x80808000
1c008184:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008188:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00818c:	00302122 	0x00302122
1c008190:	00000000 	0x00000000
1c008194:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c008198:	00000000 	0x00000000
1c00819c:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04c1d8 <_sidata+0x43144>
1c0081a0:	00000000 	0x00000000
1c0081a4:	000000ff 	0x000000ff
1c0081a8:	00000000 	0x00000000
1c0081ac:	000000ff 	0x000000ff
1c0081b0:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c0081b4:	00000000 	0x00000000
1c0081b8:	013e4040 	0x013e4040
1c0081bc:	00000000 	0x00000000
1c0081c0:	02010200 	slti	$r0,$r16,64(0x40)
1c0081c4:	00020402 	0x00020402
	...

1c0081d0 <tfont16>:
1c0081d0:	00b2b7e5 	bstrins.d	$r5,$r31,0x32,0x2d
1c0081d4:	8282e200 	0x8282e200
1c0081d8:	82828282 	0x82828282
1c0081dc:	00fe8282 	bstrpick.d	$r2,$r20,0x3e,0x20
1c0081e0:	00000000 	0x00000000
1c0081e4:	40403f00 	beqz	$r24,16444(0x403c) # 1c00c220 <_sidata+0x318c>
1c0081e8:	40404040 	beqz	$r2,16448(0x4040) # 1c00c228 <_sidata+0x3194>
1c0081ec:	40404040 	beqz	$r2,16448(0x4040) # 1c00c22c <_sidata+0x3198>
1c0081f0:	e8000078 	0xe8000078
1c0081f4:	40409ebf 	beqz	$r21,-245604(0x7c409c) # 1bfcc290 <_start-0x33d70>
1c0081f8:	0400cc42 	csrxchg	$r2,$r2,0x33
1c0081fc:	475c6444 	bnez	$r2,1268836(0x135c64) # 1c13de60 <_sidata+0x134dcc>
1c008200:	444444f4 	bnez	$r7,-3128252(0x504444) # 1bd0c644 <_start-0x2f39bc>
1c008204:	40000004 	beqz	$r0,1048576(0x100000) # 1c108204 <_sidata+0xff170>
1c008208:	44201f20 	bnez	$r25,8220(0x201c) # 1c00a224 <_sidata+0x1190>
1c00820c:	44444444 	bnez	$r2,1066052(0x104444) # 1c10c650 <_sidata+0x1035bc>
1c008210:	4444447f 	bnez	$r3,-244668(0x7c4444) # 1bfcc654 <_start-0x339ac>
1c008214:	8ee60044 	0x8ee60044
1c008218:	101010a5 	addu16i.d	$r5,$r5,1028(0x404)
1c00821c:	445010ff 	bnez	$r7,-241648(0x7c5010) # 1bfcd22c <_start-0x32dd4>
1c008220:	44c66554 	bnez	$r10,-3094940(0x50c664) # 1bd14884 <_start-0x2eb77c>
1c008224:	40445464 	beqz	$r3,1066068(0x104454) # 1c10c678 <_sidata+0x1035e4>
1c008228:	82440400 	0x82440400
1c00822c:	8282017f 	0x8282017f
1c008230:	2223564a 	ll.d	$r10,$r18,9044(0x2354)
1c008234:	02824e52 	addi.w	$r18,$r18,147(0x93)
1c008238:	b088e500 	0xb088e500
1c00823c:	4a526242 	0x4a526242
1c008240:	625242c6 	blt	$r22,$r6,-110016(0x25240) # 1bfed480 <_start-0x12b80>
1c008244:	00f800c2 	bstrpick.d	$r2,$r6,0x38,0x0
1c008248:	0000ff00 	0x0000ff00
1c00824c:	4444c440 	bnez	$r2,17604(0x44c4) # 1c00c710 <_sidata+0x367c>
1c008250:	2424247f 	ldptr.w	$r31,$r3,9252(0x2424)
1c008254:	400f0020 	beqz	$r1,3840(0xf00) # 1c009154 <_sidata+0xc0>
1c008258:	00007f80 	0x00007f80
1c00825c:	068384e2 	0x068384e2
1c008260:	f8e60909 	0xf8e60909
1c008264:	0202040c 	slti	$r12,$r0,129(0x81)
1c008268:	04020202 	csrxchg	$r2,$r16,0x80
1c00826c:	0000001e 	0x0000001e
1c008270:	1f070000 	pcaddu18i	$r0,-509952(0x83800)
1c008274:	40402030 	beqz	$r1,-4177888(0x404020) # 1bc0c294 <_start-0x3f3d6c>
1c008278:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c00827c:	e6000010 	0xe6000010
1c008280:	8080aa9c 	0x8080aa9c
1c008284:	88888888 	0x88888888
1c008288:	8888ff88 	0x8888ff88
1c00828c:	80888888 	0x80888888
1c008290:	20200080 	ll.w	$r0,$r4,8192(0x2000)
1c008294:	02040810 	slti	$r16,$r0,258(0x102)
1c008298:	0201ff01 	slti	$r1,$r24,127(0x7f)
1c00829c:	20100804 	ll.w	$r4,$r0,4104(0x1008)
1c0082a0:	a3e60020 	0xa3e60020
1c0082a4:	d0101080 	0xd0101080
1c0082a8:	205090ff 	ll.w	$r31,$r7,20624(0x5090)
1c0082ac:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c0082b0:	40402050 	beqz	$r2,-4177888(0x404020) # 1bc0c2d0 <_start-0x3f3d30>
1c0082b4:	00030400 	0x00030400
1c0082b8:	444100ff 	bnez	$r7,-245504(0x7c4100) # 1bfcc3b8 <_start-0x33c48>
1c0082bc:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00d0fc <_sidata+0x4068>
1c0082c0:	40404758 	beqz	$r26,-2080700(0x604044) # 1be0c304 <_start-0x1f3cfc>
1c0082c4:	8bb5e600 	0x8bb5e600
1c0082c8:	8c026010 	0x8c026010
1c0082cc:	f202fe00 	0xf202fe00
1c0082d0:	f800fe02 	0xf800fe02
1c0082d4:	0000ff00 	0x0000ff00
1c0082d8:	017e0404 	0x017e0404
1c0082dc:	0f304780 	0x0f304780
1c0082e0:	47002710 	bnez	$r24,-3997660(0x430024) # 1bc38304 <_start-0x3c7cfc>
1c0082e4:	00007f80 	0x00007f80
1c0082e8:	42b088e5 	beqz	$r7,1486984(0x16b088) # 1c173370 <_sidata+0x16a2dc>
1c0082ec:	c64a5262 	0xc64a5262
1c0082f0:	c2625242 	0xc2625242
1c0082f4:	0000f800 	0x0000f800
1c0082f8:	400000ff 	beqz	$r7,-262144(0x7c0000) # 1bfc82f8 <_start-0x37d08>
1c0082fc:	7f4444c4 	0x7f4444c4
1c008300:	20242424 	ll.w	$r4,$r1,9252(0x2424)
1c008304:	80400f00 	0x80400f00
1c008308:	e400007f 	0xe400007f
1c00830c:	8000a0bc 	0x8000a0bc
1c008310:	4007f860 	beqz	$r3,2040(0x7f8) # 1c008b08 <tfont32+0x540>
1c008314:	5fe84848 	bne	$r2,$r8,-6072(0x3e848) # 1c006b5c <HX711_Read_Bit+0x8>
1c008318:	40484848 	beqz	$r2,2115656(0x204848) # 1c20cb60 <_sidata+0x203acc>
1c00831c:	00010040 	asrtle.d	$r2,$r0
1c008320:	0000ff00 	0x0000ff00
1c008324:	22120b02 	ll.d	$r2,$r24,4616(0x1208)
1c008328:	00060ad2 	alsl.wu	$r18,$r22,$r2,0x1
1c00832c:	84e60000 	0x84e60000
1c008330:	fc00009f 	0xfc00009f
1c008334:	5454d404 	bl	1070292(0x1054d4) # 1c10d808 <_sidata+0x104774>
1c008338:	7f04d454 	0x7f04d454
1c00833c:	0436c584 	csrxchg	$r4,$r12,0xdb1
1c008340:	01668800 	0x01668800
1c008344:	82826300 	0x82826300
1c008348:	8284ab92 	0x8284ab92
1c00834c:	cf2402c1 	0xcf2402c1
1c008350:	a899e500 	0xa899e500
1c008354:	929e8080 	0x929e8080
1c008358:	e09e9292 	0xe09e9292
1c00835c:	d2b29e80 	0xd2b29e80
1c008360:	00809e92 	bstrins.d	$r18,$r20,0x0,0x27
1c008364:	94f40808 	0x94f40808
1c008368:	00f19292 	bstrpick.d	$r18,$r20,0x31,0x24
1c00836c:	9492f201 	0x9492f201
1c008370:	0008f894 	bytepick.w	$r20,$r4,$r30,0x1
1c008374:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c008378:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c00837c:	9292fe00 	0x9292fe00
1c008380:	fe929292 	0xfe929292
1c008384:	04000000 	csrrd	$r0,0x0
1c008388:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c108504 <_sidata+0xff470>
1c00838c:	7e42427e 	0x7e42427e
1c008390:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac60c <_sidata+0xa3578>
1c008394:	e600407e 	0xe600407e
1c008398:	6010bfb9 	blt	$r29,$r25,4284(0x10bc) # 1c009454 <_sidata+0x3c0>
1c00839c:	fe008c02 	0xfe008c02
1c0083a0:	92929292 	0x92929292
1c0083a4:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c0083a8:	04040000 	csrrd	$r0,0x100
1c0083ac:	4844017e 	bcnez	$fcc3,-506880(0x784400) # 1bf8c7ac <_start-0x73854>
1c0083b0:	40407f50 	beqz	$r26,-4177796(0x40407c) # 1bc0c42c <_start-0x3f3bd4>
1c0083b4:	4448507f 	bnez	$r3,-243632(0x7c4850) # 1bfccc04 <_start-0x333fc>
1c0083b8:	bae50040 	0xbae50040
1c0083bc:	fc0000a6 	0xfc0000a6
1c0083c0:	fc242424 	0xfc242424
1c0083c4:	fc242625 	0xfc242625
1c0083c8:	04242424 	csrwr	$r4,0x909
1c0083cc:	8f304000 	0x8f304000
1c0083d0:	554c8480 	bl	33639556(0x2014c84) # 1e01d054 <_sidata+0x2013fc0>
1c0083d4:	55252525 	bl	76883236(0x4952524) # 2095a8f8 <_sidata+0x4951864>
1c0083d8:	8080804c 	0x8080804c
1c0083dc:	919be700 	0x919be700
1c0083e0:	007e0000 	bstrins.w	$r0,$r0,0x1e,0x0
1c0083e4:	4000ff00 	beqz	$r24,252(0xfc) # 1c0084e0 <tfont16+0x310>
1c0083e8:	14040f30 	lu12i.w	$r16,8313(0x2079)
1c0083ec:	00000464 	0x00000464
1c0083f0:	427e4040 	beqz	$r2,163392(0x27e40) # 1c030230 <_sidata+0x2719c>
1c0083f4:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac670 <_sidata+0xa35dc>
1c0083f8:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac674 <_sidata+0xa35e0>
1c0083fc:	0040407e 	0x0040407e
1c008400:	108bb5e6 	addu16i.d	$r6,$r15,8941(0x22ed)
1c008404:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c008408:	02f202fe 	addi.d	$r30,$r23,-896(0xc80)
1c00840c:	00f800fe 	bstrpick.d	$r30,$r7,0x38,0x0
1c008410:	040000ff 	csrxchg	$r31,$r7,0x0
1c008414:	80017e04 	0x80017e04
1c008418:	100f3047 	addu16i.d	$r7,$r2,972(0x3cc)
1c00841c:	80470027 	0x80470027
1c008420:	e500007f 	0xe500007f
1c008424:	0c109eae 	0x0c109eae
1c008428:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c0098ac <_sidata+0x818>
1c00842c:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c008430:	14040404 	lu12i.w	$r4,8224(0x2020)
1c008434:	8404000c 	0x8404000c
1c008438:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c00843c:	0c070c14 	0x0c070c14
1c008440:	84442414 	0x84442414
1c008444:	aae90004 	0xaae90004
1c008448:	82fa028c 	0x82fa028c
1c00844c:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c090548 <_sidata+0x874b4>
1c008450:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03d0a0 <_sidata+0x3400c>
1c008454:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a4a4 <_sidata+0x301410>
1c008458:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c009c60 <_sidata+0xbcc>
1c00845c:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10c3a0 <_sidata+0x10330c>
1c008460:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c008464:	40475860 	beqz	$r3,18264(0x4758) # 1c00cbbc <_sidata+0x3b28>
1c008468:	baa4e700 	0xbaa4e700
1c00846c:	42424040 	beqz	$r2,148032(0x24240) # 1c02c6ac <_sidata+0x23618>
1c008470:	c2424242 	0xc2424242
1c008474:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac6b4 <_sidata+0xa3620>
1c008478:	00404042 	0x00404042
1c00847c:	06081020 	cacop	0x0,$r1,516(0x204)
1c008480:	7f804000 	0x7f804000
1c008484:	02000000 	slti	$r0,$r0,0
1c008488:	00300804 	0x00300804
1c00848c:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008490:	92fe0000 	0x92fe0000
1c008494:	92929292 	0x92929292
1c008498:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c00849c:	40000000 	beqz	$r0,0 # 1c00849c <tfont16+0x2cc>
1c0084a0:	40584442 	beqz	$r2,546884(0x85844) # 1c08dce4 <_sidata+0x84c50>
1c0084a4:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc4e4 <_start-0x33b1c>
1c0084a8:	4850407f 	bceqz	$fcc3,-241600(0x7c5040) # 1bfcd4e8 <_start-0x32b18>
1c0084ac:	e5004046 	0xe5004046
1c0084b0:	0c109eae 	0x0c109eae
1c0084b4:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c009938 <_sidata+0x8a4>
1c0084b8:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c0084bc:	14040404 	lu12i.w	$r4,8224(0x2020)
1c0084c0:	8404000c 	0x8404000c
1c0084c4:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c0084c8:	0c070c14 	0x0c070c14
1c0084cc:	84442414 	0x84442414
1c0084d0:	aae90004 	0xaae90004
1c0084d4:	82fa028c 	0x82fa028c
1c0084d8:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c0905d4 <_sidata+0x87540>
1c0084dc:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03d12c <_sidata+0x34098>
1c0084e0:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a530 <_sidata+0x30149c>
1c0084e4:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c009cec <_sidata+0xc58>
1c0084e8:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10c42c <_sidata+0x103398>
1c0084ec:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c0084f0:	40475860 	beqz	$r3,18264(0x4758) # 1c00cc48 <_sidata+0x3bb4>
1c0084f4:	be99e700 	0xbe99e700
1c0084f8:	22e20202 	ll.d	$r2,$r16,-7680(0xe200)
1c0084fc:	262a3222 	ldptr.d	$r2,$r17,10800(0x2a30)
1c008500:	22222222 	ll.d	$r2,$r17,8736(0x2220)
1c008504:	000202e2 	0x000202e2
1c008508:	42ff0000 	beqz	$r0,196352(0x2ff00) # 1c038408 <_sidata+0x2f374>
1c00850c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac74c <_sidata+0xa36b8>
1c008510:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac750 <_sidata+0xa36bc>
1c008514:	000000ff 	0x000000ff
1c008518:	2491a7e7 	ldptr.w	$r7,$r31,-28252(0x91a4)
1c00851c:	a3fea424 	0xa3fea424
1c008520:	cc220022 	0xcc220022
1c008524:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008528:	08000000 	0x08000000
1c00852c:	00ff0106 	bstrpick.d	$r6,$r8,0x3f,0x0
1c008530:	04040401 	csrrd	$r1,0x101
1c008534:	02ff0404 	addi.d	$r4,$r0,-63(0xfc1)
1c008538:	e8000202 	0xe8000202
1c00853c:	6484a38d 	bge	$r28,$r13,33952(0x84a0) # 1c0109dc <_sidata+0x7948>
1c008540:	242f2424 	ldptr.w	$r4,$r1,12068(0x2f24)
1c008544:	2424a424 	ldptr.w	$r4,$r1,9380(0x24a4)
1c008548:	a424242f 	0xa424242f
1c00854c:	42400064 	beqz	$r3,1196032(0x124000) # 1c12c54c <_sidata+0x1234b8>
1c008550:	0a122222 	xvfmadd.s	$xr2,$xr17,$xr8,$xr4
1c008554:	0a06ff06 	0x0a06ff06
1c008558:	42222212 	beqz	$r16,-3530208(0x4a2220) # 1bcaa778 <_start-0x355888>
1c00855c:	88e50040 	0x88e50040
1c008560:	d020409b 	0xd020409b
1c008564:	c844434c 	0xc844434c
1c008568:	f8002010 	0xf8002010
1c00856c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008570:	3f000000 	0x3f000000
1c008574:	47484440 	bnez	$r2,215108(0x34844) # 1c03cdb8 <_sidata+0x33d24>
1c008578:	0f007040 	0x0f007040
1c00857c:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c008580:	8d87e900 	0x8d87e900
1c008584:	d4141010 	0xd4141010
1c008588:	fc545454 	0xfc545454
1c00858c:	d3525252 	0xd3525252
1c008590:	00101012 	add.w	$r18,$r0,$r4
1c008594:	57504040 	bl	16994368(0x1035040) # 1d03d5d4 <_sidata+0x1034540>
1c008598:	7f555555 	0x7f555555
1c00859c:	57555555 	bl	89609556(0x5575554) # 2157daf0 <_sidata+0x5574a5c>
1c0085a0:	00404050 	0x00404050
1c0085a4:	208f87e9 	ll.w	$r9,$r31,-28796(0x8f84)
1c0085a8:	aabe2020 	0xaabe2020
1c0085ac:	aaaaaaaa 	0xaaaaaaaa
1c0085b0:	20beaaaa 	ll.w	$r10,$r21,-16728(0xbea8)
1c0085b4:	00002020 	clo.d	$r0,$r1
1c0085b8:	aaaf8080 	0xaaaf8080
1c0085bc:	aaffaaaa 	0xaaffaaaa
1c0085c0:	80afaaaa 	0x80afaaaa
1c0085c4:	00000080 	0x00000080

1c0085c8 <tfont32>:
1c0085c8:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c0085cc:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0085d0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085d4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085d8:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c0085dc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085e0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085e4:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c0085f0:	f8fc0000 	0xf8fc0000
1c0085f4:	08080808 	0x08080808
1c0085f8:	08080b0c 	0x08080b0c
1c0085fc:	08080808 	0x08080808
1c008600:	f8fc0808 	0xf8fc0808
	...
1c008610:	ffff0000 	0xffff0000
1c008614:	08080808 	0x08080808
1c008618:	08080808 	0x08080808
1c00861c:	08080808 	0x08080808
1c008620:	ffff0808 	0xffff0808
	...
1c008630:	3f7f0000 	0x3f7f0000
1c008634:	08080808 	0x08080808
1c008638:	08080808 	0x08080808
1c00863c:	08080808 	0x08080808
1c008640:	3f7f0808 	0x3f7f0808
1c008644:	00000000 	0x00000000
1c008648:	e7000000 	0xe7000000
1c00864c:	000091a7 	0x000091a7
1c008650:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008654:	e0e02020 	0xe0e02020
1c008658:	18181030 	pcaddi	$r16,49281(0xc081)
1c00865c:	80000000 	0x80000000
1c008660:	00000080 	0x00000080
1c008664:	f8fc0000 	0xf8fc0000
1c008668:	00000008 	0x00000008
1c00866c:	00000000 	0x00000000
1c008670:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008674:	ffff9010 	0xffff9010
1c008678:	18101010 	pcaddi	$r16,32896(0x8080)
1c00867c:	c0000010 	0xc0000010
1c008680:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c008684:	ffff0000 	0xffff0000
	...
1c008690:	18204080 	pcaddi	$r0,66052(0x10204)
1c008694:	ffff030e 	0xffff030e
1c008698:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe8c98 <_start-0x17368>
1c00869c:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c0086a0:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c0086a4:	ffff1010 	0xffff1010
1c0086a8:	0c0c0808 	0x0c0c0808
1c0086ac:	01000000 	0x01000000
1c0086b0:	00000000 	0x00000000
1c0086b4:	3f7f0000 	0x3f7f0000
	...
1c0086c4:	3f7f0000 	0x3f7f0000
1c0086c8:	00000000 	0x00000000
1c0086cc:	8de80000 	0x8de80000
1c0086d0:	000000a3 	0x000000a3
1c0086d4:	80808080 	0x80808080
1c0086d8:	80808080 	0x80808080
1c0086dc:	8088f8fc 	0x8088f8fc
1c0086e0:	80808080 	0x80808080
1c0086e4:	8088f8fc 	0x8088f8fc
1c0086e8:	e0c08080 	0xe0c08080
1c0086ec:	000080c0 	0x000080c0
1c0086f0:	00000000 	0x00000000
1c0086f4:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c0086f8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0086fc:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c008700:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c008704:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c008708:	f0d01010 	0xf0d01010
1c00870c:	00001038 	clo.w	$r24,$r1
1c008710:	00000000 	0x00000000
1c008714:	02020200 	slti	$r0,$r16,128(0x80)
1c008718:	c2820202 	0xc2820202
1c00871c:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c008720:	0e02ffff 	0x0e02ffff
1c008724:	82c26212 	0x82c26212
1c008728:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c00872c:	00000203 	0x00000203
1c008730:	10000000 	addu16i.d	$r0,$r0,0
1c008734:	06040808 	cacop	0x8,$r0,258(0x102)
1c008738:	00010102 	0x00010102
1c00873c:	00000000 	0x00000000
1c008740:	00003f7f 	revb.d	$r31,$r27
1c008744:	01000000 	0x01000000
1c008748:	0e060303 	0x0e060303
1c00874c:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c008750:	9b88e500 	0x9b88e500
1c008754:	00000000 	0x00000000
1c008758:	c0000000 	0xc0000000
1c00875c:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c008760:	80c04060 	0x80c04060
	...
1c00876c:	f8000000 	0xf8000000
1c008770:	000000f8 	0x000000f8
1c008774:	40800000 	beqz	$r0,32768(0x8000) # 1c010774 <_sidata+0x76e0>
1c008778:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c00877c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008780:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c008784:	00000207 	0x00000207
1c008788:	0002ff00 	0x0002ff00
1c00878c:	ff000000 	0xff000000
1c008790:	000000ff 	0x000000ff
1c008794:	00000100 	0x00000100
1c008798:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00879c:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00a79c <_sidata+0x1708>
1c0087a0:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c0087a4:	00008000 	0x00008000
1c0087a8:	00007f00 	0x00007f00
1c0087ac:	ff000000 	0xff000000
1c0087b0:	000000ff 	0x000000ff
1c0087b4:	00000000 	0x00000000
1c0087b8:	303f0700 	0x303f0700
1c0087bc:	30303030 	0x30303030
1c0087c0:	30303030 	0x30303030
1c0087c4:	00103f38 	add.w	$r24,$r25,$r15
1c0087c8:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0087cc:	3f703030 	0x3f703030
1c0087d0:	0000001f 	0x0000001f
1c0087d4:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c0087ec:	40800000 	beqz	$r0,32768(0x8000) # 1c0107ec <_sidata+0x7758>
1c0087f0:	00102040 	add.w	$r0,$r2,$r8
	...
1c008808:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c00880c:	00000306 	0x00000306
	...
1c008828:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c00882c:	000000c0 	0x000000c0
	...
1c00884c:	04020100 	csrxchg	$r0,$r8,0x80
1c008850:	0010080c 	add.w	$r12,$r0,$r2
1c008854:	e5000000 	0xe5000000
1c008858:	0000978c 	0x0000978c
	...
1c008864:	08f8fc00 	0x08f8fc00
1c008868:	00000000 	0x00000000
1c00886c:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c00887c:	08080808 	0x08080808
1c008880:	08080808 	0x08080808
1c008884:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c008888:	00000000 	0x00000000
1c00888c:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc988 <_start-0x33678>
1c008890:	18103020 	pcaddi	$r0,33153(0x8181)
1c008894:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c0088a0:	80000000 	0x80000000
1c0088a4:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c0088a8:	00000000 	0x00000000
1c0088ac:	0000ffff 	0x0000ffff
1c0088b0:	00000000 	0x00000000
1c0088b4:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c0088b8:	00000000 	0x00000000
1c0088bc:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c0088c0:	00010103 	0x00010103
1c0088c4:	003f7f00 	0x003f7f00
1c0088c8:	00000000 	0x00000000
1c0088cc:	30303f1f 	0x30303f1f
1c0088d0:	30303030 	0x30303030
1c0088d4:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c0088d8:	bae40000 	0xbae40000
1c0088dc:	800000ac 	0x800000ac
1c0088e0:	80808080 	0x80808080
1c0088e4:	80808080 	0x80808080
1c0088e8:	8c808080 	0x8c808080
1c0088ec:	80b0f898 	0x80b0f898
1c0088f0:	80808080 	0x80808080
1c0088f4:	c0808080 	0xc0808080
1c0088f8:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008904:	08f8f800 	0x08f8f800
1c008908:	08080808 	0x08080808
1c00890c:	08080808 	0x08080808
1c008910:	f8080808 	0xf8080808
1c008914:	000008fc 	0x000008fc
	...
1c008924:	e4cf0f00 	0xe4cf0f00
1c008928:	04040444 	csrxchg	$r4,$r2,0x101
1c00892c:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c008930:	cf442404 	0xcf442404
1c008934:	0000008f 	0x0000008f
1c008938:	00000000 	0x00000000
1c00893c:	20000000 	ll.w	$r0,$r0,0
1c008940:	04081010 	csrrd	$r16,0x204
1c008944:	00010306 	0x00010306
1c008948:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c00894c:	00003f3f 	revb.d	$r31,$r25
1c008950:	00000000 	0x00000000
1c008954:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c008958:	00000018 	0x00000018
1c00895c:	89bcef00 	0x89bcef00
1c008960:	00000000 	0x00000000
1c008964:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008968:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c008988:	06010000 	cacop	0x0,$r0,64(0x40)
1c00898c:	0000f03c 	0x0000f03c
	...
1c0089a8:	c0800000 	0xc0800000
1c0089ac:	00000f78 	0x00000f78
	...
1c0089c4:	0c081000 	0x0c081000
1c0089c8:	00010306 	0x00010306
	...
1c0089e0:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c0089e4:	40404000 	beqz	$r0,16448(0x4040) # 1c00ca24 <_sidata+0x3990>
1c0089e8:	e0202020 	0xe0202020
1c0089ec:	181030e0 	pcaddi	$r0,33159(0x8187)
1c0089f0:	00000018 	0x00000018
1c0089f4:	00008080 	0x00008080
1c0089f8:	fc000000 	0xfc000000
1c0089fc:	000008f8 	0x000008f8
1c008a00:	00000000 	0x00000000
1c008a04:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008a08:	ff901010 	0xff901010
1c008a0c:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c008a10:	00001018 	clo.w	$r24,$r0
1c008a14:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c008a18:	ff000000 	0xff000000
1c008a1c:	000000ff 	0x000000ff
1c008a20:	00000000 	0x00000000
1c008a24:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c008a28:	ff030e18 	0xff030e18
1c008a2c:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c008a30:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c008a34:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c008a38:	ff101010 	0xff101010
1c008a3c:	0c0808ff 	0x0c0808ff
1c008a40:	0000000c 	0x0000000c
1c008a44:	00000001 	0x00000001
1c008a48:	7f000000 	0x7f000000
1c008a4c:	0000003f 	0x0000003f
	...
1c008a58:	7f000000 	0x7f000000
1c008a5c:	0000003f 	0x0000003f
1c008a60:	e6000000 	0xe6000000
1c008a64:	0000808a 	0x0000808a
1c008a68:	00000000 	0x00000000
1c008a6c:	08f8fc00 	0x08f8fc00
	...
1c008a78:	f8fc0000 	0xf8fc0000
1c008a7c:	00000008 	0x00000008
	...
1c008a88:	02020202 	slti	$r2,$r16,128(0x80)
1c008a8c:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c008a90:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ace10 <_sidata+0xa3d7c>
1c008a94:	82828282 	0x82828282
1c008a98:	ffff8282 	0xffff8282
1c008a9c:	82828282 	0x82828282
1c008aa0:	020383c2 	slti	$r2,$r30,224(0xe0)
1c008aa4:	00000000 	0x00000000
1c008aa8:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c008aac:	01ffff02 	0x01ffff02
1c008ab0:	00000000 	0x00000000
1c008ab4:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c008ab8:	8000c070 	0x8000c070
1c008abc:	0f3c70c0 	0x0f3c70c0
1c008ac0:	00000003 	0x00000003
1c008ac4:	00000000 	0x00000000
1c008ac8:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c008acc:	003f3f70 	0x003f3f70
1c008ad0:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008ad4:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008ad8:	0703060c 	0x0703060c
1c008adc:	38180c0f 	stx.w	$r15,$r0,$r3
1c008ae0:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008ae4:	8fe50000 	0x8fe50000
1c008ae8:	00000091 	0x00000091
1c008aec:	f0800000 	0xf0800000
1c008af0:	00000070 	0x00000070
1c008af4:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008af8:	00000000 	0x00000000
1c008afc:	70100800 	0x70100800
1c008b00:	0000c0e0 	0x0000c0e0
	...
1c008b0c:	05070e04 	0x05070e04
1c008b10:	84040404 	0x84040404
1c008b14:	8487fff4 	0x8487fff4
1c008b18:	84848484 	0x84848484
1c008b1c:	84848484 	0x84848484
1c008b20:	0484c584 	csrxchg	$r4,$r12,0x2131
1c008b24:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c008b30:	0f3ce080 	0x0f3ce080
1c008b34:	06010003 	cacop	0x3,$r0,64(0x40)
1c008b38:	80e03018 	0x80e03018
1c008b3c:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c008b40:	00000307 	0x00000307
1c008b44:	00000000 	0x00000000
1c008b48:	20000000 	ll.w	$r0,$r0,0
1c008b4c:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c008b50:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c008b54:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008b58:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c008b5c:	0c060703 	0x0c060703
1c008b60:	3038181c 	0x3038181c
1c008b64:	00103030 	add.w	$r16,$r1,$r12
1c008b68:	95b1e500 	0x95b1e500
1c008b6c:	00000000 	0x00000000
1c008b70:	08f80400 	0x08f80400
1c008b74:	08080808 	0x08080808
1c008b78:	08080808 	0x08080808
1c008b7c:	08080808 	0x08080808
1c008b80:	08080808 	0x08080808
1c008b84:	08f8fc08 	0x08f8fc08
	...
1c008b90:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008b94:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008b98:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c008b9c:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008ba0:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008ba4:	00233321 	div.du	$r1,$r25,$r12
	...
1c008bb0:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008bb4:	fc040404 	0xfc040404
1c008bb8:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008bbc:	04c4740c 	csrrd	$r12,0x311d
1c008bc0:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00d044 <_sidata+0x3fb0>
1c008bc4:	06062434 	cacop	0x14,$r1,393(0x189)
1c008bc8:	00000004 	0x00000004
1c008bcc:	18204000 	pcaddi	$r0,66048(0x10200)
1c008bd0:	00000107 	0x00000107
1c008bd4:	3f000000 	0x3f000000
1c008bd8:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008bdc:	03000004 	lu52i.d	$r4,$r0,0
1c008be0:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008be4:	30383818 	0x30383818
1c008be8:	00001010 	clo.w	$r16,$r0
1c008bec:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c008bf0:	80808000 	0x80808000
1c008bf4:	80808080 	0x80808080
1c008bf8:	80808080 	0x80808080
1c008bfc:	88b8fce0 	0x88b8fce0
1c008c00:	80808080 	0x80808080
1c008c04:	80808080 	0x80808080
1c008c08:	c0e0c080 	0xc0e0c080
1c008c0c:	00000080 	0x00000080
1c008c10:	00000000 	0x00000000
1c008c14:	c0800000 	0xc0800000
1c008c18:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008c1c:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c008c20:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008c24:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c008c30:	04081000 	csrrd	$r0,0x204
1c008c34:	00010306 	0x00010306
1c008c38:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfecf34 <_start-0x130cc>
1c008c3c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ace7c <_sidata+0xa3de8>
1c008c40:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ace80 <_sidata+0xa3dec>
1c008c44:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c008c58:	00003f7f 	revb.d	$r31,$r27
1c008c5c:	00000000 	0x00000000
1c008c60:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008c64:	003f7030 	0x003f7030
1c008c68:	00000000 	0x00000000
1c008c6c:	e9000000 	0xe9000000
1c008c70:	00009099 	0x00009099
1c008c74:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c008c78:	f0101010 	0xf0101010
1c008c7c:	00001078 	clo.w	$r24,$r3
1c008c80:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c008c84:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008c88:	f8101010 	0xf8101010
1c008c8c:	00000010 	0x00000010
1c008c90:	00000000 	0x00000000
1c008c94:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008c98:	c33e0000 	0xc33e0000
1c008c9c:	00000000 	0x00000000
1c008ca0:	8484ffff 	0x8484ffff
1c008ca4:	84848484 	0x84848484
1c008ca8:	ff848484 	0xff848484
	...
1c008cb4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008cb8:	c0c04000 	0xc0c04000
1c008cbc:	00007eff 	0x00007eff
1c008cc0:	0000ffff 	0x0000ffff
1c008cc4:	c0701e01 	0xc0701e01
1c008cc8:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008ccc:	0000040e 	0x0000040e
1c008cd0:	00000000 	0x00000000
1c008cd4:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008cd8:	00010000 	asrtle.d	$r0,$r0
1c008cdc:	00000000 	0x00000000
1c008ce0:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008ce4:	01020204 	0x01020204
1c008ce8:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008cec:	00183818 	sra.w	$r24,$r0,$r14
1c008cf0:	85e50000 	0x85e50000
1c008cf4:	000000ac 	0x000000ac
1c008cf8:	00000000 	0x00000000
1c008cfc:	80000000 	0x80000000
1c008d00:	001078e0 	add.w	$r0,$r7,$r30
1c008d04:	1c000000 	pcaddu12i	$r0,0
1c008d08:	000080e0 	0x000080e0
	...
1c008d18:	c0800000 	0xc0800000
1c008d1c:	070e3860 	0x070e3860
1c008d20:	00000001 	0x00000001
1c008d24:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008d28:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008d2c:	c0c0e070 	0xc0c0e070
1c008d30:	00000080 	0x00000080
1c008d34:	04000000 	csrrd	$r0,0x0
1c008d38:	00010302 	0x00010302
1c008d3c:	c0000000 	0xc0000000
1c008d40:	071c3860 	0x071c3860
1c008d44:	00000103 	0x00000103
1c008d48:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008d4c:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c008d50:	00010103 	0x00010103
1c008d54:	00000000 	0x00000000
1c008d58:	38080000 	ldx.w	$r0,$r0,$r0
1c008d5c:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c008d60:	08081818 	0x08081818
1c008d64:	08080808 	0x08080808
1c008d68:	0f090808 	0x0f090808
1c008d6c:	00307c1e 	0x00307c1e
1c008d70:	00000000 	0x00000000
1c008d74:	b88fe500 	0xb88fe500
1c008d78:	00000000 	0x00000000
1c008d7c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008d80:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d84:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d88:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d8c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008d90:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c008d94:	00000000 	0x00000000
1c008d98:	04000000 	csrrd	$r0,0x0
1c008d9c:	84c40404 	0x84c40404
1c008da0:	84848484 	0x84848484
1c008da4:	84848484 	0x84848484
1c008da8:	0684c484 	0x0684c484
1c008dac:	00000406 	0x00000406
1c008db0:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008dbc:	ffff0000 	0xffff0000
1c008dc0:	40404040 	beqz	$r2,16448(0x4040) # 1c00ce00 <_sidata+0x3d6c>
1c008dc4:	40404040 	beqz	$r2,16448(0x4040) # 1c00ce04 <_sidata+0x3d70>
1c008dc8:	0000ff40 	0x0000ff40
1c008dcc:	00000000 	0x00000000
1c008dd0:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008ddc:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c008de8:	00010100 	asrtle.d	$r8,$r0
1c008dec:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c008df0:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c008df4:	00000000 	0x00000000
1c008df8:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008dfc:	00000000 	0x00000000
1c008e00:	f0080000 	0xf0080000
1c008e04:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e08:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e0c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008e10:	f0f81010 	0xf0f81010
	...
1c008e20:	ff000000 	0xff000000
1c008e24:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad064 <_sidata+0xa3fd0>
1c008e28:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad068 <_sidata+0xa3fd4>
1c008e2c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad06c <_sidata+0xa3fd8>
1c008e30:	ffff4242 	0xffff4242
	...
1c008e3c:	08000000 	0x08000000
1c008e40:	c0e17030 	0xc0e17030
1c008e44:	fe000000 	0xfe000000
1c008e48:	000000fe 	0x000000fe
1c008e4c:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c008e50:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c014ed0 <_sidata+0xbe3c>
1c008e54:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008e58:	00000000 	0x00000000
1c008e5c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008e60:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008e64:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008e68:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008e6c:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c008e70:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c008e74:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c008e78:	e7000000 	0xe7000000
1c008e7c:	0000baa4 	0x0000baa4
1c008e80:	00000000 	0x00000000
1c008e84:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e88:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e8c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e90:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e94:	30382020 	0x30382020
1c008e98:	00000020 	0x00000020
1c008e9c:	00000000 	0x00000000
1c008ea0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008ea4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008ea8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008eac:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c008eb0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008eb4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008eb8:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c008ebc:	00000000 	0x00000000
1c008ec0:	80000000 	0x80000000
1c008ec4:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c008ec8:	00000406 	0x00000406
1c008ecc:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008ed0:	04020000 	csrrd	$r0,0x80
1c008ed4:	e0701808 	0xe0701808
1c008ed8:	000080c0 	0x000080c0
1c008edc:	00000000 	0x00000000
1c008ee0:	01030408 	fsub.d	$f8,$f0,$f1
1c008ee4:	08000000 	0x08000000
1c008ee8:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c008eec:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c008ef8:	00030701 	0x00030701
1c008efc:	aee50000 	0xaee50000
1c008f00:	0000009e 	0x0000009e
1c008f04:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c008f08:	00000000 	0x00000000
1c008f0c:	04000000 	csrrd	$r0,0x0
1c008f10:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c008f1c:	00000080 	0x00000080
1c008f20:	00000000 	0x00000000
1c008f24:	810f1c18 	0x810f1c18
1c008f28:	09010101 	0x09010101
1c008f2c:	01713919 	0x01713919
1c008f30:	fdff0101 	0xfdff0101
1c008f34:	01010105 	fadd.d	$f5,$f8,$f0
1c008f38:	07090101 	0x07090101
1c008f3c:	00020307 	0x00020307
1c008f40:	10000000 	addu16i.d	$r0,$r0,0
1c008f44:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008f48:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008f4c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008f50:	93bffcd0 	0x93bffcd0
1c008f54:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008f58:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008f5c:	00101818 	add.w	$r24,$r0,$r6
1c008f60:	40000000 	beqz	$r0,0 # 1c008f60 <tfont32+0x998>
1c008f64:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008f68:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008f6c:	070e0c18 	0x070e0c18
1c008f70:	01000003 	0x01000003
1c008f74:	06020301 	cacop	0x1,$r24,128(0x80)
1c008f78:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c008f7c:	00000030 	0x00000030
1c008f80:	8caae900 	0x8caae900
1c008f84:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008f88:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c008f8c:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c008f90:	00000000 	0x00000000
1c008f94:	f0800000 	0xf0800000
1c008f98:	80e8183c 	0x80e8183c
	...
1c008fa4:	80000000 	0x80000000
1c008fa8:	00001fff 	ctz.w	$r31,$r31
1c008fac:	003fff00 	0x003fff00
1c008fb0:	50204080 	b	33562688(0x2002040) # 1e00aff0 <_sidata+0x2001f5c>
1c008fb4:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d2f8 <_sidata+0x304264>
1c008fb8:	43404040 	beqz	$r2,213056(0x34040) # 1c03cff8 <_sidata+0x33f64>
1c008fbc:	70784c66 	0x70784c66
1c008fc0:	00202070 	div.w	$r16,$r3,$r8
1c008fc4:	c1c14000 	0xc1c14000
1c008fc8:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c008fcc:	ff810121 	0xff810121
1c008fd0:	1c00000f 	pcaddu12i	$r15,0
1c008fd4:	0c02c0f0 	0x0c02c0f0
1c008fd8:	0000e0f8 	0x0000e0f8
1c008fdc:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c008fe8:	18080800 	pcaddi	$r0,16448(0x4040)
1c008fec:	070f1838 	0x070f1838
1c008ff0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008ff4:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c008ff8:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c008ffc:	18101013 	pcaddi	$r19,32896(0x8080)
1c009000:	00001018 	clo.w	$r24,$r0
1c009004:	000a0d41 	0x000a0d41
1c009008:	e5a9b8e6 	0xe5a9b8e6
1c00900c:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009010:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009014:	84e22020 	0x84e22020
1c009018:	00000083 	0x00000083
1c00901c:	e5bfb9e6 	0xe5bfb9e6
1c009020:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009024:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009028:	48522520 	bcnez	$fcc1,21028(0x5224) # 1c00e24c <_sidata+0x51b8>
1c00902c:	00000000 	0x00000000
1c009030:	2e642554 	0x2e642554
1c009034:	0a436425 	0x0a436425
1c009038:	00000000 	0x00000000
1c00903c:	2e642548 	0x2e642548
1c009040:	0a526425 	xvfmsub.s	$xr5,$xr1,$xr25,$xr4
1c009044:	00000000 	0x00000000
1c009048:	2e642557 	0x2e642557
1c00904c:	0a676425 	xvfmsub.d	$xr5,$xr1,$xr25,$xr14
1c009050:	00000000 	0x00000000
1c009054:	50642554 	b	89154596(0x5506424) # 2150f478 <_sidata+0x55063e4>
1c009058:	57642548 	bl	86205476(0x5236424) # 2123f47c <_sidata+0x52363e8>
1c00905c:	00496425 	srai.d	$r5,$r1,0x19
1c009060:	50642554 	b	89154596(0x5506424) # 2150f484 <_sidata+0x55063f0>
1c009064:	49642548 	bcnez	$fcc2,2188324(0x216424) # 1c21f488 <_sidata+0x2163f4>
1c009068:	00000000 	0x00000000
1c00906c:	2e643225 	0x2e643225
1c009070:	00006425 	rdtimeh.w	$r5,$r1
1c009074:	e98d87e9 	0xe98d87e9
1c009078:	203a8f87 	ll.w	$r7,$r28,14988(0x3a8c)
1c00907c:	2e643325 	0x2e643325
1c009080:	67206425 	bge	$r1,$r5,-57244(0x32064) # 1bffb0e4 <_start-0x4f1c>
1c009084:	00002020 	clo.d	$r0,$r1
1c009088:	00000031 	0x00000031
1c00908c:	00000032 	0x00000032
1c009090:	00000033 	0x00000033

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007069 	pcaddu12i	$r9,899(0x383)
80001008:	80000020 	0x80000020
8000100c:	80000052 	0x80000052
80001010:	80001024 	0x80001024
80001014:	80000054 	0x80000054
80001018:	800001b4 	0x800001b4
8000101c:	1c007060 	pcaddu12i	$r0,899(0x383)
80001020:	80000088 	0x80000088

80001024 <g_SystemFreq>:
80001024:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <gpio_state0>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <count_motor>:
80000004:	00000000 	0x00000000

80000008 <count_timer_irq>:
80000008:	00000000 	0x00000000

8000000c <pwm_cmp0>:
8000000c:	00000000 	0x00000000

80000010 <pwm_cmp1>:
80000010:	00000000 	0x00000000

80000014 <receive_Data.1838>:
80000014:	00000000 	0x00000000

80000018 <motor_state>:
80000018:	00000000 	0x00000000

8000001c <temperature>:
	...

8000001e <humidity>:
	...

80000020 <str_oled>:
	...

80000052 <Read_length>:
	...

80000054 <str_uart>:
	...

80000088 <Read_Buffer>:
	...

800001b4 <Circular_queue>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
