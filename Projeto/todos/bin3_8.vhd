Library IEEE;
use IEEE.std_logic_1164.all;

entity bin3_8 is
	port (
		Sw: in std_logic_vector(2 downto 0);
		HEX: out std_logic_vector(6 downto 0)
	);
end bin3_8;


ARCHITECTURE Behavior OF bin3_8 IS
BEGIN
	WITH Sw SELECT
		HEX <= "1000000" WHEN "000", -- 0
				  "1111001" WHEN "001", -- 1
				  "0100100" WHEN "010", -- 2
				  "0110000" WHEN "011", -- 3
				  "0011001" WHEN "100", -- 4
				  "0010010" WHEN "101", -- 5
				  "0000010" WHEN "110", -- 6
				  "1111000" WHEN "111"; -- 7
END Behavior ;