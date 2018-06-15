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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/12/2018 20:38:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          stock_component
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY stock_component_vhd_vec_tst IS
END stock_component_vhd_vec_tst;
ARCHITECTURE stock_component_arch OF stock_component_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL input_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL positive_signal : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL total_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT stock_component
	PORT (
	clock : IN STD_LOGIC;
	input_value : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	load : IN STD_LOGIC;
	positive_signal : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	total_value : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : stock_component
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	input_value => input_value,
	load => load,
	positive_signal => positive_signal,
	reset => reset,
	total_value => total_value
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 30000 ps;
	FOR i IN 1 TO 16
	LOOP
		clock <= '0';
		WAIT FOR 30000 ps;
		clock <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- input_value[7]
t_prcs_input_value_7: PROCESS
BEGIN
	input_value(7) <= '0';
WAIT;
END PROCESS t_prcs_input_value_7;
-- input_value[6]
t_prcs_input_value_6: PROCESS
BEGIN
	input_value(6) <= '0';
WAIT;
END PROCESS t_prcs_input_value_6;
-- input_value[5]
t_prcs_input_value_5: PROCESS
BEGIN
	input_value(5) <= '0';
	WAIT FOR 640000 ps;
	input_value(5) <= '1';
WAIT;
END PROCESS t_prcs_input_value_5;
-- input_value[4]
t_prcs_input_value_4: PROCESS
BEGIN
	input_value(4) <= '0';
	WAIT FOR 80000 ps;
	input_value(4) <= '1';
	WAIT FOR 20000 ps;
	input_value(4) <= '0';
	WAIT FOR 220000 ps;
	input_value(4) <= '1';
	WAIT FOR 320000 ps;
	input_value(4) <= '0';
	WAIT FOR 320000 ps;
	input_value(4) <= '1';
WAIT;
END PROCESS t_prcs_input_value_4;
-- input_value[3]
t_prcs_input_value_3: PROCESS
BEGIN
	input_value(3) <= '0';
	WAIT FOR 160000 ps;
	input_value(3) <= '1';
	WAIT FOR 160000 ps;
	FOR i IN 1 TO 2
	LOOP
		input_value(3) <= '0';
		WAIT FOR 160000 ps;
		input_value(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	input_value(3) <= '0';
WAIT;
END PROCESS t_prcs_input_value_3;
-- input_value[2]
t_prcs_input_value_2: PROCESS
BEGIN
	input_value(2) <= '0';
	WAIT FOR 80000 ps;
	input_value(2) <= '1';
	WAIT FOR 80000 ps;
	input_value(2) <= '0';
	WAIT FOR 80000 ps;
	input_value(2) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 4
	LOOP
		input_value(2) <= '0';
		WAIT FOR 80000 ps;
		input_value(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	input_value(2) <= '0';
WAIT;
END PROCESS t_prcs_input_value_2;
-- input_value[1]
t_prcs_input_value_1: PROCESS
BEGIN
	input_value(1) <= '0';
	WAIT FOR 40000 ps;
	input_value(1) <= '1';
	WAIT FOR 60000 ps;
	input_value(1) <= '0';
	WAIT FOR 20000 ps;
	input_value(1) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 10
	LOOP
		input_value(1) <= '0';
		WAIT FOR 40000 ps;
		input_value(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	input_value(1) <= '0';
WAIT;
END PROCESS t_prcs_input_value_1;
-- input_value[0]
t_prcs_input_value_0: PROCESS
BEGIN
	input_value(0) <= '0';
	WAIT FOR 20000 ps;
	input_value(0) <= '1';
	WAIT FOR 20000 ps;
	input_value(0) <= '0';
	WAIT FOR 10000 ps;
	input_value(0) <= '1';
	WAIT FOR 70000 ps;
	input_value(0) <= '0';
	WAIT FOR 20000 ps;
	input_value(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 21
	LOOP
		input_value(0) <= '0';
		WAIT FOR 20000 ps;
		input_value(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_input_value_0;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- positive_signal
t_prcs_positive_signal: PROCESS
BEGIN
	positive_signal <= '0';
WAIT;
END PROCESS t_prcs_positive_signal;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END stock_component_arch;
