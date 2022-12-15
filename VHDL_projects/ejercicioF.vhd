library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ejercicioF is

	port
	(
		--INput ports
		S : in std_logic_vector(1 downto 0);
		D : in std_logic_vector(3 downto 0);
		--Output ports
		
		Z : out std_logic_vector(3 downto 0));
		
end ejercicioF;


architecture seleccion of ejercicioF is
	
component Ejercicio1

	port
	(
		--INput ports
		S : in std_logic_vector(1 downto 0);
		D : in std_logic_vector(3 downto 0);
		
		--Output ports
		
		Y : out std_logic_vector(3 downto 0));

end component;

	
component demultiplexor

	port
	(
		--INput ports
		S : in std_logic_vector(1 downto 0);
		Y : in std_logic;
		--Output ports
		
		Z : out std_logic_vector(3 downto 0));
	
end component;
	
signal Y : std_logic;	

begin

mux : Ejercicio1 

	port map 
	(
		S => S,
		D => D,
		Y => Y
	);

demux : demultiplexor

	port map 
	(
		S => S,
		Y => Y,
		Z => Z
	);
	
end seleccion;
