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

-- DATE "11/27/2024 13:14:54"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Maquina_Prova IS
    PORT (
	CLK : IN std_logic;
	Hex : OUT std_logic_vector(6 DOWNTO 0);
	Output : OUT std_logic_vector(3 DOWNTO 0)
	);
END Maquina_Prova;

-- Design Ports Information
-- Hex[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maquina_Prova IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Hex : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Hex[0]~output_o\ : std_logic;
SIGNAL \Hex[1]~output_o\ : std_logic;
SIGNAL \Hex[2]~output_o\ : std_logic;
SIGNAL \Hex[3]~output_o\ : std_logic;
SIGNAL \Hex[4]~output_o\ : std_logic;
SIGNAL \Hex[5]~output_o\ : std_logic;
SIGNAL \Hex[6]~output_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \ffpD1|Q_int~0_combout\ : std_logic;
SIGNAL \ffpD1|Q_int~q\ : std_logic;
SIGNAL \conv|b~1_combout\ : std_logic;
SIGNAL \ffpJK3|Q_int~q\ : std_logic;
SIGNAL \ffpD0|Q_int~0_combout\ : std_logic;
SIGNAL \ffpD0|Q_int~q\ : std_logic;
SIGNAL \ffpJK2|Q_int~0_combout\ : std_logic;
SIGNAL \ffpJK2|Q_int~q\ : std_logic;
SIGNAL \conv|a~0_combout\ : std_logic;
SIGNAL \conv|b~0_combout\ : std_logic;
SIGNAL \conv|c~0_combout\ : std_logic;
SIGNAL \conv|d~0_combout\ : std_logic;
SIGNAL \conv|e~0_combout\ : std_logic;
SIGNAL \conv|f~0_combout\ : std_logic;
SIGNAL \conv|g~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_f~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_e~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_d~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_b~0_combout\ : std_logic;
SIGNAL \conv|ALT_INV_a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
Hex <= ww_Hex;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\conv|ALT_INV_g~0_combout\ <= NOT \conv|g~0_combout\;
\conv|ALT_INV_f~0_combout\ <= NOT \conv|f~0_combout\;
\conv|ALT_INV_e~0_combout\ <= NOT \conv|e~0_combout\;
\conv|ALT_INV_d~0_combout\ <= NOT \conv|d~0_combout\;
\conv|ALT_INV_c~0_combout\ <= NOT \conv|c~0_combout\;
\conv|ALT_INV_b~0_combout\ <= NOT \conv|b~0_combout\;
\conv|ALT_INV_a~0_combout\ <= NOT \conv|a~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\Hex[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \Hex[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\Hex[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_b~0_combout\,
	devoe => ww_devoe,
	o => \Hex[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Hex[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_c~0_combout\,
	devoe => ww_devoe,
	o => \Hex[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\Hex[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => \Hex[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\Hex[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_e~0_combout\,
	devoe => ww_devoe,
	o => \Hex[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\Hex[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_f~0_combout\,
	devoe => ww_devoe,
	o => \Hex[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\Hex[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_g~0_combout\,
	devoe => ww_devoe,
	o => \Hex[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffpD0|Q_int~q\,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffpD1|Q_int~q\,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffpJK2|Q_int~q\,
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\Output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffpJK3|Q_int~q\,
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X47_Y53_N20
\ffpD1|Q_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ffpD1|Q_int~0_combout\ = !\ffpD1|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ffpD1|Q_int~q\,
	combout => \ffpD1|Q_int~0_combout\);

-- Location: FF_X47_Y53_N21
\ffpD1|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ffpD1|Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffpD1|Q_int~q\);

-- Location: LCCOMB_X47_Y53_N12
\conv|b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|b~1_combout\ = \ffpJK3|Q_int~q\ $ (\ffpD1|Q_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpD1|Q_int~q\,
	combout => \conv|b~1_combout\);

-- Location: FF_X47_Y53_N13
\ffpJK3|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \conv|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffpJK3|Q_int~q\);

-- Location: LCCOMB_X47_Y53_N18
\ffpD0|Q_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ffpD0|Q_int~0_combout\ = \ffpD0|Q_int~q\ $ (((\ffpD1|Q_int~q\ & \ffpJK3|Q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffpD1|Q_int~q\,
	datac => \ffpD0|Q_int~q\,
	datad => \ffpJK3|Q_int~q\,
	combout => \ffpD0|Q_int~0_combout\);

-- Location: FF_X47_Y53_N19
\ffpD0|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ffpD0|Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffpD0|Q_int~q\);

-- Location: LCCOMB_X47_Y53_N22
\ffpJK2|Q_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ffpJK2|Q_int~0_combout\ = \ffpJK2|Q_int~q\ $ (((\ffpJK3|Q_int~q\ & (\ffpD0|Q_int~q\ & \ffpD1|Q_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpJK3|Q_int~q\,
	datab => \ffpD0|Q_int~q\,
	datac => \ffpJK2|Q_int~q\,
	datad => \ffpD1|Q_int~q\,
	combout => \ffpJK2|Q_int~0_combout\);

-- Location: FF_X47_Y53_N23
\ffpJK2|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ffpJK2|Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffpJK2|Q_int~q\);

-- Location: LCCOMB_X47_Y53_N28
\conv|a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|a~0_combout\ = (\ffpJK3|Q_int~q\ & ((\ffpD1|Q_int~q\ $ (!\ffpJK2|Q_int~q\)) # (!\ffpD0|Q_int~q\))) # (!\ffpJK3|Q_int~q\ & ((\ffpD1|Q_int~q\) # (\ffpD0|Q_int~q\ $ (!\ffpJK2|Q_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|a~0_combout\);

-- Location: LCCOMB_X47_Y53_N30
\conv|b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|b~0_combout\ = (\ffpD1|Q_int~q\ & ((\ffpD0|Q_int~q\ & (!\ffpJK3|Q_int~q\)) # (!\ffpD0|Q_int~q\ & ((!\ffpJK2|Q_int~q\))))) # (!\ffpD1|Q_int~q\ & ((\ffpD0|Q_int~q\ $ (!\ffpJK3|Q_int~q\)) # (!\ffpJK2|Q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|b~0_combout\);

-- Location: LCCOMB_X47_Y53_N24
\conv|c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|c~0_combout\ = (\ffpJK3|Q_int~q\ & (((\ffpD0|Q_int~q\ & !\ffpD1|Q_int~q\)) # (!\ffpJK2|Q_int~q\))) # (!\ffpJK3|Q_int~q\ & ((\ffpD0|Q_int~q\) # ((\ffpJK2|Q_int~q\) # (!\ffpD1|Q_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|c~0_combout\);

-- Location: LCCOMB_X47_Y53_N26
\conv|d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|d~0_combout\ = (\ffpD1|Q_int~q\ & ((\ffpD0|Q_int~q\ & ((!\ffpJK2|Q_int~q\))) # (!\ffpD0|Q_int~q\ & ((\ffpJK2|Q_int~q\) # (!\ffpJK3|Q_int~q\))))) # (!\ffpD1|Q_int~q\ & ((\ffpJK3|Q_int~q\) # (\ffpD0|Q_int~q\ $ (!\ffpJK2|Q_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|d~0_combout\);

-- Location: LCCOMB_X47_Y53_N16
\conv|e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|e~0_combout\ = (\ffpD1|Q_int~q\ & (((\ffpJK3|Q_int~q\)) # (!\ffpD0|Q_int~q\))) # (!\ffpD1|Q_int~q\ & ((\ffpJK2|Q_int~q\ & ((\ffpJK3|Q_int~q\))) # (!\ffpJK2|Q_int~q\ & (!\ffpD0|Q_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|e~0_combout\);

-- Location: LCCOMB_X47_Y53_N6
\conv|f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|f~0_combout\ = (\ffpD0|Q_int~q\ & (\ffpJK3|Q_int~q\ $ (((!\ffpD1|Q_int~q\ & \ffpJK2|Q_int~q\))))) # (!\ffpD0|Q_int~q\ & (((\ffpJK3|Q_int~q\) # (\ffpJK2|Q_int~q\)) # (!\ffpD1|Q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|f~0_combout\);

-- Location: LCCOMB_X47_Y53_N8
\conv|g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \conv|g~0_combout\ = (\ffpD0|Q_int~q\ & ((\ffpJK3|Q_int~q\) # (\ffpD1|Q_int~q\ $ (\ffpJK2|Q_int~q\)))) # (!\ffpD0|Q_int~q\ & ((\ffpD1|Q_int~q\) # (\ffpJK3|Q_int~q\ $ (\ffpJK2|Q_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffpD0|Q_int~q\,
	datab => \ffpD1|Q_int~q\,
	datac => \ffpJK3|Q_int~q\,
	datad => \ffpJK2|Q_int~q\,
	combout => \conv|g~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Hex(0) <= \Hex[0]~output_o\;

ww_Hex(1) <= \Hex[1]~output_o\;

ww_Hex(2) <= \Hex[2]~output_o\;

ww_Hex(3) <= \Hex[3]~output_o\;

ww_Hex(4) <= \Hex[4]~output_o\;

ww_Hex(5) <= \Hex[5]~output_o\;

ww_Hex(6) <= \Hex[6]~output_o\;

ww_Output(0) <= \Output[0]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;
END structure;


