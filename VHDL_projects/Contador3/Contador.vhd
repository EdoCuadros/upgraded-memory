library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador is
	port(
		clk : std_logic := '0';
		
		sig_contador : out std_logic_vector(3 downto 0) := "0000");
end Contador;

architecture contar of Contador is
	
	signal v,Q0,Q1,Q2,Q3 : std_logic := '0';
	
	component JK
		port(
			J,K,clk : in std_logic;
			clear : in std_logic;
			Q : out std_logic);
	end component;

begin
	
	FF0 : JK port map('1','1',clk,v,Q0);
	FF1 : JK port map('1','1',not Q0,v,Q1);
	FF2 : JK port map('1','1',not Q1,v,Q2);
	FF3 : JK port map('1','1',not Q2,v,Q3);
	
	sig_contador <= Q3 & Q2 & Q1 & Q0;

end contar;
