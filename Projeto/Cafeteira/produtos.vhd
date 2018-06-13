Library ieee;
use ieee.std_logic_1164.all;

entity produtos is
  port (
	clock : in  std_logic; 							-- "Enter"
   up    : in  std_logic;							--  Arrow up
	down	: in  std_logic;							--  Arrow down
	prod	: out	std_logic_vector(2 downto 0);	--  Saida decodificada no "Enter"
	att	: out	std_logic_vector(2 downto 0)	--  Saida decodificada em tempo real
  );
end produtos;
architecture escolha of produtos is
	component alu is
		port (
			a, b : in std_logic_vector(2 downto 0);
			F : out std_logic_vector(2 downto 0);
			s0, s1 : in std_logic
		);
	end component;
	signal x,y,z : std_logic_vector(2 downto 0):="000";		
	signal b,a: std_logic:='1';
	signal x2: std_logic_vector(1 downto 0):="00";
begin
	stage0: alu port map(z,y,x,'1','0');
	process(up)
		begin
		if(up'event and up='1') then
			case y is
				WHEN "000" => y <= "001";
				WHEN "001" => y <= "010";
				WHEN "010" => y <= "011";
				WHEN "011" => y <= "100";
				WHEN "100" => y <= "101";
				WHEN "101" => y <= "110";
				WHEN "110" => y <= "111";
				WHEN "111" => y <= "000";
			end case;
		end if;
	end process;
	process(down)
		begin
		if(down'event and down='1') then
			case z is
				WHEN "000" => z <= "001";
				WHEN "001" => z <= "010";
				WHEN "010" => z <= "011";
				WHEN "011" => z <= "100";
				WHEN "100" => z <= "101";
				WHEN "101" => z <= "110";
				WHEN "110" => z <= "111";
				WHEN "111" => z <= "000";
			end case;
		end if;
	end process;
	process(clock)		
		begin
		if (clock'event and clock = '1') then
			prod <= x;
		end if;
	end process;
	att <= x;
end escolha;