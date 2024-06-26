library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity D is
	port(
		D : in std_logic;
		clk : in std_logic;
		
		Q : out std_logic);
end D;

architecture state of D is

	signal qin : std_logic := '0';
	
begin

	process(clk)
	
	begin
		if rising_edge(clk) then
			qin <= D;
		end if;
	end process;
	
	Q <= qin;

end state;