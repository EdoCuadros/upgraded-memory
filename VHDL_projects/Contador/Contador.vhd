 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador is
	port 
	(
		--reset : in std_logic;
		clk2 : in std_logic;	
		--control : in std_logic_vector(1 downto 0); 	--Control(0) = stop, Control(1) = Start
		
		Q : out std_logic_vector(5 downto 0));	--Salida
		
end Contador;

architecture contar of Contador is

signal cont : std_logic_vector(5 downto 0) := "000000";
	
begin		
	
	process(clk2)
	begin
		if rising_edge(clk2) then
			
			if cont /= "111011" then
				cont <= cont + 1;
			else
				cont <= "000000";
			end if;
		end if;
	end process;

	Q <= cont;
	
end contar;
