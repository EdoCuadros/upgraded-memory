library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador_6 is 
	port(
		clk : in std_logic;
		sig_ctrl : in std_logic;
		reset : std_logic;
		unid : in std_logic_vector(3 downto 0);
		
		sig_bin_dec : out std_logic_vector(3 downto 0));
end Contador_6;

architecture cont of Contador_6 is

	signal J0,J1,J2,Q0,Q1,Q2,K0,K1,K2 : std_logic;
	signal clk_temp : std_logic;
	signal v : std_logic;
	component JK
		port(
			J,K,clk : in std_logic;
		
			Q : out std_logic := '0');
	end component;
	
	begin
	
	with sig_ctrl select
		clk_temp <= '0' when '0',
						clk when others;
						
	process(clk)
		variable temp_J0,temp_J1,temp_J2,temp_K0,temp_K1,temp_K2 : std_logic;
		begin
		
			if rising_edge(clk) then
				if unid = "1001" then
					temp_J0 := (not Q1) or (not Q2);
					temp_J1 := Q0;
					temp_J2 := Q0 and Q1;
		
					temp_K0 := '1';
					temp_K1 := Q0 or Q2;
					temp_K2 := Q1 and Q2;
				
				end if;
			end if;
			J0 <= temp_J0;
			J1 <= temp_J1;
			J2 <= temp_J2;
			K0 <= temp_K0;
			K1	<= temp_K1;
			K2 <= temp_K2;
	end process;
	
		FF0 : JK port map(J0,K0,clk_temp,Q0);
		
		FF1 : JK port map(J1,K1,clk_temp,Q1);
		
		FF2 : JK port map(J2,K2,clk_temp,Q2);
		
		sig_bin_dec <= '0' & Q2 & Q1 & Q0;
	
end cont;