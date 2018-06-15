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

-- DATE "06/13/2018 10:05:31"

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

ENTITY 	money_controller IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	input_value : IN std_logic_vector(7 DOWNTO 0);
	type_of_money : IN std_logic_vector(1 DOWNTO 0);
	stock0 : BUFFER std_logic_vector(7 DOWNTO 0);
	stock1 : BUFFER std_logic_vector(7 DOWNTO 0);
	stock2 : BUFFER std_logic_vector(7 DOWNTO 0);
	stock3 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END money_controller;

-- Design Ports Information
-- key2	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_value[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[0]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock0[7]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[4]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock1[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[0]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[4]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[5]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock2[7]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[2]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[5]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[6]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock3[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- type_of_money[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- type_of_money[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF money_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_input_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_type_of_money : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_stock0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_stock1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_stock2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_stock3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \receipt_money|Mult0~mac_AX_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \receipt_money|Mult0~mac_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \receipt_money|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \receipt_money|Mult0~8\ : std_logic;
SIGNAL \receipt_money|Mult0~9\ : std_logic;
SIGNAL \receipt_money|Mult0~10\ : std_logic;
SIGNAL \receipt_money|Mult0~11\ : std_logic;
SIGNAL \receipt_money|Mult0~12\ : std_logic;
SIGNAL \receipt_money|Mult0~13\ : std_logic;
SIGNAL \receipt_money|Mult0~14\ : std_logic;
SIGNAL \receipt_money|Mult0~15\ : std_logic;
SIGNAL \receipt_money|Mult0~16\ : std_logic;
SIGNAL \receipt_money|Mult0~17\ : std_logic;
SIGNAL \receipt_money|Mult0~18\ : std_logic;
SIGNAL \receipt_money|Mult0~19\ : std_logic;
SIGNAL \receipt_money|Mult0~20\ : std_logic;
SIGNAL \receipt_money|Mult0~21\ : std_logic;
SIGNAL \receipt_money|Mult0~22\ : std_logic;
SIGNAL \receipt_money|Mult0~23\ : std_logic;
SIGNAL \receipt_money|Mult0~24\ : std_logic;
SIGNAL \receipt_money|Mult0~25\ : std_logic;
SIGNAL \receipt_money|Mult0~26\ : std_logic;
SIGNAL \receipt_money|Mult0~27\ : std_logic;
SIGNAL \receipt_money|Mult0~28\ : std_logic;
SIGNAL \receipt_money|Mult0~29\ : std_logic;
SIGNAL \receipt_money|Mult0~30\ : std_logic;
SIGNAL \receipt_money|Mult0~31\ : std_logic;
SIGNAL \receipt_money|Mult0~32\ : std_logic;
SIGNAL \receipt_money|Mult0~33\ : std_logic;
SIGNAL \receipt_money|Mult0~34\ : std_logic;
SIGNAL \receipt_money|Mult0~35\ : std_logic;
SIGNAL \receipt_money|Mult0~36\ : std_logic;
SIGNAL \receipt_money|Mult0~37\ : std_logic;
SIGNAL \receipt_money|Mult0~38\ : std_logic;
SIGNAL \receipt_money|Mult0~39\ : std_logic;
SIGNAL \receipt_money|Mult0~40\ : std_logic;
SIGNAL \receipt_money|Mult0~41\ : std_logic;
SIGNAL \receipt_money|Mult0~42\ : std_logic;
SIGNAL \receipt_money|Mult0~43\ : std_logic;
SIGNAL \receipt_money|Mult0~44\ : std_logic;
SIGNAL \receipt_money|Mult0~45\ : std_logic;
SIGNAL \receipt_money|Mult0~46\ : std_logic;
SIGNAL \receipt_money|Mult0~47\ : std_logic;
SIGNAL \receipt_money|Mult0~48\ : std_logic;
SIGNAL \receipt_money|Mult0~49\ : std_logic;
SIGNAL \receipt_money|Mult0~50\ : std_logic;
SIGNAL \receipt_money|Mult0~51\ : std_logic;
SIGNAL \receipt_money|Mult0~52\ : std_logic;
SIGNAL \receipt_money|Mult0~53\ : std_logic;
SIGNAL \receipt_money|Mult0~54\ : std_logic;
SIGNAL \receipt_money|Mult0~55\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \input_value[0]~input_o\ : std_logic;
SIGNAL \input_value[1]~input_o\ : std_logic;
SIGNAL \input_value[2]~input_o\ : std_logic;
SIGNAL \input_value[3]~input_o\ : std_logic;
SIGNAL \input_value[4]~input_o\ : std_logic;
SIGNAL \input_value[5]~input_o\ : std_logic;
SIGNAL \input_value[6]~input_o\ : std_logic;
SIGNAL \input_value[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \type_of_money[1]~input_o\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \type_of_money[0]~input_o\ : std_logic;
SIGNAL \receipt_money|Add0~1_sumout\ : std_logic;
SIGNAL \receipt_money|total[0]~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \receipt_money|Add2~1_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~2\ : std_logic;
SIGNAL \receipt_money|Add0~5_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~1_sumout\ : std_logic;
SIGNAL \receipt_money|Mux14~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~2\ : std_logic;
SIGNAL \receipt_money|Add2~5_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~2\ : std_logic;
SIGNAL \receipt_money|Add1~5_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~6\ : std_logic;
SIGNAL \receipt_money|Add0~9_sumout\ : std_logic;
SIGNAL \receipt_money|Mux13~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~6\ : std_logic;
SIGNAL \receipt_money|Add2~9_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~10\ : std_logic;
SIGNAL \receipt_money|Add0~13_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~6\ : std_logic;
SIGNAL \receipt_money|Add1~9_sumout\ : std_logic;
SIGNAL \receipt_money|Mux12~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~10\ : std_logic;
SIGNAL \receipt_money|Add2~13_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~14\ : std_logic;
SIGNAL \receipt_money|Add0~17_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~10\ : std_logic;
SIGNAL \receipt_money|Add1~13_sumout\ : std_logic;
SIGNAL \receipt_money|Mux11~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~14\ : std_logic;
SIGNAL \receipt_money|Add2~17_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~18\ : std_logic;
SIGNAL \receipt_money|Add0~21_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~14\ : std_logic;
SIGNAL \receipt_money|Add1~17_sumout\ : std_logic;
SIGNAL \receipt_money|Mux10~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~18\ : std_logic;
SIGNAL \receipt_money|Add2~21_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~18\ : std_logic;
SIGNAL \receipt_money|Add1~21_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~22\ : std_logic;
SIGNAL \receipt_money|Add0~25_sumout\ : std_logic;
SIGNAL \receipt_money|Mux9~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~22\ : std_logic;
SIGNAL \receipt_money|Add2~25_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~26\ : std_logic;
SIGNAL \receipt_money|Add0~29_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~22\ : std_logic;
SIGNAL \receipt_money|Add1~25_sumout\ : std_logic;
SIGNAL \receipt_money|Mux8~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~26\ : std_logic;
SIGNAL \receipt_money|Add2~29_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~26\ : std_logic;
SIGNAL \receipt_money|Add1~29_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~30\ : std_logic;
SIGNAL \receipt_money|Add0~33_sumout\ : std_logic;
SIGNAL \receipt_money|Mux7~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~30\ : std_logic;
SIGNAL \receipt_money|Add2~33_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~34\ : std_logic;
SIGNAL \receipt_money|Add0~37_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~30\ : std_logic;
SIGNAL \receipt_money|Add1~33_sumout\ : std_logic;
SIGNAL \receipt_money|Mux6~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~34\ : std_logic;
SIGNAL \receipt_money|Add2~37_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~38\ : std_logic;
SIGNAL \receipt_money|Add0~41_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~34\ : std_logic;
SIGNAL \receipt_money|Add1~37_sumout\ : std_logic;
SIGNAL \receipt_money|Mux5~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~38\ : std_logic;
SIGNAL \receipt_money|Add2~41_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~42\ : std_logic;
SIGNAL \receipt_money|Add0~45_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~38\ : std_logic;
SIGNAL \receipt_money|Add1~41_sumout\ : std_logic;
SIGNAL \receipt_money|Mux4~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~42\ : std_logic;
SIGNAL \receipt_money|Add2~45_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~46\ : std_logic;
SIGNAL \receipt_money|Add0~49_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~42\ : std_logic;
SIGNAL \receipt_money|Add1~45_sumout\ : std_logic;
SIGNAL \receipt_money|Mux3~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~46\ : std_logic;
SIGNAL \receipt_money|Add2~49_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~50\ : std_logic;
SIGNAL \receipt_money|Add0~53_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~46\ : std_logic;
SIGNAL \receipt_money|Add1~49_sumout\ : std_logic;
SIGNAL \receipt_money|Mux2~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~50\ : std_logic;
SIGNAL \receipt_money|Add2~53_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~54\ : std_logic;
SIGNAL \receipt_money|Add0~57_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~50\ : std_logic;
SIGNAL \receipt_money|Add1~53_sumout\ : std_logic;
SIGNAL \receipt_money|Mux1~0_combout\ : std_logic;
SIGNAL \receipt_money|Add2~54\ : std_logic;
SIGNAL \receipt_money|Add2~57_sumout\ : std_logic;
SIGNAL \receipt_money|Add0~58\ : std_logic;
SIGNAL \receipt_money|Add0~61_sumout\ : std_logic;
SIGNAL \receipt_money|Add1~54\ : std_logic;
SIGNAL \receipt_money|Add1~57_sumout\ : std_logic;
SIGNAL \receipt_money|Mux0~0_combout\ : std_logic;
SIGNAL \hexse2|Mux6~0_combout\ : std_logic;
SIGNAL \hexse2|Mux5~0_combout\ : std_logic;
SIGNAL \hexse2|Mux4~0_combout\ : std_logic;
SIGNAL \hexse2|Mux3~0_combout\ : std_logic;
SIGNAL \hexse2|Mux2~0_combout\ : std_logic;
SIGNAL \hexse2|Mux1~0_combout\ : std_logic;
SIGNAL \hexse2|Mux0~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux6~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux5~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux4~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux3~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux2~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux1~0_combout\ : std_logic;
SIGNAL \hexseg3|Mux0~0_combout\ : std_logic;
SIGNAL \hexse4|Mux6~0_combout\ : std_logic;
SIGNAL \hexse4|Mux5~0_combout\ : std_logic;
SIGNAL \hexse4|Mux4~0_combout\ : std_logic;
SIGNAL \hexse4|Mux3~0_combout\ : std_logic;
SIGNAL \hexse4|Mux2~0_combout\ : std_logic;
SIGNAL \hexse4|Mux1~0_combout\ : std_logic;
SIGNAL \hexse4|Mux0~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux6~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux5~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux4~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux3~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux2~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux1~0_combout\ : std_logic;
SIGNAL \hexseg5|Mux0~0_combout\ : std_logic;
SIGNAL \receipt_money|total\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \receipt_money|total_value\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \receipt_money|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_total\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \hexseg5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexse4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexseg3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexse2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \receipt_money|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_type_of_money[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_type_of_money[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key1~input_o\ : std_logic;
SIGNAL \receipt_money|ALT_INV_total_value\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_key1 <= key1;
ww_key2 <= key2;
ww_input_value <= input_value;
ww_type_of_money <= type_of_money;
stock0 <= ww_stock0;
stock1 <= ww_stock1;
stock2 <= ww_stock2;
stock3 <= ww_stock3;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\receipt_money|Mult0~mac_AX_bus\ <= (vcc & vcc & gnd & gnd & vcc & gnd & gnd);

\receipt_money|Mult0~mac_AY_bus\ <= (\receipt_money|total\(15) & \receipt_money|total\(14) & \receipt_money|total\(13) & \receipt_money|total\(12) & \receipt_money|total\(11) & \receipt_money|total\(10) & \receipt_money|total\(9) & 
\receipt_money|total\(8) & \receipt_money|total\(7) & \receipt_money|total\(6) & \receipt_money|total\(5) & \receipt_money|total\(4) & \receipt_money|total\(3) & \receipt_money|total\(2) & \receipt_money|total\(1) & 
\receipt_money|total\(0));

\receipt_money|total_value\(0) <= \receipt_money|Mult0~mac_RESULTA_bus\(0);
\receipt_money|total_value\(1) <= \receipt_money|Mult0~mac_RESULTA_bus\(1);
\receipt_money|total_value\(2) <= \receipt_money|Mult0~mac_RESULTA_bus\(2);
\receipt_money|total_value\(3) <= \receipt_money|Mult0~mac_RESULTA_bus\(3);
\receipt_money|total_value\(4) <= \receipt_money|Mult0~mac_RESULTA_bus\(4);
\receipt_money|total_value\(5) <= \receipt_money|Mult0~mac_RESULTA_bus\(5);
\receipt_money|total_value\(6) <= \receipt_money|Mult0~mac_RESULTA_bus\(6);
\receipt_money|total_value\(7) <= \receipt_money|Mult0~mac_RESULTA_bus\(7);
\receipt_money|total_value\(8) <= \receipt_money|Mult0~mac_RESULTA_bus\(8);
\receipt_money|total_value\(9) <= \receipt_money|Mult0~mac_RESULTA_bus\(9);
\receipt_money|total_value\(10) <= \receipt_money|Mult0~mac_RESULTA_bus\(10);
\receipt_money|total_value\(11) <= \receipt_money|Mult0~mac_RESULTA_bus\(11);
\receipt_money|total_value\(12) <= \receipt_money|Mult0~mac_RESULTA_bus\(12);
\receipt_money|total_value\(13) <= \receipt_money|Mult0~mac_RESULTA_bus\(13);
\receipt_money|total_value\(14) <= \receipt_money|Mult0~mac_RESULTA_bus\(14);
\receipt_money|total_value\(15) <= \receipt_money|Mult0~mac_RESULTA_bus\(15);
\receipt_money|Mult0~8\ <= \receipt_money|Mult0~mac_RESULTA_bus\(16);
\receipt_money|Mult0~9\ <= \receipt_money|Mult0~mac_RESULTA_bus\(17);
\receipt_money|Mult0~10\ <= \receipt_money|Mult0~mac_RESULTA_bus\(18);
\receipt_money|Mult0~11\ <= \receipt_money|Mult0~mac_RESULTA_bus\(19);
\receipt_money|Mult0~12\ <= \receipt_money|Mult0~mac_RESULTA_bus\(20);
\receipt_money|Mult0~13\ <= \receipt_money|Mult0~mac_RESULTA_bus\(21);
\receipt_money|Mult0~14\ <= \receipt_money|Mult0~mac_RESULTA_bus\(22);
\receipt_money|Mult0~15\ <= \receipt_money|Mult0~mac_RESULTA_bus\(23);
\receipt_money|Mult0~16\ <= \receipt_money|Mult0~mac_RESULTA_bus\(24);
\receipt_money|Mult0~17\ <= \receipt_money|Mult0~mac_RESULTA_bus\(25);
\receipt_money|Mult0~18\ <= \receipt_money|Mult0~mac_RESULTA_bus\(26);
\receipt_money|Mult0~19\ <= \receipt_money|Mult0~mac_RESULTA_bus\(27);
\receipt_money|Mult0~20\ <= \receipt_money|Mult0~mac_RESULTA_bus\(28);
\receipt_money|Mult0~21\ <= \receipt_money|Mult0~mac_RESULTA_bus\(29);
\receipt_money|Mult0~22\ <= \receipt_money|Mult0~mac_RESULTA_bus\(30);
\receipt_money|Mult0~23\ <= \receipt_money|Mult0~mac_RESULTA_bus\(31);
\receipt_money|Mult0~24\ <= \receipt_money|Mult0~mac_RESULTA_bus\(32);
\receipt_money|Mult0~25\ <= \receipt_money|Mult0~mac_RESULTA_bus\(33);
\receipt_money|Mult0~26\ <= \receipt_money|Mult0~mac_RESULTA_bus\(34);
\receipt_money|Mult0~27\ <= \receipt_money|Mult0~mac_RESULTA_bus\(35);
\receipt_money|Mult0~28\ <= \receipt_money|Mult0~mac_RESULTA_bus\(36);
\receipt_money|Mult0~29\ <= \receipt_money|Mult0~mac_RESULTA_bus\(37);
\receipt_money|Mult0~30\ <= \receipt_money|Mult0~mac_RESULTA_bus\(38);
\receipt_money|Mult0~31\ <= \receipt_money|Mult0~mac_RESULTA_bus\(39);
\receipt_money|Mult0~32\ <= \receipt_money|Mult0~mac_RESULTA_bus\(40);
\receipt_money|Mult0~33\ <= \receipt_money|Mult0~mac_RESULTA_bus\(41);
\receipt_money|Mult0~34\ <= \receipt_money|Mult0~mac_RESULTA_bus\(42);
\receipt_money|Mult0~35\ <= \receipt_money|Mult0~mac_RESULTA_bus\(43);
\receipt_money|Mult0~36\ <= \receipt_money|Mult0~mac_RESULTA_bus\(44);
\receipt_money|Mult0~37\ <= \receipt_money|Mult0~mac_RESULTA_bus\(45);
\receipt_money|Mult0~38\ <= \receipt_money|Mult0~mac_RESULTA_bus\(46);
\receipt_money|Mult0~39\ <= \receipt_money|Mult0~mac_RESULTA_bus\(47);
\receipt_money|Mult0~40\ <= \receipt_money|Mult0~mac_RESULTA_bus\(48);
\receipt_money|Mult0~41\ <= \receipt_money|Mult0~mac_RESULTA_bus\(49);
\receipt_money|Mult0~42\ <= \receipt_money|Mult0~mac_RESULTA_bus\(50);
\receipt_money|Mult0~43\ <= \receipt_money|Mult0~mac_RESULTA_bus\(51);
\receipt_money|Mult0~44\ <= \receipt_money|Mult0~mac_RESULTA_bus\(52);
\receipt_money|Mult0~45\ <= \receipt_money|Mult0~mac_RESULTA_bus\(53);
\receipt_money|Mult0~46\ <= \receipt_money|Mult0~mac_RESULTA_bus\(54);
\receipt_money|Mult0~47\ <= \receipt_money|Mult0~mac_RESULTA_bus\(55);
\receipt_money|Mult0~48\ <= \receipt_money|Mult0~mac_RESULTA_bus\(56);
\receipt_money|Mult0~49\ <= \receipt_money|Mult0~mac_RESULTA_bus\(57);
\receipt_money|Mult0~50\ <= \receipt_money|Mult0~mac_RESULTA_bus\(58);
\receipt_money|Mult0~51\ <= \receipt_money|Mult0~mac_RESULTA_bus\(59);
\receipt_money|Mult0~52\ <= \receipt_money|Mult0~mac_RESULTA_bus\(60);
\receipt_money|Mult0~53\ <= \receipt_money|Mult0~mac_RESULTA_bus\(61);
\receipt_money|Mult0~54\ <= \receipt_money|Mult0~mac_RESULTA_bus\(62);
\receipt_money|Mult0~55\ <= \receipt_money|Mult0~mac_RESULTA_bus\(63);
\receipt_money|ALT_INV_Add0~25_sumout\ <= NOT \receipt_money|Add0~25_sumout\;
\receipt_money|ALT_INV_Add1~21_sumout\ <= NOT \receipt_money|Add1~21_sumout\;
\receipt_money|ALT_INV_Add0~21_sumout\ <= NOT \receipt_money|Add0~21_sumout\;
\receipt_money|ALT_INV_Add1~17_sumout\ <= NOT \receipt_money|Add1~17_sumout\;
\receipt_money|ALT_INV_Add0~17_sumout\ <= NOT \receipt_money|Add0~17_sumout\;
\receipt_money|ALT_INV_Add1~13_sumout\ <= NOT \receipt_money|Add1~13_sumout\;
\receipt_money|ALT_INV_Add0~13_sumout\ <= NOT \receipt_money|Add0~13_sumout\;
\receipt_money|ALT_INV_Add1~9_sumout\ <= NOT \receipt_money|Add1~9_sumout\;
\receipt_money|ALT_INV_Add0~9_sumout\ <= NOT \receipt_money|Add0~9_sumout\;
\receipt_money|ALT_INV_Add1~5_sumout\ <= NOT \receipt_money|Add1~5_sumout\;
\receipt_money|ALT_INV_Add0~5_sumout\ <= NOT \receipt_money|Add0~5_sumout\;
\receipt_money|ALT_INV_Add1~1_sumout\ <= NOT \receipt_money|Add1~1_sumout\;
\receipt_money|ALT_INV_Add0~1_sumout\ <= NOT \receipt_money|Add0~1_sumout\;
\receipt_money|ALT_INV_total\(15) <= NOT \receipt_money|total\(15);
\receipt_money|ALT_INV_total\(14) <= NOT \receipt_money|total\(14);
\receipt_money|ALT_INV_total\(13) <= NOT \receipt_money|total\(13);
\receipt_money|ALT_INV_total\(12) <= NOT \receipt_money|total\(12);
\receipt_money|ALT_INV_total\(11) <= NOT \receipt_money|total\(11);
\receipt_money|ALT_INV_total\(10) <= NOT \receipt_money|total\(10);
\receipt_money|ALT_INV_total\(9) <= NOT \receipt_money|total\(9);
\receipt_money|ALT_INV_total\(8) <= NOT \receipt_money|total\(8);
\receipt_money|ALT_INV_total\(7) <= NOT \receipt_money|total\(7);
\receipt_money|ALT_INV_total\(6) <= NOT \receipt_money|total\(6);
\receipt_money|ALT_INV_total\(5) <= NOT \receipt_money|total\(5);
\receipt_money|ALT_INV_total\(4) <= NOT \receipt_money|total\(4);
\receipt_money|ALT_INV_total\(3) <= NOT \receipt_money|total\(3);
\receipt_money|ALT_INV_total\(2) <= NOT \receipt_money|total\(2);
\receipt_money|ALT_INV_total\(1) <= NOT \receipt_money|total\(1);
\receipt_money|ALT_INV_total\(0) <= NOT \receipt_money|total\(0);
\hexseg5|ALT_INV_Mux0~0_combout\ <= NOT \hexseg5|Mux0~0_combout\;
\hexse4|ALT_INV_Mux0~0_combout\ <= NOT \hexse4|Mux0~0_combout\;
\hexseg3|ALT_INV_Mux0~0_combout\ <= NOT \hexseg3|Mux0~0_combout\;
\hexse2|ALT_INV_Mux0~0_combout\ <= NOT \hexse2|Mux0~0_combout\;
\receipt_money|ALT_INV_Add0~61_sumout\ <= NOT \receipt_money|Add0~61_sumout\;
\receipt_money|ALT_INV_Add1~57_sumout\ <= NOT \receipt_money|Add1~57_sumout\;
\receipt_money|ALT_INV_Add0~57_sumout\ <= NOT \receipt_money|Add0~57_sumout\;
\receipt_money|ALT_INV_Add1~53_sumout\ <= NOT \receipt_money|Add1~53_sumout\;
\receipt_money|ALT_INV_Add0~53_sumout\ <= NOT \receipt_money|Add0~53_sumout\;
\receipt_money|ALT_INV_Add1~49_sumout\ <= NOT \receipt_money|Add1~49_sumout\;
\receipt_money|ALT_INV_Add0~49_sumout\ <= NOT \receipt_money|Add0~49_sumout\;
\receipt_money|ALT_INV_Add1~45_sumout\ <= NOT \receipt_money|Add1~45_sumout\;
\receipt_money|ALT_INV_Add0~45_sumout\ <= NOT \receipt_money|Add0~45_sumout\;
\receipt_money|ALT_INV_Add1~41_sumout\ <= NOT \receipt_money|Add1~41_sumout\;
\receipt_money|ALT_INV_Add0~41_sumout\ <= NOT \receipt_money|Add0~41_sumout\;
\receipt_money|ALT_INV_Add1~37_sumout\ <= NOT \receipt_money|Add1~37_sumout\;
\receipt_money|ALT_INV_Add0~37_sumout\ <= NOT \receipt_money|Add0~37_sumout\;
\receipt_money|ALT_INV_Add1~33_sumout\ <= NOT \receipt_money|Add1~33_sumout\;
\receipt_money|ALT_INV_Add0~33_sumout\ <= NOT \receipt_money|Add0~33_sumout\;
\receipt_money|ALT_INV_Add1~29_sumout\ <= NOT \receipt_money|Add1~29_sumout\;
\receipt_money|ALT_INV_Add0~29_sumout\ <= NOT \receipt_money|Add0~29_sumout\;
\receipt_money|ALT_INV_Add1~25_sumout\ <= NOT \receipt_money|Add1~25_sumout\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_type_of_money[1]~input_o\ <= NOT \type_of_money[1]~input_o\;
\ALT_INV_type_of_money[0]~input_o\ <= NOT \type_of_money[0]~input_o\;
\ALT_INV_key1~input_o\ <= NOT \key1~input_o\;
\receipt_money|ALT_INV_total_value\(15) <= NOT \receipt_money|total_value\(15);
\receipt_money|ALT_INV_total_value\(14) <= NOT \receipt_money|total_value\(14);
\receipt_money|ALT_INV_total_value\(13) <= NOT \receipt_money|total_value\(13);
\receipt_money|ALT_INV_total_value\(12) <= NOT \receipt_money|total_value\(12);
\receipt_money|ALT_INV_total_value\(11) <= NOT \receipt_money|total_value\(11);
\receipt_money|ALT_INV_total_value\(10) <= NOT \receipt_money|total_value\(10);
\receipt_money|ALT_INV_total_value\(9) <= NOT \receipt_money|total_value\(9);
\receipt_money|ALT_INV_total_value\(8) <= NOT \receipt_money|total_value\(8);
\receipt_money|ALT_INV_total_value\(7) <= NOT \receipt_money|total_value\(7);
\receipt_money|ALT_INV_total_value\(6) <= NOT \receipt_money|total_value\(6);
\receipt_money|ALT_INV_total_value\(5) <= NOT \receipt_money|total_value\(5);
\receipt_money|ALT_INV_total_value\(4) <= NOT \receipt_money|total_value\(4);
\receipt_money|ALT_INV_total_value\(3) <= NOT \receipt_money|total_value\(3);
\receipt_money|ALT_INV_total_value\(2) <= NOT \receipt_money|total_value\(2);
\receipt_money|ALT_INV_total_value\(1) <= NOT \receipt_money|total_value\(1);
\receipt_money|ALT_INV_total_value\(0) <= NOT \receipt_money|total_value\(0);

-- Location: IOOBUF_X24_Y0_N53
\stock0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(0));

-- Location: IOOBUF_X38_Y0_N19
\stock0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(1));

-- Location: IOOBUF_X12_Y81_N36
\stock0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(2));

-- Location: IOOBUF_X12_Y81_N53
\stock0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(3));

-- Location: IOOBUF_X34_Y81_N59
\stock0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(4));

-- Location: IOOBUF_X32_Y0_N19
\stock0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(5));

-- Location: IOOBUF_X28_Y81_N36
\stock0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(6));

-- Location: IOOBUF_X76_Y0_N53
\stock0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock0(7));

