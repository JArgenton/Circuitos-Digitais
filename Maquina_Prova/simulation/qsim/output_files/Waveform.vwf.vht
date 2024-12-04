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
-- Generated on "11/27/2024 13:14:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Maquina_Prova
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Maquina_Prova_vhd_vec_tst IS
END Maquina_Prova_vhd_vec_tst;
ARCHITECTURE Maquina_Prova_arch OF Maquina_Prova_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Hex : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Maquina_Prova
	PORT (
	CLK : IN STD_LOGIC;
	Hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Maquina_Prova
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Hex => Hex,
	Output => Output
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		CLK <= '0';
		WAIT FOR 30000 ps;
		CLK <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	CLK <= '0';
	WAIT FOR 30000 ps;
	CLK <= '1';
WAIT;
END PROCESS t_prcs_CLK;
END Maquina_Prova_arch;
