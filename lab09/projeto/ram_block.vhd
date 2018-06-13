library ieee;
use ieee.std_logic_1164.all;

entity ram_block is
  port (
    Clock : in std_logic;
    Address : in std_logic_vector(6 downto 0);
    Data : in std_logic_vector(7 downto 0);
    Q : out std_logic_vector(7 downto 0);
    WrEn : in std_logic
  );
end ram_block;

architecture direct of ram_block is
	--type word_t is array(0 to 7) of std_logic_vector(7 downto 0);
	--type table_t is array(0 to 127) of word_t;
	type table_t is array(0 to 127, 0 to 7) of std_logic;
	signal table: table_t;
	
	
begin
	process (Clock) is
	--variable temp: word_t := "01010101";
	--variable addrss    : unsigned(1 downto 0) := "00";
	begin
		if Clock'event and Clock = '1' then
			if WrEn = '1' then
				
				table(2) <= "01010101";
			end if;
		end if;
	end process;
end direct;