-- Location: IOOBUF_X66_Y0_N93
\stock1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(0));

-- Location: IOOBUF_X52_Y0_N36
\stock1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(1));

-- Location: IOOBUF_X16_Y81_N53
\stock1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(2));

-- Location: IOOBUF_X6_Y81_N53
\stock1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(3));

-- Location: IOOBUF_X14_Y0_N53
\stock1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(4));

-- Location: IOOBUF_X12_Y81_N19
\stock1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(5));

-- Location: IOOBUF_X16_Y81_N19
\stock1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(6));

-- Location: IOOBUF_X8_Y0_N2
\stock1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock1(7));

-- Location: IOOBUF_X88_Y0_N37
\stock2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(0));

-- Location: IOOBUF_X62_Y0_N2
\stock2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(1));

-- Location: IOOBUF_X84_Y0_N19
\stock2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(2));

-- Location: IOOBUF_X10_Y81_N93
\stock2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(3));

-- Location: IOOBUF_X16_Y0_N36
\stock2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(4));

-- Location: IOOBUF_X76_Y0_N2
\stock2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(5));

-- Location: IOOBUF_X36_Y81_N53
\stock2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(6));

-- Location: IOOBUF_X66_Y0_N42
\stock2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock2(7));

-- Location: IOOBUF_X16_Y81_N2
\stock3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(0));

