library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity Sumador_Restador is 
	port(
		
		A : in std_logic_vector(2 downto 0);
		B : in std_logic_vector(2 downto 0);
		op : in std_logic;
		S: out std_logic_vector(3 downto 0));
		
end Sumador_Restador;

architecture sum_res of Sumador_Restador is

	component Sumador is
	port(
		A : in std_logic_vector(2 downto 0);
		B : in std_logic_vector(3 downto 0);
		
		S : out std_logic_vector(3 downto 0));
		
	end component;

	component cond_xor is

	port(
		B : in std_logic_vector(2 downto 0);
		op : in std_logic;
		S : out std_logic_vector(3 downto 0));
	end component;
		
		signal int_sig : std_logic_vector(4 downto 0);
		
		signal v : std_logic_vector(3 downto 0);
	begin 
	
	comp1 : cond_xor 
		port map(
			B(0) => not B(0),
			B(1) => not B(1),
			B(2) => not B(2),
			op   => op,
			S(0) => int_sig(0),
			S(1) => int_sig(1),
			S(2) => int_sig(2),
			S(3) => int_sig(3)
		);
	
	sum : Sumador
		port map(
			A(0) => not A(0),
			A(1) => not A(1),
			A(2) => not A(2),
			B(0) => int_sig(0),
			B(1) => int_sig(1),
			B(2) => int_sig(2),
			B(3) => int_sig(3),
			S(0) => v(0),
			S(1) => v(1),
			S(2) => v(2),
			S(3) => int_sig(4)
		);	
		S(0) <= not v(0);
		S(1) <= not v(1);
		S(2) <= not v(2);
		
		S(3) <= not ((int_sig(4) and (not op)));	
end sum_res;