library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity cond_xor is
	port
	(
		B : in std_logic_vector(2 downto 0);
		op : in std_logic;
		S : out std_logic_vector(3 downto 0));
		
end cond_xor;

architecture condicion of cond_xor is	
	
	signal Inv : std_logic_vector(3 downto 0);

	component Sumador is
	
	port(
		A : in std_logic_vector(2 downto 0);
		B : in std_logic_vector(3 downto 0);
		S : out std_logic_vector(3 downto 0));
	end component;
	
begin	
	
	Inv(0) <= B(0) xor op;
	Inv(1) <= B(1) xor op;
	Inv(2) <= B(2) xor op;
	Inv(3) <= op and '1';
	sum : Sumador 
		port map( A => Inv(2 downto 0), B => Inv(3) & "000",  S => S);

end condicion;