-- Location: IOOBUF_X40_Y81_N36
\stock3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(1));

-- Location: IOOBUF_X70_Y0_N36
\stock3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(2));

-- Location: IOOBUF_X26_Y81_N76
\stock3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(3));

-- Location: IOOBUF_X18_Y81_N93
\stock3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(4));

-- Location: IOOBUF_X60_Y0_N53
\stock3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(5));

-- Location: IOOBUF_X82_Y0_N76
\stock3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(6));

-- Location: IOOBUF_X26_Y81_N42
\stock3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_stock3(7));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexse4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexseg5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: IOIBUF_X36_Y0_N18
\key1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

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

-- Location: LABCELL_X55_Y8_N0
\receipt_money|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~1_sumout\ = SUM(( \receipt_money|total\(0) ) + ( VCC ) + ( !VCC ))
-- \receipt_money|Add0~2\ = CARRY(( \receipt_money|total\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(0),
	cin => GND,
	sumout => \receipt_money|Add0~1_sumout\,
	cout => \receipt_money|Add0~2\);

-- Location: LABCELL_X53_Y8_N24
\receipt_money|total[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|total[0]~0_combout\ = ( \type_of_money[0]~input_o\ & ( \receipt_money|Add0~1_sumout\ & ( \receipt_money|total\(0) ) ) ) # ( !\type_of_money[0]~input_o\ & ( \receipt_money|Add0~1_sumout\ & ( ((!\type_of_money[1]~input_o\ & !\key1~input_o\)) 
-- # (\receipt_money|total\(0)) ) ) ) # ( \type_of_money[0]~input_o\ & ( !\receipt_money|Add0~1_sumout\ & ( \receipt_money|total\(0) ) ) ) # ( !\type_of_money[0]~input_o\ & ( !\receipt_money|Add0~1_sumout\ & ( (\receipt_money|total\(0) & ((\key1~input_o\) # 
-- (\type_of_money[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101010101010101010111010101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total\(0),
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datac => \ALT_INV_key1~input_o\,
	datae => \ALT_INV_type_of_money[0]~input_o\,
	dataf => \receipt_money|ALT_INV_Add0~1_sumout\,
	combout => \receipt_money|total[0]~0_combout\);

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

-- Location: FF_X55_Y8_N56
\receipt_money|total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \receipt_money|total[0]~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(0));

-- Location: LABCELL_X56_Y8_N0
\receipt_money|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~1_sumout\ = SUM(( \receipt_money|total\(1) ) + ( VCC ) + ( !VCC ))
-- \receipt_money|Add2~2\ = CARRY(( \receipt_money|total\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(1),
	cin => GND,
	sumout => \receipt_money|Add2~1_sumout\,
	cout => \receipt_money|Add2~2\);

-- Location: LABCELL_X55_Y8_N3
\receipt_money|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~5_sumout\ = SUM(( \receipt_money|total\(1) ) + ( GND ) + ( \receipt_money|Add0~2\ ))
-- \receipt_money|Add0~6\ = CARRY(( \receipt_money|total\(1) ) + ( GND ) + ( \receipt_money|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(1),
	cin => \receipt_money|Add0~2\,
	sumout => \receipt_money|Add0~5_sumout\,
	cout => \receipt_money|Add0~6\);

-- Location: LABCELL_X57_Y8_N0
\receipt_money|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~1_sumout\ = SUM(( \receipt_money|total\(1) ) + ( VCC ) + ( !VCC ))
-- \receipt_money|Add1~2\ = CARRY(( \receipt_money|total\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(1),
	cin => GND,
	sumout => \receipt_money|Add1~1_sumout\,
	cout => \receipt_money|Add1~2\);

-- Location: LABCELL_X53_Y8_N30
\receipt_money|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux14~0_combout\ = ( \receipt_money|Add0~5_sumout\ & ( \receipt_money|Add1~1_sumout\ ) ) # ( !\receipt_money|Add0~5_sumout\ & ( \receipt_money|Add1~1_sumout\ & ( \type_of_money[1]~input_o\ ) ) ) # ( \receipt_money|Add0~5_sumout\ & ( 
-- !\receipt_money|Add1~1_sumout\ & ( !\type_of_money[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datae => \receipt_money|ALT_INV_Add0~5_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~1_sumout\,
	combout => \receipt_money|Mux14~0_combout\);

-- Location: FF_X56_Y8_N2
\receipt_money|total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~1_sumout\,
	asdata => \receipt_money|Mux14~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(1));

-- Location: LABCELL_X56_Y8_N3
\receipt_money|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~5_sumout\ = SUM(( \receipt_money|total\(2) ) + ( GND ) + ( \receipt_money|Add2~2\ ))
-- \receipt_money|Add2~6\ = CARRY(( \receipt_money|total\(2) ) + ( GND ) + ( \receipt_money|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(2),
	cin => \receipt_money|Add2~2\,
	sumout => \receipt_money|Add2~5_sumout\,
	cout => \receipt_money|Add2~6\);

-- Location: LABCELL_X57_Y8_N3
\receipt_money|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~5_sumout\ = SUM(( \receipt_money|total\(2) ) + ( GND ) + ( \receipt_money|Add1~2\ ))
-- \receipt_money|Add1~6\ = CARRY(( \receipt_money|total\(2) ) + ( GND ) + ( \receipt_money|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(2),
	cin => \receipt_money|Add1~2\,
	sumout => \receipt_money|Add1~5_sumout\,
	cout => \receipt_money|Add1~6\);

-- Location: LABCELL_X55_Y8_N6
\receipt_money|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~9_sumout\ = SUM(( \receipt_money|total\(2) ) + ( GND ) + ( \receipt_money|Add0~6\ ))
-- \receipt_money|Add0~10\ = CARRY(( \receipt_money|total\(2) ) + ( GND ) + ( \receipt_money|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(2),
	cin => \receipt_money|Add0~6\,
	sumout => \receipt_money|Add0~9_sumout\,
	cout => \receipt_money|Add0~10\);

-- Location: LABCELL_X55_Y8_N54
\receipt_money|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux13~0_combout\ = ( \receipt_money|Add0~9_sumout\ & ( (!\type_of_money[1]~input_o\) # (\receipt_money|Add1~5_sumout\) ) ) # ( !\receipt_money|Add0~9_sumout\ & ( (\type_of_money[1]~input_o\ & \receipt_money|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datac => \receipt_money|ALT_INV_Add1~5_sumout\,
	dataf => \receipt_money|ALT_INV_Add0~9_sumout\,
	combout => \receipt_money|Mux13~0_combout\);

-- Location: FF_X56_Y8_N5
\receipt_money|total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~5_sumout\,
	asdata => \receipt_money|Mux13~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(2));

-- Location: LABCELL_X56_Y8_N6
\receipt_money|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~9_sumout\ = SUM(( \receipt_money|total\(3) ) + ( GND ) + ( \receipt_money|Add2~6\ ))
-- \receipt_money|Add2~10\ = CARRY(( \receipt_money|total\(3) ) + ( GND ) + ( \receipt_money|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total\(3),
	cin => \receipt_money|Add2~6\,
	sumout => \receipt_money|Add2~9_sumout\,
	cout => \receipt_money|Add2~10\);

-- Location: LABCELL_X55_Y8_N9
\receipt_money|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~13_sumout\ = SUM(( \receipt_money|total\(3) ) + ( GND ) + ( \receipt_money|Add0~10\ ))
-- \receipt_money|Add0~14\ = CARRY(( \receipt_money|total\(3) ) + ( GND ) + ( \receipt_money|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(3),
	cin => \receipt_money|Add0~10\,
	sumout => \receipt_money|Add0~13_sumout\,
	cout => \receipt_money|Add0~14\);

-- Location: LABCELL_X57_Y8_N6
\receipt_money|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~9_sumout\ = SUM(( \receipt_money|total\(3) ) + ( VCC ) + ( \receipt_money|Add1~6\ ))
-- \receipt_money|Add1~10\ = CARRY(( \receipt_money|total\(3) ) + ( VCC ) + ( \receipt_money|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(3),
	cin => \receipt_money|Add1~6\,
	sumout => \receipt_money|Add1~9_sumout\,
	cout => \receipt_money|Add1~10\);

-- Location: LABCELL_X56_Y9_N18
\receipt_money|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux12~0_combout\ = ( \receipt_money|Add0~13_sumout\ & ( \receipt_money|Add1~9_sumout\ ) ) # ( !\receipt_money|Add0~13_sumout\ & ( \receipt_money|Add1~9_sumout\ & ( \type_of_money[1]~input_o\ ) ) ) # ( \receipt_money|Add0~13_sumout\ & ( 
-- !\receipt_money|Add1~9_sumout\ & ( !\type_of_money[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datae => \receipt_money|ALT_INV_Add0~13_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~9_sumout\,
	combout => \receipt_money|Mux12~0_combout\);

-- Location: FF_X56_Y8_N8
\receipt_money|total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~9_sumout\,
	asdata => \receipt_money|Mux12~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(3));

-- Location: LABCELL_X56_Y8_N9
\receipt_money|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~13_sumout\ = SUM(( \receipt_money|total\(4) ) + ( GND ) + ( \receipt_money|Add2~10\ ))
-- \receipt_money|Add2~14\ = CARRY(( \receipt_money|total\(4) ) + ( GND ) + ( \receipt_money|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(4),
	cin => \receipt_money|Add2~10\,
	sumout => \receipt_money|Add2~13_sumout\,
	cout => \receipt_money|Add2~14\);

-- Location: LABCELL_X55_Y8_N12
\receipt_money|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~17_sumout\ = SUM(( \receipt_money|total\(4) ) + ( GND ) + ( \receipt_money|Add0~14\ ))
-- \receipt_money|Add0~18\ = CARRY(( \receipt_money|total\(4) ) + ( GND ) + ( \receipt_money|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(4),
	cin => \receipt_money|Add0~14\,
	sumout => \receipt_money|Add0~17_sumout\,
	cout => \receipt_money|Add0~18\);

-- Location: LABCELL_X57_Y8_N9
\receipt_money|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~13_sumout\ = SUM(( \receipt_money|total\(4) ) + ( GND ) + ( \receipt_money|Add1~10\ ))
-- \receipt_money|Add1~14\ = CARRY(( \receipt_money|total\(4) ) + ( GND ) + ( \receipt_money|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(4),
	cin => \receipt_money|Add1~10\,
	sumout => \receipt_money|Add1~13_sumout\,
	cout => \receipt_money|Add1~14\);

-- Location: LABCELL_X56_Y9_N12
\receipt_money|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux11~0_combout\ = ( \receipt_money|Add0~17_sumout\ & ( \receipt_money|Add1~13_sumout\ ) ) # ( !\receipt_money|Add0~17_sumout\ & ( \receipt_money|Add1~13_sumout\ & ( \type_of_money[1]~input_o\ ) ) ) # ( \receipt_money|Add0~17_sumout\ & ( 
-- !\receipt_money|Add1~13_sumout\ & ( !\type_of_money[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datae => \receipt_money|ALT_INV_Add0~17_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~13_sumout\,
	combout => \receipt_money|Mux11~0_combout\);

-- Location: FF_X56_Y8_N11
\receipt_money|total[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~13_sumout\,
	asdata => \receipt_money|Mux11~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(4));

-- Location: LABCELL_X56_Y8_N12
\receipt_money|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~17_sumout\ = SUM(( \receipt_money|total\(5) ) + ( GND ) + ( \receipt_money|Add2~14\ ))
-- \receipt_money|Add2~18\ = CARRY(( \receipt_money|total\(5) ) + ( GND ) + ( \receipt_money|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total\(5),
	cin => \receipt_money|Add2~14\,
	sumout => \receipt_money|Add2~17_sumout\,
	cout => \receipt_money|Add2~18\);

-- Location: LABCELL_X55_Y8_N15
\receipt_money|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~21_sumout\ = SUM(( \receipt_money|total\(5) ) + ( GND ) + ( \receipt_money|Add0~18\ ))
-- \receipt_money|Add0~22\ = CARRY(( \receipt_money|total\(5) ) + ( GND ) + ( \receipt_money|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(5),
	cin => \receipt_money|Add0~18\,
	sumout => \receipt_money|Add0~21_sumout\,
	cout => \receipt_money|Add0~22\);

-- Location: LABCELL_X57_Y8_N12
\receipt_money|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~17_sumout\ = SUM(( \receipt_money|total\(5) ) + ( GND ) + ( \receipt_money|Add1~14\ ))
-- \receipt_money|Add1~18\ = CARRY(( \receipt_money|total\(5) ) + ( GND ) + ( \receipt_money|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(5),
	cin => \receipt_money|Add1~14\,
	sumout => \receipt_money|Add1~17_sumout\,
	cout => \receipt_money|Add1~18\);

-- Location: LABCELL_X57_Y8_N51
\receipt_money|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux10~0_combout\ = ( \receipt_money|Add1~17_sumout\ & ( (\receipt_money|Add0~21_sumout\) # (\type_of_money[1]~input_o\) ) ) # ( !\receipt_money|Add1~17_sumout\ & ( (!\type_of_money[1]~input_o\ & \receipt_money|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datad => \receipt_money|ALT_INV_Add0~21_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~17_sumout\,
	combout => \receipt_money|Mux10~0_combout\);

-- Location: FF_X56_Y8_N14
\receipt_money|total[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~17_sumout\,
	asdata => \receipt_money|Mux10~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(5));

-- Location: LABCELL_X56_Y8_N15
\receipt_money|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~21_sumout\ = SUM(( \receipt_money|total\(6) ) + ( GND ) + ( \receipt_money|Add2~18\ ))
-- \receipt_money|Add2~22\ = CARRY(( \receipt_money|total\(6) ) + ( GND ) + ( \receipt_money|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(6),
	cin => \receipt_money|Add2~18\,
	sumout => \receipt_money|Add2~21_sumout\,
	cout => \receipt_money|Add2~22\);

-- Location: LABCELL_X57_Y8_N15
\receipt_money|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~21_sumout\ = SUM(( \receipt_money|total\(6) ) + ( GND ) + ( \receipt_money|Add1~18\ ))
-- \receipt_money|Add1~22\ = CARRY(( \receipt_money|total\(6) ) + ( GND ) + ( \receipt_money|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(6),
	cin => \receipt_money|Add1~18\,
	sumout => \receipt_money|Add1~21_sumout\,
	cout => \receipt_money|Add1~22\);

-- Location: LABCELL_X55_Y8_N18
\receipt_money|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~25_sumout\ = SUM(( \receipt_money|total\(6) ) + ( GND ) + ( \receipt_money|Add0~22\ ))
-- \receipt_money|Add0~26\ = CARRY(( \receipt_money|total\(6) ) + ( GND ) + ( \receipt_money|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(6),
	cin => \receipt_money|Add0~22\,
	sumout => \receipt_money|Add0~25_sumout\,
	cout => \receipt_money|Add0~26\);

-- Location: LABCELL_X57_Y8_N57
\receipt_money|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux9~0_combout\ = ( \receipt_money|Add0~25_sumout\ & ( (!\type_of_money[1]~input_o\) # (\receipt_money|Add1~21_sumout\) ) ) # ( !\receipt_money|Add0~25_sumout\ & ( (\type_of_money[1]~input_o\ & \receipt_money|Add1~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datac => \receipt_money|ALT_INV_Add1~21_sumout\,
	dataf => \receipt_money|ALT_INV_Add0~25_sumout\,
	combout => \receipt_money|Mux9~0_combout\);

-- Location: FF_X56_Y8_N17
\receipt_money|total[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~21_sumout\,
	asdata => \receipt_money|Mux9~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(6));

-- Location: LABCELL_X56_Y8_N18
\receipt_money|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~25_sumout\ = SUM(( \receipt_money|total\(7) ) + ( GND ) + ( \receipt_money|Add2~22\ ))
-- \receipt_money|Add2~26\ = CARRY(( \receipt_money|total\(7) ) + ( GND ) + ( \receipt_money|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(7),
	cin => \receipt_money|Add2~22\,
	sumout => \receipt_money|Add2~25_sumout\,
	cout => \receipt_money|Add2~26\);

-- Location: LABCELL_X55_Y8_N21
\receipt_money|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~29_sumout\ = SUM(( \receipt_money|total\(7) ) + ( GND ) + ( \receipt_money|Add0~26\ ))
-- \receipt_money|Add0~30\ = CARRY(( \receipt_money|total\(7) ) + ( GND ) + ( \receipt_money|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(7),
	cin => \receipt_money|Add0~26\,
	sumout => \receipt_money|Add0~29_sumout\,
	cout => \receipt_money|Add0~30\);

-- Location: LABCELL_X57_Y8_N18
\receipt_money|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~25_sumout\ = SUM(( \receipt_money|total\(7) ) + ( GND ) + ( \receipt_money|Add1~22\ ))
-- \receipt_money|Add1~26\ = CARRY(( \receipt_money|total\(7) ) + ( GND ) + ( \receipt_money|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(7),
	cin => \receipt_money|Add1~22\,
	sumout => \receipt_money|Add1~25_sumout\,
	cout => \receipt_money|Add1~26\);

-- Location: LABCELL_X55_Y8_N51
\receipt_money|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux8~0_combout\ = ( \receipt_money|Add1~25_sumout\ & ( (\receipt_money|Add0~29_sumout\) # (\type_of_money[1]~input_o\) ) ) # ( !\receipt_money|Add1~25_sumout\ & ( (!\type_of_money[1]~input_o\ & \receipt_money|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_type_of_money[1]~input_o\,
	datad => \receipt_money|ALT_INV_Add0~29_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~25_sumout\,
	combout => \receipt_money|Mux8~0_combout\);

-- Location: FF_X56_Y8_N20
\receipt_money|total[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~25_sumout\,
	asdata => \receipt_money|Mux8~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(7));

-- Location: LABCELL_X56_Y8_N21
\receipt_money|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~29_sumout\ = SUM(( \receipt_money|total\(8) ) + ( GND ) + ( \receipt_money|Add2~26\ ))
-- \receipt_money|Add2~30\ = CARRY(( \receipt_money|total\(8) ) + ( GND ) + ( \receipt_money|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total\(8),
	cin => \receipt_money|Add2~26\,
	sumout => \receipt_money|Add2~29_sumout\,
	cout => \receipt_money|Add2~30\);

-- Location: LABCELL_X57_Y8_N21
\receipt_money|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~29_sumout\ = SUM(( \receipt_money|total\(8) ) + ( GND ) + ( \receipt_money|Add1~26\ ))
-- \receipt_money|Add1~30\ = CARRY(( \receipt_money|total\(8) ) + ( GND ) + ( \receipt_money|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(8),
	cin => \receipt_money|Add1~26\,
	sumout => \receipt_money|Add1~29_sumout\,
	cout => \receipt_money|Add1~30\);

-- Location: LABCELL_X55_Y8_N24
\receipt_money|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~33_sumout\ = SUM(( \receipt_money|total\(8) ) + ( GND ) + ( \receipt_money|Add0~30\ ))
-- \receipt_money|Add0~34\ = CARRY(( \receipt_money|total\(8) ) + ( GND ) + ( \receipt_money|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(8),
	cin => \receipt_money|Add0~30\,
	sumout => \receipt_money|Add0~33_sumout\,
	cout => \receipt_money|Add0~34\);

-- Location: LABCELL_X57_Y8_N48
\receipt_money|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux7~0_combout\ = ( \receipt_money|Add0~33_sumout\ & ( (!\type_of_money[1]~input_o\) # (\receipt_money|Add1~29_sumout\) ) ) # ( !\receipt_money|Add0~33_sumout\ & ( (\type_of_money[1]~input_o\ & \receipt_money|Add1~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datad => \receipt_money|ALT_INV_Add1~29_sumout\,
	dataf => \receipt_money|ALT_INV_Add0~33_sumout\,
	combout => \receipt_money|Mux7~0_combout\);

-- Location: FF_X56_Y8_N23
\receipt_money|total[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~29_sumout\,
	asdata => \receipt_money|Mux7~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(8));

-- Location: LABCELL_X56_Y8_N24
\receipt_money|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~33_sumout\ = SUM(( \receipt_money|total\(9) ) + ( GND ) + ( \receipt_money|Add2~30\ ))
-- \receipt_money|Add2~34\ = CARRY(( \receipt_money|total\(9) ) + ( GND ) + ( \receipt_money|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(9),
	cin => \receipt_money|Add2~30\,
	sumout => \receipt_money|Add2~33_sumout\,
	cout => \receipt_money|Add2~34\);

-- Location: LABCELL_X55_Y8_N27
\receipt_money|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~37_sumout\ = SUM(( \receipt_money|total\(9) ) + ( GND ) + ( \receipt_money|Add0~34\ ))
-- \receipt_money|Add0~38\ = CARRY(( \receipt_money|total\(9) ) + ( GND ) + ( \receipt_money|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(9),
	cin => \receipt_money|Add0~34\,
	sumout => \receipt_money|Add0~37_sumout\,
	cout => \receipt_money|Add0~38\);

-- Location: LABCELL_X57_Y8_N24
\receipt_money|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~33_sumout\ = SUM(( \receipt_money|total\(9) ) + ( GND ) + ( \receipt_money|Add1~30\ ))
-- \receipt_money|Add1~34\ = CARRY(( \receipt_money|total\(9) ) + ( GND ) + ( \receipt_money|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(9),
	cin => \receipt_money|Add1~30\,
	sumout => \receipt_money|Add1~33_sumout\,
	cout => \receipt_money|Add1~34\);

-- Location: LABCELL_X57_Y8_N54
\receipt_money|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux6~0_combout\ = ( \receipt_money|Add1~33_sumout\ & ( (\receipt_money|Add0~37_sumout\) # (\type_of_money[1]~input_o\) ) ) # ( !\receipt_money|Add1~33_sumout\ & ( (!\type_of_money[1]~input_o\ & \receipt_money|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datad => \receipt_money|ALT_INV_Add0~37_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~33_sumout\,
	combout => \receipt_money|Mux6~0_combout\);

-- Location: FF_X56_Y8_N26
\receipt_money|total[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~33_sumout\,
	asdata => \receipt_money|Mux6~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(9));

-- Location: LABCELL_X56_Y8_N27
\receipt_money|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~37_sumout\ = SUM(( \receipt_money|total\(10) ) + ( GND ) + ( \receipt_money|Add2~34\ ))
-- \receipt_money|Add2~38\ = CARRY(( \receipt_money|total\(10) ) + ( GND ) + ( \receipt_money|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total\(10),
	cin => \receipt_money|Add2~34\,
	sumout => \receipt_money|Add2~37_sumout\,
	cout => \receipt_money|Add2~38\);

-- Location: LABCELL_X55_Y8_N30
\receipt_money|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~41_sumout\ = SUM(( \receipt_money|total\(10) ) + ( GND ) + ( \receipt_money|Add0~38\ ))
-- \receipt_money|Add0~42\ = CARRY(( \receipt_money|total\(10) ) + ( GND ) + ( \receipt_money|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(10),
	cin => \receipt_money|Add0~38\,
	sumout => \receipt_money|Add0~41_sumout\,
	cout => \receipt_money|Add0~42\);

-- Location: LABCELL_X57_Y8_N27
\receipt_money|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~37_sumout\ = SUM(( \receipt_money|total\(10) ) + ( GND ) + ( \receipt_money|Add1~34\ ))
-- \receipt_money|Add1~38\ = CARRY(( \receipt_money|total\(10) ) + ( GND ) + ( \receipt_money|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(10),
	cin => \receipt_money|Add1~34\,
	sumout => \receipt_money|Add1~37_sumout\,
	cout => \receipt_money|Add1~38\);

-- Location: LABCELL_X55_Y8_N48
\receipt_money|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux5~0_combout\ = ( \receipt_money|Add1~37_sumout\ & ( (\type_of_money[1]~input_o\) # (\receipt_money|Add0~41_sumout\) ) ) # ( !\receipt_money|Add1~37_sumout\ & ( (\receipt_money|Add0~41_sumout\ & !\type_of_money[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_type_of_money[1]~input_o\,
	dataf => \receipt_money|ALT_INV_Add1~37_sumout\,
	combout => \receipt_money|Mux5~0_combout\);

-- Location: FF_X56_Y8_N29
\receipt_money|total[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~37_sumout\,
	asdata => \receipt_money|Mux5~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(10));

-- Location: LABCELL_X56_Y8_N30
\receipt_money|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~41_sumout\ = SUM(( \receipt_money|total\(11) ) + ( GND ) + ( \receipt_money|Add2~38\ ))
-- \receipt_money|Add2~42\ = CARRY(( \receipt_money|total\(11) ) + ( GND ) + ( \receipt_money|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total\(11),
	cin => \receipt_money|Add2~38\,
	sumout => \receipt_money|Add2~41_sumout\,
	cout => \receipt_money|Add2~42\);

-- Location: LABCELL_X55_Y8_N33
\receipt_money|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~45_sumout\ = SUM(( \receipt_money|total\(11) ) + ( GND ) + ( \receipt_money|Add0~42\ ))
-- \receipt_money|Add0~46\ = CARRY(( \receipt_money|total\(11) ) + ( GND ) + ( \receipt_money|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total\(11),
	cin => \receipt_money|Add0~42\,
	sumout => \receipt_money|Add0~45_sumout\,
	cout => \receipt_money|Add0~46\);

-- Location: LABCELL_X57_Y8_N30
\receipt_money|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~41_sumout\ = SUM(( \receipt_money|total\(11) ) + ( GND ) + ( \receipt_money|Add1~38\ ))
-- \receipt_money|Add1~42\ = CARRY(( \receipt_money|total\(11) ) + ( GND ) + ( \receipt_money|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(11),
	cin => \receipt_money|Add1~38\,
	sumout => \receipt_money|Add1~41_sumout\,
	cout => \receipt_money|Add1~42\);

-- Location: LABCELL_X55_Y8_N57
\receipt_money|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux4~0_combout\ = ( \receipt_money|Add1~41_sumout\ & ( (\type_of_money[1]~input_o\) # (\receipt_money|Add0~45_sumout\) ) ) # ( !\receipt_money|Add1~41_sumout\ & ( (\receipt_money|Add0~45_sumout\ & !\type_of_money[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_Add0~45_sumout\,
	datac => \ALT_INV_type_of_money[1]~input_o\,
	dataf => \receipt_money|ALT_INV_Add1~41_sumout\,
	combout => \receipt_money|Mux4~0_combout\);

-- Location: FF_X56_Y8_N32
\receipt_money|total[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~41_sumout\,
	asdata => \receipt_money|Mux4~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(11));

-- Location: LABCELL_X56_Y8_N33
\receipt_money|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~45_sumout\ = SUM(( \receipt_money|total\(12) ) + ( GND ) + ( \receipt_money|Add2~42\ ))
-- \receipt_money|Add2~46\ = CARRY(( \receipt_money|total\(12) ) + ( GND ) + ( \receipt_money|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total\(12),
	cin => \receipt_money|Add2~42\,
	sumout => \receipt_money|Add2~45_sumout\,
	cout => \receipt_money|Add2~46\);

-- Location: LABCELL_X55_Y8_N36
\receipt_money|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~49_sumout\ = SUM(( \receipt_money|total\(12) ) + ( GND ) + ( \receipt_money|Add0~46\ ))
-- \receipt_money|Add0~50\ = CARRY(( \receipt_money|total\(12) ) + ( GND ) + ( \receipt_money|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(12),
	cin => \receipt_money|Add0~46\,
	sumout => \receipt_money|Add0~49_sumout\,
	cout => \receipt_money|Add0~50\);

-- Location: LABCELL_X57_Y8_N33
\receipt_money|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~45_sumout\ = SUM(( \receipt_money|total\(12) ) + ( GND ) + ( \receipt_money|Add1~42\ ))
-- \receipt_money|Add1~46\ = CARRY(( \receipt_money|total\(12) ) + ( GND ) + ( \receipt_money|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(12),
	cin => \receipt_money|Add1~42\,
	sumout => \receipt_money|Add1~45_sumout\,
	cout => \receipt_money|Add1~46\);

-- Location: LABCELL_X56_Y8_N54
\receipt_money|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux3~0_combout\ = ( \receipt_money|Add1~45_sumout\ & ( (\receipt_money|Add0~49_sumout\) # (\type_of_money[1]~input_o\) ) ) # ( !\receipt_money|Add1~45_sumout\ & ( (!\type_of_money[1]~input_o\ & \receipt_money|Add0~49_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datad => \receipt_money|ALT_INV_Add0~49_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~45_sumout\,
	combout => \receipt_money|Mux3~0_combout\);

-- Location: FF_X56_Y8_N35
\receipt_money|total[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~45_sumout\,
	asdata => \receipt_money|Mux3~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(12));

-- Location: LABCELL_X56_Y8_N36
\receipt_money|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~49_sumout\ = SUM(( \receipt_money|total\(13) ) + ( GND ) + ( \receipt_money|Add2~46\ ))
-- \receipt_money|Add2~50\ = CARRY(( \receipt_money|total\(13) ) + ( GND ) + ( \receipt_money|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(13),
	cin => \receipt_money|Add2~46\,
	sumout => \receipt_money|Add2~49_sumout\,
	cout => \receipt_money|Add2~50\);

-- Location: LABCELL_X55_Y8_N39
\receipt_money|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~53_sumout\ = SUM(( \receipt_money|total\(13) ) + ( GND ) + ( \receipt_money|Add0~50\ ))
-- \receipt_money|Add0~54\ = CARRY(( \receipt_money|total\(13) ) + ( GND ) + ( \receipt_money|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(13),
	cin => \receipt_money|Add0~50\,
	sumout => \receipt_money|Add0~53_sumout\,
	cout => \receipt_money|Add0~54\);

-- Location: LABCELL_X57_Y8_N36
\receipt_money|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~49_sumout\ = SUM(( \receipt_money|total\(13) ) + ( GND ) + ( \receipt_money|Add1~46\ ))
-- \receipt_money|Add1~50\ = CARRY(( \receipt_money|total\(13) ) + ( GND ) + ( \receipt_money|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(13),
	cin => \receipt_money|Add1~46\,
	sumout => \receipt_money|Add1~49_sumout\,
	cout => \receipt_money|Add1~50\);

-- Location: LABCELL_X56_Y8_N48
\receipt_money|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux2~0_combout\ = ( \receipt_money|Add1~49_sumout\ & ( (\receipt_money|Add0~53_sumout\) # (\type_of_money[1]~input_o\) ) ) # ( !\receipt_money|Add1~49_sumout\ & ( (!\type_of_money[1]~input_o\ & \receipt_money|Add0~53_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_type_of_money[1]~input_o\,
	datac => \receipt_money|ALT_INV_Add0~53_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~49_sumout\,
	combout => \receipt_money|Mux2~0_combout\);

-- Location: FF_X56_Y8_N38
\receipt_money|total[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~49_sumout\,
	asdata => \receipt_money|Mux2~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(13));

-- Location: LABCELL_X56_Y8_N39
\receipt_money|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~53_sumout\ = SUM(( \receipt_money|total\(14) ) + ( GND ) + ( \receipt_money|Add2~50\ ))
-- \receipt_money|Add2~54\ = CARRY(( \receipt_money|total\(14) ) + ( GND ) + ( \receipt_money|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(14),
	cin => \receipt_money|Add2~50\,
	sumout => \receipt_money|Add2~53_sumout\,
	cout => \receipt_money|Add2~54\);

-- Location: LABCELL_X55_Y8_N42
\receipt_money|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~57_sumout\ = SUM(( \receipt_money|total\(14) ) + ( GND ) + ( \receipt_money|Add0~54\ ))
-- \receipt_money|Add0~58\ = CARRY(( \receipt_money|total\(14) ) + ( GND ) + ( \receipt_money|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(14),
	cin => \receipt_money|Add0~54\,
	sumout => \receipt_money|Add0~57_sumout\,
	cout => \receipt_money|Add0~58\);

-- Location: LABCELL_X57_Y8_N39
\receipt_money|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~53_sumout\ = SUM(( \receipt_money|total\(14) ) + ( GND ) + ( \receipt_money|Add1~50\ ))
-- \receipt_money|Add1~54\ = CARRY(( \receipt_money|total\(14) ) + ( GND ) + ( \receipt_money|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(14),
	cin => \receipt_money|Add1~50\,
	sumout => \receipt_money|Add1~53_sumout\,
	cout => \receipt_money|Add1~54\);

-- Location: LABCELL_X56_Y8_N57
\receipt_money|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux1~0_combout\ = ( \receipt_money|Add1~53_sumout\ & ( (\receipt_money|Add0~57_sumout\) # (\type_of_money[1]~input_o\) ) ) # ( !\receipt_money|Add1~53_sumout\ & ( (!\type_of_money[1]~input_o\ & \receipt_money|Add0~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_type_of_money[1]~input_o\,
	datad => \receipt_money|ALT_INV_Add0~57_sumout\,
	dataf => \receipt_money|ALT_INV_Add1~53_sumout\,
	combout => \receipt_money|Mux1~0_combout\);

-- Location: FF_X56_Y8_N41
\receipt_money|total[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~53_sumout\,
	asdata => \receipt_money|Mux1~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(14));

-- Location: LABCELL_X56_Y8_N42
\receipt_money|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add2~57_sumout\ = SUM(( \receipt_money|total\(15) ) + ( GND ) + ( \receipt_money|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total\(15),
	cin => \receipt_money|Add2~54\,
	sumout => \receipt_money|Add2~57_sumout\);

-- Location: LABCELL_X55_Y8_N45
\receipt_money|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add0~61_sumout\ = SUM(( \receipt_money|total\(15) ) + ( GND ) + ( \receipt_money|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \receipt_money|ALT_INV_total\(15),
	cin => \receipt_money|Add0~58\,
	sumout => \receipt_money|Add0~61_sumout\);

-- Location: LABCELL_X57_Y8_N42
\receipt_money|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Add1~57_sumout\ = SUM(( \receipt_money|total\(15) ) + ( GND ) + ( \receipt_money|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \receipt_money|ALT_INV_total\(15),
	cin => \receipt_money|Add1~54\,
	sumout => \receipt_money|Add1~57_sumout\);

-- Location: LABCELL_X56_Y8_N51
\receipt_money|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receipt_money|Mux0~0_combout\ = ( \receipt_money|Add1~57_sumout\ & ( (\type_of_money[1]~input_o\) # (\receipt_money|Add0~61_sumout\) ) ) # ( !\receipt_money|Add1~57_sumout\ & ( (\receipt_money|Add0~61_sumout\ & !\type_of_money[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_Add0~61_sumout\,
	datab => \ALT_INV_type_of_money[1]~input_o\,
	dataf => \receipt_money|ALT_INV_Add1~57_sumout\,
	combout => \receipt_money|Mux0~0_combout\);

-- Location: FF_X56_Y8_N44
\receipt_money|total[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \receipt_money|Add2~57_sumout\,
	asdata => \receipt_money|Mux0~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => \ALT_INV_type_of_money[0]~input_o\,
	ena => \ALT_INV_key1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receipt_money|total\(15));

-- Location: DSP_X54_Y8_N0
\receipt_money|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 7,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \receipt_money|Mult0~mac_AX_bus\,
	ay => \receipt_money|Mult0~mac_AY_bus\,
	resulta => \receipt_money|Mult0~mac_RESULTA_bus\);

-- Location: MLABCELL_X84_Y16_N51
\hexse2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux6~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( (!\receipt_money|total_value\(2) & \receipt_money|total_value\(3)) ) ) ) # ( !\receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( 
-- !\receipt_money|total_value\(2) $ (\receipt_money|total_value\(3)) ) ) ) # ( !\receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( (\receipt_money|total_value\(2) & !\receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011000011110000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datac => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y16_N42
\hexse2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux5~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( \receipt_money|total_value\(3) ) ) ) # ( !\receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( (\receipt_money|total_value\(2) & 
-- !\receipt_money|total_value\(3)) ) ) ) # ( \receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( \receipt_money|total_value\(2) ) ) ) # ( !\receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( 
-- (\receipt_money|total_value\(2) & \receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110011001100110011000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datad => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y16_N12
\hexse2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux4~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( (\receipt_money|total_value\(2) & \receipt_money|total_value\(3)) ) ) ) # ( \receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( 
-- !\receipt_money|total_value\(2) $ (\receipt_money|total_value\(3)) ) ) ) # ( !\receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( (\receipt_money|total_value\(2) & \receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011000011001100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datad => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y16_N33
\hexse2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux3~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( \receipt_money|total_value\(2) ) ) ) # ( !\receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( (!\receipt_money|total_value\(2) & 
-- !\receipt_money|total_value\(3)) ) ) ) # ( \receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( (!\receipt_money|total_value\(2) & \receipt_money|total_value\(3)) ) ) ) # ( !\receipt_money|total_value\(1) & ( 
-- !\receipt_money|total_value\(0) & ( (\receipt_money|total_value\(2) & !\receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011000000110011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datac => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y16_N36
\hexse2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux2~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( !\receipt_money|total_value\(3) ) ) ) # ( !\receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( (!\receipt_money|total_value\(2)) # 
-- (!\receipt_money|total_value\(3)) ) ) ) # ( !\receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( (\receipt_money|total_value\(2) & !\receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000011111111110011001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datad => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y16_N21
\hexse2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux1~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( !\receipt_money|total_value\(3) ) ) ) # ( !\receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( !\receipt_money|total_value\(2) $ 
-- (\receipt_money|total_value\(3)) ) ) ) # ( \receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( (!\receipt_money|total_value\(2) & !\receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datac => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y16_N0
\hexse2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse2|Mux0~0_combout\ = ( \receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( (!\receipt_money|total_value\(2)) # (\receipt_money|total_value\(3)) ) ) ) # ( !\receipt_money|total_value\(1) & ( \receipt_money|total_value\(0) & ( 
-- (\receipt_money|total_value\(3)) # (\receipt_money|total_value\(2)) ) ) ) # ( \receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) ) ) # ( !\receipt_money|total_value\(1) & ( !\receipt_money|total_value\(0) & ( 
-- !\receipt_money|total_value\(2) $ (!\receipt_money|total_value\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100111111111111111100110011111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(2),
	datad => \receipt_money|ALT_INV_total_value\(3),
	datae => \receipt_money|ALT_INV_total_value\(1),
	dataf => \receipt_money|ALT_INV_total_value\(0),
	combout => \hexse2|Mux0~0_combout\);

-- Location: LABCELL_X56_Y9_N51
\hexseg3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux6~0_combout\ = ( \receipt_money|total_value\(4) & ( (!\receipt_money|total_value\(5) & (!\receipt_money|total_value\(6) $ (\receipt_money|total_value\(7)))) # (\receipt_money|total_value\(5) & (!\receipt_money|total_value\(6) & 
-- \receipt_money|total_value\(7))) ) ) # ( !\receipt_money|total_value\(4) & ( (!\receipt_money|total_value\(5) & (\receipt_money|total_value\(6) & !\receipt_money|total_value\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101000000101101000001010000000001010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(5),
	datac => \receipt_money|ALT_INV_total_value\(6),
	datad => \receipt_money|ALT_INV_total_value\(7),
	datae => \receipt_money|ALT_INV_total_value\(4),
	combout => \hexseg3|Mux6~0_combout\);

-- Location: LABCELL_X56_Y9_N36
\hexseg3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux5~0_combout\ = ( \receipt_money|total_value\(7) & ( (!\receipt_money|total_value\(4) & (\receipt_money|total_value\(6))) # (\receipt_money|total_value\(4) & ((\receipt_money|total_value\(5)))) ) ) # ( !\receipt_money|total_value\(7) & ( 
-- (\receipt_money|total_value\(6) & (!\receipt_money|total_value\(4) $ (!\receipt_money|total_value\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010001001110010011100010010000100100010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(4),
	datab => \receipt_money|ALT_INV_total_value\(6),
	datac => \receipt_money|ALT_INV_total_value\(5),
	datae => \receipt_money|ALT_INV_total_value\(7),
	combout => \hexseg3|Mux5~0_combout\);

-- Location: LABCELL_X53_Y8_N15
\hexseg3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux4~0_combout\ = ( \receipt_money|total_value\(6) & ( \receipt_money|total_value\(7) & ( (!\receipt_money|total_value\(4)) # (\receipt_money|total_value\(5)) ) ) ) # ( !\receipt_money|total_value\(6) & ( !\receipt_money|total_value\(7) & ( 
-- (!\receipt_money|total_value\(4) & \receipt_money|total_value\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000000000000000000001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(4),
	datab => \receipt_money|ALT_INV_total_value\(5),
	datae => \receipt_money|ALT_INV_total_value\(6),
	dataf => \receipt_money|ALT_INV_total_value\(7),
	combout => \hexseg3|Mux4~0_combout\);

-- Location: LABCELL_X53_Y8_N54
\hexseg3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux3~0_combout\ = ( \receipt_money|total_value\(6) & ( \receipt_money|total_value\(5) & ( \receipt_money|total_value\(4) ) ) ) # ( !\receipt_money|total_value\(6) & ( \receipt_money|total_value\(5) & ( (\receipt_money|total_value\(7) & 
-- !\receipt_money|total_value\(4)) ) ) ) # ( \receipt_money|total_value\(6) & ( !\receipt_money|total_value\(5) & ( (!\receipt_money|total_value\(7) & !\receipt_money|total_value\(4)) ) ) ) # ( !\receipt_money|total_value\(6) & ( 
-- !\receipt_money|total_value\(5) & ( (!\receipt_money|total_value\(7) & \receipt_money|total_value\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000001010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(7),
	datac => \receipt_money|ALT_INV_total_value\(4),
	datae => \receipt_money|ALT_INV_total_value\(6),
	dataf => \receipt_money|ALT_INV_total_value\(5),
	combout => \hexseg3|Mux3~0_combout\);

-- Location: LABCELL_X56_Y9_N30
\hexseg3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux2~0_combout\ = ( \receipt_money|total_value\(6) & ( (!\receipt_money|total_value\(7) & ((!\receipt_money|total_value\(5)) # (\receipt_money|total_value\(4)))) ) ) # ( !\receipt_money|total_value\(6) & ( (\receipt_money|total_value\(4) & 
-- ((!\receipt_money|total_value\(5)) # (!\receipt_money|total_value\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(5),
	datac => \receipt_money|ALT_INV_total_value\(7),
	datad => \receipt_money|ALT_INV_total_value\(4),
	dataf => \receipt_money|ALT_INV_total_value\(6),
	combout => \hexseg3|Mux2~0_combout\);

-- Location: LABCELL_X56_Y9_N33
\hexseg3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux1~0_combout\ = ( \receipt_money|total_value\(6) & ( (\receipt_money|total_value\(4) & (!\receipt_money|total_value\(5) $ (!\receipt_money|total_value\(7)))) ) ) # ( !\receipt_money|total_value\(6) & ( (!\receipt_money|total_value\(7) & 
-- ((\receipt_money|total_value\(5)) # (\receipt_money|total_value\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(4),
	datab => \receipt_money|ALT_INV_total_value\(5),
	datad => \receipt_money|ALT_INV_total_value\(7),
	dataf => \receipt_money|ALT_INV_total_value\(6),
	combout => \hexseg3|Mux1~0_combout\);

-- Location: LABCELL_X56_Y9_N54
\hexseg3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg3|Mux0~0_combout\ = ( \receipt_money|total_value\(5) & ( (!\receipt_money|total_value\(6)) # ((!\receipt_money|total_value\(4)) # (\receipt_money|total_value\(7))) ) ) # ( !\receipt_money|total_value\(5) & ( (!\receipt_money|total_value\(6) & 
-- ((\receipt_money|total_value\(7)))) # (\receipt_money|total_value\(6) & ((!\receipt_money|total_value\(7)) # (\receipt_money|total_value\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(6),
	datac => \receipt_money|ALT_INV_total_value\(4),
	datad => \receipt_money|ALT_INV_total_value\(7),
	dataf => \receipt_money|ALT_INV_total_value\(5),
	combout => \hexseg3|Mux0~0_combout\);

-- Location: LABCELL_X56_Y9_N57
\hexse4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux6~0_combout\ = ( \receipt_money|total_value\(11) & ( (\receipt_money|total_value\(8) & (!\receipt_money|total_value\(9) $ (!\receipt_money|total_value\(10)))) ) ) # ( !\receipt_money|total_value\(11) & ( (!\receipt_money|total_value\(9) & 
-- (!\receipt_money|total_value\(10) $ (!\receipt_money|total_value\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(9),
	datac => \receipt_money|ALT_INV_total_value\(10),
	datad => \receipt_money|ALT_INV_total_value\(8),
	dataf => \receipt_money|ALT_INV_total_value\(11),
	combout => \hexse4|Mux6~0_combout\);

-- Location: LABCELL_X56_Y9_N24
\hexse4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux5~0_combout\ = ( \receipt_money|total_value\(11) & ( (!\receipt_money|total_value\(8) & ((\receipt_money|total_value\(10)))) # (\receipt_money|total_value\(8) & (\receipt_money|total_value\(9))) ) ) # ( !\receipt_money|total_value\(11) & ( 
-- (\receipt_money|total_value\(10) & (!\receipt_money|total_value\(8) $ (!\receipt_money|total_value\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(8),
	datac => \receipt_money|ALT_INV_total_value\(9),
	datad => \receipt_money|ALT_INV_total_value\(10),
	dataf => \receipt_money|ALT_INV_total_value\(11),
	combout => \hexse4|Mux5~0_combout\);

-- Location: LABCELL_X56_Y9_N27
\hexse4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux4~0_combout\ = ( \receipt_money|total_value\(9) & ( (!\receipt_money|total_value\(11) & (!\receipt_money|total_value\(8) & !\receipt_money|total_value\(10))) # (\receipt_money|total_value\(11) & ((\receipt_money|total_value\(10)))) ) ) # ( 
-- !\receipt_money|total_value\(9) & ( (\receipt_money|total_value\(11) & (!\receipt_money|total_value\(8) & \receipt_money|total_value\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(11),
	datab => \receipt_money|ALT_INV_total_value\(8),
	datac => \receipt_money|ALT_INV_total_value\(10),
	dataf => \receipt_money|ALT_INV_total_value\(9),
	combout => \hexse4|Mux4~0_combout\);

-- Location: LABCELL_X56_Y9_N0
\hexse4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux3~0_combout\ = ( \receipt_money|total_value\(11) & ( (\receipt_money|total_value\(9) & (!\receipt_money|total_value\(8) $ (\receipt_money|total_value\(10)))) ) ) # ( !\receipt_money|total_value\(11) & ( (!\receipt_money|total_value\(8) & 
-- (!\receipt_money|total_value\(9) & \receipt_money|total_value\(10))) # (\receipt_money|total_value\(8) & (!\receipt_money|total_value\(9) $ (\receipt_money|total_value\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(8),
	datac => \receipt_money|ALT_INV_total_value\(9),
	datad => \receipt_money|ALT_INV_total_value\(10),
	dataf => \receipt_money|ALT_INV_total_value\(11),
	combout => \hexse4|Mux3~0_combout\);

-- Location: LABCELL_X56_Y9_N3
\hexse4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux2~0_combout\ = ( \receipt_money|total_value\(9) & ( (!\receipt_money|total_value\(11) & \receipt_money|total_value\(8)) ) ) # ( !\receipt_money|total_value\(9) & ( (!\receipt_money|total_value\(10) & ((\receipt_money|total_value\(8)))) # 
-- (\receipt_money|total_value\(10) & (!\receipt_money|total_value\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(11),
	datab => \receipt_money|ALT_INV_total_value\(8),
	datac => \receipt_money|ALT_INV_total_value\(10),
	dataf => \receipt_money|ALT_INV_total_value\(9),
	combout => \hexse4|Mux2~0_combout\);

-- Location: LABCELL_X56_Y9_N42
\hexse4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux1~0_combout\ = ( \receipt_money|total_value\(9) & ( (!\receipt_money|total_value\(11) & ((!\receipt_money|total_value\(10)) # (\receipt_money|total_value\(8)))) ) ) # ( !\receipt_money|total_value\(9) & ( (\receipt_money|total_value\(8) & 
-- (!\receipt_money|total_value\(11) $ (\receipt_money|total_value\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \receipt_money|ALT_INV_total_value\(8),
	datac => \receipt_money|ALT_INV_total_value\(11),
	datad => \receipt_money|ALT_INV_total_value\(10),
	dataf => \receipt_money|ALT_INV_total_value\(9),
	combout => \hexse4|Mux1~0_combout\);

-- Location: LABCELL_X56_Y9_N45
\hexse4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexse4|Mux0~0_combout\ = ( \receipt_money|total_value\(9) & ( ((!\receipt_money|total_value\(8)) # (!\receipt_money|total_value\(10))) # (\receipt_money|total_value\(11)) ) ) # ( !\receipt_money|total_value\(9) & ( (!\receipt_money|total_value\(11) & 
-- ((\receipt_money|total_value\(10)))) # (\receipt_money|total_value\(11) & ((!\receipt_money|total_value\(10)) # (\receipt_money|total_value\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(11),
	datab => \receipt_money|ALT_INV_total_value\(8),
	datac => \receipt_money|ALT_INV_total_value\(10),
	dataf => \receipt_money|ALT_INV_total_value\(9),
	combout => \hexse4|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y16_N57
\hexseg5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux6~0_combout\ = ( \receipt_money|total_value\(12) & ( (!\receipt_money|total_value\(13) & (!\receipt_money|total_value\(15) $ (\receipt_money|total_value\(14)))) # (\receipt_money|total_value\(13) & (\receipt_money|total_value\(15) & 
-- !\receipt_money|total_value\(14))) ) ) # ( !\receipt_money|total_value\(12) & ( (!\receipt_money|total_value\(13) & (!\receipt_money|total_value\(15) & \receipt_money|total_value\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(13),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datac => \receipt_money|ALT_INV_total_value\(14),
	dataf => \receipt_money|ALT_INV_total_value\(12),
	combout => \hexseg5|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y16_N24
\hexseg5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux5~0_combout\ = ( \receipt_money|total_value\(14) & ( (!\receipt_money|total_value\(12) & ((\receipt_money|total_value\(13)) # (\receipt_money|total_value\(15)))) # (\receipt_money|total_value\(12) & (!\receipt_money|total_value\(15) $ 
-- (\receipt_money|total_value\(13)))) ) ) # ( !\receipt_money|total_value\(14) & ( (\receipt_money|total_value\(12) & (\receipt_money|total_value\(15) & \receipt_money|total_value\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(12),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datac => \receipt_money|ALT_INV_total_value\(13),
	dataf => \receipt_money|ALT_INV_total_value\(14),
	combout => \hexseg5|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y16_N27
\hexseg5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux4~0_combout\ = ( \receipt_money|total_value\(13) & ( (!\receipt_money|total_value\(15) & (!\receipt_money|total_value\(12) & !\receipt_money|total_value\(14))) # (\receipt_money|total_value\(15) & ((\receipt_money|total_value\(14)))) ) ) # ( 
-- !\receipt_money|total_value\(13) & ( (!\receipt_money|total_value\(12) & (\receipt_money|total_value\(15) & \receipt_money|total_value\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(12),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datac => \receipt_money|ALT_INV_total_value\(14),
	dataf => \receipt_money|ALT_INV_total_value\(13),
	combout => \hexseg5|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y16_N6
\hexseg5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux3~0_combout\ = ( \receipt_money|total_value\(14) & ( (!\receipt_money|total_value\(12) & (!\receipt_money|total_value\(15) & !\receipt_money|total_value\(13))) # (\receipt_money|total_value\(12) & ((\receipt_money|total_value\(13)))) ) ) # ( 
-- !\receipt_money|total_value\(14) & ( (!\receipt_money|total_value\(12) & (\receipt_money|total_value\(15) & \receipt_money|total_value\(13))) # (\receipt_money|total_value\(12) & (!\receipt_money|total_value\(15) & !\receipt_money|total_value\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(12),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datac => \receipt_money|ALT_INV_total_value\(13),
	dataf => \receipt_money|ALT_INV_total_value\(14),
	combout => \hexseg5|Mux3~0_combout\);

-- Location: LABCELL_X56_Y9_N6
\hexseg5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux2~0_combout\ = ( \receipt_money|total_value\(13) & ( (\receipt_money|total_value\(12) & !\receipt_money|total_value\(15)) ) ) # ( !\receipt_money|total_value\(13) & ( (!\receipt_money|total_value\(14) & (\receipt_money|total_value\(12))) # 
-- (\receipt_money|total_value\(14) & ((!\receipt_money|total_value\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010101011100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(12),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datad => \receipt_money|ALT_INV_total_value\(14),
	dataf => \receipt_money|ALT_INV_total_value\(13),
	combout => \hexseg5|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y16_N9
\hexseg5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux1~0_combout\ = ( \receipt_money|total_value\(13) & ( (!\receipt_money|total_value\(15) & ((!\receipt_money|total_value\(14)) # (\receipt_money|total_value\(12)))) ) ) # ( !\receipt_money|total_value\(13) & ( (\receipt_money|total_value\(12) & 
-- (!\receipt_money|total_value\(15) $ (\receipt_money|total_value\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(12),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datac => \receipt_money|ALT_INV_total_value\(14),
	dataf => \receipt_money|ALT_INV_total_value\(13),
	combout => \hexseg5|Mux1~0_combout\);

-- Location: LABCELL_X56_Y9_N9
\hexseg5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexseg5|Mux0~0_combout\ = ( \receipt_money|total_value\(13) & ( (!\receipt_money|total_value\(12)) # ((!\receipt_money|total_value\(14)) # (\receipt_money|total_value\(15))) ) ) # ( !\receipt_money|total_value\(13) & ( (!\receipt_money|total_value\(15) & 
-- ((\receipt_money|total_value\(14)))) # (\receipt_money|total_value\(15) & ((!\receipt_money|total_value\(14)) # (\receipt_money|total_value\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101001111010011110111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \receipt_money|ALT_INV_total_value\(12),
	datab => \receipt_money|ALT_INV_total_value\(15),
	datac => \receipt_money|ALT_INV_total_value\(14),
	dataf => \receipt_money|ALT_INV_total_value\(13),
	combout => \hexseg5|Mux0~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\key2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\input_value[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(0),
	o => \input_value[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\input_value[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(1),
	o => \input_value[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\input_value[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(2),
	o => \input_value[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\input_value[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(3),
	o => \input_value[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\input_value[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(4),
	o => \input_value[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\input_value[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(5),
	o => \input_value[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\input_value[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(6),
	o => \input_value[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\input_value[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_value(7),
	o => \input_value[7]~input_o\);

-- Location: LABCELL_X51_Y23_N0
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


