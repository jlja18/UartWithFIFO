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
static const char *ng0 = "C:/Users/Christian/Desktop/UartWithFIFO-master/FIFOBuffer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0037550508_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 5904);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0037550508_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6112);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 5920);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0037550508_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5936);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(130, ng0);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 6176);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6240);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_0037550508_3212880686_p_3(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5952);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(141, ng0);
    t4 = (t0 + 6304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(142, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 10060U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t2, t1, 1);
    t5 = (t0 + 2312U);
    t6 = *((char **)t5);
    t5 = (t0 + 10060U);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t11, t6, t5);
    if (t9 == 1)
        goto LAB16;

LAB17:    t3 = (unsigned char)0;

LAB18:    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 6432);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB2;

LAB4:    xsi_set_current_line(155, ng0);
    t1 = (t0 + 6304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 10060U);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t4 = (t0 + 10060U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    t9 = (!(t3));
    if (t9 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 6432);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB2;

LAB5:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 10060U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t5, t2, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t14 = (6U != t13);
    if (t14 == 1)
        goto LAB11;

LAB12:    t8 = (t0 + 6368);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 6U);
    xsi_driver_first_trans_fast(t8);
    goto LAB9;

LAB11:    xsi_size_not_matching(6U, t13, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(149, ng0);
    t7 = (t0 + 6432);
    t15 = (t7 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)1;
    xsi_driver_first_trans_fast(t7);
    goto LAB14;

LAB16:    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t10 = *((unsigned char *)t8);
    t14 = (t10 == (unsigned char)3);
    t3 = t14;
    goto LAB18;

LAB19:    xsi_set_current_line(157, ng0);
    t6 = (t0 + 6432);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)0;
    xsi_driver_first_trans_fast(t6);
    goto LAB20;

}

static void work_a_0037550508_3212880686_p_4(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(169, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5968);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(171, ng0);
    t4 = (t0 + 6496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(172, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 10060U);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t4 = (t0 + 10060U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    t9 = (!(t3));
    if (t9 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    xsi_set_current_line(177, ng0);
    t1 = (t0 + 6496);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(178, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 10060U);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t4 = (t0 + 10060U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t5, t4, 1);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t13);
    if (t9 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB2;

LAB5:    xsi_set_current_line(173, ng0);
    t6 = (t0 + 6560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t6);
    goto LAB6;

LAB8:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t12 = (t9 == (unsigned char)3);
    if (t12 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(180, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 10060U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t5, t2, 1);
    t7 = (t13 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t16 = (6U != t15);
    if (t16 == 1)
        goto LAB14;

LAB15:    t8 = (t0 + 6624);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 6U);
    xsi_driver_first_trans_fast(t8);
    goto LAB12;

LAB14:    xsi_size_not_matching(6U, t15, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(184, ng0);
    t7 = (t0 + 6560);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)0;
    xsi_driver_first_trans_fast(t7);
    goto LAB17;

LAB19:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t12 = *((unsigned char *)t8);
    t16 = (t12 == (unsigned char)3);
    t3 = t16;
    goto LAB21;

}


extern void work_a_0037550508_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0037550508_3212880686_p_0,(void *)work_a_0037550508_3212880686_p_1,(void *)work_a_0037550508_3212880686_p_2,(void *)work_a_0037550508_3212880686_p_3,(void *)work_a_0037550508_3212880686_p_4};
	xsi_register_didat("work_a_0037550508_3212880686", "isim/UARTecho_isim_beh.exe.sim/work/a_0037550508_3212880686.didat");
	xsi_register_executes(pe);
}
