 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Control is
	port(
		sig_ctrl : in std_logic_vector(1 downto 0);
		
		sig_ctrl_out : out std_logic);
end Control;

architecture controlar of Control is
	signal v : std_logic;
	signal temp_ctrl : std_logic;
begin
	v <= sig_ctrl(1) or sig_ctrl(0);
	
	process(v)
	
		begin
			if rising_edge(v) then
				if sig_ctrl(1) = '0' then
					temp_ctrl <= '0';
				elsif sig_ctrl(0) = '0' then
					temp_ctrl <= '1';
				end if;
			end if;
	end process;
	
	sig_ctrl_out <= temp_ctrl;
	
end controlar;
