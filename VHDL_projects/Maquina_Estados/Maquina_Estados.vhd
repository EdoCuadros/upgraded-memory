library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Maquina_Estados is
	port(
		sig_ctrl : in std_logic_vector(1 downto 0);		--sig(1) = velocidad, sig(0) = sentido
		clk : in std_logic;
		
		estados_bin : out std_logic_vector(3 downto 0));
end Maquina_Estados;

architecture cambio of Maquina_Estados is
	signal Q0, Q1, Q2,Q3 : std_logic;
	signal J0,J1,J2,J3,K0,K1,K2,K3 : std_logic;
	signal vel, sel : std_logic := '0';
	signal btn_vel, btn_sel, v : std_logic;
	component JK
			port(
				J,K,clk : in std_logic;
			
				Q : out std_logic);
		end component;

begin
	v <= sig_ctrl(1) or sig_ctrl(0);
	
	process(v)
	
	begin
		if rising_edge(v) then
			if sig_ctrl(1) = '1' then
				if vel = '1' then
					vel <= '0';
				else 
					vel <= '1';
				end if;
			else
				if sel = '1' then
					sel <= '0';
				else
					sel <= '1';
				end if;
			end if;
		end if;
	end process;

	
	J0 <= not vel;
--	J1 <= ((not Q3) and vel and (not sel)) or ((not Q3) and Q0 and (not sel)) or (Q2 and (not Q0)) or (Q2 and vel) or (Q3 and (not Q0) and sel) or (Q3 and vel and sel);
	J2 <= (Q1 and vel and (not sel)) or (Q1 and Q0 and (not sel)) or (Q3 and (not Q0) and sel) or (Q3 and vel and sel);
	J3 <= ((not Q2) and (not Q1) and (not Q0) and sel) or ((not Q2) and (not Q1) and vel and sel) or (Q2 and Q1 and vel and (not sel)) or (Q2 and Q1 and Q0 and (not sel));
--	
	K0 <= not vel;
	K1 <= ((not Q0) and sel) or vel or (Q0 and (not sel));
	K2 <= ((not Q1) and (not Q0) and sel) or ((not Q1) and vel and sel) or (Q1 and vel and (not sel)) or (Q1 and Q0 and (not sel));
	K3 <= ((not Q0) and sel) or vel or (Q0 and (not sel));
	
	J1 <= (not Q3 and vel and not sel) or (not Q3 and Q0 and not sel) or (Q2 and not Q0) or (Q2 and vel) or (Q3 and not Q0 and sel) or (Q3 and vel and sel);	
		
	FF0 : JK port map(J0,K0,clk,Q0);
	FF1 : JK port map(J1,K1,clk,Q1);
	FF2 : JK port map(J2,K2,clk,Q2);
	FF3 : JK port map(J3,K3,clk,Q3);
	
	estados_bin <= Q3 & Q2 & Q1 & Q0;

end cambio;