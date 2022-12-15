library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity PWM is

	port(
		-- Input ports
		up : in std_logic := '1';
		down : in std_logic:= '1';
		clk : in std_logic;

		-- Output ports
		pwm : out std_logic);

end PWM;

architecture ModPWM of PWM is

-- * Declare las señales que considere necesarias. Estas señales saldrán de unas instancias y entrarán
-- a otras.

-- * Declare el componente del divisor de frecuencia y del antirrebote.
-- * Declare el componente del modulador y de la señal PWM.

	signal f : std_logic;
--	signal f_2 : std_logic;

	signal ciclos10s : integer := 50000000;
	signal ciclosM : integer := 500; --señal de muestreo del boton, deseada
		
	signal senalM : std_logic := '1';
	signal senal2s : std_logic := '0';
	signal clean_up : std_logic;
	signal clean_down : std_logic;

	signal tau : integer;

	component div_frec
		port(
		clk : in  std_logic;
		Nciclos : in integer := 10;
		f : out std_logic);

	end component;

	component anti_rebote
		port(
		clk2: in  std_logic;
		btn2: in std_logic;

		btn_out2: out std_logic);

	end component;

	component Modulador
		port(
		btn_up3: in  std_logic;
		btn_down3: in  std_logic;

		tau_f3: out integer);

	end component;

	component senal_PWM
		port(
		tauA: in  integer;
		clk_2seg: in  std_logic;
		salida_f: out std_logic);

	end component;

	begin

	-- * Cree instancias del divisor de frecuencia para generar la señal de muestreo de los antirrebote
	--   y la señal de reloj del registro que almacenará el conteo del pwm.

	-- * Cree instancias del antirrebote para el pulsador de aumento y de reducción de tau.

	-- * Cree la instancia del modulador y de la señal PWM.

	-- * Conecte las instancias con las señales internas (intermedias) que declaró.

	divisor05s : div_frec
		port map(
		clk => clk,
		Nciclos => ciclosM,
		f => senalM);

	divisor10s : div_frec
		port map(
		clk => clk,
		Nciclos => ciclos10s,
		f => senal2s);

	antirrebote_up : anti_rebote
	port map(
		clk2 => senalM,
		btn2 => up,
		btn_out2 => clean_up);

	antirrebote_down : anti_rebote
		port map(
		clk2 => senalM,
		btn2 => down,
		btn_out2 => clean_down);

	modul : Modulador
		port map(
		btn_up3 => clean_up,
		btn_down3 => clean_down,
		tau_f3 => tau);


	senal : senal_PWM
		port map(
		tauA => tau,
		clk_2seg => senal2s,
		salida_f => f);

	pwm <= f;

end ModPWM;