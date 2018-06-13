library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry is
  generic (
    N : integer :=4
  );
  port (
    x,y : in std_logic_vector(N-1 downto 0);
    r : out std_logic_vector(N-1 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    overflow : out std_logic
  );
end ripple_carry;

architecture rtl of ripple_carry is
	signal aux: std_logic_vector(N downto 0);
begin
  aux(0) <= cin;
  gen: for I in  0 to (n-1) generate
	r(I) <=  (x(I) XOR y(I) XOR aux(I)) or 
				(x(I)	and y(I) and aux(I));
	aux(I+1) <= (x(I) and y(I)) or 
					(x(I) and aux(I)) or 
					(y(I) and aux(I));		
	end generate GEN;
	cout <= aux(N);
	overflow <= aux(N) XOR aux(N-1);
end rtl;
