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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/31/2024 19:02:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SOMADOR IS
    PORT (
	N1 : IN std_logic_vector(3 DOWNTO 0);
	N2 : IN std_logic_vector(3 DOWNTO 0);
	Sf : OUT std_logic_vector(3 DOWNTO 0)
	);
END SOMADOR;

-- Design Ports Information
-- Sf[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sf[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sf[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sf[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SOMADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_N1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_N2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sf : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \N1[0]~input_o\ : std_logic;
SIGNAL \N2[0]~input_o\ : std_logic;
SIGNAL \S1|S~0_combout\ : std_logic;
SIGNAL \N2[1]~input_o\ : std_logic;
SIGNAL \N1[1]~input_o\ : std_logic;
SIGNAL \S2|S~combout\ : std_logic;
SIGNAL \N2[2]~input_o\ : std_logic;
SIGNAL \N1[2]~input_o\ : std_logic;
SIGNAL \S3|S~combout\ : std_logic;
SIGNAL \S2|Cout~0_combout\ : std_logic;
SIGNAL \N2[3]~input_o\ : std_logic;
SIGNAL \N1[3]~input_o\ : std_logic;
SIGNAL \S4|S~combout\ : std_logic;
SIGNAL \ALT_INV_N2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_N1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_N2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_N1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_N2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_N1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_N2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_N1[0]~input_o\ : std_logic;
SIGNAL \S2|ALT_INV_Cout~0_combout\ : std_logic;

BEGIN

ww_N1 <= N1;
ww_N2 <= N2;
Sf <= ww_Sf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_N2[3]~input_o\ <= NOT \N2[3]~input_o\;
\ALT_INV_N1[3]~input_o\ <= NOT \N1[3]~input_o\;
\ALT_INV_N2[2]~input_o\ <= NOT \N2[2]~input_o\;
\ALT_INV_N1[2]~input_o\ <= NOT \N1[2]~input_o\;
\ALT_INV_N2[1]~input_o\ <= NOT \N2[1]~input_o\;
\ALT_INV_N1[1]~input_o\ <= NOT \N1[1]~input_o\;
\ALT_INV_N2[0]~input_o\ <= NOT \N2[0]~input_o\;
\ALT_INV_N1[0]~input_o\ <= NOT \N1[0]~input_o\;
\S2|ALT_INV_Cout~0_combout\ <= NOT \S2|Cout~0_combout\;

-- Location: IOOBUF_X89_Y38_N39
\Sf[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|S~0_combout\,
	devoe => ww_devoe,
	o => ww_Sf(0));

-- Location: IOOBUF_X89_Y35_N79
\Sf[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|S~combout\,
	devoe => ww_devoe,
	o => ww_Sf(1));

-- Location: IOOBUF_X89_Y35_N96
\Sf[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|S~combout\,
	devoe => ww_devoe,
	o => ww_Sf(2));

-- Location: IOOBUF_X89_Y37_N5
\Sf[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|S~combout\,
	devoe => ww_devoe,
	o => ww_Sf(3));

-- Location: IOIBUF_X89_Y38_N4
\N1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N1(0),
	o => \N1[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\N2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N2(0),
	o => \N2[0]~input_o\);

-- Location: LABCELL_X88_Y38_N0
\S1|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|S~0_combout\ = ( \N2[0]~input_o\ & ( !\N1[0]~input_o\ ) ) # ( !\N2[0]~input_o\ & ( \N1[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_N1[0]~input_o\,
	dataf => \ALT_INV_N2[0]~input_o\,
	combout => \S1|S~0_combout\);

-- Location: IOIBUF_X89_Y37_N21
\N2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N2(1),
	o => \N2[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\N1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N1(1),
	o => \N1[1]~input_o\);

-- Location: LABCELL_X88_Y37_N3
\S2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|S~combout\ = ( \N2[0]~input_o\ & ( !\N2[1]~input_o\ $ (!\N1[0]~input_o\ $ (\N1[1]~input_o\)) ) ) # ( !\N2[0]~input_o\ & ( !\N2[1]~input_o\ $ (!\N1[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010011010010110100101011010010110100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_N2[1]~input_o\,
	datab => \ALT_INV_N1[0]~input_o\,
	datac => \ALT_INV_N1[1]~input_o\,
	datae => \ALT_INV_N2[0]~input_o\,
	combout => \S2|S~combout\);

-- Location: IOIBUF_X89_Y37_N55
\N2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N2(2),
	o => \N2[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\N1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N1(2),
	o => \N1[2]~input_o\);

-- Location: LABCELL_X88_Y37_N6
\S3|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|S~combout\ = ( \N2[0]~input_o\ & ( \N1[2]~input_o\ & ( !\N2[2]~input_o\ $ (((!\N2[1]~input_o\ & (\N1[1]~input_o\ & \N1[0]~input_o\)) # (\N2[1]~input_o\ & ((\N1[0]~input_o\) # (\N1[1]~input_o\))))) ) ) ) # ( !\N2[0]~input_o\ & ( \N1[2]~input_o\ & ( 
-- !\N2[2]~input_o\ $ (((\N2[1]~input_o\ & \N1[1]~input_o\))) ) ) ) # ( \N2[0]~input_o\ & ( !\N1[2]~input_o\ & ( !\N2[2]~input_o\ $ (((!\N2[1]~input_o\ & ((!\N1[1]~input_o\) # (!\N1[0]~input_o\))) # (\N2[1]~input_o\ & (!\N1[1]~input_o\ & !\N1[0]~input_o\)))) 
-- ) ) ) # ( !\N2[0]~input_o\ & ( !\N1[2]~input_o\ & ( !\N2[2]~input_o\ $ (((!\N2[1]~input_o\) # (!\N1[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100111100011100001111000011110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_N2[1]~input_o\,
	datab => \ALT_INV_N1[1]~input_o\,
	datac => \ALT_INV_N2[2]~input_o\,
	datad => \ALT_INV_N1[0]~input_o\,
	datae => \ALT_INV_N2[0]~input_o\,
	dataf => \ALT_INV_N1[2]~input_o\,
	combout => \S3|S~combout\);

