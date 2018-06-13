library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stock_component is
	port(
	clock: 				in std_logic;
	reset: 		 		in std_logic;
	load: 		 		in std_logic;
	positive_signal:	in std_logic; 
	input_value: 		in std_logic_vector(7 downto 0); -- vai ser usado tb pelos switchs
	total_value: 		out std_logic_vector(7 downto 0)
	);
end stock_component;

architecture Behavior of stock_component is
	signal total: integer range 0 to 255 := 0;
begin
	process (clock, reset)
	begin
		if reset = '1' then
			total <= to_integer(unsigned(input_value));
		
		elsif clock'event and clock = '1' and load = '1' then
			if positive_signal = '1' then
				total <= total + to_integer(unsigned(input_value));
			else
				total <= total - to_integer(unsigned(input_value));
			end if;
		
		end if;
	end process;
	
	total_value <= std_logic_vector(to_unsigned(total, 8));
end Behavior;