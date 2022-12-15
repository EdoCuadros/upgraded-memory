library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador is
	port(
		sig_ctrl : in std_logic_vector(2 downto 0);
		clk : in std_logic;
		
		sig_cont : out std_logic_vector(3 downto 0));
end Contador;

architecture contar of Contador is

	signal J0 : std_logic := '1';
	signal J1, J2, J3, Q0, Q1, Q2, Q3 : std_logic := '0';
	signal clk_temp: std_logic;
	signal v : std_logic;
	
	component JK
		port(
			J,K,clk : in std_logic;
		
			Q : out std_logic);
	end component;
	
begin
	v <= (not sig_ctrl(0)) or (not sig_ctrl(1)) or (not sig_ctrl(2)) or clk;
	clk_temp <= clk;
	
	process(v) 
	variable temp_Q1,temp_Q2,temp_Q3,temp_Q0 : std_logic;
	begin
		temp_Q1 := Q1;
		temp_Q2 := Q2;
		temp_Q3 := Q3;
		if rising_edge(v) then
			if sig_ctrl(2) = '0' then
				temp_Q1 := '0';
				temp_Q2 := '0';
				temp_Q3 := '0';
				temp_Q0 := '0';
--			elsif sig_ctrl(0) = '0' then
--				clk_temp <= '0';
--			elsif sig_ctrl(1) = '0' and clk_temp = '0' then
--				clk_temp <= clk;
			end if;
		end if;
		Q1 <= temp_Q1;
		Q2 <= temp_Q2;
		Q3 <= temp_Q3;
		Q0 <= temp_Q0;
	end process;
		
	J1 <= Q0 and (not Q3);
	J2 <= Q0 and Q1;
	J3 <= (Q0 and Q1 and Q2) or (Q0 and Q3);
	
	FF0 : JK port map(J0,J0,clk_temp,Q0);
	
	FF1 : JK port map(J1,J1,clk_temp,Q1);
	
	FF2 : JK port map(J2,J2,clk_temp,Q2);
	
	FF3 : JK port map(J3,J3,clk_temp,Q3);
	
	sig_cont <= Q3 & Q2 & Q1 & Q0;
		
end contar;