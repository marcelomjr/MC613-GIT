LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY Processor;
USE Processor.Processor_pack.all;


ENTITY bank IS
		GENERIC (
			WORDSIZE : NATURAL := 32
		);
		PORT (
			WR_EN, RD_EN,
			clear,
			clock		: IN 	STD_LOGIC;
			WR_ADDR,
			RD_ADDR1,
			RD_ADDR2	: IN	STD_LOGIC_VECTOR (4 DOWNTO 0);
			DATA_IN		: IN	STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0);
			DATA_OUT1,
			DATA_OUT2	: OUT	STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE Behavior of bank is 
	type register_t is array (31 downto 0) of std_logic;
	type register_bank_t is array (31 downto 0) of register_t;
	signal register_bank: register_bank_t;
	
begin
	process (clock, clear)
	begin
		if clear = '1' then
		else if clock'event and clock = '1' then
			if WR_EN = '1' then
				
			end if;
		end if;
		
	end process;
		
	
end ARCHITECTURE;