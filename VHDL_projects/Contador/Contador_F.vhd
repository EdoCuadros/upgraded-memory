library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador_F is
	port(
		clk : in std_logic;
		
		seg7 : out std_logic_vector(6 downto 0);
		gnd_i : out std_logic_vector(1 downto 0));
		
end Contador_F;

architecture func of Contador_F is
	
	signal clk_Cont, clk_Sel : std_logic;
	signal ciclos_Cont : integer := 1500000000;
	signal ciclos_Sel : integer := 3000000000;
	
	signal sig_bin : std_logic_vector(5 downto 0);
	signal sig_BCD : std_logic_vector(7 downto 0);
	
	component div_frec
		port(
			clk1: in  std_logic;
			Nciclos: in	integer;			-- número de ciclos para la frecuencia deseada
			
			-- Output ports
			f: out std_logic);
	end component;
	
	component Contador
		port(
			clk2 : in std_logic;	
			--control : in std_logic_vector(1 downto 0); 	--Control(0) = stop, Control(1) = Start
		
			Q : out std_logic_vector(5 downto 0));
	end component;
	
	component XS3_alg 
		port(
			cuenta_bin : in std_logic_vector(5 downto 0);
		
			cuenta_BCD : out std_logic_vector(7 downto 0));
	end component;
		
	begin
	
	frec_Cont : div_frec port map(clk,ciclos_Cont,clk_Cont);
	
	frec_Sel : div_frec port map(clk,ciclos_Sel,clk_Sel);
	
	ent_cont : Contador port map(clk_Cont,sig_bin);
	
	ent_alg : XS3_alg port map(sig_bin,sig_BCD);
	
	
end func;
	
	