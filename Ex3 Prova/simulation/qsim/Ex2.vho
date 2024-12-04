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

-- DATE "11/27/2024 14:05:53"

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

ENTITY 	Ex2 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic_vector(3 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	S1 : IN std_logic;
	S0 : IN std_logic;
	X : OUT std_logic_vector(3 DOWNTO 0)
	);
END Ex2;

-- Design Ports Information
-- X[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ex2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \X[0]~0_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \X[1]~1_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \X[2]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \X[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_S0~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_S1 <= S1;
ww_S0 <= S0;
X <= ww_X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_C[3]~input_o\ <= NOT \C[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_C[2]~input_o\ <= NOT \C[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_C[1]~input_o\ <= NOT \C[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_C[0]~input_o\ <= NOT \C[0]~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_S0~input_o\ <= NOT \S0~input_o\;

-- Location: IOOBUF_X60_Y0_N19
\X[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \X[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_X(0));

-- Location: IOOBUF_X68_Y0_N19
\X[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \X[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_X(1));

-- Location: IOOBUF_X68_Y0_N36
\X[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \X[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_X(2));

-- Location: IOOBUF_X58_Y0_N59
\X[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \X[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_X(3));

-- Location: IOIBUF_X62_Y0_N18
\C[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\S0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\S1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LABCELL_X63_Y1_N30
\X[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \X[0]~0_combout\ = ( \B[0]~input_o\ & ( \D[0]~input_o\ & ( ((!\S1~input_o\ & ((\A[0]~input_o\))) # (\S1~input_o\ & (\C[0]~input_o\))) # (\S0~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \D[0]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[0]~input_o\))) 
-- # (\S1~input_o\ & (\C[0]~input_o\)))) # (\S0~input_o\ & (((\S1~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\D[0]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[0]~input_o\))) # (\S1~input_o\ & (\C[0]~input_o\)))) # (\S0~input_o\ & 
-- (((!\S1~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( !\D[0]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[0]~input_o\))) # (\S1~input_o\ & (\C[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_D[0]~input_o\,
	combout => \X[0]~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\C[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X63_Y1_N6
\X[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \X[1]~1_combout\ = ( \D[1]~input_o\ & ( \B[1]~input_o\ & ( ((!\S1~input_o\ & ((\A[1]~input_o\))) # (\S1~input_o\ & (\C[1]~input_o\))) # (\S0~input_o\) ) ) ) # ( !\D[1]~input_o\ & ( \B[1]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[1]~input_o\))) 
-- # (\S1~input_o\ & (\C[1]~input_o\)))) # (\S0~input_o\ & (((!\S1~input_o\)))) ) ) ) # ( \D[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[1]~input_o\))) # (\S1~input_o\ & (\C[1]~input_o\)))) # (\S0~input_o\ & 
-- (((\S1~input_o\)))) ) ) ) # ( !\D[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[1]~input_o\))) # (\S1~input_o\ & (\C[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_D[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \X[1]~1_combout\);

-- Location: IOIBUF_X64_Y0_N1
\C[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LABCELL_X63_Y1_N42
\X[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \X[2]~2_combout\ = ( \B[2]~input_o\ & ( \D[2]~input_o\ & ( ((!\S1~input_o\ & ((\A[2]~input_o\))) # (\S1~input_o\ & (\C[2]~input_o\))) # (\S0~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \D[2]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[2]~input_o\))) 
-- # (\S1~input_o\ & (\C[2]~input_o\)))) # (\S0~input_o\ & (((\S1~input_o\)))) ) ) ) # ( \B[2]~input_o\ & ( !\D[2]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[2]~input_o\))) # (\S1~input_o\ & (\C[2]~input_o\)))) # (\S0~input_o\ & 
-- (((!\S1~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\D[2]~input_o\ & ( (!\S0~input_o\ & ((!\S1~input_o\ & ((\A[2]~input_o\))) # (\S1~input_o\ & (\C[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \X[2]~2_combout\);

-- Location: IOIBUF_X62_Y0_N35
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\C[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X63_Y1_N48
\X[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \X[3]~3_combout\ = ( \C[3]~input_o\ & ( \D[3]~input_o\ & ( ((!\S0~input_o\ & (\A[3]~input_o\)) # (\S0~input_o\ & ((\B[3]~input_o\)))) # (\S1~input_o\) ) ) ) # ( !\C[3]~input_o\ & ( \D[3]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & (\A[3]~input_o\)) # 
-- (\S0~input_o\ & ((\B[3]~input_o\))))) # (\S1~input_o\ & (((\S0~input_o\)))) ) ) ) # ( \C[3]~input_o\ & ( !\D[3]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & (\A[3]~input_o\)) # (\S0~input_o\ & ((\B[3]~input_o\))))) # (\S1~input_o\ & 
-- (((!\S0~input_o\)))) ) ) ) # ( !\C[3]~input_o\ & ( !\D[3]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & (\A[3]~input_o\)) # (\S0~input_o\ & ((\B[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_C[3]~input_o\,
	dataf => \ALT_INV_D[3]~input_o\,
	combout => \X[3]~3_combout\);

-- Location: LABCELL_X36_Y18_N0
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


