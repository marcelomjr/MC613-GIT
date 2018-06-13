library ieee;
use ieee.std_logic_1164.all;

entity alu is
  port (
    a, b : in std_logic_vector(2 downto 0);
    F : out std_logic_vector(2 downto 0);
    s0, s1 : in std_logic
  );
end alu;

architecture behavioral of alu is
	component ripple_carry is
	generic (
    N : integer :=3
  );
	port (
    x,y : in std_logic_vector(N-1 downto 0);
    r : out std_logic_vector(N-1 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    overflow : out std_logic
  );
	end component;
	signal C_ripple,V_ripple:std_logic;
	signal aux,F_or,F_and,F_ripple:std_logic_vector(2 downto 0);
begin
	F_or <= a or b;
	F_and <= a and b;
	stage0:for I in 0 to 2 generate aux(I) <= b(I) xor s0;
	end generate stage0;
	stage1: ripple_carry	port map(a,aux,F_ripple,s0,C_ripple,V_ripple);
	
	F <= F_ripple when s1 = '0' else F_or when (s1='1' and s0 = '1') else F_and;--ok 
	
end behavioral;
