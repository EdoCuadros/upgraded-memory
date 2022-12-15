library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity senal_pwm is

	-- * Cree las señales de entrada y salida.
	port(
		-- Input
		tauA : in integer;
		clk_2seg : in std_logic;
		--Output
		salida_f : out std_logic);
		
end senal_pwm;


architecture ciclo_trabajo of senal_pwm is

	-- * Diseñe la arquitectura de la entidad.
	
	-- Recuerde que este módulo entrega como salida la señal de pwm dado un cierto ciclo de trabajo.
	
	-- Pista: Su diseño es muy parecido al del divisor de frecuencia.

	signal salida : std_logic := '0';
	signal n : integer  := 1;
	
	begin 
		
		process(clk_2seg)
		begin 
		if falling_edge(clk_2seg) then
		if tauA /= 10 and tauA /= 0 then		--periodo activo diferente al 100% y al 0%
			if n = (tauA/2) then 
				salida <= '1';
				n <=  n + 1;
			elsif n = 5 then 
				salida <= '0' ;
				n <= 1;
			else
				n <= n + 1;
			end if;
			
		elsif tauA = 0 then						--periodo activo igual a 0%
			salida <= '1';
			if n < 5 then 
				n <= n + 1;
			elsif n = 5 then
				n <= 1;
			end if;
			
		elsif tauA = 10 then 					--periodo activo igual a 100%
			salida <= '0';
			if n < 5 then 
				n <= n + 1;
			elsif n = 5 then
				n <= 1;
			end if;
			
		end if; 
		end if;

	end process;
	
	salida_f <= salida; 
	
end ciclo_trabajo;