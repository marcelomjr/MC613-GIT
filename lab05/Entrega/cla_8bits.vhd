-- brief : lab05 - question 2

library ieee;
use ieee.std_logic_1164.all;

entity cla_8bits is
  port(
    x    : in  std_logic_vector(7 downto 0);
    y    : in  std_logic_vector(7 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(7 downto 0);
    cout : out std_logic
  );
end cla_8bits;

architecture rtl of cla_8bits is
	signal g: std_logic_vector(7 downto 0);
	signal p: std_logic_vector(7 downto 0);
	signal carry: std_logic_vector(8 downto 0);
begin
	carry(0) <= cin;
	
	stage0: for i in 0 to 7 generate g(i) <= x(i) and y(i);
	
	end generate stage0;

	stage1: for i in 0 to 7 generate p(i) <= x(i) or y(i);
	end generate stage1;

	stage2: for i in 0 to 7 generate carry(i+1) <= g(i) or (p(i) and carry(i));
	end generate stage2;

	stage3: for i in 0 to 7 generate sum(i) <= (x(i) xor y(i)) xor carry(i);
	end generate stage3;

	cout <= carry(8);
  
end rtl;

