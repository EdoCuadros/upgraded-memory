library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--   Si revisó los subcapítulos 7.2 y 7.4 del Floyd 9na edición recuerde que:
--   - Una lectura de flanco la puede realizar un flip-flop o un registro (un conjunto de flip-flops) y el 
--     valor que almacena está representado en VHDL por una señal.
   
--	  En la declaración:

--	  if rising_edge(clk) then
--			a <= b;
--	  end if

--   siendo "a" un vector. "clk" es la señal de reloj del registro y "a" el valor que almacena.

--   - Tenga en cuenta lo siguiente si presenta errores de compilación. Un registro solo puede tener una señal 
--     de reloj, o dicho de otro modo, el valor de un registro solo puede ser representado por una señal.

entity Modulador is

	-- * Cree las señales de entrada y salida del modulador.
	
	port( 
		btn_up3 : in std_logic; -- Botón up
		btn_down3 : in std_logic; -- Botón down 
		
		tau_f3 : out integer
	
	);
	 
		
end Modulador;


architecture Modtau of Modulador is
	signal tau : integer := 0;
	signal tau_up : integer := 0;
	signal tau_down : integer := 0;
	
	begin
	process(btn_up3)
	begin
		if falling_edge(btn_up3) then 
			tau_up <= tau_up + 2;
		end if;
	end process;
	
	process(btn_down3)
	begin
		if falling_edge(btn_down3) then 
			tau_down <= tau_down - 2;
		end if;
	end process;
	
	tau <= 4 + tau_up + tau_down;
	
	tau_f3 <= tau when (tau >= 0 and tau <= 10) else 
				 0  when (tau < 0 ) else 10;
				 
--				 
--	begin
--	process(btn_up3, btn_down3) 
--	begin 
--		if falling_edge(btn_up3) and tau < 10  then
--			tau <= tau + 2; 
--			
--		elsif falling_edge(btn_down3) and tau >0 then 
--			tau <= tau - 2; 
--		end if; 
--	end process;
--	
--	tau_f3 <= tau;

	-- * Diseñe la arquitectura del modulador. 
	
	-- Recuerde que el trabajo del modulador es aumentar o disminuir el valor del ciclo de trabajo a partir de
	-- pulsos de entrada.

	-- Puede usar los operadores matemáticos que necesite. No trabaje con números decimales.
	
end Modtau;