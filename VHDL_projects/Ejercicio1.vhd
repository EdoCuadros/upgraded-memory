library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Ejercicio1 is

	port
	(
		--INput ports
		S : in std_logic_vector(1 downto 0);
		D : in std_logic_vector(3 downto 0);
		
		--Output ports
		
		Y : out std_logic);
		
end Ejercicio1;


architecture seleccion of Ejercicio1 is
	
	
begin

--	Descripción estructural
--	Y <= (not S(0) and not S(1) and D(0)) or (not S(0) and S(1) and D(1)) or (S(0) and not S(1) and D(2)) or (S(0) and S(1) and D(3));

---- Descripción algoritmica
--	with S select
--	Y <= D(0) when "00",
--		  D(1) when "01",
--		  D(2) when "10",
--	     D(3) when others;
	
	process(S,D)

	begin
	 
		case S is
			when "00" => Y <= D(0);
			when "01" => Y <= D(1);
			when "10" => Y <= D(2);
			when others => Y <= D(3);
		end case;

	
	end process;
	
end seleccion;
