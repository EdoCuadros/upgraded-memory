library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador is
	port(
		clk : in std_logic;
		
		sig_cont : out std_logic_vector(3 downto 0));
end Contador;

architecture contar of Contador is

	signal J0 : std_logic := '1';
	signal J1, J2, J3, Q0, Q1, Q2, Q3 : std_logic := '0';
	
	component JK
		port(
			J,K,clk : in std_logic;
		
			Q : out std_logic := '0');
	end component;
	
begin
	
	J1 <= Q0 and (not Q3);
	J2 <= Q0 and Q1;
	J3 <= (Q0 and Q1 and Q2) or (Q0 and Q3);
	
	FF0 : JK port map(J0,J0,clk,Q0);
	
	FF1 : JK port map(J1,J1,clk,Q1);
	
	FF2 : JK port map(J2,J2,clk,Q2);
	
	FF3 : JK port map(J3,J3,clk,Q3);
	
	sig_cont <= Q3 & Q2 & Q1 & Q0;
		
end contar;