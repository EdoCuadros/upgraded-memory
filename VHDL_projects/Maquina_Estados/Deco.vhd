library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Deco is
	port 
	(
		num : in std_logic_vector(3 downto 0);
		
		seg7 : out std_logic_vector(6 downto 0));
		
end Deco;

architecture decodificar of Deco is 

begin
	
	with num select
		seg7 <= 	"1000000" when "0000",
					"1111001" when "0001",
					"0100100" when "0010",
					"0110000" when "0011",
					"0011001" when "0100",
					"0010010" when "0101",
					"0000010" when "0110",
					"1111000" when "0111",
					"0000000" when "1000",
					"0011000" when "1001",
					"1111111" when others;
	
end decodificar;