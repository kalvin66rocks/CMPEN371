/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "K:/Lab04/kjb5568_rjl5336_library/numeric_display.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_0(char *t0)
{
    char t15[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t1 = (t9 == 20000);
    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 7392);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t4 = (t0 + 7632);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = t10;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t10 = *((int *)t5);
    t3 = (t10 > 7);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, t9, 3);
    t5 = (t0 + 7760);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t10 = (t9 + 1);
    t2 = (t0 + 7696);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t10;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 7632);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB10:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 7696);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned char t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned char t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    unsigned char t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    unsigned char t106;
    unsigned int t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;

LAB0:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 12132);
    t4 = 1;
    if (3U == 3U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t18 = (t0 + 12135);
    t21 = 1;
    if (3U == 3U)
        goto LAB13;

LAB14:    t21 = 0;

LAB15:    if (t21 != 0)
        goto LAB11;

LAB12:    t35 = (t0 + 1832U);
    t36 = *((char **)t35);
    t35 = (t0 + 12138);
    t38 = 1;
    if (3U == 3U)
        goto LAB21;

LAB22:    t38 = 0;

LAB23:    if (t38 != 0)
        goto LAB19;

LAB20:    t52 = (t0 + 1832U);
    t53 = *((char **)t52);
    t52 = (t0 + 12141);
    t55 = 1;
    if (3U == 3U)
        goto LAB29;

LAB30:    t55 = 0;

LAB31:    if (t55 != 0)
        goto LAB27;

LAB28:    t69 = (t0 + 1832U);
    t70 = *((char **)t69);
    t69 = (t0 + 12144);
    t72 = 1;
    if (3U == 3U)
        goto LAB37;

LAB38:    t72 = 0;

LAB39:    if (t72 != 0)
        goto LAB35;

LAB36:    t86 = (t0 + 1832U);
    t87 = *((char **)t86);
    t86 = (t0 + 12147);
    t89 = 1;
    if (3U == 3U)
        goto LAB45;

LAB46:    t89 = 0;

LAB47:    if (t89 != 0)
        goto LAB43;

LAB44:    t103 = (t0 + 1832U);
    t104 = *((char **)t103);
    t103 = (t0 + 12150);
    t106 = 1;
    if (3U == 3U)
        goto LAB53;

LAB54:    t106 = 0;

LAB55:    if (t106 != 0)
        goto LAB51;

LAB52:
LAB59:    t120 = (t0 + 1032U);
    t121 = *((char **)t120);
    t122 = (31 - 3);
    t123 = (t122 * 1U);
    t124 = (0 + t123);
    t120 = (t121 + t124);
    t125 = (t0 + 7824);
    t126 = (t125 + 56U);
    t127 = *((char **)t126);
    t128 = (t127 + 56U);
    t129 = *((char **)t128);
    memcpy(t129, t120, 4U);
    xsi_driver_first_trans_fast(t125);

LAB2:    t130 = (t0 + 7408);
    *((int *)t130) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t10 = (31 - 31);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t8 = (t9 + t12);
    t13 = (t0 + 7824);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 3U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    t25 = (t0 + 1032U);
    t26 = *((char **)t25);
    t27 = (31 - 27);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t25 = (t26 + t29);
    t30 = (t0 + 7824);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t25, 4U);
    xsi_driver_first_trans_fast(t30);
    goto LAB2;

LAB13:    t22 = 0;

