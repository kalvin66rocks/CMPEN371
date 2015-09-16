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
static const char *ng0 = "C:/Users/Kevin/Desktop/new lab2 with testbenches/Mux4to1_tb.vhd";



static void work_a_3873404787_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned int t24;

LAB0:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2920);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 6490);
    *((int *)t2) = 0;
    t4 = (t0 + 6494);
    *((int *)t4) = 3;
    t5 = 0;
    t6 = 3;

LAB8:    if (t5 <= t6)
        goto LAB9;

LAB11:    xsi_set_current_line(96, ng0);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(81, ng0);
    t7 = (t0 + 2128U);
    t8 = *((char **)t7);
    t9 = (21 - 21);
    t10 = (t9 * 1U);
    t7 = (t0 + 6490);
    t11 = *((int *)t7);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (22U * t13);
    t15 = (0 + t14);
    t16 = (t15 + t10);
    t17 = (t8 + t16);
    t18 = (t0 + 3496);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t17, 4U);
    xsi_driver_first_trans_fast(t18);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t9 = (21 - 17);
    t10 = (t9 * 1U);
    t2 = (t0 + 6490);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (22U * t13);
    t15 = (0 + t14);
    t16 = (t15 + t10);
    t7 = (t4 + t16);
    t8 = (t0 + 3560);
    t17 = (t8 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t9 = (21 - 13);
    t10 = (t9 * 1U);
    t2 = (t0 + 6490);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (22U * t13);
    t15 = (0 + t14);
    t16 = (t15 + t10);
    t7 = (t4 + t16);
    t8 = (t0 + 3624);
    t17 = (t8 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t9 = (21 - 9);
    t10 = (t9 * 1U);
    t2 = (t0 + 6490);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (22U * t13);
    t15 = (0 + t14);
    t16 = (t15 + t10);
    t7 = (t4 + t16);
    t8 = (t0 + 3688);
    t17 = (t8 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t9 = (21 - 5);
    t10 = (t9 * 1U);
    t2 = (t0 + 6490);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (22U * t13);
    t15 = (0 + t14);
    t16 = (t15 + t10);
    t7 = (t4 + t16);
    t8 = (t0 + 3752);
    t17 = (t8 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(87, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 2920);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 6490);
    t5 = *((int *)t2);
    t4 = (t0 + 6494);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB11;

LAB24:    t11 = (t5 + 1);
    t5 = t11;
    t7 = (t0 + 6490);
    *((int *)t7) = t5;
    goto LAB8;

LAB12:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 2128U);
    t7 = *((char **)t2);
    t9 = (21 - 3);
    t10 = (t9 * 1U);
    t2 = (t0 + 6490);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (22U * t13);
    t15 = (0 + t14);
    t16 = (t15 + t10);
    t8 = (t7 + t16);
    t23 = 1;
    if (4U == 4U)
        goto LAB18;

LAB19:    t23 = 0;

LAB20:    if (t23 == 0)
        goto LAB16;

LAB17:    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t19 = (t0 + 6498);
    xsi_report(t19, 24U, (unsigned char)3);
    goto LAB17;

LAB18:    t24 = 0;

LAB21:    if (t24 < 4U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t17 = (t4 + t24);
    t18 = (t8 + t24);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB19;

LAB23:    t24 = (t24 + 1);
    goto LAB21;

LAB25:    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_3873404787_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3873404787_2372691052_p_0};
	xsi_register_didat("work_a_3873404787_2372691052", "isim/Mux4to1_tb_isim_beh.exe.sim/work/a_3873404787_2372691052.didat");
	xsi_register_executes(pe);
}
