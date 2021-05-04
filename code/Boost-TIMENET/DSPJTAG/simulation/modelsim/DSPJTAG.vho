-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Full Version"

-- DATE "11/30/2011 21:58:55"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	DSPJTAG IS
    PORT (
	F1_EMU0 : INOUT std_logic;
	F1_EMU1 : INOUT std_logic;
	CLK_12M : IN std_logic;
	EN_DVDD_1V8 : OUT std_logic;
	EN_DVDD_1V1 : OUT std_logic;
	EN_CPU_CORE : OUT std_logic;
	F1_XWRSTz : OUT std_logic;
	F1_PORz : OUT std_logic;
	SCLK_CDCE906 : OUT std_logic;
	SDATA_CDCE906 : INOUT std_logic;
	SCLK_CDCL6010 : OUT std_logic;
	SDATA_CDCL6010 : INOUT std_logic;
	EXT_TMS : IN std_logic;
	EXT_TRST : IN std_logic;
	EXT_TDI : IN std_logic;
	EXT_TDO : OUT std_logic;
	EXT_TCK : IN std_logic;
	EXT_EMU0 : INOUT std_logic;
	EXT_EMU1 : INOUT std_logic;
	F1_TMS : OUT std_logic;
	F1_TRST : OUT std_logic;
	F1_TDI : OUT std_logic;
	F1_TDO : IN std_logic;
	F1_TCK : OUT std_logic
	);
END DSPJTAG;

-- Design Ports Information
-- CLK_12M	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- F1_TDO	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_TMS	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_TRST	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_TDI	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_TCK	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_DVDD_1V8	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EN_DVDD_1V1	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EN_CPU_CORE	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_XWRSTz	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_PORz	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SCLK_CDCE906	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SCLK_CDCL6010	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EXT_TDO	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_TMS	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_TRST	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_TDI	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_TCK	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SDATA_CDCE906	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SDATA_CDCL6010	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EXT_EMU0	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EXT_EMU1	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_EMU0	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- F1_EMU1	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA

ARCHITECTURE structure OF DSPJTAG IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_12M : std_logic;
SIGNAL ww_EN_DVDD_1V8 : std_logic;
SIGNAL ww_EN_DVDD_1V1 : std_logic;
SIGNAL ww_EN_CPU_CORE : std_logic;
SIGNAL ww_F1_XWRSTz : std_logic;
SIGNAL ww_F1_PORz : std_logic;
SIGNAL ww_SCLK_CDCE906 : std_logic;
SIGNAL ww_SCLK_CDCL6010 : std_logic;
SIGNAL ww_EXT_TMS : std_logic;
SIGNAL ww_EXT_TRST : std_logic;
SIGNAL ww_EXT_TDI : std_logic;
SIGNAL ww_EXT_TDO : std_logic;
SIGNAL ww_EXT_TCK : std_logic;
SIGNAL ww_F1_TMS : std_logic;
SIGNAL ww_F1_TRST : std_logic;
SIGNAL ww_F1_TDI : std_logic;
SIGNAL ww_F1_TDO : std_logic;
SIGNAL ww_F1_TCK : std_logic;
SIGNAL \LessThan3~5\ : std_logic;
SIGNAL \LessThan4~5\ : std_logic;
SIGNAL \LessThan3~10\ : std_logic;
SIGNAL \LessThan4~10\ : std_logic;
SIGNAL \LessThan3~15\ : std_logic;
SIGNAL \LessThan4~15\ : std_logic;
SIGNAL \LessThan3~20\ : std_logic;
SIGNAL \LessThan4~20\ : std_logic;
SIGNAL \LessThan3~25\ : std_logic;
SIGNAL \LessThan4~25\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \LessThan3~30\ : std_logic;
SIGNAL \LessThan4~30\ : std_logic;
SIGNAL \LessThan3~35\ : std_logic;
SIGNAL \LessThan4~35\ : std_logic;
SIGNAL \LessThan3~40\ : std_logic;
SIGNAL \LessThan4~40\ : std_logic;
SIGNAL \LessThan3~45\ : std_logic;
SIGNAL \LessThan4~45\ : std_logic;
SIGNAL \LessThan3~50\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \LessThan4~50\ : std_logic;
SIGNAL \SDATA_CDCE906~0\ : std_logic;
SIGNAL \SDATA_CDCL6010~0\ : std_logic;
SIGNAL \F1_EMU0~0\ : std_logic;
SIGNAL \F1_EMU1~0\ : std_logic;
SIGNAL \CLK_12M~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2COUT1_42\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_44\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_48\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_50\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_46\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \SMBUS_EN~regout\ : std_logic;
SIGNAL \RESET~regout\ : std_logic;
SIGNAL \COUNTER[11]~24_combout\ : std_logic;
SIGNAL \COUNTER[0]~21\ : std_logic;
SIGNAL \COUNTER[1]~23\ : std_logic;
SIGNAL \COUNTER[1]~23COUT1_35\ : std_logic;
SIGNAL \COUNTER[2]~9\ : std_logic;
SIGNAL \COUNTER[2]~9COUT1_37\ : std_logic;
SIGNAL \COUNTER[3]~11\ : std_logic;
SIGNAL \COUNTER[3]~11COUT1_39\ : std_logic;
SIGNAL \COUNTER[4]~13\ : std_logic;
SIGNAL \COUNTER[4]~13COUT1_41\ : std_logic;
SIGNAL \COUNTER[5]~1\ : std_logic;
SIGNAL \COUNTER[6]~3\ : std_logic;
SIGNAL \COUNTER[6]~3COUT1_43\ : std_logic;
SIGNAL \COUNTER[7]~5\ : std_logic;
SIGNAL \COUNTER[7]~5COUT1_45\ : std_logic;
SIGNAL \COUNTER[8]~7\ : std_logic;
SIGNAL \COUNTER[8]~7COUT1_47\ : std_logic;
SIGNAL \COUNTER[9]~19\ : std_logic;
SIGNAL \COUNTER[9]~19COUT1_49\ : std_logic;
SIGNAL \COUNTER[10]~15\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \EN_DVDD_1V1~2_combout\ : std_logic;
SIGNAL \EN_DVDD_1V8~reg0_regout\ : std_logic;
SIGNAL \EN_DVDD_1V1~3_combout\ : std_logic;
SIGNAL \EN_DVDD_1V1~reg0_regout\ : std_logic;
SIGNAL \EN_DVDD_1V1~4\ : std_logic;
SIGNAL \EN_CPU_CORE~reg0_regout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \SCLK_LOGIC~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \kickoff_num_CDCL6010~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][2]~5_combout\ : std_logic;
SIGNAL \Add3~47_cout0\ : std_logic;
SIGNAL \Add3~47COUT1_60\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_62\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_64\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_66\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~1_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~22COUT1_68\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_70\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_72\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_74\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \LessThan4~52_cout0\ : std_logic;
SIGNAL \LessThan4~52COUT1_65\ : std_logic;
SIGNAL \LessThan4~47_cout0\ : std_logic;
SIGNAL \LessThan4~47COUT1_67\ : std_logic;
SIGNAL \LessThan4~42_cout0\ : std_logic;
SIGNAL \LessThan4~42COUT1_69\ : std_logic;
SIGNAL \LessThan4~37_cout0\ : std_logic;
SIGNAL \LessThan4~37COUT1_71\ : std_logic;
SIGNAL \LessThan4~32_cout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \LessThan4~27_cout0\ : std_logic;
SIGNAL \LessThan4~27COUT1_73\ : std_logic;
SIGNAL \LessThan4~22_cout0\ : std_logic;
SIGNAL \LessThan4~22COUT1_75\ : std_logic;
SIGNAL \LessThan4~17_cout0\ : std_logic;
SIGNAL \LessThan4~17COUT1_77\ : std_logic;
SIGNAL \LessThan4~12_cout0\ : std_logic;
SIGNAL \LessThan4~12COUT1_79\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \kickoff_num_CDCL6010~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \kickoff_num_CDCL6010~1_combout\ : std_logic;
SIGNAL \kickoff_num_CDCL6010~4_combout\ : std_logic;
SIGNAL \kickoff_num_CDCL6010~5\ : std_logic;
SIGNAL \kickoff_num_CDCL6010~2\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~0_combout\ : std_logic;
SIGNAL \Add2~27_cout0\ : std_logic;
SIGNAL \Add2~27COUT1_36\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_38\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_40\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~7COUT1_42\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \LessThan3~55_cout\ : std_logic;
SIGNAL \LessThan3~52_cout0\ : std_logic;
SIGNAL \LessThan3~52COUT1_66\ : std_logic;
SIGNAL \LessThan3~47_cout0\ : std_logic;
SIGNAL \LessThan3~47COUT1_68\ : std_logic;
SIGNAL \LessThan3~42_cout0\ : std_logic;
SIGNAL \LessThan3~42COUT1_70\ : std_logic;
SIGNAL \LessThan3~37_cout0\ : std_logic;
SIGNAL \LessThan3~37COUT1_72\ : std_logic;
SIGNAL \LessThan3~32_cout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \LessThan3~27_cout0\ : std_logic;
SIGNAL \LessThan3~27COUT1_74\ : std_logic;
SIGNAL \LessThan3~22_cout0\ : std_logic;
SIGNAL \LessThan3~22COUT1_76\ : std_logic;
SIGNAL \LessThan3~17_cout0\ : std_logic;
SIGNAL \LessThan3~17COUT1_78\ : std_logic;
SIGNAL \LessThan3~12_cout0\ : std_logic;
SIGNAL \LessThan3~12COUT1_80\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \kickoff~regout\ : std_logic;
SIGNAL \BIT_POS~2_combout\ : std_logic;
SIGNAL \LessThan9~5_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \this_is_ack~regout\ : std_logic;
SIGNAL \wait_for_ack~regout\ : std_logic;
SIGNAL \EXT_TDO~0_combout\ : std_logic;
SIGNAL \process_3~2_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \process_3~6_combout\ : std_logic;
SIGNAL \process_3~7_combout\ : std_logic;
SIGNAL \process_3~0_combout\ : std_logic;
SIGNAL \process_3~1_combout\ : std_logic;
SIGNAL \process_3~4_combout\ : std_logic;
SIGNAL \process_3~3_combout\ : std_logic;
SIGNAL \process_3~5_combout\ : std_logic;
SIGNAL \SDATA_D~0_combout\ : std_logic;
SIGNAL \SDATA_D~regout\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \GET_BIT~0_combout\ : std_logic;
SIGNAL \GET_BIT~1_combout\ : std_logic;
SIGNAL \GET_BIT~regout\ : std_logic;
SIGNAL \no_more_bits~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \WORD_ADDR[0]~12_combout\ : std_logic;
SIGNAL \WORD_ADDR[0]~11\ : std_logic;
SIGNAL \WORD_ADDR[0]~11COUT1_19\ : std_logic;
SIGNAL \WORD_ADDR[1]~9\ : std_logic;
SIGNAL \WORD_ADDR[1]~9COUT1_21\ : std_logic;
SIGNAL \WORD_ADDR[2]~3\ : std_logic;
SIGNAL \WORD_ADDR[2]~3COUT1_23\ : std_logic;
SIGNAL \WORD_ADDR[3]~1\ : std_logic;
SIGNAL \WORD_ADDR[4]~7\ : std_logic;
SIGNAL \WORD_ADDR[4]~7COUT1_25\ : std_logic;
SIGNAL \no_more_bits~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \no_more_bits~1_combout\ : std_logic;
SIGNAL \no_more_bits~regout\ : std_logic;
SIGNAL \STATE[0]~1_combout\ : std_logic;
SIGNAL \STATE[0]~0_combout\ : std_logic;
SIGNAL \STATE[0]~2_combout\ : std_logic;
SIGNAL \STATE[0]~3_combout\ : std_logic;
SIGNAL \STATE[0]~4_combout\ : std_logic;
SIGNAL \STATE[2]~8_combout\ : std_logic;
SIGNAL \STATE[2]~6_combout\ : std_logic;
SIGNAL \STATE[2]~7_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \SCLK_LOGIC~regout\ : std_logic;
SIGNAL \SCLK_CDCE906~1_combout\ : std_logic;
SIGNAL \SCLK_CDCE906~reg0_regout\ : std_logic;
SIGNAL \SCLK_CDCE906~en_regout\ : std_logic;
SIGNAL \SCLK_CDCL6010~reg0_regout\ : std_logic;
SIGNAL \SCLK_CDCL6010~en_regout\ : std_logic;
SIGNAL \F1_TDO~combout\ : std_logic;
SIGNAL \EXT_TDO~1_combout\ : std_logic;
SIGNAL \EXT_TDO~2_combout\ : std_logic;
SIGNAL \EXT_TDO~reg0_regout\ : std_logic;
SIGNAL \EXT_TMS~combout\ : std_logic;
SIGNAL \F1_TMS~reg0_regout\ : std_logic;
SIGNAL \EXT_TRST~combout\ : std_logic;
SIGNAL \F1_TRST~reg0_regout\ : std_logic;
SIGNAL \EXT_TDI~combout\ : std_logic;
SIGNAL \F1_TDI~reg0_regout\ : std_logic;
SIGNAL \EXT_TCK~combout\ : std_logic;
SIGNAL \F1_TCK~reg0_regout\ : std_logic;
SIGNAL \Equal8~1\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \next_bit~regout\ : std_logic;
SIGNAL \SDATA_LOGIC~0_combout\ : std_logic;
SIGNAL \SDATA_LOGIC~1_combout\ : std_logic;
SIGNAL \SDATA_LOGIC~regout\ : std_logic;
SIGNAL \SDATA_CDCE906~en_regout\ : std_logic;
SIGNAL \SDATA_CDCL6010~en_regout\ : std_logic;
SIGNAL \EXT_EMU0~reg0_regout\ : std_logic;
SIGNAL \EXT_EMU1~reg0_regout\ : std_logic;
SIGNAL DIV_COUNTER : std_logic_vector(6 DOWNTO 0);
SIGNAL SMBUS_WORD : std_logic_vector(7 DOWNTO 0);
SIGNAL STATE : std_logic_vector(2 DOWNTO 0);
SIGNAL WORD_ADDR : std_logic_vector(5 DOWNTO 0);
SIGNAL kickoff_num_CDCL6010 : std_logic_vector(2 DOWNTO 0);
SIGNAL BIT_POS : std_logic_vector(3 DOWNTO 0);
SIGNAL COUNTER : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_RESET~regout\ : std_logic;
SIGNAL \ALT_INV_SDATA_CDCE906~en_regout\ : std_logic;
SIGNAL \ALT_INV_SDATA_CDCL6010~en_regout\ : std_logic;

BEGIN

ww_CLK_12M <= CLK_12M;
EN_DVDD_1V8 <= ww_EN_DVDD_1V8;
EN_DVDD_1V1 <= ww_EN_DVDD_1V1;
EN_CPU_CORE <= ww_EN_CPU_CORE;
F1_XWRSTz <= ww_F1_XWRSTz;
F1_PORz <= ww_F1_PORz;
SCLK_CDCE906 <= ww_SCLK_CDCE906;
SCLK_CDCL6010 <= ww_SCLK_CDCL6010;
ww_EXT_TMS <= EXT_TMS;
ww_EXT_TRST <= EXT_TRST;
ww_EXT_TDI <= EXT_TDI;
EXT_TDO <= ww_EXT_TDO;
ww_EXT_TCK <= EXT_TCK;
F1_TMS <= ww_F1_TMS;
F1_TRST <= ww_F1_TRST;
F1_TDI <= ww_F1_TDI;
ww_F1_TDO <= F1_TDO;
F1_TCK <= ww_F1_TCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RESET~regout\ <= NOT \RESET~regout\;
\ALT_INV_SDATA_CDCE906~en_regout\ <= NOT \SDATA_CDCE906~en_regout\;
\ALT_INV_SDATA_CDCL6010~en_regout\ <= NOT \SDATA_CDCL6010~en_regout\;

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SDATA_CDCE906~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SDATA_CDCE906~en_regout\,
	oe => VCC,
	padio => SDATA_CDCE906,
	combout => \SDATA_CDCE906~0\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SDATA_CDCL6010~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SDATA_CDCL6010~en_regout\,
	oe => VCC,
	padio => SDATA_CDCL6010,
	combout => \SDATA_CDCL6010~0\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_EMU0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => F1_EMU0,
	combout => \F1_EMU0~0\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_EMU1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => F1_EMU1,
	combout => \F1_EMU1~0\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_12M~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK_12M,
	combout => \CLK_12M~combout\);

