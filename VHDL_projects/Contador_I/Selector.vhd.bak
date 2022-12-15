library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Selector is
	port(
		clk : in std_logic;
		
		sig_sel : out std_logic;
		gnd : out std_logic_vector(1 downto 0));
		
end Selector;
	
architecture seleccion of Selector is

	signal temp_sel : std_logic := '0';
	signal temp_gnd : std_logic_Vector(1 downto 0):= "10";
begin

	process(clk)
	
	begin
	
		if rising_edge(clk) then
			temp_sel <= not temp_sel;
			temp_gnd <= not temp_gnd;
		end if;
		
	end process;
	
	sig_sel <= temp_sel;
	gnd <= temp_gnd;
	
end seleccion;