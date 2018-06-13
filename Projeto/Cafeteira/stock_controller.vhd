library ieee;
use ieee.std_logic_1164.all;

entity stock_controller is
	port(
	clock: 				in std_logic; -- key3
	resetn: 		 		in std_logic; -- key0
	
	key1: 		 		in std_logic;
	key2:					in std_logic; 
	
	input_value: 		in std_logic_vector(7 downto 0); -- vai ser usado tb pelos switchs
	stock_selected:	in std_logic_vector(1 downto 0); -- vai ser usado tb pelos switchs
	
	
	stock0: 				out	std_logic_vector(7 downto 0);
	stock1: 				out	std_logic_vector(7 downto 0);
	stock2: 				out	std_logic_vector(7 downto 0);
	stock3: 				out	std_logic_vector(7 downto 0);
	
	HEX0: out std_logic_vector(6 downto 0);
	HEX1: out std_logic_vector(6 downto 0)
	);
end stock_controller;

architecture Behavior of stock_controller is
	signal stock0_counter: 		std_logic_vector(7 downto 0):= (others => '0');
	signal stock1_counter: 		std_logic_vector(7 downto 0):= (others => '0');
	signal stock2_counter: 		std_logic_vector(7 downto 0):= (others => '0');
	signal stock3_counter: 		std_logic_vector(7 downto 0):= (others => '0');
	signal en0, en1, en2, en3: 	std_logic;
	signal load:				std_logic := '0';
	signal positive_signal: std_logic := '0';
	signal digit0, digit1: std_logic_vector(3 downto 0);
	
	component stock_component
		port(
			clock: 				in std_logic;
			enable: 		 		in std_logic;
			resetn: 		 		in std_logic;
			load: 		 		in std_logic;
			positive_signal:	in std_logic; 
			input_value: 		in std_logic_vector(7 downto 0); -- vai ser usado tb pelos switchs
			total_value: 		out std_logic_vector(7 downto 0));
	end component;
	
	component bin2hex
		port (
			SW: in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0));
	end component;
	
begin
	
	en0 <= '1' when (stock_selected = "00") else '0';
	en1 <= '1' when (stock_selected = "01") else '0';
	en2 <= '1' when (stock_selected = "10") else '0';
	en3 <= '1' when (stock_selected = "11") else '0';
	
	stock0_component: stock_component port map (
		clock => clock,
		enable => en0,
		resetn => resetn,
		load => load,
		positive_signal => positive_signal,
		input_value => input_value,
		total_value => stock0_counter
	);
	
	stock1_component: stock_component port map (
		clock => clock,
		enable => en1,
		resetn => resetn,
		load => load,
		positive_signal => positive_signal,
		input_value => input_value,
		total_value => stock1_counter
	);
	
	stock2_component: stock_component port map (
		clock => clock,
		enable => en2,
		resetn => resetn,
		load => load,
		positive_signal => positive_signal,
		input_value => input_value,
		total_value => stock2_counter
	);
	
	stock3_component: stock_component port map (
		clock => clock,
		enable => en3,
		resetn => resetn,
		load => load,
		positive_signal => positive_signal,
		input_value => input_value,
		total_value => stock3_counter
	);
	
	
	positive_signal <= key2;
	load <= not key1;
	
	with stock_selected select
		digit0 <= stock0_counter	(3 downto 0) when "00",
					 stock1_counter	(3 downto 0) when "01",
					 stock2_counter	(3 downto 0) when "10",
					 stock3_counter	(3 downto 0) when "11";

	with stock_selected select
		digit1 <= stock0_counter	(7 downto 4) when "00",
					 stock1_counter	(7 downto 4) when "01",
					 stock2_counter	(7 downto 4) when "10",
					 stock3_counter	(7 downto 4) when "11";
					 
	hexseg0: bin2hex port map(
		SW => digit0,
		HEX0 => HEX0
	);
	
	hexseg1: bin2hex port map(
		SW => digit1,
		HEX0 => HEX1
	);

	stock0 <= stock0_counter;
	stock1 <= stock1_counter;
	stock2 <= stock2_counter;
	stock3 <= stock3_counter;
end Behavior;
