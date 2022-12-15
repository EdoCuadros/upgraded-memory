library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Memoria is 
	port(
		estados_bin : in std_logic_vector(3 downto 0);
		clk : in std_logic;
		vect_mem : out std_logic_vector(15 downto 0) := "0000000000000000");
		
end Memoria;

architecture memorizar of Memoria is

	--signal D1_12, D1_23,D1_34,D1_4,D2_12,D2_23,D2_34,D2_4,D3_12,D3_23,D3_34,D3_4 : std_logic := '0';
		signal vect1, vect2, vect3, vect4 : std_logic_vector(3 downto 0) := "0000";
		
	component JK
			port(
				J,K,clk : in std_logic;
			
				Q : out std_logic);
	end component;
	
	component D
		port(
			D : in std_logic;
			clk : in std_logic;
			
			Q : out std_logic);
	end component;
begin

	process(clk)
	
	begin
		if rising_edge(clk) then				
			vect4 <= vect3;
			vect3 <= vect2;
			vect2 <= vect1;
			vect1 <= estados_bin;
		end if;
	end process;
	
--	FF11 : D port map(estados_bin(3),clk,D1_12);
--	FF12 : D port map(estados_bin(2),clk,D1_23);
--	FF13 : D port map(estados_bin(1),clk,D1_34);
--	FF14 : D port map(estados_bin(0),clk,D1_4);
--	
--	FF21 : D port map(D1_12,clk,D2_12);
--	FF22 : D port map(D1_23,clk,D2_23);
--	FF23 : D port map(D1_34,clk,D2_34);
--	FF24 : D port map(D1_4,clk,D2_4);
--	
--	FF31 : D port map(D2_12,clk,D3_12);
--	FF32 : D port map(D2_23,clk,D3_23);
--	FF33 : D port map(D2_34,clk,D3_34);
--	FF34 : D port map(D2_4,clk,D3_4);
--	
--	vect_mem <= estados_bin & D1_12 & D1_23 & D1_34 & D1_4 & D2_12 & D2_23 & D2_34 & D2_4 & D3_12 & D3_23 & D3_34 & D3_4;
	vect_mem <= vect1 & vect2 & vect3 & vect4;
	
end memorizar;


