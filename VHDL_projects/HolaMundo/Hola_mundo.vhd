library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Hola_mundo is

	port(
		
		
		--Input ports
		a : in std_logic;
		b : in std_logic;
		
		--Output ports
		
		c : out std_logic
	);
	
end Hola_mundo;

architecture compuerta_and of Hola_mundo is

	begin
	
	c <= a and b;
	
end compuerta_and;