LAB16:    if (t22 < 3U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t23 = (t19 + t22);
    t24 = (t18 + t22);
    if (*((unsigned char *)t23) != *((unsigned char *)t24))
        goto LAB14;

LAB18:    t22 = (t22 + 1);
    goto LAB16;

LAB19:    t42 = (t0 + 1032U);
    t43 = *((char **)t42);
    t44 = (31 - 23);
    t45 = (t44 * 1U);
    t46 = (0 + t45);
    t42 = (t43 + t46);
    t47 = (t0 + 7824);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memcpy(t51, t42, 4U);
    xsi_driver_first_trans_fast(t47);
    goto LAB2;

LAB21:    t39 = 0;

LAB24:    if (t39 < 3U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t40 = (t36 + t39);
    t41 = (t35 + t39);
    if (*((unsigned char *)t40) != *((unsigned char *)t41))
        goto LAB22;

LAB26:    t39 = (t39 + 1);
    goto LAB24;

LAB27:    t59 = (t0 + 1032U);
    t60 = *((char **)t59);
    t61 = (31 - 19);
    t62 = (t61 * 1U);
    t63 = (0 + t62);
    t59 = (t60 + t63);
    t64 = (t0 + 7824);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    memcpy(t68, t59, 4U);
    xsi_driver_first_trans_fast(t64);
    goto LAB2;

LAB29:    t56 = 0;

LAB32:    if (t56 < 3U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t57 = (t53 + t56);
    t58 = (t52 + t56);
    if (*((unsigned char *)t57) != *((unsigned char *)t58))
        goto LAB30;

LAB34:    t56 = (t56 + 1);
    goto LAB32;

LAB35:    t76 = (t0 + 1032U);
    t77 = *((char **)t76);
    t78 = (31 - 15);
    t79 = (t78 * 1U);
    t80 = (0 + t79);
    t76 = (t77 + t80);
    t81 = (t0 + 7824);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    memcpy(t85, t76, 4U);
    xsi_driver_first_trans_fast(t81);
    goto LAB2;

LAB37:    t73 = 0;

LAB40:    if (t73 < 3U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t74 = (t70 + t73);
    t75 = (t69 + t73);
    if (*((unsigned char *)t74) != *((unsigned char *)t75))
        goto LAB38;

LAB42:    t73 = (t73 + 1);
    goto LAB40;

LAB43:    t93 = (t0 + 1032U);
    t94 = *((char **)t93);
    t95 = (31 - 11);
    t96 = (t95 * 1U);
    t97 = (0 + t96);
    t93 = (t94 + t97);
    t98 = (t0 + 7824);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    memcpy(t102, t93, 4U);
    xsi_driver_first_trans_fast(t98);
    goto LAB2;

LAB45:    t90 = 0;

LAB48:    if (t90 < 3U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t91 = (t87 + t90);
    t92 = (t86 + t90);
    if (*((unsigned char *)t91) != *((unsigned char *)t92))
        goto LAB46;

LAB50:    t90 = (t90 + 1);
    goto LAB48;

LAB51:    t110 = (t0 + 1032U);
    t111 = *((char **)t110);
    t112 = (31 - 7);
    t113 = (t112 * 1U);
    t114 = (0 + t113);
    t110 = (t111 + t114);
    t115 = (t0 + 7824);
    t116 = (t115 + 56U);
    t117 = *((char **)t116);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    memcpy(t119, t110, 4U);
    xsi_driver_first_trans_fast(t115);
    goto LAB2;

LAB53:    t107 = 0;

LAB56:    if (t107 < 3U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t108 = (t104 + t107);
    t109 = (t103 + t107);
    if (*((unsigned char *)t108) != *((unsigned char *)t109))
        goto LAB54;

LAB58:    t107 = (t107 + 1);
    goto LAB56;

LAB60:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned char t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned char t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned char t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    unsigned char t82;
    unsigned int t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;

LAB0:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 12153);
    t4 = 1;
    if (3U == 3U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 1832U);
    t15 = *((char **)t14);
    t14 = (t0 + 12156);
    t17 = 1;
    if (3U == 3U)
        goto LAB13;

LAB14:    t17 = 0;

LAB15:    if (t17 != 0)
        goto LAB11;

LAB12:    t27 = (t0 + 1832U);
    t28 = *((char **)t27);
    t27 = (t0 + 12159);
    t30 = 1;
    if (3U == 3U)
        goto LAB21;

LAB22:    t30 = 0;

LAB23:    if (t30 != 0)
        goto LAB19;

LAB20:    t40 = (t0 + 1832U);
    t41 = *((char **)t40);
    t40 = (t0 + 12162);
    t43 = 1;
    if (3U == 3U)
        goto LAB29;

LAB30:    t43 = 0;

LAB31:    if (t43 != 0)
        goto LAB27;

LAB28:    t53 = (t0 + 1832U);
    t54 = *((char **)t53);
    t53 = (t0 + 12165);
    t56 = 1;
    if (3U == 3U)
        goto LAB37;

LAB38:    t56 = 0;

LAB39:    if (t56 != 0)
        goto LAB35;

LAB36:    t66 = (t0 + 1832U);
    t67 = *((char **)t66);
    t66 = (t0 + 12168);
    t69 = 1;
    if (3U == 3U)
        goto LAB45;

LAB46:    t69 = 0;

LAB47:    if (t69 != 0)
        goto LAB43;

LAB44:    t79 = (t0 + 1832U);
    t80 = *((char **)t79);
    t79 = (t0 + 12171);
    t82 = 1;
    if (3U == 3U)
        goto LAB53;

LAB54:    t82 = 0;

LAB55:    if (t82 != 0)
        goto LAB51;

LAB52:
LAB59:    t92 = (t0 + 3608U);
    t93 = *((char **)t92);
    t92 = (t0 + 7888);
    t94 = (t92 + 56U);
    t95 = *((char **)t94);
    t96 = (t95 + 56U);
    t97 = *((char **)t96);
    memcpy(t97, t93, 8U);
    xsi_driver_first_trans_fast(t92);

LAB2:    t98 = (t0 + 7424);
    *((int *)t98) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 2768U);
    t9 = *((char **)t8);
    t8 = (t0 + 7888);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 3U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    t21 = (t0 + 2888U);
    t22 = *((char **)t21);
    t21 = (t0 + 7888);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_fast(t21);
    goto LAB2;

LAB13:    t18 = 0;

LAB16:    if (t18 < 3U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t19 = (t15 + t18);
    t20 = (t14 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB14;

LAB18:    t18 = (t18 + 1);
    goto LAB16;

LAB19:    t34 = (t0 + 3008U);
    t35 = *((char **)t34);
    t34 = (t0 + 7888);
    t36 = (t34 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t35, 8U);
    xsi_driver_first_trans_fast(t34);
    goto LAB2;

LAB21:    t31 = 0;

LAB24:    if (t31 < 3U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t32 = (t28 + t31);
    t33 = (t27 + t31);
    if (*((unsigned char *)t32) != *((unsigned char *)t33))
        goto LAB22;

LAB26:    t31 = (t31 + 1);
    goto LAB24;

LAB27:    t47 = (t0 + 3128U);
    t48 = *((char **)t47);
    t47 = (t0 + 7888);
    t49 = (t47 + 56U);
    t50 = *((char **)t49);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memcpy(t52, t48, 8U);
    xsi_driver_first_trans_fast(t47);
    goto LAB2;

LAB29:    t44 = 0;

LAB32:    if (t44 < 3U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t45 = (t41 + t44);
    t46 = (t40 + t44);
    if (*((unsigned char *)t45) != *((unsigned char *)t46))
        goto LAB30;

LAB34:    t44 = (t44 + 1);
    goto LAB32;

LAB35:    t60 = (t0 + 3248U);
    t61 = *((char **)t60);
    t60 = (t0 + 7888);
    t62 = (t60 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    memcpy(t65, t61, 8U);
    xsi_driver_first_trans_fast(t60);
    goto LAB2;

LAB37:    t57 = 0;

LAB40:    if (t57 < 3U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t58 = (t54 + t57);
    t59 = (t53 + t57);
    if (*((unsigned char *)t58) != *((unsigned char *)t59))
        goto LAB38;

LAB42:    t57 = (t57 + 1);
    goto LAB40;

LAB43:    t73 = (t0 + 3368U);
    t74 = *((char **)t73);
    t73 = (t0 + 7888);
    t75 = (t73 + 56U);
    t76 = *((char **)t75);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    memcpy(t78, t74, 8U);
    xsi_driver_first_trans_fast(t73);
    goto LAB2;

LAB45:    t70 = 0;

LAB48:    if (t70 < 3U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t71 = (t67 + t70);
    t72 = (t66 + t70);
    if (*((unsigned char *)t71) != *((unsigned char *)t72))
        goto LAB46;

LAB50:    t70 = (t70 + 1);
    goto LAB48;

LAB51:    t86 = (t0 + 3488U);
    t87 = *((char **)t86);
    t86 = (t0 + 7888);
    t88 = (t86 + 56U);
    t89 = *((char **)t88);
    t90 = (t89 + 56U);
    t91 = *((char **)t90);
    memcpy(t91, t87, 8U);
    xsi_driver_first_trans_fast(t86);
    goto LAB2;

LAB53:    t83 = 0;

LAB56:    if (t83 < 3U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t84 = (t80 + t83);
    t85 = (t79 + t83);
    if (*((unsigned char *)t84) != *((unsigned char *)t85))
        goto LAB54;

LAB58:    t83 = (t83 + 1);
    goto LAB56;

LAB60:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (7 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 7952);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 0U, 1, 0LL);

LAB2:    t22 = (t0 + 7440);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (6 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (6 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8016);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 1U, 1, 0LL);

LAB2:    t22 = (t0 + 7456);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (5 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (5 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8080);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 2U, 1, 0LL);

LAB2:    t22 = (t0 + 7472);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (4 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (4 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8144);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 3U, 1, 0LL);

LAB2:    t22 = (t0 + 7488);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (3 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (3 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8208);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 4U, 1, 0LL);

LAB2:    t22 = (t0 + 7504);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (2 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (2 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8272);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 5U, 1, 0LL);

LAB2:    t22 = (t0 + 7520);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(98, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (1 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (1 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8336);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 6U, 1, 0LL);

LAB2:    t22 = (t0 + 7536);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void kjb5568_rjl5336_library_a_3834739409_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (0 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t14);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 8400);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 7U, 1, 0LL);

LAB2:    t22 = (t0 + 7552);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void kjb5568_rjl5336_library_a_3834739409_3212880686_init()
{
	static char *pe[] = {(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_0,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_1,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_2,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_3,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_4,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_5,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_6,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_7,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_8,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_9,(void *)kjb5568_rjl5336_library_a_3834739409_3212880686_p_10};
	xsi_register_didat("kjb5568_rjl5336_library_a_3834739409_3212880686", "isim/WordTo8dig7seg_isim_beh.exe.sim/kjb5568_rjl5336_library/a_3834739409_3212880686.didat");
	xsi_register_executes(pe);
}
