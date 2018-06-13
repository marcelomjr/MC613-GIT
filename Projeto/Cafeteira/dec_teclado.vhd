library ieee;
use ieee.std_logic_1164.all;

entity dec_teclado is
  port (
	 wr		: 	in std_logic;
	 key_on : in std_logic_vector(2 downto 0);
    key_code : in std_logic_vector(47 downto 0);
    CMD : out std_logic_vector(2 downto 0)
  );
end dec_teclado;

architecture rtl of dec_teclado is
	signal code: std_logic_vector(15 downto 0);
	signal aux : std_logic_vector(2 downto 0);
	begin
	code <=  key_code(15 downto 0);
	WITH code SELECT
		aux <= "001" WHEN X"E075",
				 "010" WHEN X"E072",
				 "100" WHEN "00000000"&X"5A",
    			 "000" when others;
	CMD <= aux when wr='1' else "000";	 
end rtl;