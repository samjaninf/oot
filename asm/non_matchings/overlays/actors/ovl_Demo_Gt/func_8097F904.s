glabel func_8097F904
/* 02294 8097F904 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02298 8097F908 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0229C 8097F90C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 022A0 8097F910 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 022A4 8097F914 C4840050 */  lwc1    $f4, 0x0050($a0)           ## 00000050
/* 022A8 8097F918 C4880054 */  lwc1    $f8, 0x0054($a0)           ## 00000054
/* 022AC 8097F91C C4900058 */  lwc1    $f16, 0x0058($a0)          ## 00000058
/* 022B0 8097F920 46002182 */  mul.s   $f6, $f4, $f0              
/* 022B4 8097F924 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 022B8 8097F928 25CE5CB8 */  addiu   $t6, $t6, 0x5CB8           ## $t6 = 06005CB8
/* 022BC 8097F92C 46004282 */  mul.s   $f10, $f8, $f0             
/* 022C0 8097F930 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 022C4 8097F934 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 022C8 8097F938 46008482 */  mul.s   $f18, $f16, $f0            
/* 022CC 8097F93C E4860050 */  swc1    $f6, 0x0050($a0)           ## 00000050
/* 022D0 8097F940 E48A0054 */  swc1    $f10, 0x0054($a0)          ## 00000054
/* 022D4 8097F944 E4920058 */  swc1    $f18, 0x0058($a0)          ## 00000058
/* 022D8 8097F948 0C25FB91 */  jal     func_8097EE44              
/* 022DC 8097F94C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 022E0 8097F950 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022E4 8097F954 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 022E8 8097F958 03E00008 */  jr      $ra                        
/* 022EC 8097F95C 00000000 */  nop
