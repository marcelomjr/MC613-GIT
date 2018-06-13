library ieee;
use ieee.std_logic_1164.all;

entity money_controller is
	port(
	clock: 				in std_logic; -- key3
	resetn: 		 		in std_logic; -- key0
	
	key1: 		 		in std_logic;
	key2:					in std_logic; 
	
	input_value: 		in std_logic_vector(7 downto 0); -- vai ser usado tb pelos switchs
	type_of_money:	in std_logic_vector(1 downto 0); -- vai ser usado tb pelos switchs
	
	stock0: 				out	std_logic_vector(7 downto 0);
	stock1: 				out	std_logic_vector(7 downto 0);
	stock2: 				out	std_logic_vector(7 downto 0);
	stock3: 				out	std_logic_vector(7 downto 0);
	
	-- I
	HEX0: out std_logic_vector(6 downto 0);
	HEX1: out std_logic_vector(6 downto 0);
	HEX2: out std_logic_vector(6 downto 0);
	HEX3: out std_logic_vector(6 downto 0);
	HEX4: out std_logic_vector(6 downto 0);
	HEX5: out std_logic_vector(6 downto 0)
	);
end money_controller;

architecture Behavior of money_controller is
	signal total_balance: std_logic_vector(15 downto 0);
	signal load:				std_logic := '0';
	
	component stock_controller
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
		end component;
		
		component receipt_controller
			port(
				enable_controller:in std_logic;
				clock: 				in std_logic;
				load:  				in std_logic;
				resetn: 		 		in std_logic;
				type_of_money:    in std_logic_vector(1 downto 0);
				total_value: 		out std_logic_vector(15 downto 0)
		);
	end component;
	
	component bin2hex
		port (
			SW: in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0));
	end component;
	
begin
	load <= not key1;
	
	receipt_money: receipt_controller port map(
				enable_controller => '1',
				clock 				=> clock,
				load  				=> load,
				resetn 		 		=> resetn,
				type_of_money     => type_of_money,
				total_value 		=> total_balance
	);
	
	--hexseg0: bin2hex port map(
	--	SW => digit0,
	--	HEX0 => HEX0
	-- );
	
	--hexseg1: bin2hex port map(
		--SW => digit1,
		--HEX0 => HEX1
	--);
	
	
	hexse2: bin2hex port map(
		SW => total_balance(3 downto 0),
		HEX0 => HEX2
	);
	
	hexseg3: bin2hex port map(
		SW => total_balance(7 downto 4),
		HEX0 => HEX3
	);	
	hexse4: bin2hex port map(
		SW => total_balance(11 downto 8),
		HEX0 => HEX4
	);
	
	hexseg5: bin2hex port map(
		SW => total_balance(15 downto 12),
		HEX0 => HEX5
	);	
end Behavior;
