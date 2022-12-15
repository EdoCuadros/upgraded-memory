 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Control is
	port(
		start : std_logic;
		stop : std_logic;
			
		sig_ctrl : out std_logic := '1');
		
end Control;

architecture controlar of Control is

	signal temp_ctrl : std_logic := '1';
begin 
	process(start,stop)
	
	begin

		if start = '0' then
			temp_ctrl <= '1';
		elsif stop = '0' then
			temp_ctrl <= '0';
		end if;
	end process;
	
	sig_ctrl <= temp_ctrl;
	
end controlar;
	
	

