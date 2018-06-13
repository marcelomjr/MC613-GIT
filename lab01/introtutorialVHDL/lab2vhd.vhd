LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY lab2 IS
	PORT(A, B, C, D, E : IN STD_LOGIC ;
		F: OUT STD_LOGIC);
END lab2;


ARCHITECTURE LogicFunction OF light IS
BEGIN
	f <=(x1 AND NOT x2) OR (NOT x1 AND x2) ;
END LogicFunction ;