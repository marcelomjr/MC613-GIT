-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/18/2018 12:35:45"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	shift_register IS
    PORT (
	clk : IN std_logic;
	mode : IN std_logic_vector(1 DOWNTO 0);
	ser_in : IN std_logic;
	par_in : IN std_logic_vector(5 DOWNTO 0);
	par_out : OUT std_logic_vector(5 DOWNTO 0)
	);
END shift_register;

-- Design Ports Information
-- par_out[0]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_out[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_out[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_out[3]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_out[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_out[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_in[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ser_in	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_in[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_in[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_in[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_in[4]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- par_in[5]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift_register IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ser_in : std_logic;
SIGNAL ww_par_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_par_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \par_in[0]~input_o\ : std_logic;
SIGNAL \ser_in~input_o\ : std_logic;
SIGNAL \par_in[1]~input_o\ : std_logic;
SIGNAL \par_in[2]~input_o\ : std_logic;
SIGNAL \par_in[3]~input_o\ : std_logic;
SIGNAL \par_in[4]~input_o\ : std_logic;
SIGNAL \par_in[5]~input_o\ : std_logic;
SIGNAL \Q~6_combout\ : std_logic;
SIGNAL \Q[0]~1_combout\ : std_logic;
SIGNAL \Q~5_combout\ : std_logic;
SIGNAL \Q~4_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL Q : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_par_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_par_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_par_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_par_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_par_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ser_in~input_o\ : std_logic;
SIGNAL \ALT_INV_par_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mode[0]~input_o\ : std_logic;
SIGNAL ALT_INV_Q : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_mode <= mode;
ww_ser_in <= ser_in;
ww_par_in <= par_in;
par_out <= ww_par_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_par_in[5]~input_o\ <= NOT \par_in[5]~input_o\;
\ALT_INV_par_in[4]~input_o\ <= NOT \par_in[4]~input_o\;
\ALT_INV_par_in[3]~input_o\ <= NOT \par_in[3]~input_o\;
\ALT_INV_par_in[2]~input_o\ <= NOT \par_in[2]~input_o\;
\ALT_INV_par_in[1]~input_o\ <= NOT \par_in[1]~input_o\;
\ALT_INV_ser_in~input_o\ <= NOT \ser_in~input_o\;
\ALT_INV_par_in[0]~input_o\ <= NOT \par_in[0]~input_o\;
\ALT_INV_mode[1]~input_o\ <= NOT \mode[1]~input_o\;
\ALT_INV_mode[0]~input_o\ <= NOT \mode[0]~input_o\;
ALT_INV_Q(5) <= NOT Q(5);
ALT_INV_Q(4) <= NOT Q(4);
ALT_INV_Q(3) <= NOT Q(3);
ALT_INV_Q(2) <= NOT Q(2);
ALT_INV_Q(1) <= NOT Q(1);
ALT_INV_Q(0) <= NOT Q(0);

-- Location: IOOBUF_X89_Y16_N39
\par_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => ww_par_out(0));

-- Location: IOOBUF_X89_Y16_N22
\par_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => ww_par_out(1));

-- Location: IOOBUF_X89_Y15_N39
\par_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => ww_par_out(2));

-- Location: IOOBUF_X89_Y15_N5
\par_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	devoe => ww_devoe,
	o => ww_par_out(3));

-- Location: IOOBUF_X89_Y15_N22
\par_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(4),
	devoe => ww_devoe,
	o => ww_par_out(4));

-- Location: IOOBUF_X89_Y15_N56
\par_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(5),
	devoe => ww_devoe,
	o => ww_par_out(5));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y13_N4
\mode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\mode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: IOIBUF_X89_Y13_N21
\par_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_par_in(0),
	o => \par_in[0]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\ser_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ser_in,
	o => \ser_in~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\par_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_par_in(1),
	o => \par_in[1]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\par_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_par_in(2),
	o => \par_in[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\par_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_par_in(3),
	o => \par_in[3]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\par_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_par_in(4),
	o => \par_in[4]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\par_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_par_in(5),
	o => \par_in[5]~input_o\);

-- Location: LABCELL_X88_Y13_N45
\Q~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~6_combout\ = ( \par_in[5]~input_o\ & ( (!\mode[0]~input_o\ & (((\ser_in~input_o\)))) # (\mode[0]~input_o\ & (((Q(4))) # (\mode[1]~input_o\))) ) ) # ( !\par_in[5]~input_o\ & ( (!\mode[0]~input_o\ & (((\ser_in~input_o\)))) # (\mode[0]~input_o\ & 
-- (!\mode[1]~input_o\ & ((Q(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode[0]~input_o\,
	datab => \ALT_INV_mode[1]~input_o\,
	datac => \ALT_INV_ser_in~input_o\,
	datad => ALT_INV_Q(4),
	dataf => \ALT_INV_par_in[5]~input_o\,
	combout => \Q~6_combout\);

-- Location: LABCELL_X88_Y13_N42
\Q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[0]~1_combout\ = (\mode[1]~input_o\) # (\mode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode[0]~input_o\,
	datab => \ALT_INV_mode[1]~input_o\,
	combout => \Q[0]~1_combout\);

-- Location: FF_X88_Y13_N47
\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q~6_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

-- Location: LABCELL_X88_Y13_N0
\Q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~5_combout\ = ( Q(5) & ( Q(3) & ( ((!\mode[0]~input_o\) # (!\mode[1]~input_o\)) # (\par_in[4]~input_o\) ) ) ) # ( !Q(5) & ( Q(3) & ( (\mode[0]~input_o\ & ((!\mode[1]~input_o\) # (\par_in[4]~input_o\))) ) ) ) # ( Q(5) & ( !Q(3) & ( (!\mode[0]~input_o\) # 
-- ((\par_in[4]~input_o\ & \mode[1]~input_o\)) ) ) ) # ( !Q(5) & ( !Q(3) & ( (\par_in[4]~input_o\ & (\mode[0]~input_o\ & \mode[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111100001111001100001111000000111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_par_in[4]~input_o\,
	datac => \ALT_INV_mode[0]~input_o\,
	datad => \ALT_INV_mode[1]~input_o\,
	datae => ALT_INV_Q(5),
	dataf => ALT_INV_Q(3),
	combout => \Q~5_combout\);

-- Location: FF_X88_Y13_N2
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q~5_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: LABCELL_X88_Y13_N39
\Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~4_combout\ = ( Q(2) & ( (!\mode[0]~input_o\ & (((Q(4))))) # (\mode[0]~input_o\ & ((!\mode[1]~input_o\) # ((\par_in[3]~input_o\)))) ) ) # ( !Q(2) & ( (!\mode[0]~input_o\ & (((Q(4))))) # (\mode[0]~input_o\ & (\mode[1]~input_o\ & (\par_in[3]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode[0]~input_o\,
	datab => \ALT_INV_mode[1]~input_o\,
	datac => \ALT_INV_par_in[3]~input_o\,
	datad => ALT_INV_Q(4),
	dataf => ALT_INV_Q(2),
	combout => \Q~4_combout\);

-- Location: FF_X88_Y13_N41
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q~4_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: LABCELL_X88_Y13_N54
\Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = ( Q(3) & ( (!\mode[0]~input_o\) # ((!\mode[1]~input_o\ & ((Q(1)))) # (\mode[1]~input_o\ & (\par_in[2]~input_o\))) ) ) # ( !Q(3) & ( (\mode[0]~input_o\ & ((!\mode[1]~input_o\ & ((Q(1)))) # (\mode[1]~input_o\ & (\par_in[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode[0]~input_o\,
	datab => \ALT_INV_mode[1]~input_o\,
	datac => \ALT_INV_par_in[2]~input_o\,
	datad => ALT_INV_Q(1),
	dataf => ALT_INV_Q(3),
	combout => \Q~3_combout\);

-- Location: FF_X88_Y13_N56
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q~3_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LABCELL_X88_Y13_N57
\Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = ( Q(2) & ( (!\mode[0]~input_o\) # ((!\mode[1]~input_o\ & ((Q(0)))) # (\mode[1]~input_o\ & (\par_in[1]~input_o\))) ) ) # ( !Q(2) & ( (\mode[0]~input_o\ & ((!\mode[1]~input_o\ & ((Q(0)))) # (\mode[1]~input_o\ & (\par_in[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode[0]~input_o\,
	datab => \ALT_INV_mode[1]~input_o\,
	datac => \ALT_INV_par_in[1]~input_o\,
	datad => ALT_INV_Q(0),
	dataf => ALT_INV_Q(2),
	combout => \Q~2_combout\);

-- Location: FF_X88_Y13_N59
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q~2_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LABCELL_X88_Y13_N36
\Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = ( Q(1) & ( (!\mode[0]~input_o\) # ((!\mode[1]~input_o\ & ((\ser_in~input_o\))) # (\mode[1]~input_o\ & (\par_in[0]~input_o\))) ) ) # ( !Q(1) & ( (\mode[0]~input_o\ & ((!\mode[1]~input_o\ & ((\ser_in~input_o\))) # (\mode[1]~input_o\ & 
-- (\par_in[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode[0]~input_o\,
	datab => \ALT_INV_mode[1]~input_o\,
	datac => \ALT_INV_par_in[0]~input_o\,
	datad => \ALT_INV_ser_in~input_o\,
	dataf => ALT_INV_Q(1),
	combout => \Q~0_combout\);

-- Location: FF_X88_Y13_N38
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q~0_combout\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: LABCELL_X16_Y41_N3
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


