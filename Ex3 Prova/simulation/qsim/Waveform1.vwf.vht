-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/27/2024 14:05:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Ex2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ex2_vhd_vec_tst IS
END Ex2_vhd_vec_tst;
ARCHITECTURE Ex2_arch OF Ex2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ex2
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	X : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ex2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	S0 => S0,
	S1 => S1,
	X => X
	);

-- S1
t_prcs_S1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		S1 <= '0';
		WAIT FOR 60000 ps;
		S1 <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;

-- S0
t_prcs_S0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		S0 <= '0';
		WAIT FOR 30000 ps;
		S0 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	S0 <= '0';
	WAIT FOR 30000 ps;
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;
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
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
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
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- C[3]
t_prcs_C_3: PROCESS
BEGIN
	C(3) <= '0';
WAIT;
END PROCESS t_prcs_C_3;
-- C[2]
t_prcs_C_2: PROCESS
BEGIN
	C(2) <= '1';
WAIT;
END PROCESS t_prcs_C_2;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '1';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '0';
WAIT;
END PROCESS t_prcs_C_0;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '1';
WAIT;
END PROCESS t_prcs_D_0;
END Ex2_arch;
