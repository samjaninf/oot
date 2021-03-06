glabel func_80A40494
/* 01F24 80A40494 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01F28 80A40498 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01F2C 80A4049C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01F30 80A404A0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01F34 80A404A4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 01F38 80A404A8 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 01F3C 80A404AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F40 80A404B0 31CF00F0 */  andi    $t7, $t6, 0x00F0           ## $t7 = 00000000
/* 01F44 80A404B4 15E10004 */  bne     $t7, $at, .L80A404C8       
/* 01F48 80A404B8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01F4C 80A404BC 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.50
/* 01F50 80A404C0 10000004 */  beq     $zero, $zero, .L80A404D4   
/* 01F54 80A404C4 00000000 */  nop
.L80A404C8:
/* 01F58 80A404C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01F5C 80A404CC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01F60 80A404D0 00000000 */  nop
.L80A404D4:
/* 01F64 80A404D4 3C0180A4 */  lui     $at, %hi(D_80A422B4)       ## $at = 80A40000
/* 01F68 80A404D8 C42222B4 */  lwc1    $f2, %lo(D_80A422B4)($at)  
/* 01F6C 80A404DC 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 01F70 80A404E0 44812000 */  mtc1    $at, $f4                   ## $f4 = -0.50
/* 01F74 80A404E4 44061000 */  mfc1    $a2, $f2                   
/* 01F78 80A404E8 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 00000168
/* 01F7C 80A404EC 46040182 */  mul.s   $f6, $f0, $f4              
/* 01F80 80A404F0 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 01F84 80A404F4 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01F88 80A404F8 44053000 */  mfc1    $a1, $f6                   
/* 01F8C 80A404FC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01F90 80A40500 00000000 */  nop
/* 01F94 80A40504 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 01F98 80A40508 C6080168 */  lwc1    $f8, 0x0168($s0)           ## 00000168
/* 01F9C 80A4050C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01FA0 80A40510 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01FA4 80A40514 46080000 */  add.s   $f0, $f0, $f8              
/* 01FA8 80A40518 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 01FAC 80A4051C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01FB0 80A40520 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 01FB4 80A40524 4600503E */  c.le.s  $f10, $f0                  
/* 01FB8 80A40528 2404387B */  addiu   $a0, $zero, 0x387B         ## $a0 = 0000387B
/* 01FBC 80A4052C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 01FC0 80A40530 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01FC4 80A40534 45030021 */  bc1tl   .L80A405BC                 
/* 01FC8 80A40538 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01FCC 80A4053C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01FD0 80A40540 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01FD4 80A40544 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01FD8 80A40548 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 01FDC 80A4054C 44818000 */  mtc1    $at, $f16                  ## $f16 = 26.00
/* 01FE0 80A40550 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01FE4 80A40554 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 01FE8 80A40558 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 01FEC 80A4055C 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01FF0 80A40560 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 01FF4 80A40564 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01FF8 80A40568 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 01FFC 80A4056C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 02000 80A40570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02004 80A40574 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 02008 80A40578 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 0200C 80A4057C 0C28FD65 */  jal     func_80A3F594              
/* 02010 80A40580 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 02014 80A40584 0C28FC98 */  jal     func_80A3F260              
/* 02018 80A40588 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0201C 80A4058C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02020 80A40590 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 02024 80A40594 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 02028 80A40598 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 0202C 80A4059C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 02030 80A405A0 E6000164 */  swc1    $f0, 0x0164($s0)           ## 00000164
/* 02034 80A405A4 3C0580A4 */  lui     $a1, %hi(func_80A40218)    ## $a1 = 80A40000
/* 02038 80A405A8 A6020210 */  sh      $v0, 0x0210($s0)           ## 00000210
/* 0203C 80A405AC 24A50218 */  addiu   $a1, $a1, %lo(func_80A40218) ## $a1 = 80A40218
/* 02040 80A405B0 0C28F95C */  jal     func_80A3E570              
/* 02044 80A405B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02048 80A405B8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A405BC:
/* 0204C 80A405BC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02050 80A405C0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02054 80A405C4 03E00008 */  jr      $ra                        
/* 02058 80A405C8 00000000 */  nop
