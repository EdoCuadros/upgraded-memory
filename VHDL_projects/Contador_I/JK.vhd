library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity JK is
	port(
		J,K,clk : in std_logic;
		
		Q : out std_logic);
		
end JK;

architecture ciclo of JK is
	
	signal qin, qout : std_logic := '0';
	signal JK : std_logic_vector(1 downto 0);
	
begin
	
	JK <= J & K;
	
	process(clk)
	
	begin
	
		if rising_edge(clk) then
			qout <= qin;
		end if;
	end process;
		
	with JK select
		qin <= 	qout when "00",
					'0'  when "01",
					'1'  when "10",
					not qout when others;
		
	Q <= qout;
	
end ciclo;


		