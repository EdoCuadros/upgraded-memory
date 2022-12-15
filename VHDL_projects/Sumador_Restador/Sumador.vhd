library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
entity Sumador is

	port
	(
		A : in std_logic_vector(2 downto 0);
		B : in std_logic_vector(3 downto 0);
		
		S : out std_logic_vector(3 downto 0));
		
end Sumador;

architecture comb of Sumador is

		signal C : std_logic_vector(6 downto 0);
		
		component bit_Sum
		
		port(
			A, B, Cin : in std_logic;
			S, Cout   : out std_logic);
		end component;
		
begin 
	
	comp0 : bit_Sum port map(A(0),B(0),'0',S(0),C(0));
	comp1 : bit_Sum port map(A(1),B(1),C(0),S(1),C(1));
	comp2 : bit_Sum port map(A(2),B(2),C(1),S(2),C(2));
	comp3 : bit_Sum port map('0',B(3),C(2),S(3),C(3));

end comb;