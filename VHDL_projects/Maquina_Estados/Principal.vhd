library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Principal is
	port(
		sig_ctrl : in std_logic_vector(1 downto 0);
		clk : in std_logic;
		
		gnd : out std_logic_vector(3 downto 0);
		seg7 : out std_logic_vector(6 downto 0));
end Principal;

architecture func of Principal is
	
	signal clk_muestreo,clk_maquina, clk_memoria, clk_selec : std_logic;
	signal ciclosMuestreo : integer := 500;
	signal ciclosMaquina : integer := 25000000;
	signal ciclosMemoria : integer := 6250000;
	signal ciclosSelec : integer := 40000;
	signal sig_sentido, sig_velocidad : std_logic;
	signal new_sig_ctrl : std_logic_vector(1 downto 0);
	signal estado_bin, estado_act : std_logic_vector(3 downto 0);
	signal estados_4 : std_logic_vector(15 downto 0);
	signal sig_selec : std_logic_vector(1 downto 0):= "11";
	signal display : std_logic_vector(3 downto 0) := "1110";
	signal sig7_f : std_logic_vector(6 downto 0);
	
	component Maquina_Estados 
		port(
			sig_ctrl : in std_logic_vector(1 downto 0);
			clk : in std_logic;
			
			estados_bin : out std_logic_vector(3 downto 0));
	end component;
	
	component JK
			port(
				J,K,clk : in std_logic;
			
				Q : out std_logic);
	end component;
		
	component Memoria
		port(
		estados_bin : in std_logic_vector(3 downto 0);
		clk : in std_logic;
		vect_mem : out std_logic_vector(15 downto 0));
	end component;
	
	component Multiplexor
		port(
	
		mul : in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(1 downto 0);
		
		BCD_7seg : out std_logic_vector(3 downto 0));
	end component;
	
	component Selector 
		port(
		clk3 : in std_logic;
		
		sig_sel : out std_logic_vector(1 downto 0);
		gnd : out std_logic_vector(3 downto 0));
	end component;
	
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
		
	
	begin 
	
	new_sig_ctrl <= sig_velocidad & sig_sentido;
	
	ent_clk_muestreo : div_frec port map(clk,ciclosMuestreo,clk_muestreo);
	ent_clk_Maquina : div_frec port map(clk,ciclosMaquina,clk_maquina);
	ent_clk_memoria : div_frec port map(clk,ciclosMemoria,clk_memoria);
	
	ent_clk_selec : div_frec port map(clk,ciclosSelec,clk_selec);
	
	btn_sentido : anti_rebote port map(clk_muestreo,sig_ctrl(0),sig_sentido);
	btn_velocidad : anti_rebote port map(clk_muestreo,sig_ctrl(1),sig_velocidad);
	
	ent_maquina : Maquina_Estados port map(new_sig_ctrl,clk_maquina,estado_bin);
	
	ent_memoria : Memoria port map(estado_bin,clk_maquina,estados_4);
	
	ent_mul : Multiplexor port map(estados_4,sig_selec,estado_act);
	
	ent_sel : Selector port map(clk_selec,sig_selec,display);
	
	ent_Deco : Deco port map(estado_act,sig7_f);
	
	
	seg7 <= sig7_f;
	gnd <= display;
		
end func;