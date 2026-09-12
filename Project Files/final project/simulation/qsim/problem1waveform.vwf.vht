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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/12/2026 17:36:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          finalproject
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY finalproject_vhd_vec_tst IS
END finalproject_vhd_vec_tst;
ARCHITECTURE finalproject_arch OF finalproject_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL data_in : STD_LOGIC;
SIGNAL dec_en : STD_LOGIC;
SIGNAL FSM_reset : STD_LOGIC;
SIGNAL R_first_four : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL R_last_four : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL R_sign : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL Reset_A : STD_LOGIC;
SIGNAL Reset_B : STD_LOGIC;
SIGNAL std_id : STD_LOGIC_VECTOR(0 TO 6);
COMPONENT finalproject
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Clock : IN STD_LOGIC;
	data_in : IN STD_LOGIC;
	dec_en : IN STD_LOGIC;
	FSM_reset : IN STD_LOGIC;
	R_first_four : OUT STD_LOGIC_VECTOR(0 TO 6);
	R_last_four : OUT STD_LOGIC_VECTOR(0 TO 6);
	R_sign : OUT STD_LOGIC_VECTOR(0 TO 6);
	Reset_A : IN STD_LOGIC;
	Reset_B : IN STD_LOGIC;
	std_id : OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END COMPONENT;
BEGIN
	i1 : finalproject
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Clock => Clock,
	data_in => data_in,
	dec_en => dec_en,
	FSM_reset => FSM_reset,
	R_first_four => R_first_four,
	R_last_four => R_last_four,
	R_sign => R_sign,
	Reset_A => Reset_A,
	Reset_B => Reset_B,
	std_id => std_id
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 20000 ps;
	Clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '1';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '1';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '1';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '1';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '1';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- Reset_A
t_prcs_Reset_A: PROCESS
BEGIN
	Reset_A <= '0';
	WAIT FOR 20000 ps;
	Reset_A <= '1';
WAIT;
END PROCESS t_prcs_Reset_A;

-- Reset_B
t_prcs_Reset_B: PROCESS
BEGIN
	Reset_B <= '0';
	WAIT FOR 20000 ps;
	Reset_B <= '1';
WAIT;
END PROCESS t_prcs_Reset_B;

-- data_in
t_prcs_data_in: PROCESS
BEGIN
	data_in <= '0';
	WAIT FOR 20000 ps;
	data_in <= '1';
WAIT;
END PROCESS t_prcs_data_in;

-- FSM_reset
t_prcs_FSM_reset: PROCESS
BEGIN
	FSM_reset <= '0';
	WAIT FOR 20000 ps;
	FSM_reset <= '1';
WAIT;
END PROCESS t_prcs_FSM_reset;

-- dec_en
t_prcs_dec_en: PROCESS
BEGIN
	dec_en <= '0';
	WAIT FOR 20000 ps;
	dec_en <= '1';
WAIT;
END PROCESS t_prcs_dec_en;
END finalproject_arch;
