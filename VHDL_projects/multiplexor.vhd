library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplexor is

	port
	(
		--INput ports
		S : in std_logic_vector(1 downto 0);
		D : in std_logic_vector(3 downto 0);
		
		--Output ports
		
		Y : out std_logic);
		
end multiplexor;


architecture seleccion of multiplexor is

	
begin

	Y <= (not S(0) and not S(1) and D(0)) or (not S(0) and S(1) and D(1)) or (S(0) and not S(1) and D(2)) or (S(0) and S(1) and D(3));

end seleccion;
