library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador_I is

	port(
		sig_ctrl : in std_logic_vector(2 downto 0) := "111";
		clk : in std_logic;
		
		seg7 : out std_logic_vector(6 downto 0);
		gnd_i : out std_logic_vector(1 downto 0));
		
end Contador_I;

architecture func of Contador_I is
	
	signal clk_Cont, clk_Sel,clk_muestreo : std_logic := '1';
	signal ciclos_Cont : integer := 25000000;
	signal ciclos_Sel : integer := 40000;
	signal ciclos_muestreo : integer := 500;
	
	signal sig_bin : std_logic_vector(3 downto 0) := "0000";
	signal sig_BCD : std_logic_vector(7 downto 0) := "00000000";
	signal sigBCD_7seg : std_logic_vector(3 downto 0) := "0000";
	signal display : std_logic_vector(1 downto 0) := "10";
	signal sig_selec : std_logic := '0';
	signal sig_bin_dec : std_logic_vector(3 downto 0) := "0000";
	signal f_7seg : std_logic_vector(6 downto 0) := "0000000";
	signal sig_control : std_logic := '1';
	signal num_entero : std_logic_vector(7 downto 0) := "00000000";
	signal sig_reset, sig_start, sig_stop : std_logic;
	signal new_ctrl_sig : std_logic_vector(2 downto 0);
	component div_frec
		port(
			clk1: in  std_logic;
			Nciclos: in	integer;			-- número de ciclos para la frecuencia deseada
			
			-- Output ports
			f: out std_logic);
	end component;
	
	component Contador
		port(
		sig_ctrl : in std_logic_vector(2 downto 0);
		clk : in std_logic;
		
		sig_cont : out std_logic_vector(3 downto 0));
end component;
	
	component XS3_alg 
		port(
			cuenta_bin : in std_logic_vector(5 downto 0);
		
			cuenta_BCD : out std_logic_vector(7 downto 0));
	end component;
	
	component Multiplexor 
		port(
			mul : in std_logic_vector(7 downto 0);
			sel: in std_logic;
			
			BCD_7seg : out std_logic_vector(3 downto 0));
		end component;
		
	component Selector
		port(
			clk3 : in std_logic;
		
			sig_sel : out std_logic;
			gnd : out std_logic_vector(1 downto 0));
	end component;
			
	component Deco
		port(
			num : in std_logic_vector(3 downto 0);
		
			seg7 : out std_logic_vector(6 downto 0));
	end component;
	
	component anti_rebote
		port(
			clk6 : in	std_logic;
			btn : in std_logic;
		
			btn_out : out std_logic);
	end component;
	
	component Control
		port(
			start : std_logic;
			stop : std_logic;
			
			sig_ctrl : out std_logic := '1');
	end component;
	
	component Contador_6
		port(
			clk7 : in std_logic;
			sig_ctrl : in std_logic_vector(2 downto 0) := "111";
			unid : in std_logic_vector(3 downto 0);
			
			sig_bin_dec : out std_logic_vector(2 downto 0));
	end component;
	
	begin
	
	num_entero <= "0000" & sig_bin;
	new_ctrl_sig <= sig_stop & sig_start & sig_reset;
	 
	frec_Cont : div_frec port map(clk,ciclos_Cont,clk_Cont);
	
	frec_Sel : div_frec port map(clk,ciclos_Sel,clk_Sel);
	
	frec_mues : div_frec port map(clk,ciclos_muestreo,clk_muestreo);
	
	ent_start : anti_rebote port map(clk_muestreo,sig_ctrl(1),sig_start);
	
	ent_stop : anti_rebote port map(clk_muestreo,sig_ctrl(0),sig_stop);
	
	ent_reset : anti_rebote port map(clk_muestreo,sig_ctrl(2),sig_reset);
	
	ent_cont_un : Contador port map(new_ctrl_sig,clk_Cont,sig_bin);
	
	--ent_cont_dec : Contador_6 port map(clk_Cont,new_ctrl_sig,sig_bin,sig_bin_dec);
	
	--ent_alg : XS3_alg port map(sig_bin,sig_BCD);
	
	ent_mul : Multiplexor port map(num_entero,sig_selec,sigBCD_7seg);
	
	ent_sel : Selector port map(clk_Sel,sig_selec,display);
	
	ent_deco : Deco port map(sigBCD_7seg,f_7seg);
	
	seg7 <= f_7seg;
	gnd_i <= display;
	
end func;
	
	