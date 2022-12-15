library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ContadorV is
	port(
		reset, clk : std_logic;
		sig_ctrl : in std_logic_vector(1 downto 0);
		
		gnd : out std_logic_vector(1 downto 0);
		seg7 : out std_logic_vector(6 downto 0));
		
end ContadorV;

architecture func of ContadorV is

	signal clk_Cont, clk_Sel, clk_muestreo : std_logic := '1';
	signal ciclos_Cont : integer := 25000000;
	signal ciclos_Sel : integer := 40000;
	signal ciclos_muestreo : integer := 500;
	
	signal sig_bin_un, sig_bin_dec : std_logic_vector(3 downto 0) := "0000";
	signal display : std_logic_vector(1 downto 0) := "10";
	signal num_entero : std_logic_vector(7 downto 0);
	signal temp_ctrl : std_logic_vector(1 downto 0) := "10";
	signal sig_select : std_logic := '0';
	signal sig_int_7seg : std_logic_vector(3 downto 0) := "0000";
	signal sig_start,sig_stop,sig_reset : std_logic := '1';
	signal sig_ctrl_new : std_logic;
	
	signal final_signal_7seg : std_logic_vector(6 downto 0) := "0000000";

	component div_frec
		port(
			clk1: in  std_logic;
			Nciclos: in	integer;			-- número de ciclos para la frecuencia deseada
			
			-- Output ports
			f: out std_logic);
	end component;
	
	component Contador
		port(
			clk : in std_logic;
				sig_ctrl : in std_logic;
				reset : in std_logic;
				
				sig_contador : out std_logic_vector(3 downto 0));
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
			sig_ctrl : in std_logic_vector(1 downto 0);
		
			sig_ctrl_out : out std_logic);
	end component;
	
	component Contador_6
		port(
			clk : in std_logic;
			sig_ctrl : in std_logic;
			reset : std_logic;
			unid : in std_logic_vector(3 downto 0);
			
			sig_bin_dec : out std_logic_vector(3 downto 0));
	end component;
begin

	temp_ctrl <= sig_start & sig_stop;
	num_entero <= sig_bin_dec & sig_bin_un;
	
	frec_Cont : div_frec port map(clk,ciclos_Cont,clk_Cont);
	frec_Sel : div_frec port map(clk,ciclos_Sel,clk_Sel);
	
	--frec_muest : div_frec port map(clk,ciclos_muestreo,clk_muestreo);
	
	--ent_start : anti_rebote port map(clk_muestreo,sig_ctrl(1),sig_start);
	
	--ent_stop : anti_rebote port map(clk_muestreo,sig_ctrl(0),sig_stop);e
	
	--ent_reset : anti_rebote port map(clk_muestreo,reset,sig_reset);
	
	--ent_Control : Control port map(temp_ctrl,sig_ctrl_new);
	
	ent_Contador : Contador port map(clk_Cont,sig_ctrl_new,sig_reset,sig_bin_un);
	
	--ent_ContDec : Contador_6 port map(clk_Cont,sig_ctrl_new,sig_reset,sig_bin_un,sig_bin_dec);
	
	--ent_Mul : Multiplexor port map(num_entero,sig_select,sig_int_7seg);
	
	ent_Deco : Deco port map(sig_bin_un,final_signal_7seg);
	
	--ent_Sel : Selector port map(clk_Sel,sig_select,display);
	
	seg7 <= final_signal_7seg;
	gnd <= "10";
	
end func;