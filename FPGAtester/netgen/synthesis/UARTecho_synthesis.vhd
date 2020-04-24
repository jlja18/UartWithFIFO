--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UARTecho_synthesis.vhd
-- /___/   /\     Timestamp: Fri Apr 24 19:26:32 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm UARTecho -w -dir netgen/synthesis -ofmt vhdl -sim UARTecho.ngc UARTecho_synthesis.vhd 
-- Device	: xc6slx9-2-tqg144
-- Input file	: UARTecho.ngc
-- Output file	: E:\GitHub\UartWithFIFO\FPGAtester\netgen\synthesis\UARTecho_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: UARTecho
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity UARTecho is
  port (
    clk : in STD_LOGIC := 'X'; 
    urx : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    utx : out STD_LOGIC 
  );
end UARTecho;

architecture Structure of UARTecho is
  component Blockram
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      rstb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal urx_IBUF_1 : STD_LOGIC; 
  signal reset_IBUF_2 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_re_state_reg_11 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_12 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clkcntr_4_BUFG_24 : STD_LOGIC; 
  signal UARTWithFIFO1_txlink_statereg_FSM_FFd2_In : STD_LOGIC; 
  signal UARTWithFIFO1_tx_ena : STD_LOGIC; 
  signal UARTWithFIFO1_rxlink_statenext_27 : STD_LOGIC; 
  signal UARTWithFIFO1_txlink_statereg_FSM_FFd2_28 : STD_LOGIC; 
  signal UARTWithFIFO1_txlink_statereg_FSM_FFd1_29 : STD_LOGIC; 
  signal UARTWithFIFO1_rxlink_statereg_30 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_busy_31 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_busy_32 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_wr_state_reg_41 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_re_state_reg_42 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o1_57 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Result_5_1_64 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Result_4_1_65 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Result_3_1_66 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Result_2_1_67 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Result_1_1_68 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Result_0_1 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_re_state_next : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_wr_state_next : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_n0062 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_wr_state_reg_81 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o1_88 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Result_5_1_95 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Result_4_1_96 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Result_3_1_97 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Result_2_1_98 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Result_1_1_99 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Result_0_1 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_re_state_next : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_wr_state_next : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_n0062 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT13 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT41 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT21_116 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_rx_count3 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_rx_count2 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_rx_count1 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_rx_count : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0168_inv : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud6 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud5 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud4 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud3 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud2 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud1 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_Mcount_count_baud : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0155_inv : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0218_inv : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0170_inv : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0210_inv : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_GND_11_o_INV_25_o : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_0_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_1_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_2_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_3_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_0_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_1_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_2_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_3_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_0_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_1_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_2_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_3_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_4_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_5_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_6_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_7_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_8_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_9_Q : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_count_3_tx_ena_MUX_86_o : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_baud_pulse_186 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_state_187 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_os_pulse_188 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Mmux_wr_state_next1 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Mmux_wr_state_next12 : STD_LOGIC; 
  signal UARTWithFIFO1_RXbuffer_Mmux_re_state_next11 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Mmux_wr_state_next1 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Mmux_wr_state_next12 : STD_LOGIC; 
  signal UARTWithFIFO1_TXbuffer_Mmux_re_state_next11 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_tx_busy_rstpot_215 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_busy_rstpot_216 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0179_inv1_rstpot_219 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_n0179_inv1_cepot_220 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_0_dpot_221 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_1_dpot_222 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_2_dpot_223 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_3_dpot_224 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_4_dpot_225 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_5_dpot_226 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_6_dpot_227 : STD_LOGIC; 
  signal UARTWithFIFO1_uart1_rx_data_7_dpot_228 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal clkcntr : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal UARTWithFIFO1_uart1_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal UARTWithFIFO1_tx_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal UARTWithFIFO1_RXbuffer_wrPTR : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal UARTWithFIFO1_RXbuffer_rePTR : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal UARTWithFIFO1_RXbuffer_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal UARTWithFIFO1_TXbuffer_wrPTR : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal UARTWithFIFO1_TXbuffer_rePTR : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal UARTWithFIFO1_TXbuffer_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal UARTWithFIFO1_uart1_tx_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal UARTWithFIFO1_uart1_os_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal UARTWithFIFO1_uart1_tx_buffer : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal UARTWithFIFO1_uart1_rx_buffer : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal UARTWithFIFO1_uart1_rx_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal UARTWithFIFO1_uart1_count_os : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal UARTWithFIFO1_uart1_count_baud : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  clkcntr_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result(0),
      Q => clkcntr(0)
    );
  clkcntr_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result(1),
      Q => clkcntr(1)
    );
  clkcntr_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result(2),
      Q => clkcntr(2)
    );
  clkcntr_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result(3),
      Q => clkcntr(3)
    );
  clkcntr_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      D => Result(4),
      Q => clkcntr(4)
    );
  UARTWithFIFO1_txlink_statereg_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_txlink_statereg_FSM_FFd2_28,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29
    );
  UARTWithFIFO1_txlink_statereg_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_txlink_statereg_FSM_FFd2_In,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_txlink_statereg_FSM_FFd2_28
    );
  UARTWithFIFO1_rxlink_statereg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_rxlink_statenext_27,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_rxlink_statereg_30
    );
  UARTWithFIFO1_rxlink_statenext : FDC_1
    generic map(
      INIT => '0'
    )
    port map (
      C => UARTWithFIFO1_uart1_rx_busy_32,
      CLR => UARTWithFIFO1_rxlink_statereg_30,
      D => N0,
      Q => UARTWithFIFO1_rxlink_statenext_27
    );
  UARTWithFIFO1_RXbuffer_wrPTR_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      D => UARTWithFIFO1_RXbuffer_Result_5_1_64,
      R => UARTWithFIFO1_RXbuffer_n0062,
      Q => UARTWithFIFO1_RXbuffer_wrPTR(5)
    );
  UARTWithFIFO1_RXbuffer_wrPTR_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      D => UARTWithFIFO1_RXbuffer_Result_4_1_65,
      R => UARTWithFIFO1_RXbuffer_n0062,
      Q => UARTWithFIFO1_RXbuffer_wrPTR(4)
    );
  UARTWithFIFO1_RXbuffer_wrPTR_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      D => UARTWithFIFO1_RXbuffer_Result_3_1_66,
      R => UARTWithFIFO1_RXbuffer_n0062,
      Q => UARTWithFIFO1_RXbuffer_wrPTR(3)
    );
  UARTWithFIFO1_RXbuffer_wrPTR_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      D => UARTWithFIFO1_RXbuffer_Result_2_1_67,
      R => UARTWithFIFO1_RXbuffer_n0062,
      Q => UARTWithFIFO1_RXbuffer_wrPTR(2)
    );
  UARTWithFIFO1_RXbuffer_wrPTR_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      D => UARTWithFIFO1_RXbuffer_Result_1_1_68,
      R => UARTWithFIFO1_RXbuffer_n0062,
      Q => UARTWithFIFO1_RXbuffer_wrPTR(1)
    );
  UARTWithFIFO1_RXbuffer_wrPTR_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      D => UARTWithFIFO1_RXbuffer_Result_0_1,
      R => UARTWithFIFO1_RXbuffer_n0062,
      Q => UARTWithFIFO1_RXbuffer_wrPTR(0)
    );
  UARTWithFIFO1_RXbuffer_rePTR_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      D => UARTWithFIFO1_RXbuffer_Result(5),
      R => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_RXbuffer_rePTR(5)
    );
  UARTWithFIFO1_RXbuffer_rePTR_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      D => UARTWithFIFO1_RXbuffer_Result(4),
      R => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_RXbuffer_rePTR(4)
    );
  UARTWithFIFO1_RXbuffer_rePTR_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      D => UARTWithFIFO1_RXbuffer_Result(3),
      R => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_RXbuffer_rePTR(3)
    );
  UARTWithFIFO1_RXbuffer_rePTR_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      D => UARTWithFIFO1_RXbuffer_Result(2),
      R => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_RXbuffer_rePTR(2)
    );
  UARTWithFIFO1_RXbuffer_rePTR_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      D => UARTWithFIFO1_RXbuffer_Result(1),
      R => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_RXbuffer_rePTR(1)
    );
  UARTWithFIFO1_RXbuffer_rePTR_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      D => UARTWithFIFO1_RXbuffer_Result(0),
      R => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_RXbuffer_rePTR(0)
    );
  UARTWithFIFO1_RXbuffer_re_state_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_RXbuffer_re_state_next,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_RXbuffer_re_state_reg_11
    );
  UARTWithFIFO1_RXbuffer_wr_state_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_RXbuffer_wr_state_next,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_RXbuffer_wr_state_reg_81
    );
  UARTWithFIFO1_TXbuffer_wrPTR_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      D => UARTWithFIFO1_TXbuffer_Result_5_1_95,
      R => UARTWithFIFO1_TXbuffer_n0062,
      Q => UARTWithFIFO1_TXbuffer_wrPTR(5)
    );
  UARTWithFIFO1_TXbuffer_wrPTR_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      D => UARTWithFIFO1_TXbuffer_Result_4_1_96,
      R => UARTWithFIFO1_TXbuffer_n0062,
      Q => UARTWithFIFO1_TXbuffer_wrPTR(4)
    );
  UARTWithFIFO1_TXbuffer_wrPTR_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      D => UARTWithFIFO1_TXbuffer_Result_3_1_97,
      R => UARTWithFIFO1_TXbuffer_n0062,
      Q => UARTWithFIFO1_TXbuffer_wrPTR(3)
    );
  UARTWithFIFO1_TXbuffer_wrPTR_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      D => UARTWithFIFO1_TXbuffer_Result_2_1_98,
      R => UARTWithFIFO1_TXbuffer_n0062,
      Q => UARTWithFIFO1_TXbuffer_wrPTR(2)
    );
  UARTWithFIFO1_TXbuffer_wrPTR_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      D => UARTWithFIFO1_TXbuffer_Result_1_1_99,
      R => UARTWithFIFO1_TXbuffer_n0062,
      Q => UARTWithFIFO1_TXbuffer_wrPTR(1)
    );
  UARTWithFIFO1_TXbuffer_wrPTR_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      D => UARTWithFIFO1_TXbuffer_Result_0_1,
      R => UARTWithFIFO1_TXbuffer_n0062,
      Q => UARTWithFIFO1_TXbuffer_wrPTR(0)
    );
  UARTWithFIFO1_TXbuffer_rePTR_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o,
      D => UARTWithFIFO1_TXbuffer_Result(5),
      R => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_TXbuffer_rePTR(5)
    );
  UARTWithFIFO1_TXbuffer_rePTR_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o,
      D => UARTWithFIFO1_TXbuffer_Result(4),
      R => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_TXbuffer_rePTR(4)
    );
  UARTWithFIFO1_TXbuffer_rePTR_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o,
      D => UARTWithFIFO1_TXbuffer_Result(3),
      R => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_TXbuffer_rePTR(3)
    );
  UARTWithFIFO1_TXbuffer_rePTR_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o,
      D => UARTWithFIFO1_TXbuffer_Result(2),
      R => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_TXbuffer_rePTR(2)
    );
  UARTWithFIFO1_TXbuffer_rePTR_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o,
      D => UARTWithFIFO1_TXbuffer_Result(1),
      R => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_TXbuffer_rePTR(1)
    );
  UARTWithFIFO1_TXbuffer_rePTR_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o,
      D => UARTWithFIFO1_TXbuffer_Result(0),
      R => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o,
      Q => UARTWithFIFO1_TXbuffer_rePTR(0)
    );
  UARTWithFIFO1_TXbuffer_re_state_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_TXbuffer_re_state_next,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_TXbuffer_re_state_reg_42
    );
  UARTWithFIFO1_TXbuffer_wr_state_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_TXbuffer_wr_state_next,
      R => reset_IBUF_2,
      Q => UARTWithFIFO1_TXbuffer_wr_state_reg_41
    );
  UARTWithFIFO1_uart1_count_baud_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud6,
      Q => UARTWithFIFO1_uart1_count_baud(6)
    );
  UARTWithFIFO1_uart1_count_baud_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud5,
      Q => UARTWithFIFO1_uart1_count_baud(5)
    );
  UARTWithFIFO1_uart1_count_baud_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud4,
      Q => UARTWithFIFO1_uart1_count_baud(4)
    );
  UARTWithFIFO1_uart1_count_baud_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud3,
      Q => UARTWithFIFO1_uart1_count_baud(3)
    );
  UARTWithFIFO1_uart1_count_baud_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud2,
      Q => UARTWithFIFO1_uart1_count_baud(2)
    );
  UARTWithFIFO1_uart1_count_baud_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud1,
      Q => UARTWithFIFO1_uart1_count_baud(1)
    );
  UARTWithFIFO1_uart1_count_baud_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_count_baud,
      Q => UARTWithFIFO1_uart1_count_baud(0)
    );
  UARTWithFIFO1_uart1_rx_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0168_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_rx_count3,
      Q => UARTWithFIFO1_uart1_rx_count(3)
    );
  UARTWithFIFO1_uart1_rx_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0168_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_rx_count2,
      Q => UARTWithFIFO1_uart1_rx_count(2)
    );
  UARTWithFIFO1_uart1_rx_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0168_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_rx_count1,
      Q => UARTWithFIFO1_uart1_rx_count(1)
    );
  UARTWithFIFO1_uart1_rx_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0168_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mcount_rx_count,
      Q => UARTWithFIFO1_uart1_rx_count(0)
    );
  UARTWithFIFO1_uart1_tx_state : FDC
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_tx_count_3_tx_ena_MUX_86_o,
      Q => UARTWithFIFO1_uart1_tx_state_187
    );
  UARTWithFIFO1_uart1_count_os_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT(2),
      Q => UARTWithFIFO1_uart1_count_os(2)
    );
  UARTWithFIFO1_uart1_count_os_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT(1),
      Q => UARTWithFIFO1_uart1_count_os(1)
    );
  UARTWithFIFO1_uart1_count_os_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT(0),
      Q => UARTWithFIFO1_uart1_count_os(0)
    );
  UARTWithFIFO1_uart1_os_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0155_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_3_Q,
      Q => UARTWithFIFO1_uart1_os_count(3)
    );
  UARTWithFIFO1_uart1_os_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0155_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_2_Q,
      Q => UARTWithFIFO1_uart1_os_count(2)
    );
  UARTWithFIFO1_uart1_os_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0155_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_1_Q,
      Q => UARTWithFIFO1_uart1_os_count(1)
    );
  UARTWithFIFO1_uart1_os_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0155_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_0_Q,
      Q => UARTWithFIFO1_uart1_os_count(0)
    );
  UARTWithFIFO1_uart1_tx : FDP
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_uart1_tx_buffer(0),
      PRE => reset_IBUF_2,
      Q => UARTWithFIFO1_uart1_tx_12
    );
  UARTWithFIFO1_uart1_tx_buffer_9 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_9_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(9)
    );
  UARTWithFIFO1_uart1_tx_buffer_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_8_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(8)
    );
  UARTWithFIFO1_uart1_tx_buffer_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_7_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(7)
    );
  UARTWithFIFO1_uart1_tx_buffer_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_6_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(6)
    );
  UARTWithFIFO1_uart1_tx_buffer_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_5_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(5)
    );
  UARTWithFIFO1_uart1_tx_buffer_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_4_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(4)
    );
  UARTWithFIFO1_uart1_tx_buffer_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_3_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(3)
    );
  UARTWithFIFO1_uart1_tx_buffer_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_2_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(2)
    );
  UARTWithFIFO1_uart1_tx_buffer_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_1_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(1)
    );
  UARTWithFIFO1_uart1_tx_buffer_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0218_inv,
      D => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_0_Q,
      Q => UARTWithFIFO1_uart1_tx_buffer(0)
    );
  UARTWithFIFO1_uart1_tx_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0170_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_3_Q,
      Q => UARTWithFIFO1_uart1_tx_count(3)
    );
  UARTWithFIFO1_uart1_tx_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0170_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_2_Q,
      Q => UARTWithFIFO1_uart1_tx_count(2)
    );
  UARTWithFIFO1_uart1_tx_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0170_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_1_Q,
      Q => UARTWithFIFO1_uart1_tx_count(1)
    );
  UARTWithFIFO1_uart1_tx_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0170_inv,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_0_Q,
      Q => UARTWithFIFO1_uart1_tx_count(0)
    );
  UARTWithFIFO1_uart1_rx_data_7 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_7_dpot_228,
      Q => UARTWithFIFO1_uart1_rx_data(7)
    );
  UARTWithFIFO1_uart1_rx_data_6 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_6_dpot_227,
      Q => UARTWithFIFO1_uart1_rx_data(6)
    );
  UARTWithFIFO1_uart1_rx_data_5 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_5_dpot_226,
      Q => UARTWithFIFO1_uart1_rx_data(5)
    );
  UARTWithFIFO1_uart1_rx_data_4 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_4_dpot_225,
      Q => UARTWithFIFO1_uart1_rx_data(4)
    );
  UARTWithFIFO1_uart1_rx_data_3 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_3_dpot_224,
      Q => UARTWithFIFO1_uart1_rx_data(3)
    );
  UARTWithFIFO1_uart1_rx_data_2 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_2_dpot_223,
      Q => UARTWithFIFO1_uart1_rx_data(2)
    );
  UARTWithFIFO1_uart1_rx_data_1 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_1_dpot_222,
      Q => UARTWithFIFO1_uart1_rx_data(1)
    );
  UARTWithFIFO1_uart1_rx_data_0 : FDCE
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0179_inv1_cepot_220,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_data_0_dpot_221,
      Q => UARTWithFIFO1_uart1_rx_data(0)
    );
  UARTWithFIFO1_uart1_rx_buffer_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => urx_IBUF_1,
      Q => UARTWithFIFO1_uart1_rx_buffer(8)
    );
  UARTWithFIFO1_uart1_rx_buffer_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(8),
      Q => UARTWithFIFO1_uart1_rx_buffer(7)
    );
  UARTWithFIFO1_uart1_rx_buffer_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(7),
      Q => UARTWithFIFO1_uart1_rx_buffer(6)
    );
  UARTWithFIFO1_uart1_rx_buffer_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(6),
      Q => UARTWithFIFO1_uart1_rx_buffer(5)
    );
  UARTWithFIFO1_uart1_rx_buffer_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(5),
      Q => UARTWithFIFO1_uart1_rx_buffer(4)
    );
  UARTWithFIFO1_uart1_rx_buffer_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(4),
      Q => UARTWithFIFO1_uart1_rx_buffer(3)
    );
  UARTWithFIFO1_uart1_rx_buffer_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(3),
      Q => UARTWithFIFO1_uart1_rx_buffer(2)
    );
  UARTWithFIFO1_uart1_rx_buffer_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CE => UARTWithFIFO1_uart1_n0210_inv,
      D => UARTWithFIFO1_uart1_rx_buffer(2),
      Q => UARTWithFIFO1_uart1_rx_buffer(1)
    );
  UARTWithFIFO1_uart1_baud_pulse : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT13,
      Q => UARTWithFIFO1_uart1_baud_pulse_186
    );
  UARTWithFIFO1_uart1_os_pulse : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_GND_11_o_INV_25_o,
      Q => UARTWithFIFO1_uart1_os_pulse_188
    );
  Mcount_clkcntr_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => clkcntr(1),
      I1 => clkcntr(0),
      O => Result(1)
    );
  Mcount_clkcntr_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => clkcntr(2),
      I1 => clkcntr(0),
      I2 => clkcntr(1),
      O => Result(2)
    );
  Result_4_1 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => clkcntr(3),
      I1 => clkcntr(4),
      I2 => clkcntr(0),
      I3 => clkcntr(1),
      I4 => clkcntr(2),
      O => Result(4)
    );
  Result_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => clkcntr(3),
      I1 => clkcntr(0),
      I2 => clkcntr(1),
      I3 => clkcntr(2),
      O => Result(3)
    );
  UARTWithFIFO1_tx_ena1 : LUT4
    generic map(
      INIT => X"0D0C"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_busy_31,
      I1 => UARTWithFIFO1_txlink_statereg_FSM_FFd2_28,
      I2 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      I3 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      O => UARTWithFIFO1_tx_ena
    );
  UARTWithFIFO1_txlink_statereg_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      I1 => UARTWithFIFO1_uart1_tx_busy_31,
      I2 => UARTWithFIFO1_txlink_statereg_FSM_FFd2_28,
      I3 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      O => UARTWithFIFO1_txlink_statereg_FSM_FFd2_In
    );
  UARTWithFIFO1_RXbuffer_Result_5_11 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(5),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(4),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(3),
      I3 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      I4 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      I5 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      O => UARTWithFIFO1_RXbuffer_Result_5_1_64
    );
  UARTWithFIFO1_RXbuffer_Result_4_11 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(4),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(3),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      I4 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      O => UARTWithFIFO1_RXbuffer_Result_4_1_65
    );
  UARTWithFIFO1_RXbuffer_Result_5_1 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(5),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(4),
      I2 => UARTWithFIFO1_RXbuffer_rePTR(3),
      I3 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I4 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I5 => UARTWithFIFO1_RXbuffer_rePTR(0),
      O => UARTWithFIFO1_RXbuffer_Result(5)
    );
  UARTWithFIFO1_RXbuffer_Result_4_1 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(4),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(3),
      I2 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I3 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I4 => UARTWithFIFO1_RXbuffer_rePTR(0),
      O => UARTWithFIFO1_RXbuffer_Result(4)
    );
  UARTWithFIFO1_RXbuffer_Result_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(3),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      O => UARTWithFIFO1_RXbuffer_Result_3_1_66
    );
  UARTWithFIFO1_RXbuffer_Result_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      O => UARTWithFIFO1_RXbuffer_Result_2_1_67
    );
  UARTWithFIFO1_RXbuffer_Result_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(3),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I2 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I3 => UARTWithFIFO1_RXbuffer_rePTR(0),
      O => UARTWithFIFO1_RXbuffer_Result(3)
    );
  UARTWithFIFO1_RXbuffer_Result_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(0),
      I2 => UARTWithFIFO1_RXbuffer_rePTR(1),
      O => UARTWithFIFO1_RXbuffer_Result(2)
    );
  UARTWithFIFO1_RXbuffer_Result_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      O => UARTWithFIFO1_RXbuffer_Result_1_1_68
    );
  UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(0),
      O => UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o1_57
    );
  UARTWithFIFO1_RXbuffer_Result_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(0),
      O => UARTWithFIFO1_RXbuffer_Result(1)
    );
  UARTWithFIFO1_RXbuffer_n0066_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wr_state_reg_81,
      I1 => UARTWithFIFO1_rxlink_statereg_30,
      O => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201
    );
  UARTWithFIFO1_RXbuffer_n00621 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wr_state_reg_81,
      I1 => reset_IBUF_2,
      O => UARTWithFIFO1_RXbuffer_n0062
    );
  UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      I1 => reset_IBUF_2,
      O => UARTWithFIFO1_RXbuffer_re_state_reg_reset_AND_6_o
    );
  UARTWithFIFO1_TXbuffer_Result_5_11 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(5),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(4),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(3),
      I3 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      I4 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I5 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      O => UARTWithFIFO1_TXbuffer_Result_5_1_95
    );
  UARTWithFIFO1_TXbuffer_Result_4_11 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(4),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(3),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I4 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      O => UARTWithFIFO1_TXbuffer_Result_4_1_96
    );
  UARTWithFIFO1_TXbuffer_Result_5_1 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(5),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(4),
      I2 => UARTWithFIFO1_TXbuffer_rePTR(3),
      I3 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I4 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I5 => UARTWithFIFO1_TXbuffer_rePTR(0),
      O => UARTWithFIFO1_TXbuffer_Result(5)
    );
  UARTWithFIFO1_TXbuffer_Result_4_1 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(4),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(3),
      I2 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I3 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I4 => UARTWithFIFO1_TXbuffer_rePTR(0),
      O => UARTWithFIFO1_TXbuffer_Result(4)
    );
  UARTWithFIFO1_TXbuffer_Result_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(3),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      O => UARTWithFIFO1_TXbuffer_Result_3_1_97
    );
  UARTWithFIFO1_TXbuffer_Result_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      O => UARTWithFIFO1_TXbuffer_Result_2_1_98
    );
  UARTWithFIFO1_TXbuffer_Result_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(3),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I2 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I3 => UARTWithFIFO1_TXbuffer_rePTR(0),
      O => UARTWithFIFO1_TXbuffer_Result(3)
    );
  UARTWithFIFO1_TXbuffer_Result_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(0),
      I2 => UARTWithFIFO1_TXbuffer_rePTR(1),
      O => UARTWithFIFO1_TXbuffer_Result(2)
    );
  UARTWithFIFO1_TXbuffer_Result_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      O => UARTWithFIFO1_TXbuffer_Result_1_1_99
    );
  UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(0),
      O => UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o1_88
    );
  UARTWithFIFO1_TXbuffer_Result_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(0),
      O => UARTWithFIFO1_TXbuffer_Result(1)
    );
  UARTWithFIFO1_TXbuffer_n0066_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wr_state_reg_41,
      I1 => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      O => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206
    );
  UARTWithFIFO1_TXbuffer_n00621 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wr_state_reg_41,
      I1 => reset_IBUF_2,
      O => UARTWithFIFO1_TXbuffer_n0062
    );
  UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      I1 => reset_IBUF_2,
      O => UARTWithFIFO1_TXbuffer_re_state_reg_reset_AND_6_o
    );
  UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      I1 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      O => UARTWithFIFO1_TXbuffer_re_state_reg_RE_AND_7_o
    );
  UARTWithFIFO1_uart1_Mmux_tx_count_3_tx_count_3_mux_51_OUT41 : LUT6
    generic map(
      INIT => X"2888888888888888"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_count(3),
      I2 => UARTWithFIFO1_uart1_baud_pulse_186,
      I3 => UARTWithFIFO1_uart1_tx_count(0),
      I4 => UARTWithFIFO1_uart1_tx_count(1),
      I5 => UARTWithFIFO1_uart1_tx_count(2),
      O => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_3_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_count_3_tx_count_3_mux_51_OUT31 : LUT5
    generic map(
      INIT => X"28888888"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_count(2),
      I2 => UARTWithFIFO1_uart1_baud_pulse_186,
      I3 => UARTWithFIFO1_uart1_tx_count(0),
      I4 => UARTWithFIFO1_uart1_tx_count(1),
      O => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_2_Q
    );
  UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT31 : LUT6
    generic map(
      INIT => X"7800780078007878"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_count(0),
      I1 => UARTWithFIFO1_uart1_os_count(1),
      I2 => UARTWithFIFO1_uart1_os_count(2),
      I3 => UARTWithFIFO1_uart1_rx_busy_32,
      I4 => UARTWithFIFO1_uart1_os_count(3),
      I5 => urx_IBUF_1,
      O => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_2_Q
    );
  UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT21 : LUT5
    generic map(
      INIT => X"60606066"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_count(0),
      I1 => UARTWithFIFO1_uart1_os_count(1),
      I2 => UARTWithFIFO1_uart1_rx_busy_32,
      I3 => UARTWithFIFO1_uart1_os_count(3),
      I4 => urx_IBUF_1,
      O => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_1_Q
    );
  UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT11 : LUT4
    generic map(
      INIT => X"5501"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_count(0),
      I1 => UARTWithFIFO1_uart1_os_count(3),
      I2 => urx_IBUF_1,
      I3 => UARTWithFIFO1_uart1_rx_busy_32,
      O => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_0_Q
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_1_11 : LUT6
    generic map(
      INIT => X"0000777F777F0000"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(5),
      I1 => UARTWithFIFO1_uart1_count_baud(6),
      I2 => UARTWithFIFO1_uart1_count_baud(3),
      I3 => UARTWithFIFO1_uart1_count_baud(4),
      I4 => UARTWithFIFO1_uart1_count_baud(0),
      I5 => UARTWithFIFO1_uart1_count_baud(1),
      O => UARTWithFIFO1_uart1_Mcount_count_baud1
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_0_11 : LUT5
    generic map(
      INIT => X"11155555"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(0),
      I1 => UARTWithFIFO1_uart1_count_baud(5),
      I2 => UARTWithFIFO1_uart1_count_baud(4),
      I3 => UARTWithFIFO1_uart1_count_baud(3),
      I4 => UARTWithFIFO1_uart1_count_baud(6),
      O => UARTWithFIFO1_uart1_Mcount_count_baud
    );
  UARTWithFIFO1_uart1_n0210_inv1 : LUT6
    generic map(
      INIT => X"0000000004000000"
    )
    port map (
      I0 => reset_IBUF_2,
      I1 => UARTWithFIFO1_uart1_rx_busy_32,
      I2 => UARTWithFIFO1_uart1_rx_count(3),
      I3 => UARTWithFIFO1_uart1_os_count(3),
      I4 => UARTWithFIFO1_uart1_os_pulse_188,
      I5 => UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT41,
      O => UARTWithFIFO1_uart1_n0210_inv
    );
  UARTWithFIFO1_uart1_n0155_inv1 : LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_pulse_188,
      I1 => UARTWithFIFO1_uart1_rx_busy_32,
      I2 => UARTWithFIFO1_uart1_os_count(3),
      I3 => UARTWithFIFO1_uart1_rx_count(3),
      I4 => UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT41,
      O => UARTWithFIFO1_uart1_n0155_inv
    );
  UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT211 : LUT5
    generic map(
      INIT => X"3F7F3F3F"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(4),
      I1 => UARTWithFIFO1_uart1_count_baud(6),
      I2 => UARTWithFIFO1_uart1_count_baud(5),
      I3 => UARTWithFIFO1_uart1_count_baud(3),
      I4 => UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12,
      O => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT21_116
    );
  UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT131 : LUT5
    generic map(
      INIT => X"E000F000"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(4),
      I1 => UARTWithFIFO1_uart1_count_baud(3),
      I2 => UARTWithFIFO1_uart1_count_baud(6),
      I3 => UARTWithFIFO1_uart1_count_baud(5),
      I4 => UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12,
      O => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT13
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_11 : LUT5
    generic map(
      INIT => X"252222A2"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(5),
      I1 => UARTWithFIFO1_uart1_count_baud(6),
      I2 => UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12,
      I3 => UARTWithFIFO1_uart1_count_baud(3),
      I4 => UARTWithFIFO1_uart1_count_baud(4),
      O => UARTWithFIFO1_uart1_Mcount_count_baud5
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_6_11 : LUT5
    generic map(
      INIT => X"222A6222"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(6),
      I1 => UARTWithFIFO1_uart1_count_baud(5),
      I2 => UARTWithFIFO1_uart1_count_baud(4),
      I3 => UARTWithFIFO1_uart1_count_baud(3),
      I4 => UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12,
      O => UARTWithFIFO1_uart1_Mcount_count_baud6
    );
  UARTWithFIFO1_uart1_Mcount_rx_count_xor_3_11 : LUT5
    generic map(
      INIT => X"28888888"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_busy_32,
      I1 => UARTWithFIFO1_uart1_rx_count(3),
      I2 => UARTWithFIFO1_uart1_rx_count(0),
      I3 => UARTWithFIFO1_uart1_rx_count(1),
      I4 => UARTWithFIFO1_uart1_rx_count(2),
      O => UARTWithFIFO1_uart1_Mcount_rx_count3
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_4_11 : LUT5
    generic map(
      INIT => X"77000770"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(5),
      I1 => UARTWithFIFO1_uart1_count_baud(6),
      I2 => UARTWithFIFO1_uart1_count_baud(3),
      I3 => UARTWithFIFO1_uart1_count_baud(4),
      I4 => UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12,
      O => UARTWithFIFO1_uart1_Mcount_count_baud4
    );
  UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT11 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_os(0),
      I1 => UARTWithFIFO1_uart1_count_os(1),
      I2 => UARTWithFIFO1_uart1_count_os(2),
      I3 => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT13,
      O => UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT(0)
    );
  UARTWithFIFO1_uart1_Mcount_rx_count_xor_1_11 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_busy_32,
      I1 => UARTWithFIFO1_uart1_rx_count(0),
      I2 => UARTWithFIFO1_uart1_rx_count(1),
      O => UARTWithFIFO1_uart1_Mcount_rx_count1
    );
  UARTWithFIFO1_uart1_Mmux_tx_count_3_tx_count_3_mux_51_OUT11 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_baud_pulse_186,
      I2 => UARTWithFIFO1_uart1_tx_count(0),
      O => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_0_Q
    );
  UARTWithFIFO1_uart1_n0218_inv1 : LUT4
    generic map(
      INIT => X"4540"
    )
    port map (
      I0 => reset_IBUF_2,
      I1 => UARTWithFIFO1_uart1_baud_pulse_186,
      I2 => UARTWithFIFO1_uart1_tx_state_187,
      I3 => UARTWithFIFO1_tx_ena,
      O => UARTWithFIFO1_uart1_n0218_inv
    );
  UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT31 : LUT4
    generic map(
      INIT => X"4200"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_os(2),
      I1 => UARTWithFIFO1_uart1_count_os(1),
      I2 => UARTWithFIFO1_uart1_count_os(0),
      I3 => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT21_116,
      O => UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT(2)
    );
  UARTWithFIFO1_uart1_GND_11_o_INV_25_o1 : LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_os(1),
      I1 => UARTWithFIFO1_uart1_count_os(0),
      I2 => UARTWithFIFO1_uart1_count_os(2),
      I3 => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT21_116,
      O => UARTWithFIFO1_uart1_GND_11_o_INV_25_o
    );
  UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT21 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_os(1),
      I1 => UARTWithFIFO1_uart1_count_os(0),
      I2 => UARTWithFIFO1_uart1_count_os(2),
      I3 => UARTWithFIFO1_uart1_Mmux_GND_11_o_GND_11_o_mux_6_OUT21_116,
      O => UARTWithFIFO1_uart1_GND_11_o_GND_11_o_mux_6_OUT(1)
    );
  UARTWithFIFO1_uart1_Mcount_rx_count_xor_2_11 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_busy_32,
      I1 => UARTWithFIFO1_uart1_rx_count(2),
      I2 => UARTWithFIFO1_uart1_rx_count(0),
      I3 => UARTWithFIFO1_uart1_rx_count(1),
      O => UARTWithFIFO1_uart1_Mcount_rx_count2
    );
  UARTWithFIFO1_uart1_Mmux_tx_count_3_tx_count_3_mux_51_OUT21 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_count(1),
      I2 => UARTWithFIFO1_uart1_baud_pulse_186,
      I3 => UARTWithFIFO1_uart1_tx_count(0),
      O => UARTWithFIFO1_uart1_tx_count_3_tx_count_3_mux_51_OUT_1_Q
    );
  UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT411 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_count(2),
      I1 => UARTWithFIFO1_uart1_os_count(0),
      I2 => UARTWithFIFO1_uart1_os_count(1),
      O => UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT41
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_121 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(2),
      I1 => UARTWithFIFO1_uart1_count_baud(0),
      I2 => UARTWithFIFO1_uart1_count_baud(1),
      O => UARTWithFIFO1_uart1_Mcount_count_baud_xor_5_12
    );
  UARTWithFIFO1_uart1_Mcount_rx_count_xor_0_11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_count(0),
      I1 => UARTWithFIFO1_uart1_rx_busy_32,
      O => UARTWithFIFO1_uart1_Mcount_rx_count
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_buffer(1),
      I1 => UARTWithFIFO1_uart1_tx_state_187,
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_0_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(2),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_1_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(3),
      I2 => UARTWithFIFO1_tx_data(7),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_2_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(4),
      I2 => UARTWithFIFO1_tx_data(6),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_3_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(5),
      I2 => UARTWithFIFO1_tx_data(5),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_4_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(6),
      I2 => UARTWithFIFO1_tx_data(4),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_5_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(7),
      I2 => UARTWithFIFO1_tx_data(3),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_6_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(8),
      I2 => UARTWithFIFO1_tx_data(2),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_7_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT91 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_buffer(9),
      I2 => UARTWithFIFO1_tx_data(1),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_8_Q
    );
  UARTWithFIFO1_uart1_Mmux_tx_buffer_9_tx_buffer_9_mux_50_OUT101 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_tx_data(0),
      O => UARTWithFIFO1_uart1_tx_buffer_9_tx_buffer_9_mux_50_OUT_9_Q
    );
  UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o6_SW0 : LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(4),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(4),
      I2 => UARTWithFIFO1_RXbuffer_rePTR(3),
      I3 => UARTWithFIFO1_RXbuffer_wrPTR(3),
      I4 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I5 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      O => N01
    );
  UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o6 : LUT6
    generic map(
      INIT => X"0000000090090000"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(5),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(5),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      I3 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I4 => UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o1_57,
      I5 => N01,
      O => UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o
    );
  UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11 : LUT6
    generic map(
      INIT => X"8008200240041001"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(5),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(4),
      I2 => UARTWithFIFO1_RXbuffer_rePTR(3),
      I3 => UARTWithFIFO1_RXbuffer_Result_3_1_66,
      I4 => UARTWithFIFO1_RXbuffer_Result_4_1_65,
      I5 => UARTWithFIFO1_RXbuffer_Result_5_1_64,
      O => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next1
    );
  UARTWithFIFO1_RXbuffer_Mmux_wr_state_next14 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wr_state_reg_81,
      I1 => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next12,
      I2 => UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o,
      I3 => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next1,
      O => UARTWithFIFO1_RXbuffer_wr_state_next
    );
  UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o6_SW0 : LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(4),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(4),
      I2 => UARTWithFIFO1_TXbuffer_rePTR(3),
      I3 => UARTWithFIFO1_TXbuffer_wrPTR(3),
      I4 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I5 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      O => N2
    );
  UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o6 : LUT6
    generic map(
      INIT => X"0000000090090000"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(5),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(5),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I3 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I4 => UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o1_88,
      I5 => N2,
      O => UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o
    );
  UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11 : LUT6
    generic map(
      INIT => X"8008200240041001"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(5),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(4),
      I2 => UARTWithFIFO1_TXbuffer_rePTR(3),
      I3 => UARTWithFIFO1_TXbuffer_Result_3_1_97,
      I4 => UARTWithFIFO1_TXbuffer_Result_4_1_96,
      I5 => UARTWithFIFO1_TXbuffer_Result_5_1_95,
      O => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next1
    );
  UARTWithFIFO1_TXbuffer_Mmux_wr_state_next14 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wr_state_reg_41,
      I1 => UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o,
      I2 => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next12,
      I3 => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next1,
      O => UARTWithFIFO1_TXbuffer_wr_state_next
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_2_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(5),
      I1 => UARTWithFIFO1_uart1_count_baud(6),
      O => N4
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_2_1 : LUT6
    generic map(
      INIT => X"060606660A0A0AAA"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(2),
      I1 => UARTWithFIFO1_uart1_count_baud(1),
      I2 => N4,
      I3 => UARTWithFIFO1_uart1_count_baud(4),
      I4 => UARTWithFIFO1_uart1_count_baud(3),
      I5 => UARTWithFIFO1_uart1_count_baud(0),
      O => UARTWithFIFO1_uart1_Mcount_count_baud2
    );
  UARTWithFIFO1_uart1_Mmux_tx_count_3_tx_ena_MUX_86_o1_SW0 : LUT3
    generic map(
      INIT => X"81"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_baud_pulse_186,
      I1 => UARTWithFIFO1_uart1_tx_count(0),
      I2 => UARTWithFIFO1_uart1_tx_count(2),
      O => N6
    );
  UARTWithFIFO1_uart1_Mmux_tx_count_3_tx_ena_MUX_86_o1 : LUT6
    generic map(
      INIT => X"F7FF777FA2AA222A"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_uart1_tx_count(3),
      I2 => UARTWithFIFO1_uart1_tx_count(1),
      I3 => UARTWithFIFO1_uart1_tx_count(2),
      I4 => N6,
      I5 => UARTWithFIFO1_tx_ena,
      O => UARTWithFIFO1_uart1_tx_count_3_tx_ena_MUX_86_o
    );
  urx_IBUF : IBUF
    port map (
      I => urx,
      O => urx_IBUF_1
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_2
    );
  utx_OBUF : OBUF
    port map (
      I => UARTWithFIFO1_uart1_tx_12,
      O => utx
    );
  UARTWithFIFO1_uart1_tx_busy : FDP
    port map (
      C => clkcntr_4_BUFG_24,
      D => UARTWithFIFO1_uart1_tx_busy_rstpot_215,
      PRE => reset_IBUF_2,
      Q => UARTWithFIFO1_uart1_tx_busy_31
    );
  UARTWithFIFO1_uart1_rx_busy : FDC
    port map (
      C => clkcntr_4_BUFG_24,
      CLR => reset_IBUF_2,
      D => UARTWithFIFO1_uart1_rx_busy_rstpot_216,
      Q => UARTWithFIFO1_uart1_rx_busy_32
    );
  UARTWithFIFO1_RXbuffer_Mmux_re_state_next14_SW0 : LUT6
    generic map(
      INIT => X"8808220244041101"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(4),
      I1 => UARTWithFIFO1_RXbuffer_wrPTR(3),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_RXbuffer_Result(2),
      I4 => UARTWithFIFO1_RXbuffer_Result(3),
      I5 => UARTWithFIFO1_RXbuffer_Result(4),
      O => N8
    );
  UARTWithFIFO1_RXbuffer_Mmux_re_state_next14 : LUT6
    generic map(
      INIT => X"CC48FF7BCCCCFFFF"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(5),
      I1 => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      I2 => UARTWithFIFO1_RXbuffer_Result(5),
      I3 => UARTWithFIFO1_RXbuffer_Mmux_re_state_next11,
      I4 => UARTWithFIFO1_RXbuffer_wrPTR_5_rePTR_5_equal_14_o,
      I5 => N8,
      O => UARTWithFIFO1_RXbuffer_re_state_next
    );
  UARTWithFIFO1_TXbuffer_Mmux_re_state_next14_SW0 : LUT6
    generic map(
      INIT => X"8808220244041101"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(4),
      I1 => UARTWithFIFO1_TXbuffer_wrPTR(3),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_TXbuffer_Result(2),
      I4 => UARTWithFIFO1_TXbuffer_Result(3),
      I5 => UARTWithFIFO1_TXbuffer_Result(4),
      O => N10
    );
  UARTWithFIFO1_TXbuffer_Mmux_re_state_next14 : LUT6
    generic map(
      INIT => X"CC48FF7BCCCCFFFF"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(5),
      I1 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      I2 => UARTWithFIFO1_TXbuffer_Result(5),
      I3 => UARTWithFIFO1_TXbuffer_Mmux_re_state_next11,
      I4 => UARTWithFIFO1_TXbuffer_wrPTR_5_rePTR_5_equal_14_o,
      I5 => N10,
      O => UARTWithFIFO1_TXbuffer_re_state_next
    );
  UARTWithFIFO1_uart1_n0170_inv1 : LUT5
    generic map(
      INIT => X"FFFF5510"
    )
    port map (
      I0 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      I1 => UARTWithFIFO1_uart1_tx_busy_31,
      I2 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      I3 => UARTWithFIFO1_txlink_statereg_FSM_FFd2_28,
      I4 => UARTWithFIFO1_uart1_tx_state_187,
      O => UARTWithFIFO1_uart1_n0170_inv
    );
  UARTWithFIFO1_uart1_Mcount_count_baud_xor_3_11 : LUT6
    generic map(
      INIT => X"0770707070707070"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_count_baud(5),
      I1 => UARTWithFIFO1_uart1_count_baud(6),
      I2 => UARTWithFIFO1_uart1_count_baud(3),
      I3 => UARTWithFIFO1_uart1_count_baud(2),
      I4 => UARTWithFIFO1_uart1_count_baud(0),
      I5 => UARTWithFIFO1_uart1_count_baud(1),
      O => UARTWithFIFO1_uart1_Mcount_count_baud3
    );
  UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT42 : LUT6
    generic map(
      INIT => X"2888888838888888"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_busy_32,
      I1 => UARTWithFIFO1_uart1_os_count(3),
      I2 => UARTWithFIFO1_uart1_os_count(2),
      I3 => UARTWithFIFO1_uart1_os_count(0),
      I4 => UARTWithFIFO1_uart1_os_count(1),
      I5 => urx_IBUF_1,
      O => UARTWithFIFO1_uart1_os_count_3_GND_11_o_mux_29_OUT_3_Q
    );
  UARTWithFIFO1_uart1_n0168_inv1 : LUT6
    generic map(
      INIT => X"0008000800088088"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_count(3),
      I1 => UARTWithFIFO1_uart1_os_pulse_188,
      I2 => UARTWithFIFO1_uart1_rx_busy_32,
      I3 => urx_IBUF_1,
      I4 => UARTWithFIFO1_uart1_rx_count(3),
      I5 => UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT41,
      O => UARTWithFIFO1_uart1_n0168_inv
    );
  UARTWithFIFO1_uart1_rx_busy_rstpot : LUT6
    generic map(
      INIT => X"A2AAAAAAF7AAAAAA"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_busy_32,
      I1 => UARTWithFIFO1_uart1_rx_count(3),
      I2 => UARTWithFIFO1_uart1_Mmux_os_count_3_GND_11_o_mux_29_OUT41,
      I3 => UARTWithFIFO1_uart1_os_pulse_188,
      I4 => UARTWithFIFO1_uart1_os_count(3),
      I5 => urx_IBUF_1,
      O => UARTWithFIFO1_uart1_rx_busy_rstpot_216
    );
  UARTWithFIFO1_uart1_tx_busy_rstpot : LUT5
    generic map(
      INIT => X"B1B1A1A0"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_tx_state_187,
      I1 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      I2 => UARTWithFIFO1_uart1_tx_busy_31,
      I3 => UARTWithFIFO1_TXbuffer_re_state_reg_42,
      I4 => UARTWithFIFO1_txlink_statereg_FSM_FFd2_28,
      O => UARTWithFIFO1_uart1_tx_busy_rstpot_215
    );
  UARTWithFIFO1_uart1_n0179_inv1_rstpot : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_rx_busy_32,
      I1 => UARTWithFIFO1_uart1_rx_count(3),
      I2 => UARTWithFIFO1_uart1_os_count(3),
      I3 => UARTWithFIFO1_uart1_os_pulse_188,
      O => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219
    );
  UARTWithFIFO1_uart1_n0179_inv1_cepot : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_os_count(2),
      I1 => UARTWithFIFO1_uart1_os_count(0),
      I2 => UARTWithFIFO1_uart1_os_count(1),
      O => UARTWithFIFO1_uart1_n0179_inv1_cepot_220
    );
  UARTWithFIFO1_uart1_rx_data_0_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(1),
      I2 => UARTWithFIFO1_uart1_rx_data(0),
      O => UARTWithFIFO1_uart1_rx_data_0_dpot_221
    );
  UARTWithFIFO1_uart1_rx_data_1_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(2),
      I2 => UARTWithFIFO1_uart1_rx_data(1),
      O => UARTWithFIFO1_uart1_rx_data_1_dpot_222
    );
  UARTWithFIFO1_uart1_rx_data_2_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(3),
      I2 => UARTWithFIFO1_uart1_rx_data(2),
      O => UARTWithFIFO1_uart1_rx_data_2_dpot_223
    );
  UARTWithFIFO1_uart1_rx_data_3_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(4),
      I2 => UARTWithFIFO1_uart1_rx_data(3),
      O => UARTWithFIFO1_uart1_rx_data_3_dpot_224
    );
  UARTWithFIFO1_uart1_rx_data_4_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(5),
      I2 => UARTWithFIFO1_uart1_rx_data(4),
      O => UARTWithFIFO1_uart1_rx_data_4_dpot_225
    );
  UARTWithFIFO1_uart1_rx_data_5_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(6),
      I2 => UARTWithFIFO1_uart1_rx_data(5),
      O => UARTWithFIFO1_uart1_rx_data_5_dpot_226
    );
  UARTWithFIFO1_uart1_rx_data_6_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(7),
      I2 => UARTWithFIFO1_uart1_rx_data(6),
      O => UARTWithFIFO1_uart1_rx_data_6_dpot_227
    );
  UARTWithFIFO1_uart1_rx_data_7_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => UARTWithFIFO1_uart1_n0179_inv1_rstpot_219,
      I1 => UARTWithFIFO1_uart1_rx_buffer(8),
      I2 => UARTWithFIFO1_uart1_rx_data(7),
      O => UARTWithFIFO1_uart1_rx_data_7_dpot_228
    );
  clkcntr_4_BUFG : BUFG
    port map (
      O => clkcntr_4_BUFG_24,
      I => clkcntr(4)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  Mcount_clkcntr_xor_0_11_INV_0 : INV
    port map (
      I => clkcntr(0),
      O => Result(0)
    );
  UARTWithFIFO1_RXbuffer_Mcount_wrPTR_xor_0_11_INV_0 : INV
    port map (
      I => UARTWithFIFO1_RXbuffer_wrPTR(0),
      O => UARTWithFIFO1_RXbuffer_Result_0_1
    );
  UARTWithFIFO1_RXbuffer_Mcount_rePTR_xor_0_11_INV_0 : INV
    port map (
      I => UARTWithFIFO1_RXbuffer_rePTR(0),
      O => UARTWithFIFO1_RXbuffer_Result(0)
    );
  UARTWithFIFO1_TXbuffer_Mcount_wrPTR_xor_0_11_INV_0 : INV
    port map (
      I => UARTWithFIFO1_TXbuffer_wrPTR(0),
      O => UARTWithFIFO1_TXbuffer_Result_0_1
    );
  UARTWithFIFO1_TXbuffer_Mcount_rePTR_xor_0_11_INV_0 : INV
    port map (
      I => UARTWithFIFO1_TXbuffer_rePTR(0),
      O => UARTWithFIFO1_TXbuffer_Result(0)
    );
  UARTWithFIFO1_RXbuffer_Mmux_re_state_next12 : MUXF7
    port map (
      I0 => N12,
      I1 => N13,
      S => UARTWithFIFO1_RXbuffer_wrPTR(1),
      O => UARTWithFIFO1_RXbuffer_Mmux_re_state_next11
    );
  UARTWithFIFO1_RXbuffer_Mmux_re_state_next12_F : LUT6
    generic map(
      INIT => X"FF57AEFFFFFFFFFF"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(0),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      I4 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I5 => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      O => N12
    );
  UARTWithFIFO1_RXbuffer_Mmux_re_state_next12_G : LUT6
    generic map(
      INIT => X"BDFFBDFFFFFFBDFF"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_rePTR(0),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      I3 => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      I4 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I5 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      O => N13
    );
  UARTWithFIFO1_TXbuffer_Mmux_re_state_next12 : MUXF7
    port map (
      I0 => N14,
      I1 => N15,
      S => UARTWithFIFO1_TXbuffer_wrPTR(1),
      O => UARTWithFIFO1_TXbuffer_Mmux_re_state_next11
    );
  UARTWithFIFO1_TXbuffer_Mmux_re_state_next12_F : LUT6
    generic map(
      INIT => X"FF57AEFFFFFFFFFF"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(0),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      I3 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      I4 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I5 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      O => N14
    );
  UARTWithFIFO1_TXbuffer_Mmux_re_state_next12_G : LUT6
    generic map(
      INIT => X"BDFFBDFFFFFFBDFF"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_rePTR(0),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      I3 => UARTWithFIFO1_txlink_statereg_FSM_FFd1_29,
      I4 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I5 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      O => N15
    );
  UARTWithFIFO1_RXbuffer_Mmux_wr_state_next13 : MUXF7
    port map (
      I0 => N1,
      I1 => N17,
      S => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next11_201,
      O => UARTWithFIFO1_RXbuffer_Mmux_wr_state_next12
    );
  UARTWithFIFO1_RXbuffer_Mmux_wr_state_next13_G : LUT6
    generic map(
      INIT => X"4204002000204204"
    )
    port map (
      I0 => UARTWithFIFO1_RXbuffer_wrPTR(0),
      I1 => UARTWithFIFO1_RXbuffer_rePTR(0),
      I2 => UARTWithFIFO1_RXbuffer_wrPTR(1),
      I3 => UARTWithFIFO1_RXbuffer_rePTR(1),
      I4 => UARTWithFIFO1_RXbuffer_rePTR(2),
      I5 => UARTWithFIFO1_RXbuffer_wrPTR(2),
      O => N17
    );
  UARTWithFIFO1_TXbuffer_Mmux_wr_state_next13 : MUXF7
    port map (
      I0 => N1,
      I1 => N19,
      S => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next11_206,
      O => UARTWithFIFO1_TXbuffer_Mmux_wr_state_next12
    );
  UARTWithFIFO1_TXbuffer_Mmux_wr_state_next13_G : LUT6
    generic map(
      INIT => X"4204002000204204"
    )
    port map (
      I0 => UARTWithFIFO1_TXbuffer_wrPTR(0),
      I1 => UARTWithFIFO1_TXbuffer_rePTR(0),
      I2 => UARTWithFIFO1_TXbuffer_wrPTR(1),
      I3 => UARTWithFIFO1_TXbuffer_rePTR(1),
      I4 => UARTWithFIFO1_TXbuffer_rePTR(2),
      I5 => UARTWithFIFO1_TXbuffer_wrPTR(2),
      O => N19
    );
  UARTWithFIFO1_TXbuffer_Bram1 : Blockram
    port map (
      clka => clkcntr_4_BUFG_24,
      clkb => clkcntr_4_BUFG_24,
      rstb => N1,
      wea(0) => UARTWithFIFO1_RXbuffer_re_state_reg_11,
      addra(5) => UARTWithFIFO1_TXbuffer_wrPTR(5),
      addra(4) => UARTWithFIFO1_TXbuffer_wrPTR(4),
      addra(3) => UARTWithFIFO1_TXbuffer_wrPTR(3),
      addra(2) => UARTWithFIFO1_TXbuffer_wrPTR(2),
      addra(1) => UARTWithFIFO1_TXbuffer_wrPTR(1),
      addra(0) => UARTWithFIFO1_TXbuffer_wrPTR(0),
      dina(7) => data(7),
      dina(6) => data(6),
      dina(5) => data(5),
      dina(4) => data(4),
      dina(3) => data(3),
      dina(2) => data(2),
      dina(1) => data(1),
      dina(0) => data(0),
      addrb(5) => UARTWithFIFO1_TXbuffer_rePTR(5),
      addrb(4) => UARTWithFIFO1_TXbuffer_rePTR(4),
      addrb(3) => UARTWithFIFO1_TXbuffer_rePTR(3),
      addrb(2) => UARTWithFIFO1_TXbuffer_rePTR(2),
      addrb(1) => UARTWithFIFO1_TXbuffer_rePTR(1),
      addrb(0) => UARTWithFIFO1_TXbuffer_rePTR(0),
      doutb(7) => UARTWithFIFO1_tx_data(7),
      doutb(6) => UARTWithFIFO1_tx_data(6),
      doutb(5) => UARTWithFIFO1_tx_data(5),
      doutb(4) => UARTWithFIFO1_tx_data(4),
      doutb(3) => UARTWithFIFO1_tx_data(3),
      doutb(2) => UARTWithFIFO1_tx_data(2),
      doutb(1) => UARTWithFIFO1_tx_data(1),
      doutb(0) => UARTWithFIFO1_tx_data(0)
    );
  UARTWithFIFO1_RXbuffer_Bram1 : Blockram
    port map (
      clka => clkcntr_4_BUFG_24,
      clkb => clkcntr_4_BUFG_24,
      rstb => N1,
      wea(0) => UARTWithFIFO1_rxlink_statereg_30,
      addra(5) => UARTWithFIFO1_RXbuffer_wrPTR(5),
      addra(4) => UARTWithFIFO1_RXbuffer_wrPTR(4),
      addra(3) => UARTWithFIFO1_RXbuffer_wrPTR(3),
      addra(2) => UARTWithFIFO1_RXbuffer_wrPTR(2),
      addra(1) => UARTWithFIFO1_RXbuffer_wrPTR(1),
      addra(0) => UARTWithFIFO1_RXbuffer_wrPTR(0),
      dina(7) => UARTWithFIFO1_uart1_rx_data(7),
      dina(6) => UARTWithFIFO1_uart1_rx_data(6),
      dina(5) => UARTWithFIFO1_uart1_rx_data(5),
      dina(4) => UARTWithFIFO1_uart1_rx_data(4),
      dina(3) => UARTWithFIFO1_uart1_rx_data(3),
      dina(2) => UARTWithFIFO1_uart1_rx_data(2),
      dina(1) => UARTWithFIFO1_uart1_rx_data(1),
      dina(0) => UARTWithFIFO1_uart1_rx_data(0),
      addrb(5) => UARTWithFIFO1_RXbuffer_rePTR(5),
      addrb(4) => UARTWithFIFO1_RXbuffer_rePTR(4),
      addrb(3) => UARTWithFIFO1_RXbuffer_rePTR(3),
      addrb(2) => UARTWithFIFO1_RXbuffer_rePTR(2),
      addrb(1) => UARTWithFIFO1_RXbuffer_rePTR(1),
      addrb(0) => UARTWithFIFO1_RXbuffer_rePTR(0),
      doutb(7) => data(7),
      doutb(6) => data(6),
      doutb(5) => data(5),
      doutb(4) => data(4),
      doutb(3) => data(3),
      doutb(2) => data(2),
      doutb(1) => data(1),
      doutb(0) => data(0)
    );

end Structure;

-- synthesis translate_on
