library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity XS3_alg is
	port 
	(
		cuenta_bin : in std_logic_vector(5 downto 0);
		clk : in std_logic;
		
		cuenta_BCD : out std_logic_vector(7 downto 0));
			
end XS3_alg;

architecture algoritmo of XS3_alg is

	signal v : std_logic_vector(7 downto 0);
begin 

	process(cuenta_bin)
		
		variable unidades,decenas : std_logic_vector(3 downto 0);
		variable vect,temp_vect : std_logic_vector(7 downto 0) := "00000000";
		variable cont : integer;
	begin	
	
		for i in 0 to 5 loop
		
			cont := 5 - i;
			decenas := vect(7 downto 4);
			unidades := vect(3 downto 0);

			if decenas > "0101" then
				decenas := decenas + "0011";
			end if;
			
			if unidades > "0101" then
				unidades := unidades + "0011";
			end if;
			
			temp_vect := decenas & unidades;
			vect := temp_vect(6 downto 0) & cuenta_bin(cont);
			
		end loop;
			
		v <= vect;
		
	end process;
		
	cuenta_BCD <= v;

end algoritmo;