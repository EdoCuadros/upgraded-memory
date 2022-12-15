library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity anti_rebote is
	port(
		sig_sensores : in std_logic_vector(1 downto 0);
		clk : in std_logic;
		
		QF : out std_logic);
		
end anti_rebote;

architecture func of anti_rebote is
	signal Q : std_logic_vector(2 downto 0) := "000";
	signal D0 : std_logic := '0';
	signal temp_Q : std_logic := '0';
	signal V : std_logic := '1';
	component D
		port(
			D : in std_logic;
			clk : in std_logic;
			
			Q : out std_logic);
	end component;

	
begin
	
	D0 <= sig_sensores(0) or sig_sensores(1);
	
	
	FF0 : D port map(D0,clk,Q(0));
	FF1 : D port map(Q(0),clk,Q(1));
	FF2 : D port map(Q(1),clk,Q(2));
	
	QF <= Q(0) or Q(1) or Q(2);
	
end func;