library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Contador is

	port
	(
		-- Input ports
		u,d: in	std_logic;
		clk: in  std_logic;
		v	: in	integer;
		vto: in	integer;

		-- Output ports
		vtf: out integer);
		
end Contador;


architecture Conteo of Contador is

		
begin

	
end Conteo;