-- Location: LC_X6_Y3_N6
\~GND\ : maxii_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X2_Y2_N1
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (!DIV_COUNTER(0))
-- \Add0~2\ = CARRY((DIV_COUNTER(0)))
-- \Add0~2COUT1_42\ = CARRY((DIV_COUNTER(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => DIV_COUNTER(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_42\);

-- Location: LC_X2_Y2_N2
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (DIV_COUNTER(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY(((!\Add0~2\) # (!DIV_COUNTER(1))))
-- \Add0~7COUT1_44\ = CARRY(((!\Add0~2COUT1_42\) # (!DIV_COUNTER(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => DIV_COUNTER(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_44\);

-- Location: LC_X2_Y2_N3
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (DIV_COUNTER(2) $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY(((DIV_COUNTER(2) & !\Add0~7\)))
-- \Add0~12COUT1_46\ = CARRY(((DIV_COUNTER(2) & !\Add0~7COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => DIV_COUNTER(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_46\);

-- Location: LC_X2_Y2_N9
\DIV_COUNTER[2]\ : maxii_lcell
-- Equation(s):
-- DIV_COUNTER(2) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIV_COUNTER(2));

-- Location: LC_X2_Y2_N8
\DIV_COUNTER[0]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!DIV_COUNTER(3) & (DIV_COUNTER(1) & (DIV_COUNTER[0] & DIV_COUNTER(2))))
-- DIV_COUNTER(0) = DFFEAS(\Equal0~0\, GLOBAL(\CLK_12M~combout\), VCC, , , \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => DIV_COUNTER(3),
	datab => DIV_COUNTER(1),
	datac => \Add0~0_combout\,
	datad => DIV_COUNTER(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => DIV_COUNTER(0));

-- Location: LC_X2_Y2_N0
\DIV_COUNTER[1]\ : maxii_lcell
-- Equation(s):
-- DIV_COUNTER(1) = DFFEAS((((\Add0~5_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datad => \Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIV_COUNTER(1));

-- Location: LC_X2_Y2_N5
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = DIV_COUNTER(4) $ ((((!\Add0~17\))))
-- \Add0~22\ = CARRY((DIV_COUNTER(4) & ((!\Add0~17\))))
-- \Add0~22COUT1_48\ = CARRY((DIV_COUNTER(4) & ((!\Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => DIV_COUNTER(4),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_48\);

-- Location: LC_X2_Y4_N0
\DIV_COUNTER[4]\ : maxii_lcell
-- Equation(s):
-- DIV_COUNTER(4) = DFFEAS((((!\Equal0~1\ & \Add0~20_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datac => \Equal0~1\,
	datad => \Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIV_COUNTER(4));

-- Location: LC_X2_Y2_N6
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (DIV_COUNTER(5) $ (((!\Add0~17\ & \Add0~22\) # (\Add0~17\ & \Add0~22COUT1_48\))))
-- \Add0~27\ = CARRY(((!\Add0~22\) # (!DIV_COUNTER(5))))
-- \Add0~27COUT1_50\ = CARRY(((!\Add0~22COUT1_48\) # (!DIV_COUNTER(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => DIV_COUNTER(5),
	cin => \Add0~17\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_50\);

-- Location: LC_X2_Y2_N7
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (((!\Add0~17\ & \Add0~27\) # (\Add0~17\ & \Add0~27COUT1_50\) $ (!DIV_COUNTER(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => DIV_COUNTER(6),
	cin => \Add0~17\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\);

-- Location: LC_X2_Y4_N8
\DIV_COUNTER[6]\ : maxii_lcell
-- Equation(s):
-- DIV_COUNTER(6) = DFFEAS((!\Equal0~1\ & (((\Add0~30_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Equal0~1\,
	datac => \Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIV_COUNTER(6));

-- Location: LC_X2_Y4_N5
SMBUS_EN : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (DIV_COUNTER(5) & (\Equal0~0\ & (DIV_COUNTER(4) & DIV_COUNTER(6))))
-- \SMBUS_EN~regout\ = DFFEAS(\Equal0~1\, GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => DIV_COUNTER(5),
	datab => \Equal0~0\,
	datac => DIV_COUNTER(4),
	datad => DIV_COUNTER(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => \SMBUS_EN~regout\);

-- Location: LC_X2_Y2_N4
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (DIV_COUNTER(3) $ ((\Add0~12\)))
-- \Add0~17\ = CARRY(((!\Add0~12COUT1_46\) # (!DIV_COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => DIV_COUNTER(3),
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X2_Y4_N2
\DIV_COUNTER[3]\ : maxii_lcell
-- Equation(s):
-- DIV_COUNTER(3) = DFFEAS((!\Equal0~1\ & (((\Add0~15_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Equal0~1\,
	datac => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIV_COUNTER(3));

-- Location: LC_X2_Y4_N6
\DIV_COUNTER[5]\ : maxii_lcell
-- Equation(s):
-- DIV_COUNTER(5) = DFFEAS((((\Add0~25_combout\ & !\Equal0~1\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datac => \Add0~25_combout\,
	datad => \Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIV_COUNTER(5));

-- Location: LC_X4_Y1_N5
RESET : maxii_lcell
-- Equation(s):
-- \RESET~regout\ = DFFEAS((\RESET~regout\ & (((!\LessThan0~4_combout\)) # (!\SMBUS_EN~regout\))), GLOBAL(\CLK_12M~combout\), VCC, , , VCC, , , !\RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \RESET~regout\,
	datab => \SMBUS_EN~regout\,
	datac => VCC,
	datad => \LessThan0~4_combout\,
	aclr => GND,
	sload => \ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET~regout\);

-- Location: LC_X4_Y1_N4
\COUNTER[11]~24\ : maxii_lcell
-- Equation(s):
-- \COUNTER[11]~24_combout\ = (\RESET~regout\ & (((\SMBUS_EN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~regout\,
	datac => \SMBUS_EN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \COUNTER[11]~24_combout\);

-- Location: LC_X5_Y3_N4
\COUNTER[0]\ : maxii_lcell
-- Equation(s):
-- COUNTER(0) = DFFEAS(((!COUNTER(0))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)
-- \COUNTER[0]~21\ = CARRY(((COUNTER(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => COUNTER(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(0),
	cout => \COUNTER[0]~21\);

-- Location: LC_X5_Y3_N5
\COUNTER[1]\ : maxii_lcell
-- Equation(s):
-- COUNTER(1) = DFFEAS(COUNTER(1) $ ((((\COUNTER[0]~21\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)
-- \COUNTER[1]~23\ = CARRY(((!\COUNTER[0]~21\)) # (!COUNTER(1)))
-- \COUNTER[1]~23COUT1_35\ = CARRY(((!\COUNTER[0]~21\)) # (!COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[0]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(1),
	cout0 => \COUNTER[1]~23\,
	cout1 => \COUNTER[1]~23COUT1_35\);

-- Location: LC_X5_Y3_N6
\COUNTER[2]\ : maxii_lcell
-- Equation(s):
-- COUNTER(2) = DFFEAS(COUNTER(2) $ ((((!(!\COUNTER[0]~21\ & \COUNTER[1]~23\) # (\COUNTER[0]~21\ & \COUNTER[1]~23COUT1_35\))))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, VCC, , , \LessThan0~4_combout\)
-- \COUNTER[2]~9\ = CARRY((COUNTER(2) & ((!\COUNTER[1]~23\))))
-- \COUNTER[2]~9COUT1_37\ = CARRY((COUNTER(2) & ((!\COUNTER[1]~23COUT1_35\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(2),
	datac => VCC,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[0]~21\,
	cin0 => \COUNTER[1]~23\,
	cin1 => \COUNTER[1]~23COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(2),
	cout0 => \COUNTER[2]~9\,
	cout1 => \COUNTER[2]~9COUT1_37\);

-- Location: LC_X5_Y3_N7
\COUNTER[3]\ : maxii_lcell
-- Equation(s):
-- COUNTER(3) = DFFEAS((COUNTER(3) $ (((!\COUNTER[0]~21\ & \COUNTER[2]~9\) # (\COUNTER[0]~21\ & \COUNTER[2]~9COUT1_37\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, VCC, , , \LessThan0~4_combout\)
-- \COUNTER[3]~11\ = CARRY(((!\COUNTER[2]~9\) # (!COUNTER(3))))
-- \COUNTER[3]~11COUT1_39\ = CARRY(((!\COUNTER[2]~9COUT1_37\) # (!COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => COUNTER(3),
	datac => VCC,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[0]~21\,
	cin0 => \COUNTER[2]~9\,
	cin1 => \COUNTER[2]~9COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(3),
	cout0 => \COUNTER[3]~11\,
	cout1 => \COUNTER[3]~11COUT1_39\);

-- Location: LC_X5_Y3_N8
\COUNTER[4]\ : maxii_lcell
-- Equation(s):
-- COUNTER(4) = DFFEAS(COUNTER(4) $ ((((!(!\COUNTER[0]~21\ & \COUNTER[3]~11\) # (\COUNTER[0]~21\ & \COUNTER[3]~11COUT1_39\))))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)
-- \COUNTER[4]~13\ = CARRY((COUNTER(4) & ((!\COUNTER[3]~11\))))
-- \COUNTER[4]~13COUT1_41\ = CARRY((COUNTER(4) & ((!\COUNTER[3]~11COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[0]~21\,
	cin0 => \COUNTER[3]~11\,
	cin1 => \COUNTER[3]~11COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(4),
	cout0 => \COUNTER[4]~13\,
	cout1 => \COUNTER[4]~13COUT1_41\);

-- Location: LC_X5_Y3_N9
\COUNTER[5]\ : maxii_lcell
-- Equation(s):
-- COUNTER(5) = DFFEAS((COUNTER(5) $ (((!\COUNTER[0]~21\ & \COUNTER[4]~13\) # (\COUNTER[0]~21\ & \COUNTER[4]~13COUT1_41\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, VCC, , , \LessThan0~4_combout\)
-- \COUNTER[5]~1\ = CARRY(((!\COUNTER[4]~13COUT1_41\) # (!COUNTER(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => COUNTER(5),
	datac => VCC,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[0]~21\,
	cin0 => \COUNTER[4]~13\,
	cin1 => \COUNTER[4]~13COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(5),
	cout => \COUNTER[5]~1\);

-- Location: LC_X6_Y3_N0
\COUNTER[6]\ : maxii_lcell
-- Equation(s):
-- COUNTER(6) = DFFEAS((COUNTER(6) $ ((!\COUNTER[5]~1\))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, VCC, , , \LessThan0~4_combout\)
-- \COUNTER[6]~3\ = CARRY(((COUNTER(6) & !\COUNTER[5]~1\)))
-- \COUNTER[6]~3COUT1_43\ = CARRY(((COUNTER(6) & !\COUNTER[5]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => COUNTER(6),
	datac => VCC,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[5]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(6),
	cout0 => \COUNTER[6]~3\,
	cout1 => \COUNTER[6]~3COUT1_43\);

-- Location: LC_X6_Y3_N1
\COUNTER[7]\ : maxii_lcell
-- Equation(s):
-- COUNTER(7) = DFFEAS((COUNTER(7) $ (((!\COUNTER[5]~1\ & \COUNTER[6]~3\) # (\COUNTER[5]~1\ & \COUNTER[6]~3COUT1_43\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)
-- \COUNTER[7]~5\ = CARRY(((!\COUNTER[6]~3\) # (!COUNTER(7))))
-- \COUNTER[7]~5COUT1_45\ = CARRY(((!\COUNTER[6]~3COUT1_43\) # (!COUNTER(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => COUNTER(7),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[5]~1\,
	cin0 => \COUNTER[6]~3\,
	cin1 => \COUNTER[6]~3COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(7),
	cout0 => \COUNTER[7]~5\,
	cout1 => \COUNTER[7]~5COUT1_45\);

-- Location: LC_X6_Y3_N2
\COUNTER[8]\ : maxii_lcell
-- Equation(s):
-- COUNTER(8) = DFFEAS((COUNTER(8) $ ((!(!\COUNTER[5]~1\ & \COUNTER[7]~5\) # (\COUNTER[5]~1\ & \COUNTER[7]~5COUT1_45\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)
-- \COUNTER[8]~7\ = CARRY(((COUNTER(8) & !\COUNTER[7]~5\)))
-- \COUNTER[8]~7COUT1_47\ = CARRY(((COUNTER(8) & !\COUNTER[7]~5COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => COUNTER(8),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[5]~1\,
	cin0 => \COUNTER[7]~5\,
	cin1 => \COUNTER[7]~5COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(8),
	cout0 => \COUNTER[8]~7\,
	cout1 => \COUNTER[8]~7COUT1_47\);

-- Location: LC_X6_Y3_N3
\COUNTER[9]\ : maxii_lcell
-- Equation(s):
-- COUNTER(9) = DFFEAS(COUNTER(9) $ (((((!\COUNTER[5]~1\ & \COUNTER[8]~7\) # (\COUNTER[5]~1\ & \COUNTER[8]~7COUT1_47\))))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, VCC, , , \LessThan0~4_combout\)
-- \COUNTER[9]~19\ = CARRY(((!\COUNTER[8]~7\)) # (!COUNTER(9)))
-- \COUNTER[9]~19COUT1_49\ = CARRY(((!\COUNTER[8]~7COUT1_47\)) # (!COUNTER(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(9),
	datac => VCC,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[5]~1\,
	cin0 => \COUNTER[8]~7\,
	cin1 => \COUNTER[8]~7COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(9),
	cout0 => \COUNTER[9]~19\,
	cout1 => \COUNTER[9]~19COUT1_49\);

-- Location: LC_X6_Y3_N4
\COUNTER[10]\ : maxii_lcell
-- Equation(s):
-- COUNTER(10) = DFFEAS(COUNTER(10) $ ((((!(!\COUNTER[5]~1\ & \COUNTER[9]~19\) # (\COUNTER[5]~1\ & \COUNTER[9]~19COUT1_49\))))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)
-- \COUNTER[10]~15\ = CARRY((COUNTER(10) & ((!\COUNTER[9]~19COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(10),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[5]~1\,
	cin0 => \COUNTER[9]~19\,
	cin1 => \COUNTER[9]~19COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(10),
	cout => \COUNTER[10]~15\);

-- Location: LC_X6_Y3_N5
\COUNTER[11]\ : maxii_lcell
-- Equation(s):
-- COUNTER(11) = DFFEAS(COUNTER(11) $ ((((\COUNTER[10]~15\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, \~GND~combout\, , , \LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(11),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \LessThan0~4_combout\,
	ena => \COUNTER[11]~24_combout\,
	cin => \COUNTER[10]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNTER(11));

-- Location: LC_X4_Y3_N0
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (COUNTER(3) & (COUNTER(4) & ((COUNTER(0)) # (COUNTER(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(4),
	datac => COUNTER(0),
	datad => COUNTER(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X4_Y3_N9
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = ((COUNTER(5) & (COUNTER(2) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(5),
	datac => COUNTER(2),
	datad => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X4_Y3_N1
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (COUNTER(11) & ((COUNTER(10)) # ((COUNTER(8)) # (COUNTER(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(10),
	datab => COUNTER(8),
	datac => COUNTER(11),
	datad => COUNTER(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X4_Y2_N8
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((COUNTER(6) & COUNTER(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => COUNTER(6),
	datad => COUNTER(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X4_Y3_N7
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((COUNTER(11) & (\LessThan0~3_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(11),
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X6_Y2_N3
\LessThan5~1\ : maxii_lcell
-- Equation(s):
-- \LessThan5~1_combout\ = (((!COUNTER(3) & !COUNTER(2))) # (!COUNTER(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datac => COUNTER(4),
	datad => COUNTER(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~1_combout\);

-- Location: LC_X6_Y2_N4
\LessThan5~0\ : maxii_lcell
-- Equation(s):
-- \LessThan5~0_combout\ = (!COUNTER(6) & (!COUNTER(8) & (!COUNTER(5) & !COUNTER(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datab => COUNTER(8),
	datac => COUNTER(5),
	datad => COUNTER(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~0_combout\);

-- Location: LC_X5_Y4_N8
\EN_DVDD_1V1~2\ : maxii_lcell
-- Equation(s):
-- \EN_DVDD_1V1~2_combout\ = (!COUNTER(11) & (((!COUNTER(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(11),
	datad => COUNTER(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EN_DVDD_1V1~2_combout\);

-- Location: LC_X6_Y2_N0
\EN_DVDD_1V8~reg0\ : maxii_lcell
-- Equation(s):
-- \EN_DVDD_1V8~reg0_regout\ = DFFEAS(((COUNTER(9)) # ((!\EN_DVDD_1V1~2_combout\) # (!\LessThan5~0_combout\))) # (!\LessThan5~1_combout\), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \LessThan5~1_combout\,
	datab => COUNTER(9),
	datac => \LessThan5~0_combout\,
	datad => \EN_DVDD_1V1~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EN_DVDD_1V8~reg0_regout\);

-- Location: LC_X6_Y2_N2
\EN_DVDD_1V1~3\ : maxii_lcell
-- Equation(s):
-- \EN_DVDD_1V1~3_combout\ = (\LessThan5~1_combout\) # (((!\LessThan0~0_combout\) # (!COUNTER(5))) # (!COUNTER(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => COUNTER(8),
	datac => COUNTER(5),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EN_DVDD_1V1~3_combout\);

-- Location: LC_X6_Y3_N9
\EN_DVDD_1V1~reg0\ : maxii_lcell
-- Equation(s):
-- \EN_DVDD_1V1~4\ = (!COUNTER(11) & (\EN_DVDD_1V1~3_combout\ & (!COUNTER(10) & !COUNTER(9))))
-- \EN_DVDD_1V1~reg0_regout\ = DFFEAS(\EN_DVDD_1V1~4\, GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => COUNTER(11),
	datab => \EN_DVDD_1V1~3_combout\,
	datac => COUNTER(10),
	datad => COUNTER(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EN_DVDD_1V1~4\,
	regout => \EN_DVDD_1V1~reg0_regout\);

-- Location: LC_X6_Y3_N7
\EN_CPU_CORE~reg0\ : maxii_lcell
-- Equation(s):
-- \EN_CPU_CORE~reg0_regout\ = DFFEAS((((\EN_DVDD_1V1~4\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datad => \EN_DVDD_1V1~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EN_CPU_CORE~reg0_regout\);

-- Location: LC_X5_Y3_N2
\LessThan9~2\ : maxii_lcell
-- Equation(s):
-- \LessThan9~2_combout\ = (COUNTER(3) & ((COUNTER(2)) # ((COUNTER(1) & COUNTER(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(3),
	datac => COUNTER(2),
	datad => COUNTER(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan9~2_combout\);

-- Location: LC_X5_Y3_N0
\LessThan9~3\ : maxii_lcell
-- Equation(s):
-- \LessThan9~3_combout\ = (COUNTER(4)) # ((COUNTER(5)) # ((COUNTER(6)) # (\LessThan9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(5),
	datac => COUNTER(6),
	datad => \LessThan9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan9~3_combout\);

-- Location: LC_X5_Y4_N6
\LessThan9~4\ : maxii_lcell
-- Equation(s):
-- \LessThan9~4_combout\ = (COUNTER(9) & ((COUNTER(8)) # ((COUNTER(7) & \LessThan9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datab => COUNTER(9),
	datac => COUNTER(7),
	datad => \LessThan9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan9~4_combout\);

-- Location: LC_X5_Y4_N4
\SCLK_LOGIC~0\ : maxii_lcell
-- Equation(s):
-- \SCLK_LOGIC~0_combout\ = (\SMBUS_EN~regout\ & (\RESET~regout\ & ((\LessThan9~4_combout\) # (!\EN_DVDD_1V1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SMBUS_EN~regout\,
	datab => \RESET~regout\,
	datac => \LessThan9~4_combout\,
	datad => \EN_DVDD_1V1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SCLK_LOGIC~0_combout\);

-- Location: LC_X5_Y4_N9
\process_1~1\ : maxii_lcell
-- Equation(s):
-- \process_1~1_combout\ = (COUNTER(11)) # ((COUNTER(6)) # ((COUNTER(10)) # (!COUNTER(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(11),
	datab => COUNTER(6),
	datac => COUNTER(7),
	datad => COUNTER(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1_combout\);

-- Location: LC_X4_Y2_N7
\process_1~2\ : maxii_lcell
-- Equation(s):
-- \process_1~2_combout\ = (COUNTER(8)) # ((\process_1~1_combout\) # ((!\LessThan0~3_combout\) # (!COUNTER(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datab => \process_1~1_combout\,
	datac => COUNTER(9),
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~2_combout\);

-- Location: LC_X6_Y3_N8
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = ((COUNTER(6) & (COUNTER(11) & COUNTER(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(6),
	datac => COUNTER(11),
	datad => COUNTER(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X7_Y1_N7
\kickoff_num_CDCL6010~3\ : maxii_lcell
-- Equation(s):
-- \kickoff_num_CDCL6010~3_combout\ = (kickoff_num_CDCL6010(2) & (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => kickoff_num_CDCL6010(2),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \kickoff_num_CDCL6010~3_combout\);

-- Location: LC_X4_Y3_N5
\Mult0|mult_core|romout[0][6]~2\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~2_combout\ = (!\LessThan0~4_combout\ & ((kickoff_num_CDCL6010(1) & (!kickoff_num_CDCL6010(2) & \kickoff_num_CDCL6010~0_combout\)) # (!kickoff_num_CDCL6010(1) & (kickoff_num_CDCL6010(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0604",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(1),
	datab => kickoff_num_CDCL6010(2),
	datac => \LessThan0~4_combout\,
	datad => \kickoff_num_CDCL6010~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][6]~2_combout\);

-- Location: LC_X4_Y3_N8
\Mult0|mult_core|romout[0][5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~combout\ = (!\LessThan0~4_combout\ & ((kickoff_num_CDCL6010(1) & (!\kickoff_num_CDCL6010~0_combout\ & !kickoff_num_CDCL6010(2))) # (!kickoff_num_CDCL6010(1) & (\kickoff_num_CDCL6010~0_combout\ & kickoff_num_CDCL6010(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(1),
	datab => \LessThan0~4_combout\,
	datac => \kickoff_num_CDCL6010~0_combout\,
	datad => kickoff_num_CDCL6010(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][5]~combout\);

-- Location: LC_X5_Y2_N8
\Mult0|mult_core|romout[0][4]~3\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~3_combout\ = (!\LessThan0~4_combout\ & ((kickoff_num_CDCL6010(0) & (kickoff_num_CDCL6010(1) $ (!kickoff_num_CDCL6010(2)))) # (!kickoff_num_CDCL6010(0) & (!kickoff_num_CDCL6010(1) & kickoff_num_CDCL6010(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0092",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(0),
	datab => kickoff_num_CDCL6010(1),
	datac => kickoff_num_CDCL6010(2),
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][4]~3_combout\);

-- Location: LC_X4_Y3_N4
\Mult0|mult_core|romout[0][3]~4\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~4_combout\ = (!\LessThan0~4_combout\ & (kickoff_num_CDCL6010(2) $ (((kickoff_num_CDCL6010(1) & !\kickoff_num_CDCL6010~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(1),
	datab => \LessThan0~4_combout\,
	datac => \kickoff_num_CDCL6010~0_combout\,
	datad => kickoff_num_CDCL6010(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][3]~4_combout\);

-- Location: LC_X4_Y3_N3
\Mult0|mult_core|romout[0][2]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][2]~5_combout\ = \kickoff_num_CDCL6010~0_combout\ $ (((kickoff_num_CDCL6010(1) & (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(1),
	datab => \LessThan0~4_combout\,
	datac => \kickoff_num_CDCL6010~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][2]~5_combout\);

-- Location: LC_X3_Y3_N0
\Add3~47\ : maxii_lcell
-- Equation(s):
-- \Add3~47_cout0\ = CARRY((\Mult0|mult_core|romout[0][2]~5_combout\))
-- \Add3~47COUT1_60\ = CARRY((\Mult0|mult_core|romout[0][2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45\,
	cout0 => \Add3~47_cout0\,
	cout1 => \Add3~47COUT1_60\);

-- Location: LC_X3_Y3_N1
\Add3~40\ : maxii_lcell
-- Equation(s):
-- \Add3~40_combout\ = (\Mult0|mult_core|romout[0][3]~4_combout\ $ ((\Add3~47_cout0\)))
-- \Add3~42\ = CARRY(((!\Add3~47_cout0\) # (!\Mult0|mult_core|romout[0][3]~4_combout\)))
-- \Add3~42COUT1_62\ = CARRY(((!\Add3~47COUT1_60\) # (!\Mult0|mult_core|romout[0][3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][3]~4_combout\,
	cin0 => \Add3~47_cout0\,
	cin1 => \Add3~47COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_62\);

-- Location: LC_X3_Y3_N2
\Add3~35\ : maxii_lcell
-- Equation(s):
-- \Add3~35_combout\ = (\Mult0|mult_core|romout[0][4]~3_combout\ $ ((!\Add3~42\)))
-- \Add3~37\ = CARRY(((\Mult0|mult_core|romout[0][4]~3_combout\ & !\Add3~42\)))
-- \Add3~37COUT1_64\ = CARRY(((\Mult0|mult_core|romout[0][4]~3_combout\ & !\Add3~42COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][4]~3_combout\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_64\);

-- Location: LC_X3_Y3_N3
\Add3~30\ : maxii_lcell
-- Equation(s):
-- \Add3~30_combout\ = (\Mult0|mult_core|romout[0][5]~combout\ $ ((\Add3~37\)))
-- \Add3~32\ = CARRY(((!\Add3~37\) # (!\Mult0|mult_core|romout[0][5]~combout\)))
-- \Add3~32COUT1_66\ = CARRY(((!\Add3~37COUT1_64\) # (!\Mult0|mult_core|romout[0][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][5]~combout\,
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_66\);

-- Location: LC_X3_Y3_N4
\Add3~25\ : maxii_lcell
-- Equation(s):
-- \Add3~25_combout\ = (\Mult0|mult_core|romout[0][6]~2_combout\ $ ((\Add3~32\)))
-- \Add3~27\ = CARRY(((\Mult0|mult_core|romout[0][6]~2_combout\) # (!\Add3~32COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][6]~2_combout\,
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout => \Add3~27\);

-- Location: LC_X5_Y2_N0
\Mult0|mult_core|_~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (kickoff_num_CDCL6010(2) & (!\LessThan0~4_combout\ & (kickoff_num_CDCL6010(1) & \kickoff_num_CDCL6010~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(2),
	datab => \LessThan0~4_combout\,
	datac => kickoff_num_CDCL6010(1),
	datad => \kickoff_num_CDCL6010~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LC_X5_Y2_N9
\Mult0|mult_core|romout[0][9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~combout\ = (kickoff_num_CDCL6010(2) & (!\LessThan0~4_combout\ & ((!kickoff_num_CDCL6010(1)) # (!\kickoff_num_CDCL6010~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \kickoff_num_CDCL6010~0_combout\,
	datab => kickoff_num_CDCL6010(2),
	datac => kickoff_num_CDCL6010(1),
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][9]~combout\);

-- Location: LC_X4_Y3_N2
\Mult0|mult_core|romout[0][7]~1\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~1_combout\ = \kickoff_num_CDCL6010~0_combout\ $ (((kickoff_num_CDCL6010(1) & (!\LessThan0~4_combout\ & kickoff_num_CDCL6010(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(1),
	datab => \LessThan0~4_combout\,
	datac => kickoff_num_CDCL6010(2),
	datad => \kickoff_num_CDCL6010~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][7]~1_combout\);

-- Location: LC_X3_Y3_N5
\Add3~20\ : maxii_lcell
-- Equation(s):
-- \Add3~20_combout\ = (\Mult0|mult_core|romout[0][7]~1_combout\ $ ((\Add3~27\)))
-- \Add3~22\ = CARRY(((!\Add3~27\) # (!\Mult0|mult_core|romout[0][7]~1_combout\)))
-- \Add3~22COUT1_68\ = CARRY(((!\Add3~27\) # (!\Mult0|mult_core|romout[0][7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][7]~1_combout\,
	cin => \Add3~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout0 => \Add3~22\,
	cout1 => \Add3~22COUT1_68\);

-- Location: LC_X3_Y3_N6
\Add3~15\ : maxii_lcell
-- Equation(s):
-- \Add3~15_combout\ = (\Mult0|mult_core|romout[0][8]~0_combout\ $ ((!(!\Add3~27\ & \Add3~22\) # (\Add3~27\ & \Add3~22COUT1_68\))))
-- \Add3~17\ = CARRY(((\Mult0|mult_core|romout[0][8]~0_combout\ & !\Add3~22\)))
-- \Add3~17COUT1_70\ = CARRY(((\Mult0|mult_core|romout[0][8]~0_combout\ & !\Add3~22COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][8]~0_combout\,
	cin => \Add3~27\,
	cin0 => \Add3~22\,
	cin1 => \Add3~22COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_70\);

-- Location: LC_X3_Y3_N7
\Add3~10\ : maxii_lcell
-- Equation(s):
-- \Add3~10_combout\ = \Mult0|mult_core|romout[0][9]~combout\ $ ((((!(!\Add3~27\ & \Add3~17\) # (\Add3~27\ & \Add3~17COUT1_70\)))))
-- \Add3~12\ = CARRY((!\Mult0|mult_core|romout[0][9]~combout\ & ((!\Add3~17\))))
-- \Add3~12COUT1_72\ = CARRY((!\Mult0|mult_core|romout[0][9]~combout\ & ((!\Add3~17COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~combout\,
	cin => \Add3~27\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_72\);

-- Location: LC_X3_Y3_N8
\Add3~5\ : maxii_lcell
-- Equation(s):
-- \Add3~5_combout\ = (\Mult0|mult_core|_~0_combout\ $ (((!\Add3~27\ & \Add3~12\) # (\Add3~27\ & \Add3~12COUT1_72\))))
-- \Add3~7\ = CARRY(((\Mult0|mult_core|_~0_combout\) # (!\Add3~12\)))
-- \Add3~7COUT1_74\ = CARRY(((\Mult0|mult_core|_~0_combout\) # (!\Add3~12COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|_~0_combout\,
	cin => \Add3~27\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_74\);

-- Location: LC_X3_Y3_N9
\Add3~0\ : maxii_lcell
-- Equation(s):
-- \Add3~0_combout\ = ((((!\Add3~27\ & \Add3~7\) # (\Add3~27\ & \Add3~7COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~27\,
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\);

-- Location: LC_X6_Y2_N5
\LessThan4~52\ : maxii_lcell
-- Equation(s):
-- \LessThan4~52_cout0\ = CARRY((!COUNTER(1) & (\kickoff_num_CDCL6010~0_combout\)))
-- \LessThan4~52COUT1_65\ = CARRY((!COUNTER(1) & (\kickoff_num_CDCL6010~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => \kickoff_num_CDCL6010~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~50\,
	cout0 => \LessThan4~52_cout0\,
	cout1 => \LessThan4~52COUT1_65\);

-- Location: LC_X6_Y2_N6
\LessThan4~47\ : maxii_lcell
-- Equation(s):
-- \LessThan4~47_cout0\ = CARRY((\Mult0|mult_core|romout[0][2]~5_combout\ & ((COUNTER(2)) # (!\LessThan4~52_cout0\))) # (!\Mult0|mult_core|romout[0][2]~5_combout\ & (COUNTER(2) & !\LessThan4~52_cout0\)))
-- \LessThan4~47COUT1_67\ = CARRY((\Mult0|mult_core|romout[0][2]~5_combout\ & ((COUNTER(2)) # (!\LessThan4~52COUT1_65\))) # (!\Mult0|mult_core|romout[0][2]~5_combout\ & (COUNTER(2) & !\LessThan4~52COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][2]~5_combout\,
	datab => COUNTER(2),
	cin0 => \LessThan4~52_cout0\,
	cin1 => \LessThan4~52COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~45\,
	cout0 => \LessThan4~47_cout0\,
	cout1 => \LessThan4~47COUT1_67\);

-- Location: LC_X6_Y2_N7
\LessThan4~42\ : maxii_lcell
-- Equation(s):
-- \LessThan4~42_cout0\ = CARRY((COUNTER(3) & (\Add3~40_combout\ & !\LessThan4~47_cout0\)) # (!COUNTER(3) & ((\Add3~40_combout\) # (!\LessThan4~47_cout0\))))
-- \LessThan4~42COUT1_69\ = CARRY((COUNTER(3) & (\Add3~40_combout\ & !\LessThan4~47COUT1_67\)) # (!COUNTER(3) & ((\Add3~40_combout\) # (!\LessThan4~47COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => \Add3~40_combout\,
	cin0 => \LessThan4~47_cout0\,
	cin1 => \LessThan4~47COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~40\,
	cout0 => \LessThan4~42_cout0\,
	cout1 => \LessThan4~42COUT1_69\);

-- Location: LC_X6_Y2_N8
\LessThan4~37\ : maxii_lcell
-- Equation(s):
-- \LessThan4~37_cout0\ = CARRY((\Add3~35_combout\ & (COUNTER(4) & !\LessThan4~42_cout0\)) # (!\Add3~35_combout\ & ((COUNTER(4)) # (!\LessThan4~42_cout0\))))
-- \LessThan4~37COUT1_71\ = CARRY((\Add3~35_combout\ & (COUNTER(4) & !\LessThan4~42COUT1_69\)) # (!\Add3~35_combout\ & ((COUNTER(4)) # (!\LessThan4~42COUT1_69\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~35_combout\,
	datab => COUNTER(4),
	cin0 => \LessThan4~42_cout0\,
	cin1 => \LessThan4~42COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~35\,
	cout0 => \LessThan4~37_cout0\,
	cout1 => \LessThan4~37COUT1_71\);

-- Location: LC_X6_Y2_N9
\LessThan4~32\ : maxii_lcell
-- Equation(s):
-- \LessThan4~32_cout\ = CARRY((COUNTER(5) & (\Add3~30_combout\ & !\LessThan4~37COUT1_71\)) # (!COUNTER(5) & ((\Add3~30_combout\) # (!\LessThan4~37COUT1_71\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => \Add3~30_combout\,
	cin0 => \LessThan4~37_cout0\,
	cin1 => \LessThan4~37COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~30\,
	cout => \LessThan4~32_cout\);

-- Location: LC_X7_Y2_N0
\LessThan4~27\ : maxii_lcell
-- Equation(s):
-- \LessThan4~27_cout0\ = CARRY((COUNTER(6) & ((!\LessThan4~32_cout\) # (!\Add3~25_combout\))) # (!COUNTER(6) & (!\Add3~25_combout\ & !\LessThan4~32_cout\)))
-- \LessThan4~27COUT1_73\ = CARRY((COUNTER(6) & ((!\LessThan4~32_cout\) # (!\Add3~25_combout\))) # (!COUNTER(6) & (!\Add3~25_combout\ & !\LessThan4~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datab => \Add3~25_combout\,
	cin => \LessThan4~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~25\,
	cout0 => \LessThan4~27_cout0\,
	cout1 => \LessThan4~27COUT1_73\);

-- Location: LC_X7_Y2_N1
\LessThan4~22\ : maxii_lcell
-- Equation(s):
-- \LessThan4~22_cout0\ = CARRY((COUNTER(7) & (\Add3~20_combout\ & !\LessThan4~27_cout0\)) # (!COUNTER(7) & ((\Add3~20_combout\) # (!\LessThan4~27_cout0\))))
-- \LessThan4~22COUT1_75\ = CARRY((COUNTER(7) & (\Add3~20_combout\ & !\LessThan4~27COUT1_73\)) # (!COUNTER(7) & ((\Add3~20_combout\) # (!\LessThan4~27COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(7),
	datab => \Add3~20_combout\,
	cin => \LessThan4~32_cout\,
	cin0 => \LessThan4~27_cout0\,
	cin1 => \LessThan4~27COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~20\,
	cout0 => \LessThan4~22_cout0\,
	cout1 => \LessThan4~22COUT1_75\);

-- Location: LC_X7_Y2_N2
\LessThan4~17\ : maxii_lcell
-- Equation(s):
-- \LessThan4~17_cout0\ = CARRY((COUNTER(8) & ((!\LessThan4~22_cout0\) # (!\Add3~15_combout\))) # (!COUNTER(8) & (!\Add3~15_combout\ & !\LessThan4~22_cout0\)))
-- \LessThan4~17COUT1_77\ = CARRY((COUNTER(8) & ((!\LessThan4~22COUT1_75\) # (!\Add3~15_combout\))) # (!COUNTER(8) & (!\Add3~15_combout\ & !\LessThan4~22COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datab => \Add3~15_combout\,
	cin => \LessThan4~32_cout\,
	cin0 => \LessThan4~22_cout0\,
	cin1 => \LessThan4~22COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~15\,
	cout0 => \LessThan4~17_cout0\,
	cout1 => \LessThan4~17COUT1_77\);

-- Location: LC_X7_Y2_N3
\LessThan4~12\ : maxii_lcell
-- Equation(s):
-- \LessThan4~12_cout0\ = CARRY((COUNTER(9) & (\Add3~10_combout\ & !\LessThan4~17_cout0\)) # (!COUNTER(9) & ((\Add3~10_combout\) # (!\LessThan4~17_cout0\))))
-- \LessThan4~12COUT1_79\ = CARRY((COUNTER(9) & (\Add3~10_combout\ & !\LessThan4~17COUT1_77\)) # (!COUNTER(9) & ((\Add3~10_combout\) # (!\LessThan4~17COUT1_77\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(9),
	datab => \Add3~10_combout\,
	cin => \LessThan4~32_cout\,
	cin0 => \LessThan4~17_cout0\,
	cin1 => \LessThan4~17COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~10\,
	cout0 => \LessThan4~12_cout0\,
	cout1 => \LessThan4~12COUT1_79\);

-- Location: LC_X7_Y2_N4
\LessThan4~7\ : maxii_lcell
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\Add3~5_combout\ & (COUNTER(10) & !\LessThan4~12COUT1_79\)) # (!\Add3~5_combout\ & ((COUNTER(10)) # (!\LessThan4~12COUT1_79\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~5_combout\,
	datab => COUNTER(10),
	cin => \LessThan4~32_cout\,
	cin0 => \LessThan4~12_cout0\,
	cin1 => \LessThan4~12COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~5\,
	cout => \LessThan4~7_cout\);

-- Location: LC_X7_Y2_N5
\LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = ((COUNTER(11) & (!\LessThan4~7_cout\ & \Add3~0_combout\)) # (!COUNTER(11) & ((\Add3~0_combout\) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(11),
	datad => \Add3~0_combout\,
	cin => \LessThan4~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X7_Y2_N6
\kickoff_num_CDCL6010[0]\ : maxii_lcell
-- Equation(s):
-- \kickoff_num_CDCL6010~5\ = \kickoff_num_CDCL6010~0_combout\ $ (((\process_1~2_combout\ & (\LessThan3~0_combout\ & \LessThan4~0_combout\))))
-- kickoff_num_CDCL6010(0) = DFFEAS(\kickoff_num_CDCL6010~5\, GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \process_1~2_combout\,
	datab => \kickoff_num_CDCL6010~0_combout\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan4~0_combout\,
	aclr => GND,
	ena => \COUNTER[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \kickoff_num_CDCL6010~5\,
	regout => kickoff_num_CDCL6010(0));

-- Location: LC_X4_Y3_N6
\kickoff_num_CDCL6010~0\ : maxii_lcell
-- Equation(s):
-- \kickoff_num_CDCL6010~0_combout\ = (kickoff_num_CDCL6010(0) & (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => kickoff_num_CDCL6010(0),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \kickoff_num_CDCL6010~0_combout\);

-- Location: LC_X7_Y2_N7
\Add4~0\ : maxii_lcell
-- Equation(s):
-- \Add4~0_combout\ = (\kickoff_num_CDCL6010~0_combout\ & (((\LessThan4~0_combout\ & \LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \kickoff_num_CDCL6010~0_combout\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X7_Y1_N0
\kickoff_num_CDCL6010[1]\ : maxii_lcell
-- Equation(s):
-- \kickoff_num_CDCL6010~2\ = (\kickoff_num_CDCL6010~1_combout\ $ (((\process_1~2_combout\ & \Add4~0_combout\))))
-- kickoff_num_CDCL6010(1) = DFFEAS(\kickoff_num_CDCL6010~2\, GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \process_1~2_combout\,
	datac => \kickoff_num_CDCL6010~1_combout\,
	datad => \Add4~0_combout\,
	aclr => GND,
	ena => \COUNTER[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \kickoff_num_CDCL6010~2\,
	regout => kickoff_num_CDCL6010(1));

-- Location: LC_X7_Y1_N5
\kickoff_num_CDCL6010~1\ : maxii_lcell
-- Equation(s):
-- \kickoff_num_CDCL6010~1_combout\ = (kickoff_num_CDCL6010(1) & (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => kickoff_num_CDCL6010(1),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \kickoff_num_CDCL6010~1_combout\);

-- Location: LC_X7_Y2_N9
\kickoff_num_CDCL6010~4\ : maxii_lcell
-- Equation(s):
-- \kickoff_num_CDCL6010~4_combout\ = \kickoff_num_CDCL6010~3_combout\ $ (((\kickoff_num_CDCL6010~1_combout\ & (\Add4~0_combout\ & \process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \kickoff_num_CDCL6010~3_combout\,
	datab => \kickoff_num_CDCL6010~1_combout\,
	datac => \Add4~0_combout\,
	datad => \process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \kickoff_num_CDCL6010~4_combout\);

-- Location: LC_X7_Y2_N8
\kickoff_num_CDCL6010[2]\ : maxii_lcell
-- Equation(s):
-- kickoff_num_CDCL6010(2) = DFFEAS(((\kickoff_num_CDCL6010~4_combout\ & ((\kickoff_num_CDCL6010~5\) # (\kickoff_num_CDCL6010~2\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => \kickoff_num_CDCL6010~4_combout\,
	datac => \kickoff_num_CDCL6010~5\,
	datad => \kickoff_num_CDCL6010~2\,
	aclr => GND,
	ena => \COUNTER[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kickoff_num_CDCL6010(2));

-- Location: LC_X5_Y2_N1
\Mult0|mult_core|romout[0][8]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~0_combout\ = (kickoff_num_CDCL6010(1) & (!\LessThan0~4_combout\ & ((!\kickoff_num_CDCL6010~0_combout\) # (!kickoff_num_CDCL6010(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => kickoff_num_CDCL6010(2),
	datab => \kickoff_num_CDCL6010~0_combout\,
	datac => kickoff_num_CDCL6010(1),
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][8]~0_combout\);

-- Location: LC_X5_Y2_N2
\Add2~27\ : maxii_lcell
-- Equation(s):
-- \Add2~27_cout0\ = CARRY((\Mult0|mult_core|romout[0][6]~2_combout\))
-- \Add2~27COUT1_36\ = CARRY((\Mult0|mult_core|romout[0][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25\,
	cout0 => \Add2~27_cout0\,
	cout1 => \Add2~27COUT1_36\);

-- Location: LC_X5_Y2_N3
\Add2~20\ : maxii_lcell
-- Equation(s):
-- \Add2~20_combout\ = (\Mult0|mult_core|romout[0][7]~1_combout\ $ ((\Add2~27_cout0\)))
-- \Add2~22\ = CARRY(((!\Add2~27_cout0\) # (!\Mult0|mult_core|romout[0][7]~1_combout\)))
-- \Add2~22COUT1_38\ = CARRY(((!\Add2~27COUT1_36\) # (!\Mult0|mult_core|romout[0][7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][7]~1_combout\,
	cin0 => \Add2~27_cout0\,
	cin1 => \Add2~27COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_38\);

-- Location: LC_X5_Y2_N4
\Add2~15\ : maxii_lcell
-- Equation(s):
-- \Add2~15_combout\ = (\Mult0|mult_core|romout[0][8]~0_combout\ $ ((!\Add2~22\)))
-- \Add2~17\ = CARRY(((\Mult0|mult_core|romout[0][8]~0_combout\ & !\Add2~22COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][8]~0_combout\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout => \Add2~17\);

-- Location: LC_X5_Y2_N5
\Add2~10\ : maxii_lcell
-- Equation(s):
-- \Add2~10_combout\ = (\Mult0|mult_core|romout[0][9]~combout\ $ ((!\Add2~17\)))
-- \Add2~12\ = CARRY(((!\Mult0|mult_core|romout[0][9]~combout\ & !\Add2~17\)))
-- \Add2~12COUT1_40\ = CARRY(((!\Mult0|mult_core|romout[0][9]~combout\ & !\Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][9]~combout\,
	cin => \Add2~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_40\);

-- Location: LC_X5_Y2_N6
\Add2~5\ : maxii_lcell
-- Equation(s):
-- \Add2~5_combout\ = (\Mult0|mult_core|_~0_combout\ $ (((!\Add2~17\ & \Add2~12\) # (\Add2~17\ & \Add2~12COUT1_40\))))
-- \Add2~7\ = CARRY(((\Mult0|mult_core|_~0_combout\) # (!\Add2~12\)))
-- \Add2~7COUT1_42\ = CARRY(((\Mult0|mult_core|_~0_combout\) # (!\Add2~12COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|_~0_combout\,
	cin => \Add2~17\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout0 => \Add2~7\,
	cout1 => \Add2~7COUT1_42\);

-- Location: LC_X5_Y2_N7
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = ((((!\Add2~17\ & \Add2~7\) # (\Add2~17\ & \Add2~7COUT1_42\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~17\,
	cin0 => \Add2~7\,
	cin1 => \Add2~7COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X3_Y2_N4
\LessThan3~55\ : maxii_lcell
-- Equation(s):
-- \LessThan3~55_cout\ = CARRY(((COUNTER(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \LessThan3~55_cout\);

-- Location: LC_X3_Y2_N5
\LessThan3~52\ : maxii_lcell
-- Equation(s):
-- \LessThan3~52_cout0\ = CARRY((COUNTER(1) & (\kickoff_num_CDCL6010~0_combout\ & !\LessThan3~55_cout\)) # (!COUNTER(1) & ((\kickoff_num_CDCL6010~0_combout\) # (!\LessThan3~55_cout\))))
-- \LessThan3~52COUT1_66\ = CARRY((COUNTER(1) & (\kickoff_num_CDCL6010~0_combout\ & !\LessThan3~55_cout\)) # (!COUNTER(1) & ((\kickoff_num_CDCL6010~0_combout\) # (!\LessThan3~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => \kickoff_num_CDCL6010~0_combout\,
	cin => \LessThan3~55_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~50\,
	cout0 => \LessThan3~52_cout0\,
	cout1 => \LessThan3~52COUT1_66\);

-- Location: LC_X3_Y2_N6
\LessThan3~47\ : maxii_lcell
-- Equation(s):
-- \LessThan3~47_cout0\ = CARRY((\Mult0|mult_core|romout[0][2]~5_combout\ & (COUNTER(2) & !\LessThan3~52_cout0\)) # (!\Mult0|mult_core|romout[0][2]~5_combout\ & ((COUNTER(2)) # (!\LessThan3~52_cout0\))))
-- \LessThan3~47COUT1_68\ = CARRY((\Mult0|mult_core|romout[0][2]~5_combout\ & (COUNTER(2) & !\LessThan3~52COUT1_66\)) # (!\Mult0|mult_core|romout[0][2]~5_combout\ & ((COUNTER(2)) # (!\LessThan3~52COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][2]~5_combout\,
	datab => COUNTER(2),
	cin => \LessThan3~55_cout\,
	cin0 => \LessThan3~52_cout0\,
	cin1 => \LessThan3~52COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~45\,
	cout0 => \LessThan3~47_cout0\,
	cout1 => \LessThan3~47COUT1_68\);

-- Location: LC_X3_Y2_N7
\LessThan3~42\ : maxii_lcell
-- Equation(s):
-- \LessThan3~42_cout0\ = CARRY((\Mult0|mult_core|romout[0][3]~4_combout\ & ((!\LessThan3~47_cout0\) # (!COUNTER(3)))) # (!\Mult0|mult_core|romout[0][3]~4_combout\ & (!COUNTER(3) & !\LessThan3~47_cout0\)))
-- \LessThan3~42COUT1_70\ = CARRY((\Mult0|mult_core|romout[0][3]~4_combout\ & ((!\LessThan3~47COUT1_68\) # (!COUNTER(3)))) # (!\Mult0|mult_core|romout[0][3]~4_combout\ & (!COUNTER(3) & !\LessThan3~47COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~4_combout\,
	datab => COUNTER(3),
	cin => \LessThan3~55_cout\,
	cin0 => \LessThan3~47_cout0\,
	cin1 => \LessThan3~47COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~40\,
	cout0 => \LessThan3~42_cout0\,
	cout1 => \LessThan3~42COUT1_70\);

-- Location: LC_X3_Y2_N8
\LessThan3~37\ : maxii_lcell
-- Equation(s):
-- \LessThan3~37_cout0\ = CARRY((\Mult0|mult_core|romout[0][4]~3_combout\ & (COUNTER(4) & !\LessThan3~42_cout0\)) # (!\Mult0|mult_core|romout[0][4]~3_combout\ & ((COUNTER(4)) # (!\LessThan3~42_cout0\))))
-- \LessThan3~37COUT1_72\ = CARRY((\Mult0|mult_core|romout[0][4]~3_combout\ & (COUNTER(4) & !\LessThan3~42COUT1_70\)) # (!\Mult0|mult_core|romout[0][4]~3_combout\ & ((COUNTER(4)) # (!\LessThan3~42COUT1_70\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][4]~3_combout\,
	datab => COUNTER(4),
	cin => \LessThan3~55_cout\,
	cin0 => \LessThan3~42_cout0\,
	cin1 => \LessThan3~42COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~35\,
	cout0 => \LessThan3~37_cout0\,
	cout1 => \LessThan3~37COUT1_72\);

-- Location: LC_X3_Y2_N9
\LessThan3~32\ : maxii_lcell
-- Equation(s):
-- \LessThan3~32_cout\ = CARRY((COUNTER(5) & (\Mult0|mult_core|romout[0][5]~combout\ & !\LessThan3~37COUT1_72\)) # (!COUNTER(5) & ((\Mult0|mult_core|romout[0][5]~combout\) # (!\LessThan3~37COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => \Mult0|mult_core|romout[0][5]~combout\,
	cin => \LessThan3~55_cout\,
	cin0 => \LessThan3~37_cout0\,
	cin1 => \LessThan3~37COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~30\,
	cout => \LessThan3~32_cout\);

-- Location: LC_X4_Y2_N0
\LessThan3~27\ : maxii_lcell
-- Equation(s):
-- \LessThan3~27_cout0\ = CARRY((COUNTER(6) & ((\Mult0|mult_core|romout[0][6]~2_combout\) # (!\LessThan3~32_cout\))) # (!COUNTER(6) & (\Mult0|mult_core|romout[0][6]~2_combout\ & !\LessThan3~32_cout\)))
-- \LessThan3~27COUT1_74\ = CARRY((COUNTER(6) & ((\Mult0|mult_core|romout[0][6]~2_combout\) # (!\LessThan3~32_cout\))) # (!COUNTER(6) & (\Mult0|mult_core|romout[0][6]~2_combout\ & !\LessThan3~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datab => \Mult0|mult_core|romout[0][6]~2_combout\,
	cin => \LessThan3~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~25\,
	cout0 => \LessThan3~27_cout0\,
	cout1 => \LessThan3~27COUT1_74\);

-- Location: LC_X4_Y2_N1
\LessThan3~22\ : maxii_lcell
-- Equation(s):
-- \LessThan3~22_cout0\ = CARRY((\Add2~20_combout\ & ((!\LessThan3~27_cout0\) # (!COUNTER(7)))) # (!\Add2~20_combout\ & (!COUNTER(7) & !\LessThan3~27_cout0\)))
-- \LessThan3~22COUT1_76\ = CARRY((\Add2~20_combout\ & ((!\LessThan3~27COUT1_74\) # (!COUNTER(7)))) # (!\Add2~20_combout\ & (!COUNTER(7) & !\LessThan3~27COUT1_74\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => COUNTER(7),
	cin => \LessThan3~32_cout\,
	cin0 => \LessThan3~27_cout0\,
	cin1 => \LessThan3~27COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~20\,
	cout0 => \LessThan3~22_cout0\,
	cout1 => \LessThan3~22COUT1_76\);

-- Location: LC_X4_Y2_N2
\LessThan3~17\ : maxii_lcell
-- Equation(s):
-- \LessThan3~17_cout0\ = CARRY((COUNTER(8) & ((!\LessThan3~22_cout0\) # (!\Add2~15_combout\))) # (!COUNTER(8) & (!\Add2~15_combout\ & !\LessThan3~22_cout0\)))
-- \LessThan3~17COUT1_78\ = CARRY((COUNTER(8) & ((!\LessThan3~22COUT1_76\) # (!\Add2~15_combout\))) # (!COUNTER(8) & (!\Add2~15_combout\ & !\LessThan3~22COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datab => \Add2~15_combout\,
	cin => \LessThan3~32_cout\,
	cin0 => \LessThan3~22_cout0\,
	cin1 => \LessThan3~22COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~15\,
	cout0 => \LessThan3~17_cout0\,
	cout1 => \LessThan3~17COUT1_78\);

-- Location: LC_X4_Y2_N3
\LessThan3~12\ : maxii_lcell
-- Equation(s):
-- \LessThan3~12_cout0\ = CARRY((COUNTER(9) & (\Add2~10_combout\ & !\LessThan3~17_cout0\)) # (!COUNTER(9) & ((\Add2~10_combout\) # (!\LessThan3~17_cout0\))))
-- \LessThan3~12COUT1_80\ = CARRY((COUNTER(9) & (\Add2~10_combout\ & !\LessThan3~17COUT1_78\)) # (!COUNTER(9) & ((\Add2~10_combout\) # (!\LessThan3~17COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(9),
	datab => \Add2~10_combout\,
	cin => \LessThan3~32_cout\,
	cin0 => \LessThan3~17_cout0\,
	cin1 => \LessThan3~17COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~10\,
	cout0 => \LessThan3~12_cout0\,
	cout1 => \LessThan3~12COUT1_80\);

-- Location: LC_X4_Y2_N4
\LessThan3~7\ : maxii_lcell
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((COUNTER(10) & ((!\LessThan3~12COUT1_80\) # (!\Add2~5_combout\))) # (!COUNTER(10) & (!\Add2~5_combout\ & !\LessThan3~12COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(10),
	datab => \Add2~5_combout\,
	cin => \LessThan3~32_cout\,
	cin0 => \LessThan3~12_cout0\,
	cin1 => \LessThan3~12COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~5\,
	cout => \LessThan3~7_cout\);

-- Location: LC_X4_Y2_N5
\LessThan3~0\ : maxii_lcell
-- Equation(s):
-- \LessThan3~0_combout\ = (COUNTER(11) & (((\LessThan3~7_cout\) # (!\Add2~0_combout\)))) # (!COUNTER(11) & (((\LessThan3~7_cout\ & !\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(11),
	datad => \Add2~0_combout\,
	cin => \LessThan3~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~0_combout\);

-- Location: LC_X4_Y2_N9
\process_1~0\ : maxii_lcell
-- Equation(s):
-- \process_1~0_combout\ = (((\LessThan3~0_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LessThan3~0_combout\,
	datad => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0_combout\);

-- Location: LC_X4_Y2_N6
kickoff : maxii_lcell
-- Equation(s):
-- \kickoff~regout\ = DFFEAS((\SMBUS_EN~regout\ & (((\process_1~0_combout\) # (!\process_1~2_combout\)))) # (!\SMBUS_EN~regout\ & (\kickoff~regout\)), GLOBAL(\CLK_12M~combout\), VCC, , , , , !\RESET~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa3a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \kickoff~regout\,
	datab => \process_1~2_combout\,
	datac => \SMBUS_EN~regout\,
	datad => \process_1~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \kickoff~regout\);

-- Location: LC_X7_Y4_N4
\BIT_POS~2\ : maxii_lcell
-- Equation(s):
-- \BIT_POS~2_combout\ = (\RESET~regout\ & (((!\kickoff~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~regout\,
	datac => \kickoff~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BIT_POS~2_combout\);

-- Location: LC_X5_Y4_N5
\LessThan9~5\ : maxii_lcell
-- Equation(s):
-- \LessThan9~5_combout\ = (COUNTER(11)) # (((\LessThan9~4_combout\) # (COUNTER(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(11),
	datac => \LessThan9~4_combout\,
	datad => COUNTER(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan9~5_combout\);

-- Location: LC_X7_Y4_N5
\BIT_POS[0]\ : maxii_lcell
-- Equation(s):
-- BIT_POS(0) = DFFEAS((\kickoff~regout\) # (((!BIT_POS(0) & \Equal2~0_combout\)) # (!\RESET~regout\)), GLOBAL(\CLK_12M~combout\), VCC, , \no_more_bits~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \kickoff~regout\,
	datab => \RESET~regout\,
	datac => BIT_POS(0),
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \no_more_bits~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BIT_POS(0));

-- Location: LC_X6_Y4_N4
\Add5~0\ : maxii_lcell
-- Equation(s):
-- \Add5~0_combout\ = ((!BIT_POS(1) & ((!BIT_POS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => BIT_POS(1),
	datad => BIT_POS(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\);

-- Location: LC_X7_Y4_N1
\BIT_POS[2]\ : maxii_lcell
-- Equation(s):
-- BIT_POS(2) = DFFEAS(((\Add5~0_combout\ & (!BIT_POS(3) & !BIT_POS(2))) # (!\Add5~0_combout\ & ((BIT_POS(2))))) # (!\BIT_POS~2_combout\), GLOBAL(\CLK_12M~combout\), VCC, , \no_more_bits~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "775d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \BIT_POS~2_combout\,
	datab => \Add5~0_combout\,
	datac => BIT_POS(3),
	datad => BIT_POS(2),
	aclr => GND,
	ena => \no_more_bits~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BIT_POS(2));

-- Location: LC_X6_Y4_N3
this_is_ack : maxii_lcell
-- Equation(s):
-- \Equal8~1\ = (!BIT_POS(2) & (!BIT_POS(0) & (!BIT_POS(3) & !BIT_POS(1))))
-- \this_is_ack~regout\ = DFFEAS(\Equal8~1\, GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => BIT_POS(2),
	datab => BIT_POS(0),
	datac => BIT_POS(3),
	datad => BIT_POS(1),
	aclr => GND,
	ena => \COUNTER[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~1\,
	regout => \this_is_ack~regout\);

-- Location: LC_X6_Y4_N0
wait_for_ack : maxii_lcell
-- Equation(s):
-- \wait_for_ack~regout\ = DFFEAS((\GET_BIT~0_combout\ & ((\SCLK_LOGIC~0_combout\ & ((\this_is_ack~regout\))) # (!\SCLK_LOGIC~0_combout\ & (\wait_for_ack~regout\)))) # (!\GET_BIT~0_combout\ & (((\wait_for_ack~regout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f870",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \GET_BIT~0_combout\,
	datab => \SCLK_LOGIC~0_combout\,
	datac => \wait_for_ack~regout\,
	datad => \this_is_ack~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wait_for_ack~regout\);

-- Location: LC_X3_Y2_N1
\EXT_TDO~0\ : maxii_lcell
-- Equation(s):
-- \EXT_TDO~0_combout\ = (((!COUNTER(7) & !COUNTER(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => COUNTER(7),
	datad => COUNTER(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EXT_TDO~0_combout\);

-- Location: LC_X3_Y2_N0
\process_3~2\ : maxii_lcell
-- Equation(s):
-- \process_3~2_combout\ = (!COUNTER(5) & (!COUNTER(4) & (!COUNTER(6) & \EXT_TDO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => COUNTER(4),
	datac => COUNTER(6),
	datad => \EXT_TDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~2_combout\);

-- Location: LC_X5_Y3_N3
\LessThan11~0\ : maxii_lcell
-- Equation(s):
-- \LessThan11~0_combout\ = (COUNTER(1) & (COUNTER(3) & (COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(3),
	datac => COUNTER(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan11~0_combout\);

-- Location: LC_X5_Y4_N2
\process_3~6\ : maxii_lcell
-- Equation(s):
-- \process_3~6_combout\ = (COUNTER(10) & (COUNTER(9) & ((\LessThan11~0_combout\) # (!\process_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(10),
	datab => \process_3~2_combout\,
	datac => COUNTER(9),
	datad => \LessThan11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~6_combout\);

-- Location: LC_X5_Y4_N3
\process_3~7\ : maxii_lcell
-- Equation(s):
-- \process_3~7_combout\ = (\process_3~6_combout\) # ((COUNTER(11)) # ((!\LessThan9~4_combout\ & !COUNTER(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~4_combout\,
	datab => \process_3~6_combout\,
	datac => COUNTER(11),
	datad => COUNTER(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~7_combout\);

-- Location: LC_X5_Y3_N1
\process_3~0\ : maxii_lcell
-- Equation(s):
-- \process_3~0_combout\ = (COUNTER(4)) # ((COUNTER(3) & ((COUNTER(1)) # (COUNTER(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(3),
	datac => COUNTER(2),
	datad => COUNTER(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~0_combout\);

-- Location: LC_X6_Y2_N1
\process_3~1\ : maxii_lcell
-- Equation(s):
-- \process_3~1_combout\ = (COUNTER(6) & (COUNTER(7) & ((COUNTER(5)) # (\process_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datab => COUNTER(7),
	datac => COUNTER(5),
	datad => \process_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~1_combout\);

-- Location: LC_X5_Y4_N7
\process_3~4\ : maxii_lcell
-- Equation(s):
-- \process_3~4_combout\ = (COUNTER(9) & (((COUNTER(11)) # (COUNTER(10))))) # (!COUNTER(9) & (COUNTER(11) & ((COUNTER(8)) # (COUNTER(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datab => COUNTER(9),
	datac => COUNTER(11),
	datad => COUNTER(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~4_combout\);

-- Location: LC_X5_Y4_N0
\process_3~3\ : maxii_lcell
-- Equation(s):
-- \process_3~3_combout\ = ((\process_3~2_combout\ & ((!\LessThan11~0_combout\) # (!COUNTER(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process_3~2_combout\,
	datac => COUNTER(0),
	datad => \LessThan11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~3_combout\);

-- Location: LC_X5_Y4_N1
\process_3~5\ : maxii_lcell
-- Equation(s):
-- \process_3~5_combout\ = (\process_3~4_combout\ & (((COUNTER(11)) # (\process_3~3_combout\)))) # (!\process_3~4_combout\ & ((\process_3~1_combout\) # ((!COUNTER(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efe3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_3~1_combout\,
	datab => \process_3~4_combout\,
	datac => COUNTER(11),
	datad => \process_3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~5_combout\);

-- Location: LC_X6_Y4_N1
\SDATA_D~0\ : maxii_lcell
-- Equation(s):
-- \SDATA_D~0_combout\ = ((\process_3~5_combout\ & ((\SDATA_D~regout\))) # (!\process_3~5_combout\ & (\SDATA_CDCL6010~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SDATA_CDCL6010~0\,
	datac => \process_3~5_combout\,
	datad => \SDATA_D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SDATA_D~0_combout\);

-- Location: LC_X6_Y4_N2
SDATA_D : maxii_lcell
-- Equation(s):
-- \SDATA_D~regout\ = DFFEAS(((\process_3~7_combout\ & ((\SDATA_D~0_combout\))) # (!\process_3~7_combout\ & (\SDATA_CDCE906~0\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => \SDATA_CDCE906~0\,
	datac => \process_3~7_combout\,
	datad => \SDATA_D~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SDATA_D~regout\);

-- Location: LC_X6_Y4_N7
\process_4~0\ : maxii_lcell
-- Equation(s):
-- \process_4~0_combout\ = (((\kickoff~regout\) # (\SDATA_D~regout\)) # (!\wait_for_ack~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wait_for_ack~regout\,
	datac => \kickoff~regout\,
	datad => \SDATA_D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_4~0_combout\);

-- Location: LC_X3_Y1_N1
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (STATE(1) & (((!STATE(0))))) # (!STATE(1) & (STATE(0) & ((\process_4~0_combout\) # (!STATE(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a1a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => STATE(2),
	datac => STATE(0),
	datad => \process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X3_Y1_N8
\STATE[1]\ : maxii_lcell
-- Equation(s):
-- STATE(1) = DFFEAS((\LessThan9~5_combout\ & ((\SMBUS_EN~regout\ & (\Mux4~0_combout\)) # (!\SMBUS_EN~regout\ & ((STATE(1)))))) # (!\LessThan9~5_combout\ & (((STATE(1))))), GLOBAL(\CLK_12M~combout\), VCC, , , , , !\RESET~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \LessThan9~5_combout\,
	datab => \Mux4~0_combout\,
	datac => \SMBUS_EN~regout\,
	datad => STATE(1),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(1));

-- Location: LC_X2_Y3_N5
\GET_BIT~0\ : maxii_lcell
-- Equation(s):
-- \GET_BIT~0_combout\ = (!STATE(2) & (((STATE(0) & STATE(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datac => STATE(0),
	datad => STATE(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GET_BIT~0_combout\);

-- Location: LC_X2_Y3_N6
\GET_BIT~1\ : maxii_lcell
-- Equation(s):
-- \GET_BIT~1_combout\ = (\SCLK_LOGIC~0_combout\ & ((STATE(1) & (!STATE(2) & STATE(0))) # (!STATE(1) & ((!STATE(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datab => STATE(1),
	datac => STATE(0),
	datad => \SCLK_LOGIC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GET_BIT~1_combout\);

-- Location: LC_X2_Y3_N0
GET_BIT : maxii_lcell
-- Equation(s):
-- \GET_BIT~regout\ = DFFEAS((\GET_BIT~1_combout\ & (\GET_BIT~0_combout\)) # (!\GET_BIT~1_combout\ & (((\GET_BIT~regout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \GET_BIT~0_combout\,
	datab => \GET_BIT~regout\,
	datac => \GET_BIT~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GET_BIT~regout\);

-- Location: LC_X7_Y4_N9
\no_more_bits~3\ : maxii_lcell
-- Equation(s):
-- \no_more_bits~3_combout\ = ((\SMBUS_EN~regout\ & ((\kickoff~regout\) # (\GET_BIT~regout\)))) # (!\RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~regout\,
	datab => \SMBUS_EN~regout\,
	datac => \kickoff~regout\,
	datad => \GET_BIT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \no_more_bits~3_combout\);

-- Location: LC_X7_Y4_N7
\BIT_POS[3]\ : maxii_lcell
-- Equation(s):
-- BIT_POS(3) = DFFEAS(((\Equal8~0_combout\ $ (BIT_POS(3))) # (!\BIT_POS~2_combout\)) # (!\SMBUS_EN~regout\), GLOBAL(\CLK_12M~combout\), VCC, , \no_more_bits~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Equal8~0_combout\,
	datab => \SMBUS_EN~regout\,
	datac => BIT_POS(3),
	datad => \BIT_POS~2_combout\,
	aclr => GND,
	ena => \no_more_bits~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BIT_POS(3));

-- Location: LC_X7_Y4_N3
\Equal2~0\ : maxii_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (BIT_POS(1)) # (((BIT_POS(0)) # (BIT_POS(2))) # (!BIT_POS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => BIT_POS(1),
	datab => BIT_POS(3),
	datac => BIT_POS(0),
	datad => BIT_POS(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X7_Y4_N8
\BIT_POS[1]\ : maxii_lcell
-- Equation(s):
-- BIT_POS(1) = DFFEAS(((\Equal2~0_combout\ & (BIT_POS(0) $ (!BIT_POS(1))))) # (!\BIT_POS~2_combout\), GLOBAL(\CLK_12M~combout\), VCC, , \no_more_bits~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b33b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Equal2~0_combout\,
	datab => \BIT_POS~2_combout\,
	datac => BIT_POS(0),
	datad => BIT_POS(1),
	aclr => GND,
	ena => \no_more_bits~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BIT_POS(1));

-- Location: LC_X7_Y4_N6
\Equal8~0\ : maxii_lcell
-- Equation(s):
-- \Equal8~0_combout\ = (!BIT_POS(1) & (((!BIT_POS(0) & !BIT_POS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => BIT_POS(1),
	datac => BIT_POS(0),
	datad => BIT_POS(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~0_combout\);

-- Location: LC_X4_Y1_N2
\WORD_ADDR[0]~12\ : maxii_lcell
-- Equation(s):
-- \WORD_ADDR[0]~12_combout\ = ((\GET_BIT~regout\ & (\SMBUS_EN~regout\ & !\kickoff~regout\))) # (!\RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55d5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~regout\,
	datab => \GET_BIT~regout\,
	datac => \SMBUS_EN~regout\,
	datad => \kickoff~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WORD_ADDR[0]~12_combout\);

-- Location: LC_X4_Y4_N1
\WORD_ADDR[0]\ : maxii_lcell
-- Equation(s):
-- WORD_ADDR(0) = DFFEAS(\Equal2~0_combout\ $ ((!WORD_ADDR(0))), GLOBAL(\CLK_12M~combout\), VCC, , \WORD_ADDR[0]~12_combout\, , , !\RESET~regout\, )
-- \WORD_ADDR[0]~11\ = CARRY((!\Equal2~0_combout\ & (WORD_ADDR(0))))
-- \WORD_ADDR[0]~11COUT1_19\ = CARRY((!\Equal2~0_combout\ & (WORD_ADDR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9944",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Equal2~0_combout\,
	datab => WORD_ADDR(0),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	ena => \WORD_ADDR[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => WORD_ADDR(0),
	cout0 => \WORD_ADDR[0]~11\,
	cout1 => \WORD_ADDR[0]~11COUT1_19\);

-- Location: LC_X4_Y4_N2
\WORD_ADDR[1]\ : maxii_lcell
-- Equation(s):
-- WORD_ADDR(1) = DFFEAS((WORD_ADDR(1) $ ((\WORD_ADDR[0]~11\))), GLOBAL(\CLK_12M~combout\), VCC, , \WORD_ADDR[0]~12_combout\, , , !\RESET~regout\, )
-- \WORD_ADDR[1]~9\ = CARRY(((!\WORD_ADDR[0]~11\) # (!WORD_ADDR(1))))
-- \WORD_ADDR[1]~9COUT1_21\ = CARRY(((!\WORD_ADDR[0]~11COUT1_19\) # (!WORD_ADDR(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => WORD_ADDR(1),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	ena => \WORD_ADDR[0]~12_combout\,
	cin0 => \WORD_ADDR[0]~11\,
	cin1 => \WORD_ADDR[0]~11COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => WORD_ADDR(1),
	cout0 => \WORD_ADDR[1]~9\,
	cout1 => \WORD_ADDR[1]~9COUT1_21\);

-- Location: LC_X4_Y4_N3
\WORD_ADDR[2]\ : maxii_lcell
-- Equation(s):
-- WORD_ADDR(2) = DFFEAS(WORD_ADDR(2) $ ((((!\WORD_ADDR[1]~9\)))), GLOBAL(\CLK_12M~combout\), VCC, , \WORD_ADDR[0]~12_combout\, , , !\RESET~regout\, )
-- \WORD_ADDR[2]~3\ = CARRY((WORD_ADDR(2) & ((!\WORD_ADDR[1]~9\))))
-- \WORD_ADDR[2]~3COUT1_23\ = CARRY((WORD_ADDR(2) & ((!\WORD_ADDR[1]~9COUT1_21\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(2),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	ena => \WORD_ADDR[0]~12_combout\,
	cin0 => \WORD_ADDR[1]~9\,
	cin1 => \WORD_ADDR[1]~9COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => WORD_ADDR(2),
	cout0 => \WORD_ADDR[2]~3\,
	cout1 => \WORD_ADDR[2]~3COUT1_23\);

-- Location: LC_X4_Y4_N4
\WORD_ADDR[3]\ : maxii_lcell
-- Equation(s):
-- WORD_ADDR(3) = DFFEAS(WORD_ADDR(3) $ ((((\WORD_ADDR[2]~3\)))), GLOBAL(\CLK_12M~combout\), VCC, , \WORD_ADDR[0]~12_combout\, , , !\RESET~regout\, )
-- \WORD_ADDR[3]~1\ = CARRY(((!\WORD_ADDR[2]~3COUT1_23\)) # (!WORD_ADDR(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(3),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	ena => \WORD_ADDR[0]~12_combout\,
	cin0 => \WORD_ADDR[2]~3\,
	cin1 => \WORD_ADDR[2]~3COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => WORD_ADDR(3),
	cout => \WORD_ADDR[3]~1\);

-- Location: LC_X4_Y4_N5
\WORD_ADDR[4]\ : maxii_lcell
-- Equation(s):
-- WORD_ADDR(4) = DFFEAS(WORD_ADDR(4) $ ((((!\WORD_ADDR[3]~1\)))), GLOBAL(\CLK_12M~combout\), VCC, , \WORD_ADDR[0]~12_combout\, , , !\RESET~regout\, )
-- \WORD_ADDR[4]~7\ = CARRY((WORD_ADDR(4) & ((!\WORD_ADDR[3]~1\))))
-- \WORD_ADDR[4]~7COUT1_25\ = CARRY((WORD_ADDR(4) & ((!\WORD_ADDR[3]~1\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(4),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	ena => \WORD_ADDR[0]~12_combout\,
	cin => \WORD_ADDR[3]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => WORD_ADDR(4),
	cout0 => \WORD_ADDR[4]~7\,
	cout1 => \WORD_ADDR[4]~7COUT1_25\);

-- Location: LC_X4_Y4_N6
\WORD_ADDR[5]\ : maxii_lcell
-- Equation(s):
-- WORD_ADDR(5) = DFFEAS(WORD_ADDR(5) $ (((((!\WORD_ADDR[3]~1\ & \WORD_ADDR[4]~7\) # (\WORD_ADDR[3]~1\ & \WORD_ADDR[4]~7COUT1_25\))))), GLOBAL(\CLK_12M~combout\), VCC, , \WORD_ADDR[0]~12_combout\, , , !\RESET~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(5),
	aclr => GND,
	sclr => \ALT_INV_RESET~regout\,
	ena => \WORD_ADDR[0]~12_combout\,
	cin => \WORD_ADDR[3]~1\,
	cin0 => \WORD_ADDR[4]~7\,
	cin1 => \WORD_ADDR[4]~7COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => WORD_ADDR(5));

-- Location: LC_X7_Y3_N2
\no_more_bits~0\ : maxii_lcell
-- Equation(s):
-- \no_more_bits~0_combout\ = (WORD_ADDR(4) & (!WORD_ADDR(5) & (WORD_ADDR(2) & WORD_ADDR(3)))) # (!WORD_ADDR(4) & (WORD_ADDR(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(4),
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(2),
	datad => WORD_ADDR(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \no_more_bits~0_combout\);

-- Location: LC_X6_Y1_N2
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (((!WORD_ADDR(0) & WORD_ADDR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => WORD_ADDR(0),
	datad => WORD_ADDR(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X7_Y4_N0
\no_more_bits~1\ : maxii_lcell
-- Equation(s):
-- \no_more_bits~1_combout\ = (\Equal8~0_combout\ & (\no_more_bits~0_combout\ & (!BIT_POS(3) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \no_more_bits~0_combout\,
	datac => BIT_POS(3),
	datad => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \no_more_bits~1_combout\);

-- Location: LC_X7_Y4_N2
no_more_bits : maxii_lcell
-- Equation(s):
-- \no_more_bits~regout\ = DFFEAS((\BIT_POS~2_combout\ & (\SMBUS_EN~regout\ & ((\no_more_bits~1_combout\) # (\no_more_bits~regout\)))), GLOBAL(\CLK_12M~combout\), VCC, , \no_more_bits~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \BIT_POS~2_combout\,
	datab => \no_more_bits~1_combout\,
	datac => \SMBUS_EN~regout\,
	datad => \no_more_bits~regout\,
	aclr => GND,
	ena => \no_more_bits~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \no_more_bits~regout\);

-- Location: LC_X3_Y1_N7
\STATE[0]~1\ : maxii_lcell
-- Equation(s):
-- \STATE[0]~1_combout\ = (!STATE(1) & (STATE(2) & (STATE(0) & \RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => STATE(2),
	datac => STATE(0),
	datad => \RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[0]~1_combout\);

-- Location: LC_X3_Y1_N5
\STATE[0]~0\ : maxii_lcell
-- Equation(s):
-- \STATE[0]~0_combout\ = (\RESET~regout\ & (((!STATE(1) & STATE(2))) # (!STATE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => STATE(2),
	datac => STATE(0),
	datad => \RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[0]~0_combout\);

-- Location: LC_X3_Y1_N6
\STATE[0]~2\ : maxii_lcell
-- Equation(s):
-- \STATE[0]~2_combout\ = (\STATE[0]~1_combout\ & ((\process_4~0_combout\ & (!\no_more_bits~regout\)) # (!\process_4~0_combout\ & ((\STATE[0]~0_combout\))))) # (!\STATE[0]~1_combout\ & (((\STATE[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \no_more_bits~regout\,
	datab => \STATE[0]~1_combout\,
	datac => \STATE[0]~0_combout\,
	datad => \process_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[0]~2_combout\);

-- Location: LC_X3_Y1_N0
\STATE[0]~3\ : maxii_lcell
-- Equation(s):
-- \STATE[0]~3_combout\ = (!STATE(0) & (!STATE(2) & (!\kickoff~regout\ & !STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => STATE(2),
	datac => \kickoff~regout\,
	datad => STATE(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[0]~3_combout\);

-- Location: LC_X3_Y1_N3
\STATE[0]~4\ : maxii_lcell
-- Equation(s):
-- \STATE[0]~4_combout\ = (\RESET~regout\ & (((\STATE[0]~3_combout\) # (!\SMBUS_EN~regout\)) # (!\LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~5_combout\,
	datab => \STATE[0]~3_combout\,
	datac => \SMBUS_EN~regout\,
	datad => \RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[0]~4_combout\);

-- Location: LC_X3_Y1_N4
\STATE[0]\ : maxii_lcell
-- Equation(s):
-- STATE(0) = DFFEAS(((\STATE[0]~4_combout\ & (STATE(0))) # (!\STATE[0]~4_combout\ & ((\STATE[0]~2_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => STATE(0),
	datac => \STATE[0]~2_combout\,
	datad => \STATE[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(0));

-- Location: LC_X2_Y3_N9
\STATE[2]~8\ : maxii_lcell
-- Equation(s):
-- \STATE[2]~8_combout\ = (((!STATE(0) & \RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => STATE(0),
	datad => \RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[2]~8_combout\);

-- Location: LC_X3_Y1_N2
\STATE[2]~6\ : maxii_lcell
-- Equation(s):
-- \STATE[2]~6_combout\ = (STATE(0) & (\RESET~regout\ & (STATE(1) $ (STATE(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => STATE(2),
	datac => STATE(0),
	datad => \RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[2]~6_combout\);

-- Location: LC_X3_Y1_N9
\STATE[2]~7\ : maxii_lcell
-- Equation(s):
-- \STATE[2]~7_combout\ = (\process_4~0_combout\ & ((\STATE[0]~1_combout\ & (\no_more_bits~regout\)) # (!\STATE[0]~1_combout\ & ((\STATE[2]~6_combout\))))) # (!\process_4~0_combout\ & (((\STATE[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \no_more_bits~regout\,
	datab => \process_4~0_combout\,
	datac => \STATE[0]~1_combout\,
	datad => \STATE[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \STATE[2]~7_combout\);

-- Location: LC_X2_Y3_N8
\STATE[2]\ : maxii_lcell
-- Equation(s):
-- STATE(2) = DFFEAS((\STATE[0]~4_combout\ & (STATE(2))) # (!\STATE[0]~4_combout\ & ((\STATE[2]~7_combout\) # ((STATE(2) & \STATE[2]~8_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => STATE(2),
	datab => \STATE[2]~8_combout\,
	datac => \STATE[0]~4_combout\,
	datad => \STATE[2]~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(2));

-- Location: LC_X2_Y3_N1
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (STATE(2) & (((STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datac => STATE(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X2_Y3_N2
SCLK_LOGIC : maxii_lcell
-- Equation(s):
-- \SCLK_LOGIC~regout\ = DFFEAS((\SCLK_LOGIC~0_combout\ & ((\Mux0~0_combout\ $ (!STATE(1))))) # (!\SCLK_LOGIC~0_combout\ & (\SCLK_LOGIC~regout\)), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e44e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \SCLK_LOGIC~0_combout\,
	datab => \SCLK_LOGIC~regout\,
	datac => \Mux0~0_combout\,
	datad => STATE(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SCLK_LOGIC~regout\);

-- Location: LC_X3_Y4_N8
\SCLK_CDCE906~1\ : maxii_lcell
-- Equation(s):
-- \SCLK_CDCE906~1_combout\ = (((\process_3~5_combout\) # (!\process_3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \process_3~5_combout\,
	datad => \process_3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SCLK_CDCE906~1_combout\);

-- Location: LC_X3_Y4_N7
\SCLK_CDCE906~reg0\ : maxii_lcell
-- Equation(s):
-- \SCLK_CDCE906~reg0_regout\ = DFFEAS(GND, GLOBAL(\CLK_12M~combout\), VCC, , \SCLK_CDCE906~1_combout\, \SCLK_LOGIC~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datac => \SCLK_LOGIC~regout\,
	aclr => GND,
	sload => VCC,
	ena => \SCLK_CDCE906~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SCLK_CDCE906~reg0_regout\);

-- Location: LC_X3_Y4_N0
\SCLK_CDCE906~en\ : maxii_lcell
-- Equation(s):
-- \SCLK_CDCE906~en_regout\ = DFFEAS((((!\process_3~7_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , \SCLK_CDCE906~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datad => \process_3~7_combout\,
	aclr => GND,
	ena => \SCLK_CDCE906~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SCLK_CDCE906~en_regout\);

-- Location: LC_X3_Y4_N6
\SCLK_CDCL6010~reg0\ : maxii_lcell
-- Equation(s):
-- \SCLK_CDCL6010~reg0_regout\ = DFFEAS(GND, GLOBAL(\CLK_12M~combout\), VCC, , \process_3~7_combout\, \SCLK_LOGIC~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datac => \SCLK_LOGIC~regout\,
	aclr => GND,
	sload => VCC,
	ena => \process_3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SCLK_CDCL6010~reg0_regout\);

-- Location: LC_X3_Y4_N5
\SCLK_CDCL6010~en\ : maxii_lcell
-- Equation(s):
-- \SCLK_CDCL6010~en_regout\ = DFFEAS((((!\process_3~5_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , \process_3~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datac => \process_3~5_combout\,
	aclr => GND,
	ena => \process_3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SCLK_CDCL6010~en_regout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\F1_TDO~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_F1_TDO,
	combout => \F1_TDO~combout\);

-- Location: LC_X3_Y2_N2
\EXT_TDO~1\ : maxii_lcell
-- Equation(s):
-- \EXT_TDO~1_combout\ = ((!COUNTER(5) & ((!COUNTER(3)) # (!COUNTER(4))))) # (!COUNTER(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "575f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(6),
	datab => COUNTER(4),
	datac => COUNTER(5),
	datad => COUNTER(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EXT_TDO~1_combout\);

-- Location: LC_X3_Y2_N3
\EXT_TDO~2\ : maxii_lcell
-- Equation(s):
-- \EXT_TDO~2_combout\ = ((COUNTER(9) & ((!\EXT_TDO~0_combout\) # (!\EXT_TDO~1_combout\)))) # (!\EN_DVDD_1V1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2faf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(9),
	datab => \EXT_TDO~1_combout\,
	datac => \EN_DVDD_1V1~2_combout\,
	datad => \EXT_TDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \EXT_TDO~2_combout\);

-- Location: LC_X5_Y1_N2
\EXT_TDO~reg0\ : maxii_lcell
-- Equation(s):
-- \EXT_TDO~reg0_regout\ = DFFEAS(((\F1_TDO~combout\)), GLOBAL(\CLK_12M~combout\), VCC, , \EXT_TDO~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => \F1_TDO~combout\,
	aclr => GND,
	ena => \EXT_TDO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXT_TDO~reg0_regout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_TMS~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXT_TMS,
	combout => \EXT_TMS~combout\);

-- Location: LC_X5_Y1_N7
\F1_TMS~reg0\ : maxii_lcell
-- Equation(s):
-- \F1_TMS~reg0_regout\ = DFFEAS((\EXT_TMS~combout\), GLOBAL(\CLK_12M~combout\), VCC, , \EXT_TDO~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \EXT_TMS~combout\,
	aclr => GND,
	ena => \EXT_TDO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \F1_TMS~reg0_regout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_TRST~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXT_TRST,
	combout => \EXT_TRST~combout\);

-- Location: LC_X5_Y1_N6
\F1_TRST~reg0\ : maxii_lcell
-- Equation(s):
-- \F1_TRST~reg0_regout\ = DFFEAS(((\EXT_TRST~combout\)), GLOBAL(\CLK_12M~combout\), VCC, , \EXT_TDO~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => \EXT_TRST~combout\,
	aclr => GND,
	ena => \EXT_TDO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \F1_TRST~reg0_regout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_TDI~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXT_TDI,
	combout => \EXT_TDI~combout\);

-- Location: LC_X5_Y1_N5
\F1_TDI~reg0\ : maxii_lcell
-- Equation(s):
-- \F1_TDI~reg0_regout\ = DFFEAS(((\EXT_TDI~combout\)), GLOBAL(\CLK_12M~combout\), VCC, , \EXT_TDO~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => \EXT_TDI~combout\,
	aclr => GND,
	ena => \EXT_TDO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \F1_TDI~reg0_regout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_TCK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXT_TCK,
	combout => \EXT_TCK~combout\);

-- Location: LC_X5_Y1_N4
\F1_TCK~reg0\ : maxii_lcell
-- Equation(s):
-- \F1_TCK~reg0_regout\ = DFFEAS(((\EXT_TCK~combout\)), GLOBAL(\CLK_12M~combout\), VCC, , \EXT_TDO~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datab => \EXT_TCK~combout\,
	aclr => GND,
	ena => \EXT_TDO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \F1_TCK~reg0_regout\);

-- Location: LC_X7_Y1_N2
\Mux8~2\ : maxii_lcell
-- Equation(s):
-- \Mux8~2_combout\ = (WORD_ADDR(0) & (((WORD_ADDR(3))))) # (!WORD_ADDR(0) & ((WORD_ADDR(2) & (WORD_ADDR(5) & WORD_ADDR(3))) # (!WORD_ADDR(2) & (!WORD_ADDR(5) & !WORD_ADDR(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f801",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(0),
	datad => WORD_ADDR(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~2_combout\);

-- Location: LC_X7_Y1_N6
\Mux8~3\ : maxii_lcell
-- Equation(s):
-- \Mux8~3_combout\ = (WORD_ADDR(1) & (WORD_ADDR(5) & ((!\Mux8~2_combout\) # (!WORD_ADDR(2))))) # (!WORD_ADDR(1) & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(5),
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(2),
	datad => \Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~3_combout\);

-- Location: LC_X7_Y1_N4
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (WORD_ADDR(2) & (!WORD_ADDR(5) & ((WORD_ADDR(1)) # (!WORD_ADDR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(0),
	datad => WORD_ADDR(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X7_Y1_N8
\SMBUS_WORD[7]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(7) = DFFEAS((WORD_ADDR(4) & (WORD_ADDR(3) & ((\Mux8~0_combout\)))) # (!WORD_ADDR(4) & (((\Mux8~3_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(3),
	datab => WORD_ADDR(4),
	datac => \Mux8~3_combout\,
	datad => \Mux8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(7));

-- Location: LC_X6_Y1_N8
\Mux10~4\ : maxii_lcell
-- Equation(s):
-- \Mux10~4_combout\ = (!WORD_ADDR(5) & (((!WORD_ADDR(2) & WORD_ADDR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(5),
	datac => WORD_ADDR(2),
	datad => WORD_ADDR(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~4_combout\);

-- Location: LC_X6_Y1_N4
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (!WORD_ADDR(5) & (((WORD_ADDR(2) & WORD_ADDR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(5),
	datac => WORD_ADDR(2),
	datad => WORD_ADDR(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X6_Y1_N6
\Mux10~2\ : maxii_lcell
-- Equation(s):
-- \Mux10~2_combout\ = (!WORD_ADDR(4) & ((WORD_ADDR(5) & (WORD_ADDR(2) $ (WORD_ADDR(0)))) # (!WORD_ADDR(5) & (WORD_ADDR(2) & WORD_ADDR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0068",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(5),
	datab => WORD_ADDR(2),
	datac => WORD_ADDR(0),
	datad => WORD_ADDR(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~2_combout\);

-- Location: LC_X6_Y1_N7
\Mux10~3\ : maxii_lcell
-- Equation(s):
-- \Mux10~3_combout\ = (WORD_ADDR(1) & ((\Mux10~0_combout\) # ((WORD_ADDR(3))))) # (!WORD_ADDR(1) & (((!WORD_ADDR(3) & \Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(3),
	datad => \Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~3_combout\);

-- Location: LC_X6_Y1_N9
\Mux10~1\ : maxii_lcell
-- Equation(s):
-- \Mux10~1_combout\ = (WORD_ADDR(5) & (!WORD_ADDR(4) & ((!WORD_ADDR(0)) # (!WORD_ADDR(2))))) # (!WORD_ADDR(5) & (!WORD_ADDR(2) & ((WORD_ADDR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "112a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(5),
	datab => WORD_ADDR(2),
	datac => WORD_ADDR(0),
	datad => WORD_ADDR(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

-- Location: LC_X6_Y1_N0
\SMBUS_WORD[5]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(5) = DFFEAS((\Mux10~3_combout\ & ((\Mux10~4_combout\) # ((!WORD_ADDR(3))))) # (!\Mux10~3_combout\ & (((WORD_ADDR(3) & \Mux10~1_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Mux10~4_combout\,
	datab => \Mux10~3_combout\,
	datac => WORD_ADDR(3),
	datad => \Mux10~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(5));

-- Location: LC_X4_Y4_N8
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (WORD_ADDR(4) & (((WORD_ADDR(2))))) # (!WORD_ADDR(4) & ((WORD_ADDR(0) & ((WORD_ADDR(2)) # (!WORD_ADDR(3)))) # (!WORD_ADDR(0) & (WORD_ADDR(3) $ (WORD_ADDR(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(4),
	datab => WORD_ADDR(0),
	datac => WORD_ADDR(3),
	datad => WORD_ADDR(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X4_Y4_N9
\Mux11~1\ : maxii_lcell
-- Equation(s):
-- \Mux11~1_combout\ = (WORD_ADDR(0) & (((WORD_ADDR(3))) # (!WORD_ADDR(4)))) # (!WORD_ADDR(0) & (WORD_ADDR(3) & (WORD_ADDR(4) $ (WORD_ADDR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(4),
	datab => WORD_ADDR(0),
	datac => WORD_ADDR(3),
	datad => WORD_ADDR(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~1_combout\);

-- Location: LC_X4_Y4_N7
\Mux11~2\ : maxii_lcell
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\ & (!WORD_ADDR(1) & (\Mux11~0_combout\ $ (WORD_ADDR(5))))) # (!\Mux11~1_combout\ & ((WORD_ADDR(1)) # ((!\Mux11~0_combout\ & !WORD_ADDR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3349",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux11~1_combout\,
	datac => WORD_ADDR(5),
	datad => WORD_ADDR(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~2_combout\);

-- Location: LC_X4_Y4_N0
\SMBUS_WORD[4]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(4) = DFFEAS((\Mux11~2_combout\ & (WORD_ADDR(4) $ (((WORD_ADDR(5)) # (!\Mux11~0_combout\))))) # (!\Mux11~2_combout\ & (!WORD_ADDR(5) & (WORD_ADDR(4) & !\Mux11~0_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "481c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(5),
	datab => \Mux11~2_combout\,
	datac => WORD_ADDR(4),
	datad => \Mux11~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(4));

-- Location: LC_X6_Y4_N8
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (BIT_POS(1) & (((BIT_POS(0))))) # (!BIT_POS(1) & ((BIT_POS(0) & (SMBUS_WORD(5))) # (!BIT_POS(0) & ((SMBUS_WORD(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => SMBUS_WORD(5),
	datab => BIT_POS(1),
	datac => SMBUS_WORD(4),
	datad => BIT_POS(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X6_Y1_N5
\Mux9~3\ : maxii_lcell
-- Equation(s):
-- \Mux9~3_combout\ = (WORD_ADDR(2) & ((WORD_ADDR(3) $ (!WORD_ADDR(1))))) # (!WORD_ADDR(2) & ((WORD_ADDR(5) & ((!WORD_ADDR(1)))) # (!WORD_ADDR(5) & ((WORD_ADDR(3)) # (WORD_ADDR(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d13e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(5),
	datab => WORD_ADDR(2),
	datac => WORD_ADDR(3),
	datad => WORD_ADDR(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~3_combout\);

-- Location: LC_X2_Y1_N5
\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (WORD_ADDR(0) & (!WORD_ADDR(4) & ((!WORD_ADDR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(0),
	datab => WORD_ADDR(4),
	datad => WORD_ADDR(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: LC_X2_Y1_N6
\Mux9~1\ : maxii_lcell
-- Equation(s):
-- \Mux9~1_combout\ = ((WORD_ADDR(5) & (\Mux12~0_combout\ & !WORD_ADDR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => WORD_ADDR(5),
	datac => \Mux12~0_combout\,
	datad => WORD_ADDR(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~1_combout\);

-- Location: LC_X6_Y1_N3
\Mux9~2\ : maxii_lcell
-- Equation(s):
-- \Mux9~2_combout\ = (WORD_ADDR(3) & ((\Mux9~1_combout\) # ((\Mux10~0_combout\ & \Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(3),
	datab => \Mux9~1_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~2_combout\);

-- Location: LC_X6_Y1_N1
\SMBUS_WORD[6]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(6) = DFFEAS((\Mux9~2_combout\) # ((!\Mux9~3_combout\ & (!WORD_ADDR(4) & !WORD_ADDR(0)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff01",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Mux9~3_combout\,
	datab => WORD_ADDR(4),
	datac => WORD_ADDR(0),
	datad => \Mux9~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(6));

-- Location: LC_X6_Y4_N9
\Mux7~1\ : maxii_lcell
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((SMBUS_WORD(7)) # ((!BIT_POS(1))))) # (!\Mux7~0_combout\ & (((SMBUS_WORD(6) & BIT_POS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => SMBUS_WORD(7),
	datab => \Mux7~0_combout\,
	datac => SMBUS_WORD(6),
	datad => BIT_POS(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

-- Location: LC_X2_Y1_N9
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (WORD_ADDR(2) & ((WORD_ADDR(1) & (WORD_ADDR(5) & WORD_ADDR(0))) # (!WORD_ADDR(1) & (!WORD_ADDR(5) & !WORD_ADDR(0))))) # (!WORD_ADDR(2) & (!WORD_ADDR(5) & (WORD_ADDR(1) $ (WORD_ADDR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8106",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(5),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: LC_X2_Y1_N4
\Mux13~1\ : maxii_lcell
-- Equation(s):
-- \Mux13~1_combout\ = (WORD_ADDR(1) & (WORD_ADDR(0) & ((WORD_ADDR(5)) # (!WORD_ADDR(2))))) # (!WORD_ADDR(1) & (WORD_ADDR(2) $ ((WORD_ADDR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d612",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(5),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~1_combout\);

-- Location: LC_X2_Y1_N1
\SMBUS_WORD[2]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(2) = DFFEAS((WORD_ADDR(3) & (!\Mux13~0_combout\ & (\Mux13~1_combout\ & !WORD_ADDR(4)))) # (!WORD_ADDR(3) & (\Mux13~0_combout\ & (\Mux13~1_combout\ $ (WORD_ADDR(4))))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0460",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(3),
	datab => \Mux13~0_combout\,
	datac => \Mux13~1_combout\,
	datad => WORD_ADDR(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(2));

-- Location: LC_X7_Y3_N6
\Mux14~2\ : maxii_lcell
-- Equation(s):
-- \Mux14~2_combout\ = (WORD_ADDR(3) & ((WORD_ADDR(0)) # ((WORD_ADDR(5) & !WORD_ADDR(1))))) # (!WORD_ADDR(3) & (WORD_ADDR(5) $ (((!WORD_ADDR(0)) # (!WORD_ADDR(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb19",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(3),
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(1),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~2_combout\);

-- Location: LC_X7_Y3_N8
\Mux14~3\ : maxii_lcell
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (WORD_ADDR(4) $ (((WORD_ADDR(5)) # (!WORD_ADDR(0)))))) # (!\Mux14~2_combout\ & (!WORD_ADDR(5) & (WORD_ADDR(4) & !WORD_ADDR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "281a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(4),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~3_combout\);

-- Location: LC_X7_Y3_N1
\Mux14~0\ : maxii_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (WORD_ADDR(0) & (((!WORD_ADDR(1) & WORD_ADDR(3))))) # (!WORD_ADDR(0) & (WORD_ADDR(4) & (WORD_ADDR(1) & !WORD_ADDR(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(4),
	datab => WORD_ADDR(0),
	datac => WORD_ADDR(1),
	datad => WORD_ADDR(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

-- Location: LC_X7_Y3_N7
\SMBUS_WORD[1]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(1) = DFFEAS((WORD_ADDR(2) & (((!WORD_ADDR(5) & \Mux14~0_combout\)))) # (!WORD_ADDR(2) & (\Mux14~3_combout\)), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Mux14~3_combout\,
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(2),
	datad => \Mux14~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(1));

-- Location: LC_X7_Y3_N9
\Mux15~2\ : maxii_lcell
-- Equation(s):
-- \Mux15~2_combout\ = (WORD_ADDR(2) & (WORD_ADDR(3) $ (((!WORD_ADDR(0)))))) # (!WORD_ADDR(2) & (WORD_ADDR(3) & ((WORD_ADDR(5)) # (!WORD_ADDR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a85a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(3),
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(2),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~2_combout\);

-- Location: LC_X7_Y3_N0
\Mux15~3\ : maxii_lcell
-- Equation(s):
-- \Mux15~3_combout\ = (WORD_ADDR(1) & (!WORD_ADDR(5) & ((WORD_ADDR(3)) # (!\Mux15~2_combout\)))) # (!WORD_ADDR(1) & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(3),
	datab => WORD_ADDR(5),
	datac => WORD_ADDR(1),
	datad => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~3_combout\);

-- Location: LC_X7_Y3_N4
\Mux15~0\ : maxii_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (WORD_ADDR(2) & (WORD_ADDR(1) & ((WORD_ADDR(3)) # (!WORD_ADDR(0))))) # (!WORD_ADDR(2) & ((WORD_ADDR(3)) # ((WORD_ADDR(0) & !WORD_ADDR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f524",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(0),
	datac => WORD_ADDR(1),
	datad => WORD_ADDR(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

-- Location: LC_X7_Y3_N5
\SMBUS_WORD[0]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(0) = DFFEAS((WORD_ADDR(4) & (!WORD_ADDR(5) & ((!\Mux15~0_combout\)))) # (!WORD_ADDR(4) & (((\Mux15~3_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5072",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => WORD_ADDR(4),
	datab => WORD_ADDR(5),
	datac => \Mux15~3_combout\,
	datad => \Mux15~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(0));

-- Location: LC_X7_Y3_N3
\Mux7~2\ : maxii_lcell
-- Equation(s):
-- \Mux7~2_combout\ = (BIT_POS(0) & ((SMBUS_WORD(1)) # ((BIT_POS(1))))) # (!BIT_POS(0) & (((SMBUS_WORD(0) & !BIT_POS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => BIT_POS(0),
	datab => SMBUS_WORD(1),
	datac => SMBUS_WORD(0),
	datad => BIT_POS(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X2_Y1_N2
\Mux12~2\ : maxii_lcell
-- Equation(s):
-- \Mux12~2_combout\ = (WORD_ADDR(2) & ((WORD_ADDR(1) & (!WORD_ADDR(4))) # (!WORD_ADDR(1) & ((WORD_ADDR(4)) # (WORD_ADDR(0)))))) # (!WORD_ADDR(2) & (((WORD_ADDR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(4),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~2_combout\);

-- Location: LC_X2_Y1_N7
\Mux12~3\ : maxii_lcell
-- Equation(s):
-- \Mux12~3_combout\ = (WORD_ADDR(1) & ((WORD_ADDR(2) & (WORD_ADDR(4))) # (!WORD_ADDR(2) & (!WORD_ADDR(4) & !WORD_ADDR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8084",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(4),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~3_combout\);

-- Location: LC_X2_Y1_N8
\Mux12~4\ : maxii_lcell
-- Equation(s):
-- \Mux12~4_combout\ = (WORD_ADDR(3) & ((\Mux12~2_combout\) # ((WORD_ADDR(5))))) # (!WORD_ADDR(3) & (((\Mux12~3_combout\ & !WORD_ADDR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(3),
	datab => \Mux12~2_combout\,
	datac => \Mux12~3_combout\,
	datad => WORD_ADDR(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~4_combout\);

-- Location: LC_X2_Y1_N0
\Mux12~1\ : maxii_lcell
-- Equation(s):
-- \Mux12~1_combout\ = (WORD_ADDR(2) & (!WORD_ADDR(1) & (!WORD_ADDR(4) & !WORD_ADDR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => WORD_ADDR(2),
	datab => WORD_ADDR(1),
	datac => WORD_ADDR(4),
	datad => WORD_ADDR(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~1_combout\);

-- Location: LC_X2_Y1_N3
\SMBUS_WORD[3]\ : maxii_lcell
-- Equation(s):
-- SMBUS_WORD(3) = DFFEAS((\Mux12~4_combout\ & (((\Mux12~0_combout\) # (!WORD_ADDR(5))))) # (!\Mux12~4_combout\ & (\Mux12~1_combout\ & ((WORD_ADDR(5))))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Mux12~4_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux12~0_combout\,
	datad => WORD_ADDR(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SMBUS_WORD(3));

-- Location: LC_X6_Y4_N5
\Mux7~3\ : maxii_lcell
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & (((SMBUS_WORD(3)) # (!BIT_POS(1))))) # (!\Mux7~2_combout\ & (SMBUS_WORD(2) & ((BIT_POS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => SMBUS_WORD(2),
	datab => \Mux7~2_combout\,
	datac => SMBUS_WORD(3),
	datad => BIT_POS(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~3_combout\);

-- Location: LC_X6_Y4_N6
next_bit : maxii_lcell
-- Equation(s):
-- \next_bit~regout\ = DFFEAS((\Equal8~1\) # ((BIT_POS(2) & (\Mux7~1_combout\)) # (!BIT_POS(2) & ((\Mux7~3_combout\)))), GLOBAL(\CLK_12M~combout\), VCC, , \COUNTER[11]~24_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \Equal8~1\,
	datab => \Mux7~1_combout\,
	datac => \Mux7~3_combout\,
	datad => BIT_POS(2),
	aclr => GND,
	ena => \COUNTER[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \next_bit~regout\);

-- Location: LC_X2_Y3_N4
\SDATA_LOGIC~0\ : maxii_lcell
-- Equation(s):
-- \SDATA_LOGIC~0_combout\ = ((STATE(1) & ((\next_bit~regout\) # (!STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => STATE(1),
	datac => STATE(0),
	datad => \next_bit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SDATA_LOGIC~0_combout\);

-- Location: LC_X2_Y3_N7
\SDATA_LOGIC~1\ : maxii_lcell
-- Equation(s):
-- \SDATA_LOGIC~1_combout\ = (STATE(2) & (((\SDATA_LOGIC~0_combout\ & !STATE(0))) # (!\SDATA_LOGIC~regout\))) # (!STATE(2) & ((\SDATA_LOGIC~0_combout\ & (!STATE(0) & !\SDATA_LOGIC~regout\)) # (!\SDATA_LOGIC~0_combout\ & (STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datab => \SDATA_LOGIC~0_combout\,
	datac => STATE(0),
	datad => \SDATA_LOGIC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SDATA_LOGIC~1_combout\);

-- Location: LC_X2_Y3_N3
SDATA_LOGIC : maxii_lcell
-- Equation(s):
-- \SDATA_LOGIC~regout\ = DFFEAS(((\SCLK_LOGIC~0_combout\ & ((!\SDATA_LOGIC~1_combout\))) # (!\SCLK_LOGIC~0_combout\ & (\SDATA_LOGIC~regout\))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0faa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \SDATA_LOGIC~regout\,
	datac => \SDATA_LOGIC~1_combout\,
	datad => \SCLK_LOGIC~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SDATA_LOGIC~regout\);

-- Location: LC_X3_Y4_N9
\SDATA_CDCE906~en\ : maxii_lcell
-- Equation(s):
-- \SDATA_CDCE906~en_regout\ = DFFEAS((((!\SDATA_LOGIC~regout\ & !\process_3~7_combout\))), GLOBAL(\CLK_12M~combout\), VCC, , \SCLK_CDCE906~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	datac => \SDATA_LOGIC~regout\,
	datad => \process_3~7_combout\,
	aclr => GND,
	ena => \SCLK_CDCE906~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SDATA_CDCE906~en_regout\);

-- Location: LC_X3_Y4_N2
\SDATA_CDCL6010~en\ : maxii_lcell
-- Equation(s):
-- \SDATA_CDCL6010~en_regout\ = DFFEAS((!\process_3~5_combout\ & (((!\SDATA_LOGIC~regout\)))), GLOBAL(\CLK_12M~combout\), VCC, , \process_3~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \process_3~5_combout\,
	datac => \SDATA_LOGIC~regout\,
	aclr => GND,
	ena => \process_3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SDATA_CDCL6010~en_regout\);

-- Location: LC_X5_Y1_N9
\EXT_EMU0~reg0\ : maxii_lcell
-- Equation(s):
-- \EXT_EMU0~reg0_regout\ = DFFEAS((\EXT_TDO~2_combout\ & (\F1_EMU0~0\)) # (!\EXT_TDO~2_combout\ & (((\EXT_EMU0~reg0_regout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \F1_EMU0~0\,
	datab => \EXT_EMU0~reg0_regout\,
	datac => \EXT_TDO~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXT_EMU0~reg0_regout\);

-- Location: LC_X5_Y1_N8
\EXT_EMU1~reg0\ : maxii_lcell
-- Equation(s):
-- \EXT_EMU1~reg0_regout\ = DFFEAS(((\EXT_TDO~2_combout\ & (\F1_EMU1~0\)) # (!\EXT_TDO~2_combout\ & ((\EXT_EMU1~reg0_regout\)))), GLOBAL(\CLK_12M~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK_12M~combout\,
	dataa => \F1_EMU1~0\,
	datac => \EXT_TDO~2_combout\,
	datad => \EXT_EMU1~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EXT_EMU1~reg0_regout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EN_DVDD_1V8~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EN_DVDD_1V8~reg0_regout\,
	oe => VCC,
	padio => ww_EN_DVDD_1V8);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EN_DVDD_1V1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EN_DVDD_1V1~reg0_regout\,
	oe => VCC,
	padio => ww_EN_DVDD_1V1);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EN_CPU_CORE~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EN_CPU_CORE~reg0_regout\,
	oe => VCC,
	padio => ww_EN_CPU_CORE);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_XWRSTz~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_F1_XWRSTz);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_PORz~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_F1_PORz);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SCLK_CDCE906~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SCLK_CDCE906~reg0_regout\,
	oe => \SCLK_CDCE906~en_regout\,
	padio => ww_SCLK_CDCE906);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SCLK_CDCL6010~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SCLK_CDCL6010~reg0_regout\,
	oe => \SCLK_CDCL6010~en_regout\,
	padio => ww_SCLK_CDCL6010);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXT_TDO~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EXT_TDO~reg0_regout\,
	oe => VCC,
	padio => ww_EXT_TDO);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_TMS~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F1_TMS~reg0_regout\,
	oe => VCC,
	padio => ww_F1_TMS);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_TRST~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F1_TRST~reg0_regout\,
	oe => VCC,
	padio => ww_F1_TRST);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_TDI~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F1_TDI~reg0_regout\,
	oe => VCC,
	padio => ww_F1_TDI);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F1_TCK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F1_TCK~reg0_regout\,
	oe => VCC,
	padio => ww_F1_TCK);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXT_EMU0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \EXT_EMU0~reg0_regout\,
	oe => VCC,
	padio => EXT_EMU0);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXT_EMU1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \EXT_EMU1~reg0_regout\,
	oe => VCC,
	padio => EXT_EMU1);
END structure;


