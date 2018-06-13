library ieee;
use ieee.std_logic_1164.all;

entity shift_register is
generic (N : integer := 6);
port(
    clk     : in  std_logic;
    mode    : in  std_logic_vector(1 downto 0);
    ser_in  : in  std_logic;
    par_in  : in  std_logic_vector((N - 1) downto 0);
    par_out : out std_logic_vector((N - 1) downto 0)
  );
end shift_register;

architecture rtl of shift_register is
  signal Q: std_logic_vector((N - 1) downto 0);
begin

	par_out <= Q;
	
	process
	begin
	
		wait until clk'event and clk = '1';
		
		if mode = "01" then
			shift_left: 
			for i in (N - 1) downto 1 loop
				Q(i) <= Q(i - 1);
			end loop;
			
			Q(0) <= ser_in;
		
		elsif mode = "10" then
			shift_right:
			for i in 0 to (N - 2) loop
				Q(i) <= Q(i + 1);
			end loop;
			
			Q(N - 1) <= ser_in;
		
		
		elsif mode = "11" then
			Q <= par_in; -- Carga paralela.
		end if;
	end process;
	
end rtl;
