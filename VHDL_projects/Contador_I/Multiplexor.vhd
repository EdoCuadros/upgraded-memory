library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Multiplexor is
	port(
	
		mul : in std_logic_vector(7 downto 0);
		sel: in std_logic;
		
		BCD_7seg : out std_logic_vector(3 downto 0));
		
end Multiplexor;

architecture seleccion of Multiplexor is 
		
signal unidades, decenas : std_logic_vector(3 downto 0) := "0000";

begin
	
	unidades <= mul(3 downto 0);
	decenas <= mul(7 downto 4);
	
	with sel select
		BCD_7seg <= unidades when '0',
						decenas when  '1',
						"0000" when others;
	
end seleccion;
					
					