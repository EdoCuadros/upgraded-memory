library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity pulsador is
	port(
		p : in std_logic;
		v : out std_logic);
		
end pulsador;

architecture cambio of pulsador is

	signal q : std_logic := '0';
	
begin
	process(p)
	
	begin
	
		if rising_edge(p) then
			q <= not q;
		end if;
	
	end process;
	
	v <= q;
	
end cambio;
