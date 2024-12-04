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
-- Generated on "10/31/2024 19:02:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SOMADOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SOMADOR_vhd_vec_tst IS
END SOMADOR_vhd_vec_tst;
ARCHITECTURE SOMADOR_arch OF SOMADOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL N1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL N2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sf : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT SOMADOR
	PORT (
	N1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	N2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sf : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SOMADOR
	PORT MAP (
-- list connections between master ports and signals
	N1 => N1,
	N2 => N2,
	Sf => Sf
	);
-- N1[3]
t_prcs_N1_3: PROCESS
BEGIN
	N1(3) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 5
	LOOP
		N1(3) <= '1';
		WAIT FOR 80000 ps;
		N1(3) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	N1(3) <= '1';
	WAIT FOR 80000 ps;
	N1(3) <= '0';
WAIT;
END PROCESS t_prcs_N1_3;
-- N1[2]
t_prcs_N1_2: PROCESS
BEGIN
	N1(2) <= '0';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 12
	LOOP
		N1(2) <= '1';
		WAIT FOR 40000 ps;
		N1(2) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	N1(2) <= '1';
WAIT;
END PROCESS t_prcs_N1_2;
-- N1[1]
t_prcs_N1_1: PROCESS
BEGIN
	N1(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 24
	LOOP
		N1(1) <= '0';
		WAIT FOR 20000 ps;
		N1(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	N1(1) <= '0';
	WAIT FOR 20000 ps;
	N1(1) <= '1';
WAIT;
END PROCESS t_prcs_N1_1;
-- N1[0]
t_prcs_N1_0: PROCESS
BEGIN
LOOP
	N1(0) <= '1';
	WAIT FOR 10000 ps;
	N1(0) <= '0';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N1_0;
-- N2[3]
t_prcs_N2_3: PROCESS
BEGIN
	N2(3) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 12
	LOOP
		N2(3) <= '0';
		WAIT FOR 40000 ps;
		N2(3) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_N2_3;
-- N2[2]
t_prcs_N2_2: PROCESS
BEGIN
	N2(2) <= '0';
WAIT;
END PROCESS t_prcs_N2_2;
-- N2[1]
t_prcs_N2_1: PROCESS
BEGIN
	N2(1) <= '0';
WAIT;
END PROCESS t_prcs_N2_1;
-- N2[0]
t_prcs_N2_0: PROCESS
BEGIN
	N2(0) <= '0';
WAIT;
END PROCESS t_prcs_N2_0;
END SOMADOR_arch;
