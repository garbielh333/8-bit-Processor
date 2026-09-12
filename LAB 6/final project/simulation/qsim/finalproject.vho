-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "09/12/2026 17:36:20"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	finalproject IS
    PORT (
	R_first_four : OUT std_logic_vector(0 TO 6);
	Clock : IN std_logic;
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	dec_en : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	R_last_four : OUT std_logic_vector(0 TO 6);
	R_sign : OUT std_logic_vector(0 TO 6);
	std_id : OUT std_logic_vector(0 TO 6)
	);
END finalproject;

-- Design Ports Information
-- R_first_four[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_first_four[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_first_four[2]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_first_four[3]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_first_four[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_first_four[5]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_first_four[6]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[0]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[1]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[2]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[3]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[4]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[5]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_last_four[6]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[1]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[2]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[4]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[5]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R_sign[6]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[2]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[3]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[5]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- std_id[6]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Clock	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dec_en	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF finalproject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_first_four : std_logic_vector(0 TO 6);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dec_en : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R_last_four : std_logic_vector(0 TO 6);
SIGNAL ww_R_sign : std_logic_vector(0 TO 6);
SIGNAL ww_std_id : std_logic_vector(0 TO 6);
SIGNAL \Reset_A~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_first_four[0]~output_o\ : std_logic;
SIGNAL \R_first_four[1]~output_o\ : std_logic;
SIGNAL \R_first_four[2]~output_o\ : std_logic;
SIGNAL \R_first_four[3]~output_o\ : std_logic;
SIGNAL \R_first_four[4]~output_o\ : std_logic;
SIGNAL \R_first_four[5]~output_o\ : std_logic;
SIGNAL \R_first_four[6]~output_o\ : std_logic;
SIGNAL \R_last_four[0]~output_o\ : std_logic;
SIGNAL \R_last_four[1]~output_o\ : std_logic;
SIGNAL \R_last_four[2]~output_o\ : std_logic;
SIGNAL \R_last_four[3]~output_o\ : std_logic;
SIGNAL \R_last_four[4]~output_o\ : std_logic;
SIGNAL \R_last_four[5]~output_o\ : std_logic;
SIGNAL \R_last_four[6]~output_o\ : std_logic;
SIGNAL \R_sign[0]~output_o\ : std_logic;
SIGNAL \R_sign[1]~output_o\ : std_logic;
SIGNAL \R_sign[2]~output_o\ : std_logic;
SIGNAL \R_sign[3]~output_o\ : std_logic;
SIGNAL \R_sign[4]~output_o\ : std_logic;
SIGNAL \R_sign[5]~output_o\ : std_logic;
SIGNAL \R_sign[6]~output_o\ : std_logic;
SIGNAL \std_id[0]~output_o\ : std_logic;
SIGNAL \std_id[1]~output_o\ : std_logic;
SIGNAL \std_id[2]~output_o\ : std_logic;
SIGNAL \std_id[3]~output_o\ : std_logic;
SIGNAL \std_id[4]~output_o\ : std_logic;
SIGNAL \std_id[5]~output_o\ : std_logic;
SIGNAL \std_id[6]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Reset_A~input_o\ : std_logic;
SIGNAL \Reset_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Reset_B~input_o\ : std_logic;
SIGNAL \Reset_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Result~14_combout\ : std_logic;
SIGNAL \FSM_reset~input_o\ : std_logic;
SIGNAL \FSM_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \inst4|yfsm.s8~q\ : std_logic;
SIGNAL \inst4|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst4|yfsm.s0~q\ : std_logic;
SIGNAL \inst4|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst4|yfsm.s1~q\ : std_logic;
SIGNAL \inst4|yfsm.s2~q\ : std_logic;
SIGNAL \inst4|yfsm.s3~q\ : std_logic;
SIGNAL \inst4|yfsm.s4~q\ : std_logic;
SIGNAL \inst4|yfsm.s5~q\ : std_logic;
SIGNAL \inst4|yfsm.s6~q\ : std_logic;
SIGNAL \inst4|yfsm.s7~q\ : std_logic;
SIGNAL \inst3|Result[7]~9_combout\ : std_logic;
SIGNAL \inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|Result~15_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Result[7]~10_combout\ : std_logic;
SIGNAL \inst3|Result[7]~11_combout\ : std_logic;
SIGNAL \inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|Selector5~1_combout\ : std_logic;
SIGNAL \inst3|Selector5~2_combout\ : std_logic;
SIGNAL \inst3|Selector5~3_combout\ : std_logic;
SIGNAL \inst3|Result[2]~2_combout\ : std_logic;
SIGNAL \inst3|Result~16_combout\ : std_logic;
SIGNAL \dec_en~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst3|Result~17_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|Selector4~1_combout\ : std_logic;
SIGNAL \inst3|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|Selector4~3_combout\ : std_logic;
SIGNAL \inst3|Result[3]~3_combout\ : std_logic;
SIGNAL \inst3|Result~18_combout\ : std_logic;
SIGNAL \inst3|Result~12_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|Selector6~2_combout\ : std_logic;
SIGNAL \inst3|Selector6~3_combout\ : std_logic;
SIGNAL \inst3|Result[1]~1_combout\ : std_logic;
SIGNAL \inst3|Result~13_combout\ : std_logic;
SIGNAL \inst4|WideOr14~combout\ : std_logic;
SIGNAL \inst3|Selector7~5_combout\ : std_logic;
SIGNAL \inst3|Result~8_combout\ : std_logic;
SIGNAL \inst3|Selector7~7_combout\ : std_logic;
SIGNAL \inst3|Selector7~4_combout\ : std_logic;
SIGNAL \inst3|Selector7~3_combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|Selector7~2_combout\ : std_logic;
SIGNAL \inst3|Selector7~6_combout\ : std_logic;
SIGNAL \inst3|Result[0]~0_combout\ : std_logic;
SIGNAL \inst3|Add0~0_wirecell_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|Q[7]~feeder_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst3|Result~27_combout\ : std_logic;
SIGNAL \inst3|Result~26_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Result~28_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|Selector0~1_combout\ : std_logic;
SIGNAL \inst3|Selector0~2_combout\ : std_logic;
SIGNAL \inst3|Selector0~3_combout\ : std_logic;
SIGNAL \inst3|Selector0~4_combout\ : std_logic;
SIGNAL \inst3|Result[7]~7_combout\ : std_logic;
SIGNAL \inst3|Result~22_combout\ : std_logic;
SIGNAL \inst3|Result~21_combout\ : std_logic;
SIGNAL \inst3|Result~23_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|Selector2~2_combout\ : std_logic;
SIGNAL \inst3|Selector2~3_combout\ : std_logic;
SIGNAL \inst3|Result[5]~5_combout\ : std_logic;
SIGNAL \inst3|Result~19_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|Selector3~3_combout\ : std_logic;
SIGNAL \inst3|Result[4]~4_combout\ : std_logic;
SIGNAL \inst3|Result~20_combout\ : std_logic;
SIGNAL \inst3|Result~24_combout\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|Selector1~2_combout\ : std_logic;
SIGNAL \inst3|Selector1~3_combout\ : std_logic;
SIGNAL \inst3|Result[6]~6_combout\ : std_logic;
SIGNAL \inst3|Result~25_combout\ : std_logic;
SIGNAL \inst14|Mux0~0_combout\ : std_logic;
SIGNAL \inst14|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|Mux2~0_combout\ : std_logic;
SIGNAL \inst14|Mux3~0_combout\ : std_logic;
SIGNAL \inst14|Mux4~0_combout\ : std_logic;
SIGNAL \inst14|Mux5~0_combout\ : std_logic;
SIGNAL \inst14|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Y[1]~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_cout\ : std_logic;
SIGNAL \inst3|LessThan0~3_cout\ : std_logic;
SIGNAL \inst3|LessThan0~5_cout\ : std_logic;
SIGNAL \inst3|LessThan0~7_cout\ : std_logic;
SIGNAL \inst3|LessThan0~9_cout\ : std_logic;
SIGNAL \inst3|LessThan0~11_cout\ : std_logic;
SIGNAL \inst3|LessThan0~13_cout\ : std_logic;
SIGNAL \inst3|LessThan0~14_combout\ : std_logic;
SIGNAL \inst1|Y[1]~1_combout\ : std_logic;
SIGNAL \inst3|Neg~0_combout\ : std_logic;
SIGNAL \inst3|Neg~q\ : std_logic;
SIGNAL \inst4|WideOr11~0_combout\ : std_logic;
SIGNAL \inst4|WideOr9~0_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Neg~q\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Clock~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

R_first_four <= ww_R_first_four;
ww_Clock <= Clock;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
ww_dec_en <= dec_en;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
R_last_four <= ww_R_last_four;
R_sign <= ww_R_sign;
std_id <= ww_std_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset_A~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset_A~input_o\);

\FSM_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSM_reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Reset_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset_B~input_o\);
\inst3|ALT_INV_Neg~q\ <= NOT \inst3|Neg~q\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst13|ALT_INV_Mux6~0_combout\ <= NOT \inst13|Mux6~0_combout\;
\inst14|ALT_INV_Mux6~0_combout\ <= NOT \inst14|Mux6~0_combout\;
\ALT_INV_Clock~inputclkctrl_outclk\ <= NOT \Clock~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N9
\R_first_four[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\R_first_four[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\R_first_four[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\R_first_four[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\R_first_four[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\R_first_four[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\R_first_four[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \R_first_four[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\R_last_four[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\R_last_four[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\R_last_four[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\R_last_four[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\R_last_four[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\R_last_four[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[5]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\R_last_four[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \R_last_four[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\R_sign[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R_sign[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R_sign[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R_sign[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\R_sign[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R_sign[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\R_sign[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R_sign[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\R_sign[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R_sign[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\R_sign[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R_sign[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\R_sign[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Neg~q\,
	devoe => ww_devoe,
	o => \R_sign[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\std_id[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \std_id[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\std_id[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \std_id[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\std_id[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \std_id[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\std_id[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \std_id[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\std_id[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \std_id[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\std_id[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \std_id[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\std_id[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \std_id[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y9_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\Reset_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_A,
	o => \Reset_A~input_o\);

-- Location: CLKCTRL_G3
\Reset_A~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~inputclkctrl_outclk\);

-- Location: FF_X26_Y9_N21
\inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[2]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(2));

-- Location: IOIBUF_X28_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\Reset_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_B,
	o => \Reset_B~input_o\);

-- Location: CLKCTRL_G9
\Reset_B~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~inputclkctrl_outclk\);

-- Location: FF_X26_Y9_N5
\inst2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[2]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(2));

-- Location: LCCOMB_X25_Y9_N18
\inst3|Result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~14_combout\ = (\inst|Q\(2)) # (\inst2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(2),
	datad => \inst2|Q\(2),
	combout => \inst3|Result~14_combout\);

-- Location: IOIBUF_X0_Y11_N15
\FSM_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSM_reset,
	o => \FSM_reset~input_o\);

-- Location: CLKCTRL_G4
\FSM_reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y10_N8
\data_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: FF_X25_Y10_N7
\inst4|yfsm.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s7~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s8~q\);

-- Location: LCCOMB_X28_Y10_N18
\inst4|yfsm.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|yfsm.s0~0_combout\ = !\inst4|yfsm.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|yfsm.s8~q\,
	combout => \inst4|yfsm.s0~0_combout\);

-- Location: FF_X28_Y10_N19
\inst4|yfsm.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \inst4|yfsm.s0~0_combout\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s0~q\);

-- Location: LCCOMB_X28_Y10_N8
\inst4|yfsm.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|yfsm.s1~0_combout\ = !\inst4|yfsm.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|yfsm.s0~q\,
	combout => \inst4|yfsm.s1~0_combout\);

-- Location: FF_X25_Y10_N23
\inst4|yfsm.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s1~0_combout\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s1~q\);

-- Location: FF_X25_Y10_N17
\inst4|yfsm.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s1~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s2~q\);

-- Location: FF_X25_Y10_N15
\inst4|yfsm.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s2~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s3~q\);

-- Location: FF_X25_Y10_N9
\inst4|yfsm.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s3~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s4~q\);

-- Location: FF_X25_Y10_N31
\inst4|yfsm.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s4~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s5~q\);

-- Location: FF_X25_Y10_N27
\inst4|yfsm.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s5~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s6~q\);

-- Location: FF_X25_Y10_N5
\inst4|yfsm.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \inst4|yfsm.s6~q\,
	clrn => \FSM_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|yfsm.s7~q\);

-- Location: LCCOMB_X25_Y10_N22
\inst3|Result[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[7]~9_combout\ = (\inst4|yfsm.s3~q\) # ((\inst4|yfsm.s2~q\ & (\inst4|yfsm.s1~q\)) # (!\inst4|yfsm.s2~q\ & ((\inst4|yfsm.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s3~q\,
	datab => \inst4|yfsm.s2~q\,
	datac => \inst4|yfsm.s1~q\,
	datad => \inst4|yfsm.s6~q\,
	combout => \inst3|Result[7]~9_combout\);

-- Location: LCCOMB_X25_Y10_N4
\inst3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~0_combout\ = (!\inst4|yfsm.s3~q\ & !\inst4|yfsm.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s3~q\,
	datad => \inst4|yfsm.s2~q\,
	combout => \inst3|Selector7~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\inst3|Result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~15_combout\ = (\inst2|Q\(2) & \inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(2),
	datad => \inst|Q\(2),
	combout => \inst3|Result~15_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X26_Y9_N19
\inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[1]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(1));

-- Location: IOIBUF_X34_Y3_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: FF_X26_Y9_N3
\inst2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[1]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(1));

-- Location: IOIBUF_X18_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X26_Y9_N17
\inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[0]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(0));

-- Location: IOIBUF_X34_Y2_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: FF_X26_Y9_N1
\inst2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[0]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(0));

-- Location: LCCOMB_X26_Y9_N0
\inst3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = (\inst|Q\(0) & ((GND) # (!\inst2|Q\(0)))) # (!\inst|Q\(0) & (\inst2|Q\(0) $ (GND)))
-- \inst3|Add1~1\ = CARRY((\inst|Q\(0)) # (!\inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst2|Q\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X26_Y9_N2
\inst3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst|Q\(1) & ((\inst2|Q\(1) & (!\inst3|Add1~1\)) # (!\inst2|Q\(1) & (\inst3|Add1~1\ & VCC)))) # (!\inst|Q\(1) & ((\inst2|Q\(1) & ((\inst3|Add1~1\) # (GND))) # (!\inst2|Q\(1) & (!\inst3|Add1~1\))))
-- \inst3|Add1~3\ = CARRY((\inst|Q\(1) & (\inst2|Q\(1) & !\inst3|Add1~1\)) # (!\inst|Q\(1) & ((\inst2|Q\(1)) # (!\inst3|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst2|Q\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X26_Y9_N4
\inst3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = ((\inst|Q\(2) $ (\inst2|Q\(2) $ (\inst3|Add1~3\)))) # (GND)
-- \inst3|Add1~5\ = CARRY((\inst|Q\(2) & ((!\inst3|Add1~3\) # (!\inst2|Q\(2)))) # (!\inst|Q\(2) & (!\inst2|Q\(2) & !\inst3|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst2|Q\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X26_Y9_N16
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst|Q\(0) & (\inst2|Q\(0) $ (VCC))) # (!\inst|Q\(0) & (\inst2|Q\(0) & VCC))
-- \inst3|Add0~1\ = CARRY((\inst|Q\(0) & \inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst2|Q\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X26_Y9_N18
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst|Q\(1) & ((\inst2|Q\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst2|Q\(1) & (!\inst3|Add0~1\)))) # (!\inst|Q\(1) & ((\inst2|Q\(1) & (!\inst3|Add0~1\)) # (!\inst2|Q\(1) & ((\inst3|Add0~1\) # (GND)))))
-- \inst3|Add0~3\ = CARRY((\inst|Q\(1) & (!\inst2|Q\(1) & !\inst3|Add0~1\)) # (!\inst|Q\(1) & ((!\inst3|Add0~1\) # (!\inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst2|Q\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X26_Y9_N20
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = ((\inst2|Q\(2) $ (\inst|Q\(2) $ (!\inst3|Add0~3\)))) # (GND)
-- \inst3|Add0~5\ = CARRY((\inst2|Q\(2) & ((\inst|Q\(2)) # (!\inst3|Add0~3\))) # (!\inst2|Q\(2) & (\inst|Q\(2) & !\inst3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X25_Y10_N26
\inst3|Result[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[7]~10_combout\ = (!\inst4|yfsm.s5~q\ & !\inst4|yfsm.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|yfsm.s5~q\,
	datad => \inst4|yfsm.s4~q\,
	combout => \inst3|Result[7]~10_combout\);

-- Location: LCCOMB_X25_Y10_N6
\inst3|Result[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[7]~11_combout\ = (\inst4|yfsm.s5~q\) # ((\inst4|yfsm.s1~q\) # (\inst4|yfsm.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~q\,
	datab => \inst4|yfsm.s1~q\,
	datad => \inst4|yfsm.s3~q\,
	combout => \inst3|Result[7]~11_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector5~0_combout\ = (\inst3|Result[7]~10_combout\ & (\inst3|Add0~4_combout\ & ((!\inst3|Result[7]~11_combout\)))) # (!\inst3|Result[7]~10_combout\ & (((\inst3|Result[7]~11_combout\) # (!\inst3|Result~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~4_combout\,
	datab => \inst3|Result[7]~10_combout\,
	datac => \inst3|Result~14_combout\,
	datad => \inst3|Result[7]~11_combout\,
	combout => \inst3|Selector5~0_combout\);

-- Location: LCCOMB_X24_Y10_N12
\inst3|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector5~1_combout\ = (\inst3|Selector5~0_combout\ & ((\inst3|Result~15_combout\) # ((!\inst3|Result[7]~11_combout\)))) # (!\inst3|Selector5~0_combout\ & (((\inst3|Add1~4_combout\ & \inst3|Result[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~15_combout\,
	datab => \inst3|Add1~4_combout\,
	datac => \inst3|Selector5~0_combout\,
	datad => \inst3|Result[7]~11_combout\,
	combout => \inst3|Selector5~1_combout\);

-- Location: LCCOMB_X24_Y10_N18
\inst3|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector5~2_combout\ = (\inst3|Selector7~0_combout\ & (!\inst3|Result[7]~9_combout\ & ((\inst3|Selector5~1_combout\)))) # (!\inst3|Selector7~0_combout\ & ((\inst3|Result[7]~9_combout\) # ((!\inst|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector7~0_combout\,
	datab => \inst3|Result[7]~9_combout\,
	datac => \inst|Q\(2),
	datad => \inst3|Selector5~1_combout\,
	combout => \inst3|Selector5~2_combout\);

-- Location: LCCOMB_X24_Y10_N28
\inst3|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector5~3_combout\ = (\inst3|Result[7]~9_combout\ & ((\inst|Q\(2) & (!\inst2|Q\(2))) # (!\inst|Q\(2) & ((\inst2|Q\(2)) # (\inst3|Selector5~2_combout\))))) # (!\inst3|Result[7]~9_combout\ & (((\inst3|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst2|Q\(2),
	datac => \inst3|Result[7]~9_combout\,
	datad => \inst3|Selector5~2_combout\,
	combout => \inst3|Selector5~3_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst3|Result[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[2]~2_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~14_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~14_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector5~3_combout\,
	combout => \inst3|Result[2]~2_combout\);

-- Location: LCCOMB_X23_Y10_N6
\inst3|Result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~16_combout\ = \inst2|Q\(2) $ (!\inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(2),
	datad => \inst|Q\(2),
	combout => \inst3|Result~16_combout\);

-- Location: IOIBUF_X34_Y7_N8
\dec_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dec_en,
	o => \dec_en~input_o\);

-- Location: FF_X24_Y10_N31
\inst3|Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[2]~2_combout\,
	asdata => \inst3|Result~16_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(2));

-- Location: IOIBUF_X25_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X26_Y9_N23
\inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[3]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(3));

-- Location: IOIBUF_X34_Y9_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: FF_X26_Y9_N7
\inst2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[3]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(3));

-- Location: LCCOMB_X24_Y8_N12
\inst3|Result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~17_combout\ = (\inst|Q\(3)) # (\inst2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datad => \inst2|Q\(3),
	combout => \inst3|Result~17_combout\);

-- Location: LCCOMB_X26_Y9_N22
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst|Q\(3) & ((\inst2|Q\(3) & (\inst3|Add0~5\ & VCC)) # (!\inst2|Q\(3) & (!\inst3|Add0~5\)))) # (!\inst|Q\(3) & ((\inst2|Q\(3) & (!\inst3|Add0~5\)) # (!\inst2|Q\(3) & ((\inst3|Add0~5\) # (GND)))))
-- \inst3|Add0~7\ = CARRY((\inst|Q\(3) & (!\inst2|Q\(3) & !\inst3|Add0~5\)) # (!\inst|Q\(3) & ((!\inst3|Add0~5\) # (!\inst2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X26_Y9_N6
\inst3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst|Q\(3) & ((\inst2|Q\(3) & (!\inst3|Add1~5\)) # (!\inst2|Q\(3) & (\inst3|Add1~5\ & VCC)))) # (!\inst|Q\(3) & ((\inst2|Q\(3) & ((\inst3|Add1~5\) # (GND))) # (!\inst2|Q\(3) & (!\inst3|Add1~5\))))
-- \inst3|Add1~7\ = CARRY((\inst|Q\(3) & (\inst2|Q\(3) & !\inst3|Add1~5\)) # (!\inst|Q\(3) & ((\inst2|Q\(3)) # (!\inst3|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X25_Y10_N28
\inst3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector4~0_combout\ = (\inst3|Result[7]~10_combout\ & ((\inst3|Result[7]~11_combout\ & ((\inst3|Add1~6_combout\))) # (!\inst3|Result[7]~11_combout\ & (\inst3|Add0~6_combout\)))) # (!\inst3|Result[7]~10_combout\ & 
-- (((\inst3|Result[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[7]~10_combout\,
	datab => \inst3|Add0~6_combout\,
	datac => \inst3|Result[7]~11_combout\,
	datad => \inst3|Add1~6_combout\,
	combout => \inst3|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y10_N22
\inst3|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector4~1_combout\ = (\inst3|Result[7]~10_combout\ & (((\inst3|Selector4~0_combout\)))) # (!\inst3|Result[7]~10_combout\ & ((\inst2|Q\(3) & (\inst|Q\(3) & \inst3|Selector4~0_combout\)) # (!\inst2|Q\(3) & (!\inst|Q\(3) & 
-- !\inst3|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Result[7]~10_combout\,
	datac => \inst|Q\(3),
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector4~1_combout\);

-- Location: LCCOMB_X24_Y10_N20
\inst3|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector4~2_combout\ = (\inst3|Selector7~0_combout\ & (!\inst3|Result[7]~9_combout\ & (\inst3|Selector4~1_combout\))) # (!\inst3|Selector7~0_combout\ & ((\inst3|Result[7]~9_combout\) # ((!\inst|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector7~0_combout\,
	datab => \inst3|Result[7]~9_combout\,
	datac => \inst3|Selector4~1_combout\,
	datad => \inst|Q\(3),
	combout => \inst3|Selector4~2_combout\);

-- Location: LCCOMB_X24_Y10_N10
\inst3|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector4~3_combout\ = (\inst3|Result[7]~9_combout\ & ((\inst2|Q\(3) & (!\inst|Q\(3))) # (!\inst2|Q\(3) & ((\inst|Q\(3)) # (\inst3|Selector4~2_combout\))))) # (!\inst3|Result[7]~9_combout\ & (((\inst3|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Result[7]~9_combout\,
	datac => \inst|Q\(3),
	datad => \inst3|Selector4~2_combout\,
	combout => \inst3|Selector4~3_combout\);

-- Location: LCCOMB_X24_Y10_N8
\inst3|Result[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~3_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~17_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~17_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector4~3_combout\,
	combout => \inst3|Result[3]~3_combout\);

-- Location: LCCOMB_X25_Y9_N8
\inst3|Result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~18_combout\ = \inst|Q\(3) $ (!\inst2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Q\(3),
	datad => \inst2|Q\(3),
	combout => \inst3|Result~18_combout\);

-- Location: FF_X24_Y10_N9
\inst3|Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[3]~3_combout\,
	asdata => \inst3|Result~18_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(3));

-- Location: LCCOMB_X24_Y10_N26
\inst3|Result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~12_combout\ = (\inst2|Q\(1)) # (\inst|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datad => \inst|Q\(1),
	combout => \inst3|Result~12_combout\);

-- Location: LCCOMB_X24_Y10_N6
\inst3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector6~0_combout\ = (\inst3|Result[7]~11_combout\ & (((\inst3|Add1~2_combout\)) # (!\inst3|Result[7]~10_combout\))) # (!\inst3|Result[7]~11_combout\ & (\inst3|Result[7]~10_combout\ & (\inst3|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[7]~11_combout\,
	datab => \inst3|Result[7]~10_combout\,
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|Add1~2_combout\,
	combout => \inst3|Selector6~0_combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst3|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector6~1_combout\ = (\inst3|Result[7]~10_combout\ & (((\inst3|Selector6~0_combout\)))) # (!\inst3|Result[7]~10_combout\ & ((\inst|Q\(1) & (\inst2|Q\(1) & \inst3|Selector6~0_combout\)) # (!\inst|Q\(1) & (!\inst2|Q\(1) & 
-- !\inst3|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst3|Result[7]~10_combout\,
	datac => \inst2|Q\(1),
	datad => \inst3|Selector6~0_combout\,
	combout => \inst3|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y10_N2
\inst3|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector6~2_combout\ = (\inst3|Selector7~0_combout\ & (((!\inst3|Result[7]~9_combout\ & \inst3|Selector6~1_combout\)))) # (!\inst3|Selector7~0_combout\ & (((\inst3|Result[7]~9_combout\)) # (!\inst|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector7~0_combout\,
	datab => \inst|Q\(1),
	datac => \inst3|Result[7]~9_combout\,
	datad => \inst3|Selector6~1_combout\,
	combout => \inst3|Selector6~2_combout\);

-- Location: LCCOMB_X24_Y10_N0
\inst3|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector6~3_combout\ = (\inst3|Result[7]~9_combout\ & ((\inst|Q\(1) & (!\inst2|Q\(1))) # (!\inst|Q\(1) & ((\inst2|Q\(1)) # (\inst3|Selector6~2_combout\))))) # (!\inst3|Result[7]~9_combout\ & (((\inst3|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst2|Q\(1),
	datac => \inst3|Result[7]~9_combout\,
	datad => \inst3|Selector6~2_combout\,
	combout => \inst3|Selector6~3_combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst3|Result[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[1]~1_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~12_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~12_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector6~3_combout\,
	combout => \inst3|Result[1]~1_combout\);

-- Location: LCCOMB_X24_Y10_N4
\inst3|Result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~13_combout\ = \inst2|Q\(1) $ (!\inst|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datad => \inst|Q\(1),
	combout => \inst3|Result~13_combout\);

-- Location: FF_X24_Y10_N25
\inst3|Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[1]~1_combout\,
	asdata => \inst3|Result~13_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(1));

-- Location: LCCOMB_X25_Y10_N30
\inst4|WideOr14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr14~combout\ = (\inst4|yfsm.s3~q\) # (\inst4|yfsm.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s3~q\,
	datad => \inst4|yfsm.s1~q\,
	combout => \inst4|WideOr14~combout\);

-- Location: LCCOMB_X25_Y10_N8
\inst3|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~5_combout\ = (!\inst4|yfsm.s7~q\ & !\inst4|yfsm.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s7~q\,
	datac => \inst4|yfsm.s4~q\,
	combout => \inst3|Selector7~5_combout\);

-- Location: LCCOMB_X25_Y9_N22
\inst3|Result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~8_combout\ = (\inst|Q\(0) & \inst2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Q\(0),
	datad => \inst2|Q\(0),
	combout => \inst3|Result~8_combout\);

-- Location: LCCOMB_X25_Y9_N0
\inst3|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~7_combout\ = (!\inst4|WideOr14~combout\ & (\inst3|Selector7~5_combout\ & (\inst3|Result~8_combout\ & \inst3|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr14~combout\,
	datab => \inst3|Selector7~5_combout\,
	datac => \inst3|Result~8_combout\,
	datad => \inst3|Selector7~0_combout\,
	combout => \inst3|Selector7~7_combout\);

-- Location: LCCOMB_X25_Y9_N12
\inst3|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~4_combout\ = (!\inst4|yfsm.s2~q\ & (!\inst4|yfsm.s1~q\ & !\inst4|yfsm.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s2~q\,
	datac => \inst4|yfsm.s1~q\,
	datad => \inst4|yfsm.s3~q\,
	combout => \inst3|Selector7~4_combout\);

-- Location: LCCOMB_X25_Y9_N14
\inst3|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~3_combout\ = (\inst4|yfsm.s7~q\ & (!\inst4|yfsm.s4~q\ & ((\inst|Q\(0)) # (\inst2|Q\(0))))) # (!\inst4|yfsm.s7~q\ & (!\inst|Q\(0) & (!\inst2|Q\(0) & \inst4|yfsm.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst2|Q\(0),
	datac => \inst4|yfsm.s7~q\,
	datad => \inst4|yfsm.s4~q\,
	combout => \inst3|Selector7~3_combout\);

-- Location: LCCOMB_X25_Y9_N24
\inst3|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~1_combout\ = (\inst4|WideOr14~combout\ & (((!\inst3|Selector7~0_combout\)))) # (!\inst4|WideOr14~combout\ & ((\inst3|Selector7~0_combout\ & ((\inst3|Add0~0_combout\))) # (!\inst3|Selector7~0_combout\ & (!\inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst3|Add0~0_combout\,
	datac => \inst4|WideOr14~combout\,
	datad => \inst3|Selector7~0_combout\,
	combout => \inst3|Selector7~1_combout\);

-- Location: LCCOMB_X25_Y9_N28
\inst3|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~2_combout\ = (\inst4|WideOr14~combout\ & ((\inst3|Selector7~1_combout\ & (!\inst3|Result~8_combout\)) # (!\inst3|Selector7~1_combout\ & ((\inst3|Add1~0_combout\))))) # (!\inst4|WideOr14~combout\ & (((\inst3|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~8_combout\,
	datab => \inst3|Add1~0_combout\,
	datac => \inst4|WideOr14~combout\,
	datad => \inst3|Selector7~1_combout\,
	combout => \inst3|Selector7~2_combout\);

-- Location: LCCOMB_X25_Y9_N10
\inst3|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector7~6_combout\ = (\inst3|Selector7~4_combout\ & ((\inst3|Selector7~3_combout\) # ((\inst3|Selector7~5_combout\ & \inst3|Selector7~2_combout\)))) # (!\inst3|Selector7~4_combout\ & (\inst3|Selector7~5_combout\ & 
-- ((\inst3|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector7~4_combout\,
	datab => \inst3|Selector7~5_combout\,
	datac => \inst3|Selector7~3_combout\,
	datad => \inst3|Selector7~2_combout\,
	combout => \inst3|Selector7~6_combout\);

-- Location: LCCOMB_X25_Y9_N20
\inst3|Result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[0]~0_combout\ = (\inst4|yfsm.s5~q\ & (\inst3|Selector7~7_combout\)) # (!\inst4|yfsm.s5~q\ & ((\inst3|Selector7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~q\,
	datab => \inst3|Selector7~7_combout\,
	datad => \inst3|Selector7~6_combout\,
	combout => \inst3|Result[0]~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\inst3|Add0~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_wirecell_combout\ = !\inst3|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~0_combout\,
	combout => \inst3|Add0~0_wirecell_combout\);

-- Location: FF_X25_Y9_N21
\inst3|Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[0]~0_combout\,
	asdata => \inst3|Add0~0_wirecell_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(0));

-- Location: LCCOMB_X30_Y4_N16
\inst13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (\inst3|Result\(2) & (!\inst3|Result\(1) & (\inst3|Result\(3) $ (!\inst3|Result\(0))))) # (!\inst3|Result\(2) & (\inst3|Result\(0) & (\inst3|Result\(3) $ (!\inst3|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y4_N14
\inst13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (\inst3|Result\(3) & ((\inst3|Result\(0) & ((\inst3|Result\(1)))) # (!\inst3|Result\(0) & (\inst3|Result\(2))))) # (!\inst3|Result\(3) & (\inst3|Result\(2) & (\inst3|Result\(1) $ (\inst3|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y4_N28
\inst13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (\inst3|Result\(2) & (\inst3|Result\(3) & ((\inst3|Result\(1)) # (!\inst3|Result\(0))))) # (!\inst3|Result\(2) & (!\inst3|Result\(3) & (\inst3|Result\(1) & !\inst3|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y4_N22
\inst13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (\inst3|Result\(0) & (\inst3|Result\(2) $ (((!\inst3|Result\(1)))))) # (!\inst3|Result\(0) & ((\inst3|Result\(2) & (!\inst3|Result\(3) & !\inst3|Result\(1))) # (!\inst3|Result\(2) & (\inst3|Result\(3) & \inst3|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y4_N12
\inst13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (\inst3|Result\(1) & (((!\inst3|Result\(3) & \inst3|Result\(0))))) # (!\inst3|Result\(1) & ((\inst3|Result\(2) & (!\inst3|Result\(3))) # (!\inst3|Result\(2) & ((\inst3|Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y4_N26
\inst13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (\inst3|Result\(2) & (\inst3|Result\(0) & (\inst3|Result\(3) $ (\inst3|Result\(1))))) # (!\inst3|Result\(2) & (!\inst3|Result\(3) & ((\inst3|Result\(1)) # (\inst3|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y4_N24
\inst13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (\inst3|Result\(0) & ((\inst3|Result\(3)) # (\inst3|Result\(2) $ (\inst3|Result\(1))))) # (!\inst3|Result\(0) & ((\inst3|Result\(1)) # (\inst3|Result\(2) $ (\inst3|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(2),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(0),
	combout => \inst13|Mux6~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X29_Y10_N20
\inst|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[7]~feeder_combout\ = \A[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[7]~input_o\,
	combout => \inst|Q[7]~feeder_combout\);

-- Location: FF_X29_Y10_N21
\inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|Q[7]~feeder_combout\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(7));

-- Location: IOIBUF_X23_Y24_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: FF_X26_Y9_N31
\inst2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[7]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(7));

-- Location: LCCOMB_X29_Y10_N18
\inst3|Result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~27_combout\ = (\inst|Q\(7)) # (\inst2|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	datad => \inst2|Q\(7),
	combout => \inst3|Result~27_combout\);

-- Location: LCCOMB_X28_Y10_N24
\inst3|Result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~26_combout\ = \inst|Q\(7) $ (!\inst2|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datac => \inst2|Q\(7),
	combout => \inst3|Result~26_combout\);

-- Location: IOIBUF_X34_Y9_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: FF_X26_Y9_N13
\inst2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[6]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(6));

-- Location: IOIBUF_X34_Y2_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: FF_X26_Y9_N29
\inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[6]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(6));

-- Location: IOIBUF_X34_Y12_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: FF_X26_Y9_N11
\inst2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[5]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(5));

-- Location: IOIBUF_X34_Y12_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: FF_X26_Y9_N27
\inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[5]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(5));

-- Location: IOIBUF_X34_Y12_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: FF_X26_Y9_N9
\inst2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \B[4]~input_o\,
	clrn => \Reset_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q\(4));

-- Location: IOIBUF_X34_Y4_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X26_Y9_N25
\inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \A[4]~input_o\,
	clrn => \Reset_A~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(4));

-- Location: LCCOMB_X26_Y9_N8
\inst3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = ((\inst2|Q\(4) $ (\inst|Q\(4) $ (\inst3|Add1~7\)))) # (GND)
-- \inst3|Add1~9\ = CARRY((\inst2|Q\(4) & (\inst|Q\(4) & !\inst3|Add1~7\)) # (!\inst2|Q\(4) & ((\inst|Q\(4)) # (!\inst3|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X26_Y9_N10
\inst3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst2|Q\(5) & ((\inst|Q\(5) & (!\inst3|Add1~9\)) # (!\inst|Q\(5) & ((\inst3|Add1~9\) # (GND))))) # (!\inst2|Q\(5) & ((\inst|Q\(5) & (\inst3|Add1~9\ & VCC)) # (!\inst|Q\(5) & (!\inst3|Add1~9\))))
-- \inst3|Add1~11\ = CARRY((\inst2|Q\(5) & ((!\inst3|Add1~9\) # (!\inst|Q\(5)))) # (!\inst2|Q\(5) & (!\inst|Q\(5) & !\inst3|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Q\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X26_Y9_N12
\inst3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = ((\inst2|Q\(6) $ (\inst|Q\(6) $ (\inst3|Add1~11\)))) # (GND)
-- \inst3|Add1~13\ = CARRY((\inst2|Q\(6) & (\inst|Q\(6) & !\inst3|Add1~11\)) # (!\inst2|Q\(6) & ((\inst|Q\(6)) # (!\inst3|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X26_Y9_N14
\inst3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = \inst2|Q\(7) $ (\inst3|Add1~13\ $ (!\inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\);

-- Location: LCCOMB_X28_Y10_N22
\inst3|Result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~28_combout\ = (\inst|Q\(7) & \inst2|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datac => \inst2|Q\(7),
	combout => \inst3|Result~28_combout\);

-- Location: LCCOMB_X26_Y9_N24
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = ((\inst2|Q\(4) $ (\inst|Q\(4) $ (!\inst3|Add0~7\)))) # (GND)
-- \inst3|Add0~9\ = CARRY((\inst2|Q\(4) & ((\inst|Q\(4)) # (!\inst3|Add0~7\))) # (!\inst2|Q\(4) & (\inst|Q\(4) & !\inst3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X26_Y9_N26
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst2|Q\(5) & ((\inst|Q\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst|Q\(5) & (!\inst3|Add0~9\)))) # (!\inst2|Q\(5) & ((\inst|Q\(5) & (!\inst3|Add0~9\)) # (!\inst|Q\(5) & ((\inst3|Add0~9\) # (GND)))))
-- \inst3|Add0~11\ = CARRY((\inst2|Q\(5) & (!\inst|Q\(5) & !\inst3|Add0~9\)) # (!\inst2|Q\(5) & ((!\inst3|Add0~9\) # (!\inst|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Q\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X26_Y9_N28
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = ((\inst2|Q\(6) $ (\inst|Q\(6) $ (!\inst3|Add0~11\)))) # (GND)
-- \inst3|Add0~13\ = CARRY((\inst2|Q\(6) & ((\inst|Q\(6)) # (!\inst3|Add0~11\))) # (!\inst2|Q\(6) & (\inst|Q\(6) & !\inst3|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X26_Y9_N30
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = \inst2|Q\(7) $ (\inst3|Add0~13\ $ (\inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\);

-- Location: LCCOMB_X25_Y10_N16
\inst3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = (\inst4|yfsm.s1~q\ & (((\inst4|yfsm.s4~q\)))) # (!\inst4|yfsm.s1~q\ & ((\inst4|yfsm.s4~q\ & (!\inst3|Result~27_combout\)) # (!\inst4|yfsm.s4~q\ & ((\inst3|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~27_combout\,
	datab => \inst3|Add0~14_combout\,
	datac => \inst4|yfsm.s1~q\,
	datad => \inst4|yfsm.s4~q\,
	combout => \inst3|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y10_N10
\inst3|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector0~1_combout\ = (\inst4|yfsm.s5~q\) # ((\inst4|yfsm.s3~q\ & (\inst4|yfsm.s4~q\)) # (!\inst4|yfsm.s3~q\ & ((\inst3|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s4~q\,
	datab => \inst4|yfsm.s3~q\,
	datac => \inst3|Selector0~0_combout\,
	datad => \inst4|yfsm.s5~q\,
	combout => \inst3|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y10_N18
\inst3|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector0~2_combout\ = (\inst3|Result[7]~11_combout\ & ((\inst3|Selector0~1_combout\ & ((\inst3|Result~28_combout\))) # (!\inst3|Selector0~1_combout\ & (\inst3|Add1~14_combout\)))) # (!\inst3|Result[7]~11_combout\ & 
-- (((\inst3|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~14_combout\,
	datab => \inst3|Result~28_combout\,
	datac => \inst3|Result[7]~11_combout\,
	datad => \inst3|Selector0~1_combout\,
	combout => \inst3|Selector0~2_combout\);

-- Location: LCCOMB_X25_Y10_N2
\inst3|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector0~3_combout\ = (\inst3|Selector7~0_combout\ & ((\inst3|Result[7]~9_combout\ & (!\inst3|Result~26_combout\)) # (!\inst3|Result[7]~9_combout\ & ((\inst3|Selector0~2_combout\))))) # (!\inst3|Selector7~0_combout\ & 
-- (((\inst3|Result[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~26_combout\,
	datab => \inst3|Selector7~0_combout\,
	datac => \inst3|Result[7]~9_combout\,
	datad => \inst3|Selector0~2_combout\,
	combout => \inst3|Selector0~3_combout\);

-- Location: LCCOMB_X25_Y10_N12
\inst3|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector0~4_combout\ = (\inst3|Selector7~0_combout\ & (((\inst3|Selector0~3_combout\)))) # (!\inst3|Selector7~0_combout\ & (((!\inst2|Q\(7) & \inst3|Selector0~3_combout\)) # (!\inst|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datab => \inst3|Selector7~0_combout\,
	datac => \inst|Q\(7),
	datad => \inst3|Selector0~3_combout\,
	combout => \inst3|Selector0~4_combout\);

-- Location: LCCOMB_X26_Y10_N26
\inst3|Result[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[7]~7_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~27_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~27_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector0~4_combout\,
	combout => \inst3|Result[7]~7_combout\);

-- Location: FF_X26_Y10_N27
\inst3|Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[7]~7_combout\,
	asdata => \inst3|Result~26_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(7));

-- Location: LCCOMB_X25_Y8_N0
\inst3|Result~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~22_combout\ = (\inst2|Q\(5)) # (\inst|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(5),
	datad => \inst|Q\(5),
	combout => \inst3|Result~22_combout\);

-- Location: LCCOMB_X26_Y8_N20
\inst3|Result~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~21_combout\ = \inst|Q\(5) $ (!\inst2|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(5),
	datad => \inst2|Q\(5),
	combout => \inst3|Result~21_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst3|Result~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~23_combout\ = (\inst2|Q\(5) & \inst|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(5),
	datad => \inst|Q\(5),
	combout => \inst3|Result~23_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = (\inst3|Result[7]~10_combout\ & (\inst3|Add0~10_combout\ & (!\inst3|Result[7]~11_combout\))) # (!\inst3|Result[7]~10_combout\ & (((\inst3|Result[7]~11_combout\) # (!\inst3|Result~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[7]~10_combout\,
	datab => \inst3|Add0~10_combout\,
	datac => \inst3|Result[7]~11_combout\,
	datad => \inst3|Result~22_combout\,
	combout => \inst3|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y10_N24
\inst3|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = (\inst3|Result[7]~11_combout\ & ((\inst3|Selector2~0_combout\ & (\inst3|Result~23_combout\)) # (!\inst3|Selector2~0_combout\ & ((\inst3|Add1~10_combout\))))) # (!\inst3|Result[7]~11_combout\ & 
-- (((\inst3|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~23_combout\,
	datab => \inst3|Add1~10_combout\,
	datac => \inst3|Result[7]~11_combout\,
	datad => \inst3|Selector2~0_combout\,
	combout => \inst3|Selector2~1_combout\);

-- Location: LCCOMB_X25_Y10_N20
\inst3|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector2~2_combout\ = (\inst3|Result[7]~9_combout\ & (((!\inst3|Result~21_combout\)) # (!\inst3|Selector7~0_combout\))) # (!\inst3|Result[7]~9_combout\ & (\inst3|Selector7~0_combout\ & ((\inst3|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[7]~9_combout\,
	datab => \inst3|Selector7~0_combout\,
	datac => \inst3|Result~21_combout\,
	datad => \inst3|Selector2~1_combout\,
	combout => \inst3|Selector2~2_combout\);

-- Location: LCCOMB_X26_Y10_N28
\inst3|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector2~3_combout\ = (\inst3|Selector7~0_combout\ & (((\inst3|Selector2~2_combout\)))) # (!\inst3|Selector7~0_combout\ & (((!\inst2|Q\(5) & \inst3|Selector2~2_combout\)) # (!\inst|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Q\(5),
	datac => \inst3|Selector7~0_combout\,
	datad => \inst3|Selector2~2_combout\,
	combout => \inst3|Selector2~3_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst3|Result[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[5]~5_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~22_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~22_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector2~3_combout\,
	combout => \inst3|Result[5]~5_combout\);

-- Location: FF_X26_Y10_N31
\inst3|Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[5]~5_combout\,
	asdata => \inst3|Result~21_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(5));

-- Location: LCCOMB_X26_Y10_N12
\inst3|Result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~19_combout\ = (\inst2|Q\(4)) # (\inst|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(4),
	datad => \inst|Q\(4),
	combout => \inst3|Result~19_combout\);

-- Location: LCCOMB_X26_Y10_N16
\inst3|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector3~0_combout\ = (\inst3|Result[7]~11_combout\ & (((\inst3|Add1~8_combout\) # (!\inst3|Result[7]~10_combout\)))) # (!\inst3|Result[7]~11_combout\ & (\inst3|Add0~8_combout\ & ((\inst3|Result[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~8_combout\,
	datab => \inst3|Add1~8_combout\,
	datac => \inst3|Result[7]~11_combout\,
	datad => \inst3|Result[7]~10_combout\,
	combout => \inst3|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y10_N18
\inst3|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector3~1_combout\ = (\inst3|Result[7]~10_combout\ & (((\inst3|Selector3~0_combout\)))) # (!\inst3|Result[7]~10_combout\ & ((\inst|Q\(4) & (\inst2|Q\(4) & \inst3|Selector3~0_combout\)) # (!\inst|Q\(4) & (!\inst2|Q\(4) & 
-- !\inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst2|Q\(4),
	datac => \inst3|Result[7]~10_combout\,
	datad => \inst3|Selector3~0_combout\,
	combout => \inst3|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y10_N0
\inst3|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector3~2_combout\ = (\inst3|Result[7]~9_combout\ & (((!\inst3|Selector7~0_combout\)))) # (!\inst3|Result[7]~9_combout\ & ((\inst3|Selector7~0_combout\ & ((\inst3|Selector3~1_combout\))) # (!\inst3|Selector7~0_combout\ & (!\inst|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst3|Result[7]~9_combout\,
	datac => \inst3|Selector7~0_combout\,
	datad => \inst3|Selector3~1_combout\,
	combout => \inst3|Selector3~2_combout\);

-- Location: LCCOMB_X26_Y10_N2
\inst3|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector3~3_combout\ = (\inst3|Result[7]~9_combout\ & ((\inst|Q\(4) & (!\inst2|Q\(4))) # (!\inst|Q\(4) & ((\inst2|Q\(4)) # (\inst3|Selector3~2_combout\))))) # (!\inst3|Result[7]~9_combout\ & (((\inst3|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[7]~9_combout\,
	datab => \inst|Q\(4),
	datac => \inst2|Q\(4),
	datad => \inst3|Selector3~2_combout\,
	combout => \inst3|Selector3~3_combout\);

-- Location: LCCOMB_X26_Y10_N8
\inst3|Result[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[4]~4_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~19_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~19_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector3~3_combout\,
	combout => \inst3|Result[4]~4_combout\);

-- Location: LCCOMB_X26_Y10_N14
\inst3|Result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~20_combout\ = \inst|Q\(4) $ (!\inst2|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datac => \inst2|Q\(4),
	combout => \inst3|Result~20_combout\);

-- Location: FF_X26_Y10_N9
\inst3|Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[4]~4_combout\,
	asdata => \inst3|Result~20_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(4));

-- Location: LCCOMB_X28_Y10_N6
\inst3|Result~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~24_combout\ = (\inst2|Q\(6)) # (\inst|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(6),
	datad => \inst|Q\(6),
	combout => \inst3|Result~24_combout\);

-- Location: LCCOMB_X26_Y10_N6
\inst3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = (\inst3|Result[7]~11_combout\ & ((\inst3|Add1~12_combout\) # ((!\inst3|Result[7]~10_combout\)))) # (!\inst3|Result[7]~11_combout\ & (((\inst3|Add0~12_combout\ & \inst3|Result[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~12_combout\,
	datab => \inst3|Add0~12_combout\,
	datac => \inst3|Result[7]~11_combout\,
	datad => \inst3|Result[7]~10_combout\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst3|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = (\inst3|Result[7]~10_combout\ & (((\inst3|Selector1~0_combout\)))) # (!\inst3|Result[7]~10_combout\ & ((\inst2|Q\(6) & (\inst|Q\(6) & \inst3|Selector1~0_combout\)) # (!\inst2|Q\(6) & (!\inst|Q\(6) & 
-- !\inst3|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Q\(6),
	datac => \inst3|Result[7]~10_combout\,
	datad => \inst3|Selector1~0_combout\,
	combout => \inst3|Selector1~1_combout\);

-- Location: LCCOMB_X26_Y10_N10
\inst3|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector1~2_combout\ = (\inst3|Result[7]~9_combout\ & (((!\inst3|Selector7~0_combout\)))) # (!\inst3|Result[7]~9_combout\ & ((\inst3|Selector7~0_combout\ & ((\inst3|Selector1~1_combout\))) # (!\inst3|Selector7~0_combout\ & (!\inst|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst3|Result[7]~9_combout\,
	datac => \inst3|Selector7~0_combout\,
	datad => \inst3|Selector1~1_combout\,
	combout => \inst3|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y10_N20
\inst3|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector1~3_combout\ = (\inst3|Result[7]~9_combout\ & ((\inst2|Q\(6) & (!\inst|Q\(6))) # (!\inst2|Q\(6) & ((\inst|Q\(6)) # (\inst3|Selector1~2_combout\))))) # (!\inst3|Result[7]~9_combout\ & (((\inst3|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Q\(6),
	datac => \inst3|Result[7]~9_combout\,
	datad => \inst3|Selector1~2_combout\,
	combout => \inst3|Selector1~3_combout\);

-- Location: LCCOMB_X26_Y10_N4
\inst3|Result[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result[6]~6_combout\ = (\inst4|yfsm.s7~q\ & (\inst3|Result~24_combout\)) # (!\inst4|yfsm.s7~q\ & ((\inst3|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~24_combout\,
	datab => \inst4|yfsm.s7~q\,
	datad => \inst3|Selector1~3_combout\,
	combout => \inst3|Result[6]~6_combout\);

-- Location: LCCOMB_X26_Y10_N22
\inst3|Result~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Result~25_combout\ = \inst2|Q\(6) $ (!\inst|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datad => \inst|Q\(6),
	combout => \inst3|Result~25_combout\);

-- Location: FF_X26_Y10_N5
\inst3|Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Result[6]~6_combout\,
	asdata => \inst3|Result~25_combout\,
	sload => \inst4|yfsm.s8~q\,
	ena => \dec_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Result\(6));

-- Location: LCCOMB_X28_Y10_N0
\inst14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux0~0_combout\ = (\inst3|Result\(7) & (\inst3|Result\(4) & (\inst3|Result\(5) $ (\inst3|Result\(6))))) # (!\inst3|Result\(7) & (!\inst3|Result\(5) & (\inst3|Result\(4) $ (\inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y10_N2
\inst14|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux1~0_combout\ = (\inst3|Result\(7) & ((\inst3|Result\(4) & (\inst3|Result\(5))) # (!\inst3|Result\(4) & ((\inst3|Result\(6)))))) # (!\inst3|Result\(7) & (\inst3|Result\(6) & (\inst3|Result\(5) $ (\inst3|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y10_N16
\inst14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux2~0_combout\ = (\inst3|Result\(7) & (\inst3|Result\(6) & ((\inst3|Result\(5)) # (!\inst3|Result\(4))))) # (!\inst3|Result\(7) & (\inst3|Result\(5) & (!\inst3|Result\(4) & !\inst3|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y10_N30
\inst14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux3~0_combout\ = (\inst3|Result\(4) & ((\inst3|Result\(5) $ (!\inst3|Result\(6))))) # (!\inst3|Result\(4) & ((\inst3|Result\(7) & (\inst3|Result\(5) & !\inst3|Result\(6))) # (!\inst3|Result\(7) & (!\inst3|Result\(5) & \inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
\inst14|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux4~0_combout\ = (\inst3|Result\(5) & (!\inst3|Result\(7) & (\inst3|Result\(4)))) # (!\inst3|Result\(5) & ((\inst3|Result\(6) & (!\inst3|Result\(7))) # (!\inst3|Result\(6) & ((\inst3|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y10_N26
\inst14|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux5~0_combout\ = (\inst3|Result\(5) & (!\inst3|Result\(7) & ((\inst3|Result\(4)) # (!\inst3|Result\(6))))) # (!\inst3|Result\(5) & (\inst3|Result\(4) & (\inst3|Result\(7) $ (!\inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y10_N12
\inst14|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Mux6~0_combout\ = (\inst3|Result\(4) & ((\inst3|Result\(7)) # (\inst3|Result\(5) $ (\inst3|Result\(6))))) # (!\inst3|Result\(4) & ((\inst3|Result\(5)) # (\inst3|Result\(7) $ (\inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(4),
	datad => \inst3|Result\(6),
	combout => \inst14|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y10_N14
\inst1|Y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Y[1]~0_combout\ = (!\inst4|yfsm.s5~q\ & (!\inst4|yfsm.s6~q\ & (!\inst4|yfsm.s3~q\ & !\inst4|yfsm.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~q\,
	datab => \inst4|yfsm.s6~q\,
	datac => \inst4|yfsm.s3~q\,
	datad => \inst4|yfsm.s8~q\,
	combout => \inst1|Y[1]~0_combout\);

-- Location: LCCOMB_X24_Y9_N10
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_cout\ = CARRY((!\inst|Q\(0) & \inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst2|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y9_N12
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_cout\ = CARRY((\inst2|Q\(1) & (\inst|Q\(1) & !\inst3|LessThan0~1_cout\)) # (!\inst2|Q\(1) & ((\inst|Q\(1)) # (!\inst3|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan0~1_cout\,
	cout => \inst3|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y9_N14
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_cout\ = CARRY((\inst|Q\(2) & (\inst2|Q\(2) & !\inst3|LessThan0~3_cout\)) # (!\inst|Q\(2) & ((\inst2|Q\(2)) # (!\inst3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst2|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan0~3_cout\,
	cout => \inst3|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y9_N16
\inst3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_cout\ = CARRY((\inst2|Q\(3) & (\inst|Q\(3) & !\inst3|LessThan0~5_cout\)) # (!\inst2|Q\(3) & ((\inst|Q\(3)) # (!\inst3|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan0~5_cout\,
	cout => \inst3|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y9_N18
\inst3|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~9_cout\ = CARRY((\inst|Q\(4) & (\inst2|Q\(4) & !\inst3|LessThan0~7_cout\)) # (!\inst|Q\(4) & ((\inst2|Q\(4)) # (!\inst3|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst2|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan0~7_cout\,
	cout => \inst3|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y9_N20
\inst3|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~11_cout\ = CARRY((\inst2|Q\(5) & (\inst|Q\(5) & !\inst3|LessThan0~9_cout\)) # (!\inst2|Q\(5) & ((\inst|Q\(5)) # (!\inst3|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan0~9_cout\,
	cout => \inst3|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y9_N22
\inst3|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~13_cout\ = CARRY((\inst2|Q\(6) & ((!\inst3|LessThan0~11_cout\) # (!\inst|Q\(6)))) # (!\inst2|Q\(6) & (!\inst|Q\(6) & !\inst3|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan0~11_cout\,
	cout => \inst3|LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y9_N24
\inst3|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~14_combout\ = (\inst2|Q\(7) & ((\inst3|LessThan0~13_cout\) # (!\inst|Q\(7)))) # (!\inst2|Q\(7) & (\inst3|LessThan0~13_cout\ & !\inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst3|LessThan0~13_cout\,
	combout => \inst3|LessThan0~14_combout\);

-- Location: LCCOMB_X25_Y9_N2
\inst1|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Y[1]~1_combout\ = (\dec_en~input_o\ & (!\inst4|yfsm.s2~q\ & (\inst4|yfsm.s1~q\ & \inst3|Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_en~input_o\,
	datab => \inst4|yfsm.s2~q\,
	datac => \inst4|yfsm.s1~q\,
	datad => \inst3|Selector7~5_combout\,
	combout => \inst1|Y[1]~1_combout\);

-- Location: LCCOMB_X24_Y9_N28
\inst3|Neg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Neg~0_combout\ = (\inst1|Y[1]~0_combout\ & ((\inst1|Y[1]~1_combout\ & (\inst3|LessThan0~14_combout\)) # (!\inst1|Y[1]~1_combout\ & ((\inst3|Neg~q\))))) # (!\inst1|Y[1]~0_combout\ & (((\inst3|Neg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Y[1]~0_combout\,
	datab => \inst3|LessThan0~14_combout\,
	datac => \inst3|Neg~q\,
	datad => \inst1|Y[1]~1_combout\,
	combout => \inst3|Neg~0_combout\);

-- Location: FF_X24_Y9_N29
\inst3|Neg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst3|Neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Neg~q\);

-- Location: LCCOMB_X25_Y9_N6
\inst4|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr11~0_combout\ = (\inst4|yfsm.s5~q\) # ((\inst4|yfsm.s6~q\) # ((\inst4|yfsm.s1~q\) # (\inst4|yfsm.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~q\,
	datab => \inst4|yfsm.s6~q\,
	datac => \inst4|yfsm.s1~q\,
	datad => \inst4|yfsm.s4~q\,
	combout => \inst4|WideOr11~0_combout\);

-- Location: LCCOMB_X28_Y10_N28
\inst4|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|WideOr9~0_combout\ = (\inst4|yfsm.s5~q\) # (((\inst4|yfsm.s7~q\) # (\inst4|yfsm.s8~q\)) # (!\inst4|yfsm.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~q\,
	datab => \inst4|yfsm.s0~q\,
	datac => \inst4|yfsm.s7~q\,
	datad => \inst4|yfsm.s8~q\,
	combout => \inst4|WideOr9~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\inst9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst4|WideOr11~0_combout\ $ (\inst4|WideOr9~0_combout\)) # (!\inst1|Y[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y9_N8
\inst9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst4|WideOr9~0_combout\ & (\inst4|WideOr11~0_combout\ $ (\inst1|Y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y9_N2
\inst9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst4|WideOr11~0_combout\ & (!\inst4|WideOr9~0_combout\ & !\inst1|Y[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y9_N4
\inst9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst4|WideOr11~0_combout\ & (\inst4|WideOr9~0_combout\ & \inst1|Y[1]~0_combout\)) # (!\inst4|WideOr11~0_combout\ & (\inst4|WideOr9~0_combout\ $ (\inst1|Y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y9_N26
\inst9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = ((\inst4|WideOr9~0_combout\ & \inst1|Y[1]~0_combout\)) # (!\inst4|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst4|WideOr11~0_combout\ & (!\inst4|WideOr9~0_combout\ & !\inst1|Y[1]~0_combout\)) # (!\inst4|WideOr11~0_combout\ & ((!\inst1|Y[1]~0_combout\) # (!\inst4|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y9_N6
\inst9|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst4|WideOr9~0_combout\ & (!\inst4|WideOr11~0_combout\ & !\inst1|Y[1]~0_combout\)) # (!\inst4|WideOr9~0_combout\ & ((\inst1|Y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr11~0_combout\,
	datac => \inst4|WideOr9~0_combout\,
	datad => \inst1|Y[1]~0_combout\,
	combout => \inst9|Mux6~0_combout\);

ww_R_first_four(0) <= \R_first_four[0]~output_o\;

ww_R_first_four(1) <= \R_first_four[1]~output_o\;

ww_R_first_four(2) <= \R_first_four[2]~output_o\;

ww_R_first_four(3) <= \R_first_four[3]~output_o\;

ww_R_first_four(4) <= \R_first_four[4]~output_o\;

ww_R_first_four(5) <= \R_first_four[5]~output_o\;

ww_R_first_four(6) <= \R_first_four[6]~output_o\;

ww_R_last_four(0) <= \R_last_four[0]~output_o\;

ww_R_last_four(1) <= \R_last_four[1]~output_o\;

ww_R_last_four(2) <= \R_last_four[2]~output_o\;

ww_R_last_four(3) <= \R_last_four[3]~output_o\;

ww_R_last_four(4) <= \R_last_four[4]~output_o\;

ww_R_last_four(5) <= \R_last_four[5]~output_o\;

ww_R_last_four(6) <= \R_last_four[6]~output_o\;

ww_R_sign(0) <= \R_sign[0]~output_o\;

ww_R_sign(1) <= \R_sign[1]~output_o\;

ww_R_sign(2) <= \R_sign[2]~output_o\;

ww_R_sign(3) <= \R_sign[3]~output_o\;

ww_R_sign(4) <= \R_sign[4]~output_o\;

ww_R_sign(5) <= \R_sign[5]~output_o\;

ww_R_sign(6) <= \R_sign[6]~output_o\;

ww_std_id(0) <= \std_id[0]~output_o\;

ww_std_id(1) <= \std_id[1]~output_o\;

ww_std_id(2) <= \std_id[2]~output_o\;

ww_std_id(3) <= \std_id[3]~output_o\;

ww_std_id(4) <= \std_id[4]~output_o\;

ww_std_id(5) <= \std_id[5]~output_o\;

ww_std_id(6) <= \std_id[6]~output_o\;
END structure;


