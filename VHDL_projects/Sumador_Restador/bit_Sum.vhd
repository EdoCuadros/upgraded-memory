library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity bit_Sum is
	port(
	
		A, B, Cin : in std_logic;
		S, Cout   : out std_logic);

end bit_Sum;

architecture suma of bit_Sum is
begin

	S <= A xor B xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin);	
	
end suma;


	