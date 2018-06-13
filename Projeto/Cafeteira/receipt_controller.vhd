library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity receipt_controller is
	port(
	enable_controller:in std_logic;
	clock: 				in std_logic;
	load:  				in std_logic;
	resetn: 		 		in std_logic;
	type_of_money:    in std_logic_vector(1 downto 0);
	total_value: 		out std_logic_vector(15 downto 0)
	);
end receipt_controller;

architecture Behavior of receipt_controller is
	signal total: integer range 0 to 65535 := 0;
begin
	process(clock, load)
	begin
		if enable_controller = '1' then
			if resetn  = '0' then 
				total <= 0;
				
			elsif clock'event and clock = '1' and load = '1' then
				if type_of_money = "00" then 
					total <= (total + 1);
				elsif type_of_money = "01" then 
					total <= (total + 2);
				elsif type_of_money = "10" then 
					total <= (total + 10);
				else 
					total <= (total + 20);
				end if;
					
			end if;
		end if;
	end process;
						
	total_value <= std_logic_vector(to_unsigned(total, 16));
end Behavior;
			