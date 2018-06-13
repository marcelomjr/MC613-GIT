-- brief : lab05 - question 2

library ieee;
use ieee.std_logic_1164.all;

entity cla_8bits_partial is
  port(
    x    : in  std_logic_vector(7 downto 0);
    y    : in  std_logic_vector(7 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(7 downto 0);
    cout : out std_logic
  );
end cla_8bits_partial;

architecture rtl of cla_8bits_partial is

	signal carry0: std_logic;
	signal right_sum: std_logic_vector(3 downto 0);
	signal left_sum: std_logic_vector(3 downto 0);
	
component cla_4bits
	  port(
    x    : in  std_logic_vector(3 downto 0);
    y    : in  std_logic_vector(3 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(3 downto 0);
    cout : out std_logic
	 );
end component;
	
begin

	CLA0: cla_4bits port map
		(x(3 downto 0), y(3 downto 0), cin, right_sum, carry0);
		
	CLA1: cla_4bits port map
		(x(7 downto 4), y(7 downto 4), carry0, left_sum, cout);
		
	sum <= left_sum & right_sum;
end rtl;

