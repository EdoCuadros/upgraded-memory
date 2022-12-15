library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Principal is
	port(
		clk : in std_logic;
		s : in std_logic_vector(1 downto 0);		-- s(0) = s1, s(1) = s2
		sw : in std_logic_vector(1 downto 0);		-- sw(0) = 5V , sw(1) = osc
		
		pl : out std_logic;
		m_en : out std_logic;
		m_c : out std_logic_vector(1 downto 0);	-- m(0) = m1, m(1) = m2
		light : out std_logic);
end Principal;

architecture func of Principal is

	signal Q0,Q1,Q2,clk_f : std_logic := '0';
	signal temp_sw : std_logic := '0';
	signal ciclos : integer := 25000000;
	signal v : std_logic := '0';
	component D
		port(
			D : in std_logic;
			clk : in std_logic;
			
			Q : out std_logic);
	end component;
	
	component div_frec
		port(
		-- Input ports
		clk1: in  std_logic;
		Nciclos: in	integer;			
		
		-- Output ports
		f: out std_logic);
	end component;
	
begin
	
	ent_div : div_frec port map(clk,ciclos,clk_f);
	
	FF0 : D port map(s(1) or s(0),clk_f,Q0);
	FF1 : D port map(Q0,clk_f,Q1);	

	pl <= not (Q0 or Q1);
	m_c <= s;
	
	process(sw)
	
	begin
		if sw(0) = '1' then
			temp_sw <= '1';
		elsif sw(1) = '1' then
			temp_sw <= clk;
		end if;
	end process;
	

	m_en <= not (temp_sw and (Q0 or Q1));
	light <= clk_f;
end func;