-- Location: LABCELL_X88_Y37_N42
\S2|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|Cout~0_combout\ = ( \N2[0]~input_o\ & ( (!\N1[1]~input_o\ & (\N2[1]~input_o\ & \N1[0]~input_o\)) # (\N1[1]~input_o\ & ((\N1[0]~input_o\) # (\N2[1]~input_o\))) ) ) # ( !\N2[0]~input_o\ & ( (\N1[1]~input_o\ & \N2[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110011111100000011000000110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_N1[1]~input_o\,
	datac => \ALT_INV_N2[1]~input_o\,
	datad => \ALT_INV_N1[0]~input_o\,
	datae => \ALT_INV_N2[0]~input_o\,
	combout => \S2|Cout~0_combout\);

-- Location: IOIBUF_X89_Y36_N38
\N2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N2(3),
	o => \N2[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\N1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N1(3),
	o => \N1[3]~input_o\);

-- Location: LABCELL_X88_Y37_N18
\S4|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|S~combout\ = ( \N2[3]~input_o\ & ( \N1[3]~input_o\ & ( (!\N2[2]~input_o\ & (\S2|Cout~0_combout\ & \N1[2]~input_o\)) # (\N2[2]~input_o\ & ((\N1[2]~input_o\) # (\S2|Cout~0_combout\))) ) ) ) # ( !\N2[3]~input_o\ & ( \N1[3]~input_o\ & ( (!\N2[2]~input_o\ 
-- & ((!\S2|Cout~0_combout\) # (!\N1[2]~input_o\))) # (\N2[2]~input_o\ & (!\S2|Cout~0_combout\ & !\N1[2]~input_o\)) ) ) ) # ( \N2[3]~input_o\ & ( !\N1[3]~input_o\ & ( (!\N2[2]~input_o\ & ((!\S2|Cout~0_combout\) # (!\N1[2]~input_o\))) # (\N2[2]~input_o\ & 
-- (!\S2|Cout~0_combout\ & !\N1[2]~input_o\)) ) ) ) # ( !\N2[3]~input_o\ & ( !\N1[3]~input_o\ & ( (!\N2[2]~input_o\ & (\S2|Cout~0_combout\ & \N1[2]~input_o\)) # (\N2[2]~input_o\ & ((\N1[2]~input_o\) # (\S2|Cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111111010001110100011101000111010000001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_N2[2]~input_o\,
	datab => \S2|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_N1[2]~input_o\,
	datae => \ALT_INV_N2[3]~input_o\,
	dataf => \ALT_INV_N1[3]~input_o\,
	combout => \S4|S~combout\);

-- Location: LABCELL_X7_Y46_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


