library ieee;
use ieee.std_logic_1164.all;

entity div_tempo is
  port (
    wr : in std_logic;
    clk : in std_logic;
    clk_hz : out std_logic
  );
end div_tempo;

architecture behavioral of div_tempo is
signal temp: std_logic;
begin
  process(clk)
  variable aux: integer RANGE 0 to 49999999 := 0;
		begin
			if clk'event and clk='1' then
				if aux = 49999999 then
					aux := 0;
					temp <= '1';
				else
					aux := aux + 1;
					temp <= '0';
				end if;
			end if;
			if (wr = '1') then	
				clk_hz <=temp;
			else
				clk_hz <= '0';
			end if;
		end process;
end behavioral;