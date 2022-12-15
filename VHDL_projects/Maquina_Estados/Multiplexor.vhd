library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Multiplexor is
	port(
	
		mul : in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(1 downto 0);
		
		BCD_7seg : out std_logic_vector(3 downto 0));
		
end Multiplexor;

architecture seleccion of Multiplexor is 
		
signal num1, num2,num3, num4 : std_logic_vector(3 downto 0) := "0000";

begin
	
	num1 <= mul(15 downto 12);
	num2 <= mul(11 downto 8);
	num3 <= mul(7 downto 4);
	num4 <= mul(3 downto 0);
	
	with sel select
		BCD_7seg <= num1 when "00",
						num2 when "01",
						num3 when "10",
						num4 when others;
	
end seleccion;
					