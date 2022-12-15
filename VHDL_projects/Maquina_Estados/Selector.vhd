library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Selector is
	port(
		clk3 : in std_logic;
		
		sig_sel : out std_logic_vector(1 downto 0);
		gnd : out std_logic_vector(3 downto 0));
		
end Selector;
	
architecture seleccion of Selector is

	signal temp_sel : std_logic_vector(1 downto 0) := "00";
	signal temp_gnd : std_logic_Vector(3 downto 0) := "1110";
	
	component D
		
		port(
			D : in std_logic;
			clk : in std_logic;
			
			Q : out std_logic);
		end component;
begin
	
	process(clk3) 
	
	begin
	
		if rising_edge(clk3) then
			temp_sel(0) <= not temp_sel(0);
			temp_sel(1) <= temp_sel(1) xor temp_sel(0);
		end if;
	end process;
	
	process(temp_sel)
	
	begin
	
		case temp_sel is
			when "00" => gnd <= "1110";
			when "01" => gnd <= "1101";
			when "10" => gnd <= "1011";
			when "11" => gnd <= "0111";
			when others => report "unreachable" severity failure;
		end case;
	end process;
	
		
	sig_sel <= temp_sel;
	
end seleccion;