 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Botones is
	port(
		btn_i : in std_logic_vector(3 downto 0);
		
		displays : out std_logic_vector(3 downto 0);
		val_display : out std_logic_vector(6 downto 0));
		
end Botones;

architecture pulsar of Botones is

	signal temp : integer;
	signal v : std_logic;
	
begin
	v <= (not btn_i(0)) or (not btn_i(1)) or (not btn_i(2)) or (not btn_i(3));
	
	with temp select
		val_display <= "1000000" when 0,
							"1111001" when 1,
							"0100100" when 2,
							"0110100" when 3,
							"1111111" when others;
				
	process(v)
	variable temp_bt : integer;
	
	begin
		
		if rising_edge(v) then
			displays <= btn_i;
			
			if btn_i = "1110" then
				temp_bt := 0;
			elsif btn_i = "1101" then
				temp_bt := 1;
			elsif btn_i = "1011" then
				temp_bt := 2;
			elsif btn_i = "0111" then
				temp_bt := 3;
			end if;
		end if;
		temp <= temp_bt;
		
	end process;
end pulsar;

