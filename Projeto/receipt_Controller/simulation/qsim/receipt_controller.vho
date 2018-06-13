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

-- DATE "06/13/2018 10:58:33"

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

ENTITY 	receipt_controller IS
    PORT (
	enable_controller : IN std_logic;
	clock : IN std_logic;
	load : IN std_logic;
	resetn : IN std_logic;
	type_of_money : IN std_logic_vector(1 DOWNTO 0);
	total_value : OUT std_logic_vector(15 DOWNTO 0)
	);
END receipt_controller;

-- Design Ports Information
-- total_value[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[2]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[3]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[9]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[12]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[13]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[14]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_value[15]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- type_of_money[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- type_of_money[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_controller	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF receipt_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable_controller : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_type_of_money : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_total_value : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enable_controller~input_o\ : std_logic;
SIGNAL \type_of_money[0]~input_o\ : std_logic;
SIGNAL \type_of_money[1]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \total[0]~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \total[15]~1_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \total~2_combout\ : std_logic;
SIGNAL \total[1]~3_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \total~4_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \total~5_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \total~6_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \total~7_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \total~8_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \total~9_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \total~10_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \total~11_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \total~12_combout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \total~13_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \total~14_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \total~15_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \total~16_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \total~17_combout\ : std_logic;
SIGNAL total : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_controller~input_o\ : std_logic;
SIGNAL \ALT_INV_type_of_money[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_type_of_money[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_total[15]~1_combout\ : std_logic;
SIGNAL ALT_INV_total : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_enable_controller <= enable_controller;
ww_clock <= clock;
ww_load <= load;
ww_resetn <= resetn;
ww_type_of_money <= type_of_money;
total_value <= ww_total_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_enable_controller~input_o\ <= NOT \enable_controller~input_o\;
\ALT_INV_type_of_money[1]~input_o\ <= NOT \type_of_money[1]~input_o\;
\ALT_INV_type_of_money[0]~input_o\ <= NOT \type_of_money[0]~input_o\;
\ALT_INV_total[15]~1_combout\ <= NOT \total[15]~1_combout\;
ALT_INV_total(15) <= NOT total(15);
ALT_INV_total(14) <= NOT total(14);
ALT_INV_total(13) <= NOT total(13);
ALT_INV_total(12) <= NOT total(12);
ALT_INV_total(11) <= NOT total(11);
ALT_INV_total(10) <= NOT total(10);
ALT_INV_total(9) <= NOT total(9);
ALT_INV_total(8) <= NOT total(8);
ALT_INV_total(7) <= NOT total(7);
ALT_INV_total(6) <= NOT total(6);
ALT_INV_total(5) <= NOT total(5);
ALT_INV_total(4) <= NOT total(4);
ALT_INV_total(3) <= NOT total(3);
ALT_INV_total(2) <= NOT total(2);
ALT_INV_total(1) <= NOT total(1);
ALT_INV_total(0) <= NOT total(0);
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X12_Y0_N36
\total_value[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(0),
	devoe => ww_devoe,
	o => ww_total_value(0));

-- Location: IOOBUF_X4_Y0_N2
\total_value[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(1),
	devoe => ww_devoe,
	o => ww_total_value(1));

-- Location: IOOBUF_X10_Y0_N59
\total_value[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(2),
	devoe => ww_devoe,
	o => ww_total_value(2));

-- Location: IOOBUF_X10_Y0_N93
\total_value[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(3),
	devoe => ww_devoe,
	o => ww_total_value(3));

-- Location: IOOBUF_X12_Y0_N2
\total_value[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(4),
	devoe => ww_devoe,
	o => ww_total_value(4));

-- Location: IOOBUF_X6_Y0_N2
\total_value[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(5),
	devoe => ww_devoe,
	o => ww_total_value(5));

-- Location: IOOBUF_X8_Y0_N19
\total_value[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(6),
	devoe => ww_devoe,
	o => ww_total_value(6));

-- Location: IOOBUF_X10_Y0_N42
\total_value[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(7),
	devoe => ww_devoe,
	o => ww_total_value(7));

-- Location: IOOBUF_X8_Y0_N2
\total_value[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(8),
	devoe => ww_devoe,
	o => ww_total_value(8));

-- Location: IOOBUF_X8_Y0_N53
\total_value[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(9),
	devoe => ww_devoe,
	o => ww_total_value(9));

-- Location: IOOBUF_X8_Y0_N36
\total_value[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(10),
	devoe => ww_devoe,
	o => ww_total_value(10));

-- Location: IOOBUF_X12_Y0_N19
\total_value[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(11),
	devoe => ww_devoe,
	o => ww_total_value(11));

-- Location: IOOBUF_X10_Y0_N76
\total_value[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(12),
	devoe => ww_devoe,
	o => ww_total_value(12));

-- Location: IOOBUF_X6_Y0_N53
\total_value[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(13),
	devoe => ww_devoe,
	o => ww_total_value(13));

-- Location: IOOBUF_X6_Y0_N36
\total_value[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(14),
	devoe => ww_devoe,
	o => ww_total_value(14));

-- Location: IOOBUF_X6_Y0_N19
\total_value[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => total(15),
	devoe => ww_devoe,
	o => ww_total_value(15));

-- Location: IOIBUF_X40_Y0_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G6
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N52
\enable_controller~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable_controller,
	o => \enable_controller~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\type_of_money[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_type_of_money(0),
	o => \type_of_money[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\type_of_money[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_type_of_money(1),
	o => \type_of_money[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LABCELL_X9_Y1_N48
\total[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[0]~0_combout\ = ( \load~input_o\ & ( !total(0) $ (((!\enable_controller~input_o\) # ((\type_of_money[1]~input_o\) # (\type_of_money[0]~input_o\)))) ) ) # ( !\load~input_o\ & ( total(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000000101111110100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_controller~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => ALT_INV_total(0),
	dataf => \ALT_INV_load~input_o\,
	combout => \total[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: LABCELL_X11_Y1_N12
\total[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[15]~1_combout\ = ( !\resetn~input_o\ & ( \enable_controller~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable_controller~input_o\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \total[15]~1_combout\);

-- Location: FF_X9_Y1_N50
\total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total[0]~0_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(0));

-- Location: LABCELL_X10_Y1_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( total(1) ) + ( VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( total(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(1),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X6_Y1_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( total(1) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( total(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(1),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X9_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( total(1) ) + ( total(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( total(1) ) + ( total(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(0),
	datad => ALT_INV_total(1),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X10_Y1_N54
\total~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~2_combout\ = ( total(1) & ( \Add0~1_sumout\ & ( (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add2~1_sumout\))) # (\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\) # (\Add1~1_sumout\)))) ) ) ) # ( !total(1) & ( 
-- \Add0~1_sumout\ & ( (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add2~1_sumout\))) # (\type_of_money[0]~input_o\ & (((\Add1~1_sumout\ & !\type_of_money[1]~input_o\)))) ) ) ) # ( total(1) & ( !\Add0~1_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (\Add2~1_sumout\ & ((\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\) # (\Add1~1_sumout\)))) ) ) ) # ( !total(1) & ( !\Add0~1_sumout\ & ( (!\type_of_money[0]~input_o\ & 
-- (\Add2~1_sumout\ & ((\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (((\Add1~1_sumout\ & !\type_of_money[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_type_of_money[1]~input_o\,
	datae => ALT_INV_total(1),
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \total~2_combout\);

-- Location: LABCELL_X9_Y1_N51
\total[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \total[1]~3_combout\ = ( \load~input_o\ & ( \enable_controller~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_controller~input_o\,
	dataf => \ALT_INV_load~input_o\,
	combout => \total[1]~3_combout\);

-- Location: FF_X10_Y1_N56
\total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~2_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(1));

-- Location: LABCELL_X7_Y1_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( total(2) ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( total(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(2),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X6_Y1_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( total(2) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( total(2) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(2),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X9_Y1_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( total(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( total(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X10_Y1_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( total(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( total(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(2),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X7_Y1_N48
\total~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~4_combout\ = ( \Add0~5_sumout\ & ( \Add2~5_sumout\ & ( (!\type_of_money[0]~input_o\) # ((!\type_of_money[1]~input_o\ & ((\Add1~5_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~1_sumout\))) ) ) ) # ( !\Add0~5_sumout\ & ( \Add2~5_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~5_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~1_sumout\)))) ) ) ) # ( \Add0~5_sumout\ & ( !\Add2~5_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~5_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~1_sumout\)))) ) ) ) # ( !\Add0~5_sumout\ & ( !\Add2~5_sumout\ & ( 
-- (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~5_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \total~4_combout\);

-- Location: FF_X7_Y1_N50
\total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~4_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(2));

-- Location: LABCELL_X7_Y1_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( total(3) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( total(3) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(3),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X9_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( total(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( total(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X6_Y1_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( total(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( total(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(3),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X10_Y1_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( total(3) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( total(3) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(3),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X7_Y1_N42
\total~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~5_combout\ = ( \Add1~9_sumout\ & ( \Add2~9_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\Add0~9_sumout\) # (\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add3~5_sumout\))) ) ) ) # ( 
-- !\Add1~9_sumout\ & ( \Add2~9_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\Add0~9_sumout\) # (\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (\Add3~5_sumout\ & (\type_of_money[1]~input_o\))) ) ) ) # ( \Add1~9_sumout\ & ( !\Add2~9_sumout\ 
-- & ( (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\ & \Add0~9_sumout\)))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add3~5_sumout\))) ) ) ) # ( !\Add1~9_sumout\ & ( !\Add2~9_sumout\ & ( (!\type_of_money[0]~input_o\ 
-- & (((!\type_of_money[1]~input_o\ & \Add0~9_sumout\)))) # (\type_of_money[0]~input_o\ & (\Add3~5_sumout\ & (\type_of_money[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~5_sumout\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Add2~9_sumout\,
	combout => \total~5_combout\);

-- Location: FF_X7_Y1_N44
\total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~5_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(3));

-- Location: LABCELL_X9_Y1_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( total(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( total(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X7_Y1_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( total(4) ) + ( VCC ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( total(4) ) + ( VCC ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(4),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X10_Y1_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( total(4) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( total(4) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(4),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X6_Y1_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( total(4) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( total(4) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(4),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X7_Y1_N54
\total~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~6_combout\ = ( \Add2~13_sumout\ & ( \Add1~13_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~13_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~9_sumout\)))) ) ) ) # ( 
-- !\Add2~13_sumout\ & ( \Add1~13_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~13_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & ((\Add3~9_sumout\)))) ) ) ) # ( \Add2~13_sumout\ & ( 
-- !\Add1~13_sumout\ & ( (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & (\Add0~13_sumout\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~9_sumout\)))) ) ) ) # ( !\Add2~13_sumout\ & ( !\Add1~13_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & (\Add0~13_sumout\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & ((\Add3~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Add3~9_sumout\,
	datae => \ALT_INV_Add2~13_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \total~6_combout\);

-- Location: FF_X7_Y1_N56
\total[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~6_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(4));

-- Location: LABCELL_X9_Y1_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( total(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( total(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(5),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X7_Y1_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( total(5) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( total(5) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(5),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X10_Y1_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( total(5) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( total(5) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(5),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X6_Y1_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( total(5) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( total(5) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(5),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X8_Y1_N54
\total~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~7_combout\ = ( \Add2~17_sumout\ & ( \Add1~17_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\type_of_money[0]~input_o\)) # (\Add0~17_sumout\))) # (\type_of_money[1]~input_o\ & (((!\type_of_money[0]~input_o\) # (\Add3~13_sumout\)))) ) ) ) # ( 
-- !\Add2~17_sumout\ & ( \Add1~17_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\type_of_money[0]~input_o\)) # (\Add0~17_sumout\))) # (\type_of_money[1]~input_o\ & (((\Add3~13_sumout\ & \type_of_money[0]~input_o\)))) ) ) ) # ( \Add2~17_sumout\ & ( 
-- !\Add1~17_sumout\ & ( (!\type_of_money[1]~input_o\ & (\Add0~17_sumout\ & ((!\type_of_money[0]~input_o\)))) # (\type_of_money[1]~input_o\ & (((!\type_of_money[0]~input_o\) # (\Add3~13_sumout\)))) ) ) ) # ( !\Add2~17_sumout\ & ( !\Add1~17_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (\Add0~17_sumout\ & ((!\type_of_money[0]~input_o\)))) # (\type_of_money[1]~input_o\ & (((\Add3~13_sumout\ & \type_of_money[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_type_of_money[0]~input_o\,
	datae => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \total~7_combout\);

-- Location: FF_X8_Y1_N56
\total[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~7_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(5));

-- Location: LABCELL_X7_Y1_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( total(6) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( total(6) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(6),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X6_Y1_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( total(6) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( total(6) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_total(6),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X10_Y1_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( total(6) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( total(6) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(6),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X9_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( total(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( total(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(6),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X6_Y1_N48
\total~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~8_combout\ = ( \Add2~21_sumout\ & ( \Add0~21_sumout\ & ( (!\type_of_money[0]~input_o\) # ((!\type_of_money[1]~input_o\ & ((\Add1~21_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~17_sumout\))) ) ) ) # ( !\Add2~21_sumout\ & ( \Add0~21_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~21_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~17_sumout\)))) ) ) ) # ( \Add2~21_sumout\ & ( !\Add0~21_sumout\ 
-- & ( (!\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~21_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~17_sumout\)))) ) ) ) # ( !\Add2~21_sumout\ & ( 
-- !\Add0~21_sumout\ & ( (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~21_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[0]~input_o\,
	datab => \ALT_INV_Add3~17_sumout\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => \ALT_INV_Add1~21_sumout\,
	datae => \ALT_INV_Add2~21_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \total~8_combout\);

-- Location: FF_X6_Y1_N50
\total[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~8_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(6));

-- Location: LABCELL_X7_Y1_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( total(7) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( total(7) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(7),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X9_Y1_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( total(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( total(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(7),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X10_Y1_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( total(7) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( total(7) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(7),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X6_Y1_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( total(7) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( total(7) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(7),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X8_Y1_N36
\total~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~9_combout\ = ( \Add2~25_sumout\ & ( \Add1~25_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~25_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~21_sumout\)))) ) ) ) # ( 
-- !\Add2~25_sumout\ & ( \Add1~25_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~25_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & (\Add3~21_sumout\))) ) ) ) # ( \Add2~25_sumout\ & ( 
-- !\Add1~25_sumout\ & ( (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & ((\Add0~25_sumout\)))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~21_sumout\)))) ) ) ) # ( !\Add2~25_sumout\ & ( !\Add1~25_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & ((\Add0~25_sumout\)))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & (\Add3~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \total~9_combout\);

-- Location: FF_X8_Y1_N38
\total[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~9_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(7));

-- Location: LABCELL_X9_Y1_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( total(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( total(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(8),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X7_Y1_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( total(8) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( total(8) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(8),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X10_Y1_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( total(8) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( total(8) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(8),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X6_Y1_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( total(8) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( total(8) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(8),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X8_Y1_N6
\total~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~10_combout\ = ( \Add2~29_sumout\ & ( \Add1~29_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~29_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~25_sumout\)))) ) ) ) # ( 
-- !\Add2~29_sumout\ & ( \Add1~29_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~29_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & ((\Add3~25_sumout\)))) ) ) ) # ( \Add2~29_sumout\ & ( 
-- !\Add1~29_sumout\ & ( (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & (\Add0~29_sumout\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~25_sumout\)))) ) ) ) # ( !\Add2~29_sumout\ & ( !\Add1~29_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & (\Add0~29_sumout\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & ((\Add3~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add3~25_sumout\,
	datae => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \total~10_combout\);

-- Location: FF_X8_Y1_N8
\total[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~10_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(8));

-- Location: LABCELL_X7_Y1_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( total(9) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( total(9) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(9),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X9_Y1_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( total(9) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( total(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(9),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X6_Y1_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( total(9) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( total(9) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(9),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X10_Y1_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( total(9) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( total(9) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(9),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X8_Y1_N48
\total~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~11_combout\ = ( \Add1~33_sumout\ & ( \Add2~33_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~33_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~29_sumout\)))) ) ) ) # ( 
-- !\Add1~33_sumout\ & ( \Add2~33_sumout\ & ( (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & ((\Add0~33_sumout\)))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~29_sumout\)))) ) ) ) # ( \Add1~33_sumout\ & ( 
-- !\Add2~33_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~33_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & (\Add3~29_sumout\))) ) ) ) # ( !\Add1~33_sumout\ & ( !\Add2~33_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & ((\Add0~33_sumout\)))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & (\Add3~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \total~11_combout\);

-- Location: FF_X8_Y1_N50
\total[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~11_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(9));

-- Location: LABCELL_X9_Y1_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( total(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( total(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(10),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X7_Y1_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( total(10) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( total(10) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(10),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X10_Y1_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( total(10) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( total(10) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(10),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: MLABCELL_X6_Y1_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( total(10) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( total(10) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(10),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: MLABCELL_X8_Y1_N0
\total~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~12_combout\ = ( \Add2~37_sumout\ & ( \Add1~37_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~37_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~33_sumout\)))) ) ) ) # ( 
-- !\Add2~37_sumout\ & ( \Add1~37_sumout\ & ( (!\type_of_money[1]~input_o\ & (((\Add0~37_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & ((\Add3~33_sumout\)))) ) ) ) # ( \Add2~37_sumout\ & ( 
-- !\Add1~37_sumout\ & ( (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & (\Add0~37_sumout\))) # (\type_of_money[1]~input_o\ & ((!\type_of_money[0]~input_o\) # ((\Add3~33_sumout\)))) ) ) ) # ( !\Add2~37_sumout\ & ( !\Add1~37_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & (\Add0~37_sumout\))) # (\type_of_money[1]~input_o\ & (\type_of_money[0]~input_o\ & ((\Add3~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_Add3~33_sumout\,
	datae => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \total~12_combout\);

-- Location: FF_X8_Y1_N2
\total[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~12_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(10));

-- Location: LABCELL_X7_Y1_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( total(11) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( total(11) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(11),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X6_Y1_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( total(11) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( total(11) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(11),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X9_Y1_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( total(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( total(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(11),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X10_Y1_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( total(11) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( total(11) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(11),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: MLABCELL_X6_Y1_N54
\total~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~13_combout\ = ( \Add0~41_sumout\ & ( \Add2~41_sumout\ & ( (!\type_of_money[0]~input_o\) # ((!\type_of_money[1]~input_o\ & ((\Add1~41_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~37_sumout\))) ) ) ) # ( !\Add0~41_sumout\ & ( \Add2~41_sumout\ & 
-- ( (!\type_of_money[0]~input_o\ & (\type_of_money[1]~input_o\)) # (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~41_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~37_sumout\)))) ) ) ) # ( \Add0~41_sumout\ & ( !\Add2~41_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (!\type_of_money[1]~input_o\)) # (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~41_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~37_sumout\)))) ) ) ) # ( !\Add0~41_sumout\ & ( !\Add2~41_sumout\ & ( 
-- (\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & ((\Add1~41_sumout\))) # (\type_of_money[1]~input_o\ & (\Add3~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[0]~input_o\,
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datac => \ALT_INV_Add3~37_sumout\,
	datad => \ALT_INV_Add1~41_sumout\,
	datae => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_Add2~41_sumout\,
	combout => \total~13_combout\);

-- Location: FF_X6_Y1_N56
\total[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~13_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(11));

-- Location: LABCELL_X7_Y1_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( total(12) ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( total(12) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(12),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: LABCELL_X9_Y1_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( total(12) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( total(12) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(12),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X6_Y1_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( total(12) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( total(12) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(12),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X10_Y1_N33
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( total(12) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( total(12) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(12),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X8_Y1_N30
\total~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~14_combout\ = ( \Add1~45_sumout\ & ( \Add2~45_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\) # (\Add0~45_sumout\)))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add3~41_sumout\))) ) ) ) # ( 
-- !\Add1~45_sumout\ & ( \Add2~45_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\) # (\Add0~45_sumout\)))) # (\type_of_money[0]~input_o\ & (\Add3~41_sumout\ & ((\type_of_money[1]~input_o\)))) ) ) ) # ( \Add1~45_sumout\ & ( 
-- !\Add2~45_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\Add0~45_sumout\ & !\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add3~41_sumout\))) ) ) ) # ( !\Add1~45_sumout\ & ( !\Add2~45_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (((\Add0~45_sumout\ & !\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (\Add3~41_sumout\ & ((\type_of_money[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~41_sumout\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_type_of_money[1]~input_o\,
	datae => \ALT_INV_Add1~45_sumout\,
	dataf => \ALT_INV_Add2~45_sumout\,
	combout => \total~14_combout\);

-- Location: FF_X8_Y1_N32
\total[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~14_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(12));

-- Location: LABCELL_X7_Y1_N33
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( total(13) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( total(13) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(13),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X9_Y1_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( total(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( total(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(13),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X10_Y1_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( total(13) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( total(13) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(13),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X6_Y1_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( total(13) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( total(13) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_total(13),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: MLABCELL_X8_Y1_N42
\total~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~15_combout\ = ( \Add2~49_sumout\ & ( \Add1~49_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\Add0~49_sumout\) # (\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add3~45_sumout\))) ) ) ) # ( 
-- !\Add2~49_sumout\ & ( \Add1~49_sumout\ & ( (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\ & \Add0~49_sumout\)))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\)) # (\Add3~45_sumout\))) ) ) ) # ( \Add2~49_sumout\ & ( 
-- !\Add1~49_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\Add0~49_sumout\) # (\type_of_money[1]~input_o\)))) # (\type_of_money[0]~input_o\ & (\Add3~45_sumout\ & (\type_of_money[1]~input_o\))) ) ) ) # ( !\Add2~49_sumout\ & ( !\Add1~49_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\ & \Add0~49_sumout\)))) # (\type_of_money[0]~input_o\ & (\Add3~45_sumout\ & (\type_of_money[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[0]~input_o\,
	datab => \ALT_INV_Add3~45_sumout\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => \ALT_INV_Add0~49_sumout\,
	datae => \ALT_INV_Add2~49_sumout\,
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \total~15_combout\);

-- Location: FF_X8_Y1_N44
\total[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~15_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(13));

-- Location: LABCELL_X9_Y1_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( total(14) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( total(14) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(14),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X10_Y1_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( total(14) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( total(14) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_total(14),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: LABCELL_X7_Y1_N36
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( total(14) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( total(14) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(14),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: MLABCELL_X6_Y1_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( total(14) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( total(14) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(14),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X10_Y1_N48
\total~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~16_combout\ = ( \Add3~49_sumout\ & ( \Add1~53_sumout\ & ( ((!\type_of_money[1]~input_o\ & (\Add0~53_sumout\)) # (\type_of_money[1]~input_o\ & ((\Add2~53_sumout\)))) # (\type_of_money[0]~input_o\) ) ) ) # ( !\Add3~49_sumout\ & ( \Add1~53_sumout\ & ( 
-- (!\type_of_money[1]~input_o\ & (((\Add0~53_sumout\)) # (\type_of_money[0]~input_o\))) # (\type_of_money[1]~input_o\ & (!\type_of_money[0]~input_o\ & ((\Add2~53_sumout\)))) ) ) ) # ( \Add3~49_sumout\ & ( !\Add1~53_sumout\ & ( (!\type_of_money[1]~input_o\ & 
-- (!\type_of_money[0]~input_o\ & (\Add0~53_sumout\))) # (\type_of_money[1]~input_o\ & (((\Add2~53_sumout\)) # (\type_of_money[0]~input_o\))) ) ) ) # ( !\Add3~49_sumout\ & ( !\Add1~53_sumout\ & ( (!\type_of_money[0]~input_o\ & ((!\type_of_money[1]~input_o\ & 
-- (\Add0~53_sumout\)) # (\type_of_money[1]~input_o\ & ((\Add2~53_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datab => \ALT_INV_type_of_money[0]~input_o\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_Add2~53_sumout\,
	datae => \ALT_INV_Add3~49_sumout\,
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \total~16_combout\);

-- Location: FF_X10_Y1_N50
\total[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~16_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(14));

-- Location: LABCELL_X9_Y1_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( total(15) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(15),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\);

-- Location: LABCELL_X7_Y1_N39
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( total(15) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(15),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\);

-- Location: LABCELL_X10_Y1_N42
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( total(15) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(15),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\);

-- Location: MLABCELL_X6_Y1_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( total(15) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_total(15),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\);

-- Location: LABCELL_X9_Y1_N54
\total~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \total~17_combout\ = ( \Add2~57_sumout\ & ( \Add1~57_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\)) # (\Add0~57_sumout\))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\) # (\Add3~53_sumout\)))) ) ) ) # ( 
-- !\Add2~57_sumout\ & ( \Add1~57_sumout\ & ( (!\type_of_money[0]~input_o\ & (\Add0~57_sumout\ & (!\type_of_money[1]~input_o\))) # (\type_of_money[0]~input_o\ & (((!\type_of_money[1]~input_o\) # (\Add3~53_sumout\)))) ) ) ) # ( \Add2~57_sumout\ & ( 
-- !\Add1~57_sumout\ & ( (!\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\)) # (\Add0~57_sumout\))) # (\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\ & \Add3~53_sumout\)))) ) ) ) # ( !\Add2~57_sumout\ & ( !\Add1~57_sumout\ & ( 
-- (!\type_of_money[0]~input_o\ & (\Add0~57_sumout\ & (!\type_of_money[1]~input_o\))) # (\type_of_money[0]~input_o\ & (((\type_of_money[1]~input_o\ & \Add3~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[0]~input_o\,
	datab => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => \ALT_INV_Add3~53_sumout\,
	datae => \ALT_INV_Add2~57_sumout\,
	dataf => \ALT_INV_Add1~57_sumout\,
	combout => \total~17_combout\);

-- Location: FF_X9_Y1_N56
\total[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \total~17_combout\,
	clrn => \ALT_INV_total[15]~1_combout\,
	ena => \total[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(15));

-- Location: MLABCELL_X39_Y19_N3
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


