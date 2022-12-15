-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/22/2022 11:24:19"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Principal IS
    PORT (
	sig_ctrl : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	\gnd\ : BUFFER std_logic_vector(3 DOWNTO 0);
	seg7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Principal;

-- Design Ports Information
-- gnd[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[5]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_ctrl[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_ctrl[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Principal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sig_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \ww_gnd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ent_clk_Maquina|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent_maquina|v~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent_clk_selec|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gnd[0]~output_o\ : std_logic;
SIGNAL \gnd[1]~output_o\ : std_logic;
SIGNAL \gnd[2]~output_o\ : std_logic;
SIGNAL \gnd[3]~output_o\ : std_logic;
SIGNAL \seg7[0]~output_o\ : std_logic;
SIGNAL \seg7[1]~output_o\ : std_logic;
SIGNAL \seg7[2]~output_o\ : std_logic;
SIGNAL \seg7[3]~output_o\ : std_logic;
SIGNAL \seg7[4]~output_o\ : std_logic;
SIGNAL \seg7[5]~output_o\ : std_logic;
SIGNAL \seg7[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ent_clk_selec|Add0~0_combout\ : std_logic;
SIGNAL \ent_clk_selec|cuenta~5_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~1\ : std_logic;
SIGNAL \ent_clk_selec|Add0~2_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~3\ : std_logic;
SIGNAL \ent_clk_selec|Add0~4_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~5\ : std_logic;
SIGNAL \ent_clk_selec|Add0~6_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~6_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~7\ : std_logic;
SIGNAL \ent_clk_selec|Add0~8_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~9\ : std_logic;
SIGNAL \ent_clk_selec|Add0~10_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~11\ : std_logic;
SIGNAL \ent_clk_selec|Add0~12_combout\ : std_logic;
SIGNAL \ent_clk_selec|cuenta~4_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~13\ : std_logic;
SIGNAL \ent_clk_selec|Add0~14_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~5_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~15\ : std_logic;
SIGNAL \ent_clk_selec|Add0~16_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~17\ : std_logic;
SIGNAL \ent_clk_selec|Add0~18_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~19\ : std_logic;
SIGNAL \ent_clk_selec|Add0~20_combout\ : std_logic;
SIGNAL \ent_clk_selec|cuenta~3_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~21\ : std_logic;
SIGNAL \ent_clk_selec|Add0~22_combout\ : std_logic;
SIGNAL \ent_clk_selec|cuenta~2_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~23\ : std_logic;
SIGNAL \ent_clk_selec|Add0~24_combout\ : std_logic;
SIGNAL \ent_clk_selec|cuenta~1_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~25\ : std_logic;
SIGNAL \ent_clk_selec|Add0~26_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~27\ : std_logic;
SIGNAL \ent_clk_selec|Add0~28_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~29\ : std_logic;
SIGNAL \ent_clk_selec|Add0~30_combout\ : std_logic;
SIGNAL \ent_clk_selec|cuenta~0_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~2_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~3_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~31\ : std_logic;
SIGNAL \ent_clk_selec|Add0~32_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~33\ : std_logic;
SIGNAL \ent_clk_selec|Add0~34_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~35\ : std_logic;
SIGNAL \ent_clk_selec|Add0~36_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~37\ : std_logic;
SIGNAL \ent_clk_selec|Add0~38_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~1_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~39\ : std_logic;
SIGNAL \ent_clk_selec|Add0~40_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~41\ : std_logic;
SIGNAL \ent_clk_selec|Add0~42_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~43\ : std_logic;
SIGNAL \ent_clk_selec|Add0~44_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~45\ : std_logic;
SIGNAL \ent_clk_selec|Add0~46_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~0_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~4_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~47\ : std_logic;
SIGNAL \ent_clk_selec|Add0~48_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~49\ : std_logic;
SIGNAL \ent_clk_selec|Add0~50_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~51\ : std_logic;
SIGNAL \ent_clk_selec|Add0~52_combout\ : std_logic;
SIGNAL \ent_clk_selec|Add0~53\ : std_logic;
SIGNAL \ent_clk_selec|Add0~54_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~7_combout\ : std_logic;
SIGNAL \ent_clk_selec|Equal0~8_combout\ : std_logic;
SIGNAL \ent_clk_selec|salida~0_combout\ : std_logic;
SIGNAL \ent_clk_selec|salida~feeder_combout\ : std_logic;
SIGNAL \ent_clk_selec|salida~q\ : std_logic;
SIGNAL \ent_clk_selec|salida~clkctrl_outclk\ : std_logic;
SIGNAL \ent_sel|temp_sel[0]~1_combout\ : std_logic;
SIGNAL \ent_sel|temp_sel[1]~0_combout\ : std_logic;
SIGNAL \ent_sel|Mux3~0_combout\ : std_logic;
SIGNAL \ent_sel|Mux2~0_combout\ : std_logic;
SIGNAL \ent_sel|Mux1~0_combout\ : std_logic;
SIGNAL \ent_sel|Mux0~0_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~0_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~11_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~1\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~2_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~3\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~4_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~5\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~6_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~7\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~8_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~9\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~10_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~11\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~12_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~10_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~13\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~14_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~15\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~16_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~17\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~18_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~19\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~20_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~21\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~22_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~9_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~23\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~24_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~8_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~25\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~26_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~7_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~27\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~28_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~6_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~29\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~30_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~31\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~32_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~5_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~33\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~34_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~35\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~36_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~4_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~37\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~38_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~3_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~39\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~40_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~2_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~41\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~42_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~1_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~43\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~44_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~0_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~45\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~46_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~47\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~48_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta~12_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~49\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~50_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~51\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~52_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~53\ : std_logic;
SIGNAL \ent_clk_Maquina|Add0~54_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~7_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~5_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~6_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~0_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~1_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~2_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~3_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~4_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|Equal0~8_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|salida~0_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|salida~feeder_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|salida~q\ : std_logic;
SIGNAL \ent_clk_Maquina|salida~clkctrl_outclk\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~0_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~6_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~1\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~2_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~3\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~4_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~5_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~5\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~6_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~6_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~7\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~8_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~4_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~9\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~10_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~3_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~11\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~12_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~2_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~13\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~14_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~1_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~5_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~15\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~16_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|cuenta~0_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~17\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~18_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~19\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~20_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~21\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~22_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~23\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~24_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~25\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~26_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~27\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~28_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~29\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~30_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~31\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~32_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~33\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~34_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~35\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~36_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~37\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~38_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~1_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~3_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~39\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~40_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~41\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~42_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~43\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~44_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~45\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~46_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~0_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~2_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~4_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~47\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~48_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~49\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~50_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~51\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~52_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~53\ : std_logic;
SIGNAL \ent_clk_muestreo|Add0~54_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~7_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|Equal0~8_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|salida~0_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|salida~feeder_combout\ : std_logic;
SIGNAL \ent_clk_muestreo|salida~q\ : std_logic;
SIGNAL \sig_ctrl[1]~input_o\ : std_logic;
SIGNAL \btn_velocidad|reg[0]~0_combout\ : std_logic;
SIGNAL \btn_velocidad|reg[1]~feeder_combout\ : std_logic;
SIGNAL \btn_velocidad|reg[2]~feeder_combout\ : std_logic;
SIGNAL \btn_velocidad|reg[3]~feeder_combout\ : std_logic;
SIGNAL \btn_velocidad|Equal0~0_combout\ : std_logic;
SIGNAL \sig_ctrl[0]~input_o\ : std_logic;
SIGNAL \btn_sentido|reg[0]~0_combout\ : std_logic;
SIGNAL \btn_sentido|reg[1]~feeder_combout\ : std_logic;
SIGNAL \btn_sentido|reg[2]~feeder_combout\ : std_logic;
SIGNAL \btn_sentido|Equal0~0_combout\ : std_logic;
SIGNAL \ent_maquina|v~combout\ : std_logic;
SIGNAL \ent_maquina|v~clkctrl_outclk\ : std_logic;
SIGNAL \ent_maquina|vel~0_combout\ : std_logic;
SIGNAL \ent_maquina|vel~q\ : std_logic;
SIGNAL \ent_maquina|FF0|Mux0~0_combout\ : std_logic;
SIGNAL \ent_maquina|FF0|qout~q\ : std_logic;
SIGNAL \ent_maquina|sel~0_combout\ : std_logic;
SIGNAL \ent_maquina|sel~q\ : std_logic;
SIGNAL \ent_maquina|K3~0_combout\ : std_logic;
SIGNAL \ent_maquina|FF2|Mux0~0_combout\ : std_logic;
SIGNAL \ent_maquina|FF3|Mux0~0_combout\ : std_logic;
SIGNAL \ent_maquina|K2~0_combout\ : std_logic;
SIGNAL \ent_maquina|FF2|Mux0~1_combout\ : std_logic;
SIGNAL \ent_maquina|FF2|qout~q\ : std_logic;
SIGNAL \ent_maquina|FF3|Mux0~1_combout\ : std_logic;
SIGNAL \ent_maquina|FF3|Mux0~2_combout\ : std_logic;
SIGNAL \ent_maquina|FF3|qout~q\ : std_logic;
SIGNAL \ent_maquina|FF1|Mux0~0_combout\ : std_logic;
SIGNAL \ent_maquina|FF1|Mux0~1_combout\ : std_logic;
SIGNAL \ent_maquina|FF1|Mux0~2_combout\ : std_logic;
SIGNAL \ent_maquina|FF1|Mux0~3_combout\ : std_logic;
SIGNAL \ent_maquina|FF1|qout~q\ : std_logic;
SIGNAL \ent_memoria|vect2[1]~feeder_combout\ : std_logic;
SIGNAL \ent_memoria|vect3[1]~feeder_combout\ : std_logic;
SIGNAL \ent_mul|Mux2~0_combout\ : std_logic;
SIGNAL \ent_mul|Mux2~1_combout\ : std_logic;
SIGNAL \ent_mul|Mux1~0_combout\ : std_logic;
SIGNAL \ent_memoria|vect3[2]~feeder_combout\ : std_logic;
SIGNAL \ent_mul|Mux1~1_combout\ : std_logic;
SIGNAL \ent_memoria|vect2[3]~feeder_combout\ : std_logic;
SIGNAL \ent_mul|Mux0~0_combout\ : std_logic;
SIGNAL \ent_memoria|vect3[3]~feeder_combout\ : std_logic;
SIGNAL \ent_mul|Mux0~1_combout\ : std_logic;
SIGNAL \ent_memoria|vect2[0]~feeder_combout\ : std_logic;
SIGNAL \ent_mul|Mux3~0_combout\ : std_logic;
SIGNAL \ent_memoria|vect3[0]~feeder_combout\ : std_logic;
SIGNAL \ent_mul|Mux3~1_combout\ : std_logic;
SIGNAL \ent_Deco|Mux6~0_combout\ : std_logic;
SIGNAL \ent_Deco|Mux5~0_combout\ : std_logic;
SIGNAL \ent_Deco|Mux4~0_combout\ : std_logic;
SIGNAL \ent_Deco|Mux3~0_combout\ : std_logic;
SIGNAL \ent_Deco|Mux2~0_combout\ : std_logic;
SIGNAL \ent_Deco|Mux1~0_combout\ : std_logic;
SIGNAL \ent_Deco|Mux0~0_combout\ : std_logic;
SIGNAL \ent_clk_Maquina|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ent_clk_selec|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ent_sel|temp_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ent_memoria|vect3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent_memoria|vect2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent_memoria|vect1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_sentido|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent_memoria|vect4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_velocidad|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent_clk_muestreo|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ent_Deco|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sig_ctrl <= sig_ctrl;
ww_clk <= clk;
\gnd\ <= \ww_gnd\;
seg7 <= ww_seg7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ent_clk_Maquina|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ent_clk_Maquina|salida~q\);

\ent_maquina|v~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ent_maquina|v~combout\);

\ent_clk_selec|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ent_clk_selec|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ent_Deco|ALT_INV_Mux0~0_combout\ <= NOT \ent_Deco|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\gnd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_sel|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \gnd[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\gnd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_sel|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \gnd[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\gnd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_sel|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \gnd[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\gnd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_sel|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \gnd[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg7[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg7[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg7[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg7[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg7[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\seg7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg7[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\seg7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ent_Deco|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg7[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y10_N4
\ent_clk_selec|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~0_combout\ = \ent_clk_selec|cuenta\(0) $ (VCC)
-- \ent_clk_selec|Add0~1\ = CARRY(\ent_clk_selec|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(0),
	datad => VCC,
	combout => \ent_clk_selec|Add0~0_combout\,
	cout => \ent_clk_selec|Add0~1\);

-- Location: LCCOMB_X4_Y10_N2
\ent_clk_selec|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|cuenta~5_combout\ = (\ent_clk_selec|Add0~0_combout\ & !\ent_clk_selec|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_selec|Add0~0_combout\,
	datad => \ent_clk_selec|Equal0~8_combout\,
	combout => \ent_clk_selec|cuenta~5_combout\);

-- Location: FF_X4_Y10_N3
\ent_clk_selec|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(0));

-- Location: LCCOMB_X4_Y10_N6
\ent_clk_selec|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~2_combout\ = (\ent_clk_selec|cuenta\(1) & (!\ent_clk_selec|Add0~1\)) # (!\ent_clk_selec|cuenta\(1) & ((\ent_clk_selec|Add0~1\) # (GND)))
-- \ent_clk_selec|Add0~3\ = CARRY((!\ent_clk_selec|Add0~1\) # (!\ent_clk_selec|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(1),
	datad => VCC,
	cin => \ent_clk_selec|Add0~1\,
	combout => \ent_clk_selec|Add0~2_combout\,
	cout => \ent_clk_selec|Add0~3\);

-- Location: FF_X4_Y10_N7
\ent_clk_selec|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(1));

-- Location: LCCOMB_X4_Y10_N8
\ent_clk_selec|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~4_combout\ = (\ent_clk_selec|cuenta\(2) & (\ent_clk_selec|Add0~3\ $ (GND))) # (!\ent_clk_selec|cuenta\(2) & (!\ent_clk_selec|Add0~3\ & VCC))
-- \ent_clk_selec|Add0~5\ = CARRY((\ent_clk_selec|cuenta\(2) & !\ent_clk_selec|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(2),
	datad => VCC,
	cin => \ent_clk_selec|Add0~3\,
	combout => \ent_clk_selec|Add0~4_combout\,
	cout => \ent_clk_selec|Add0~5\);

-- Location: FF_X4_Y10_N9
\ent_clk_selec|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(2));

-- Location: LCCOMB_X4_Y10_N10
\ent_clk_selec|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~6_combout\ = (\ent_clk_selec|cuenta\(3) & (!\ent_clk_selec|Add0~5\)) # (!\ent_clk_selec|cuenta\(3) & ((\ent_clk_selec|Add0~5\) # (GND)))
-- \ent_clk_selec|Add0~7\ = CARRY((!\ent_clk_selec|Add0~5\) # (!\ent_clk_selec|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(3),
	datad => VCC,
	cin => \ent_clk_selec|Add0~5\,
	combout => \ent_clk_selec|Add0~6_combout\,
	cout => \ent_clk_selec|Add0~7\);

-- Location: FF_X4_Y10_N11
\ent_clk_selec|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(3));

-- Location: LCCOMB_X5_Y10_N10
\ent_clk_selec|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~6_combout\ = (!\ent_clk_selec|cuenta\(0) & (!\ent_clk_selec|cuenta\(1) & (!\ent_clk_selec|cuenta\(2) & !\ent_clk_selec|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(0),
	datab => \ent_clk_selec|cuenta\(1),
	datac => \ent_clk_selec|cuenta\(2),
	datad => \ent_clk_selec|cuenta\(3),
	combout => \ent_clk_selec|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y10_N12
\ent_clk_selec|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~8_combout\ = (\ent_clk_selec|cuenta\(4) & (\ent_clk_selec|Add0~7\ $ (GND))) # (!\ent_clk_selec|cuenta\(4) & (!\ent_clk_selec|Add0~7\ & VCC))
-- \ent_clk_selec|Add0~9\ = CARRY((\ent_clk_selec|cuenta\(4) & !\ent_clk_selec|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(4),
	datad => VCC,
	cin => \ent_clk_selec|Add0~7\,
	combout => \ent_clk_selec|Add0~8_combout\,
	cout => \ent_clk_selec|Add0~9\);

-- Location: FF_X4_Y10_N13
\ent_clk_selec|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(4));

-- Location: LCCOMB_X4_Y10_N14
\ent_clk_selec|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~10_combout\ = (\ent_clk_selec|cuenta\(5) & (!\ent_clk_selec|Add0~9\)) # (!\ent_clk_selec|cuenta\(5) & ((\ent_clk_selec|Add0~9\) # (GND)))
-- \ent_clk_selec|Add0~11\ = CARRY((!\ent_clk_selec|Add0~9\) # (!\ent_clk_selec|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(5),
	datad => VCC,
	cin => \ent_clk_selec|Add0~9\,
	combout => \ent_clk_selec|Add0~10_combout\,
	cout => \ent_clk_selec|Add0~11\);

-- Location: FF_X4_Y10_N15
\ent_clk_selec|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(5));

-- Location: LCCOMB_X4_Y10_N16
\ent_clk_selec|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~12_combout\ = (\ent_clk_selec|cuenta\(6) & (\ent_clk_selec|Add0~11\ $ (GND))) # (!\ent_clk_selec|cuenta\(6) & (!\ent_clk_selec|Add0~11\ & VCC))
-- \ent_clk_selec|Add0~13\ = CARRY((\ent_clk_selec|cuenta\(6) & !\ent_clk_selec|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(6),
	datad => VCC,
	cin => \ent_clk_selec|Add0~11\,
	combout => \ent_clk_selec|Add0~12_combout\,
	cout => \ent_clk_selec|Add0~13\);

-- Location: LCCOMB_X4_Y10_N0
\ent_clk_selec|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|cuenta~4_combout\ = (\ent_clk_selec|Add0~12_combout\ & !\ent_clk_selec|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|Add0~12_combout\,
	datad => \ent_clk_selec|Equal0~8_combout\,
	combout => \ent_clk_selec|cuenta~4_combout\);

-- Location: FF_X4_Y10_N1
\ent_clk_selec|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(6));

-- Location: LCCOMB_X4_Y10_N18
\ent_clk_selec|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~14_combout\ = (\ent_clk_selec|cuenta\(7) & (!\ent_clk_selec|Add0~13\)) # (!\ent_clk_selec|cuenta\(7) & ((\ent_clk_selec|Add0~13\) # (GND)))
-- \ent_clk_selec|Add0~15\ = CARRY((!\ent_clk_selec|Add0~13\) # (!\ent_clk_selec|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(7),
	datad => VCC,
	cin => \ent_clk_selec|Add0~13\,
	combout => \ent_clk_selec|Add0~14_combout\,
	cout => \ent_clk_selec|Add0~15\);

-- Location: FF_X4_Y10_N19
\ent_clk_selec|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(7));

-- Location: LCCOMB_X5_Y10_N18
\ent_clk_selec|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~5_combout\ = (!\ent_clk_selec|cuenta\(5) & (!\ent_clk_selec|cuenta\(4) & (\ent_clk_selec|cuenta\(6) & !\ent_clk_selec|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(5),
	datab => \ent_clk_selec|cuenta\(4),
	datac => \ent_clk_selec|cuenta\(6),
	datad => \ent_clk_selec|cuenta\(7),
	combout => \ent_clk_selec|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y10_N20
\ent_clk_selec|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~16_combout\ = (\ent_clk_selec|cuenta\(8) & (\ent_clk_selec|Add0~15\ $ (GND))) # (!\ent_clk_selec|cuenta\(8) & (!\ent_clk_selec|Add0~15\ & VCC))
-- \ent_clk_selec|Add0~17\ = CARRY((\ent_clk_selec|cuenta\(8) & !\ent_clk_selec|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(8),
	datad => VCC,
	cin => \ent_clk_selec|Add0~15\,
	combout => \ent_clk_selec|Add0~16_combout\,
	cout => \ent_clk_selec|Add0~17\);

-- Location: FF_X4_Y10_N21
\ent_clk_selec|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(8));

-- Location: LCCOMB_X4_Y10_N22
\ent_clk_selec|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~18_combout\ = (\ent_clk_selec|cuenta\(9) & (!\ent_clk_selec|Add0~17\)) # (!\ent_clk_selec|cuenta\(9) & ((\ent_clk_selec|Add0~17\) # (GND)))
-- \ent_clk_selec|Add0~19\ = CARRY((!\ent_clk_selec|Add0~17\) # (!\ent_clk_selec|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(9),
	datad => VCC,
	cin => \ent_clk_selec|Add0~17\,
	combout => \ent_clk_selec|Add0~18_combout\,
	cout => \ent_clk_selec|Add0~19\);

-- Location: FF_X4_Y10_N23
\ent_clk_selec|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(9));

-- Location: LCCOMB_X4_Y10_N24
\ent_clk_selec|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~20_combout\ = (\ent_clk_selec|cuenta\(10) & (\ent_clk_selec|Add0~19\ $ (GND))) # (!\ent_clk_selec|cuenta\(10) & (!\ent_clk_selec|Add0~19\ & VCC))
-- \ent_clk_selec|Add0~21\ = CARRY((\ent_clk_selec|cuenta\(10) & !\ent_clk_selec|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(10),
	datad => VCC,
	cin => \ent_clk_selec|Add0~19\,
	combout => \ent_clk_selec|Add0~20_combout\,
	cout => \ent_clk_selec|Add0~21\);

-- Location: LCCOMB_X5_Y10_N20
\ent_clk_selec|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|cuenta~3_combout\ = (!\ent_clk_selec|Equal0~8_combout\ & \ent_clk_selec|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|Equal0~8_combout\,
	datad => \ent_clk_selec|Add0~20_combout\,
	combout => \ent_clk_selec|cuenta~3_combout\);

-- Location: FF_X5_Y10_N21
\ent_clk_selec|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(10));

-- Location: LCCOMB_X4_Y10_N26
\ent_clk_selec|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~22_combout\ = (\ent_clk_selec|cuenta\(11) & (!\ent_clk_selec|Add0~21\)) # (!\ent_clk_selec|cuenta\(11) & ((\ent_clk_selec|Add0~21\) # (GND)))
-- \ent_clk_selec|Add0~23\ = CARRY((!\ent_clk_selec|Add0~21\) # (!\ent_clk_selec|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(11),
	datad => VCC,
	cin => \ent_clk_selec|Add0~21\,
	combout => \ent_clk_selec|Add0~22_combout\,
	cout => \ent_clk_selec|Add0~23\);

-- Location: LCCOMB_X5_Y10_N4
\ent_clk_selec|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|cuenta~2_combout\ = (\ent_clk_selec|Add0~22_combout\ & !\ent_clk_selec|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_selec|Add0~22_combout\,
	datad => \ent_clk_selec|Equal0~8_combout\,
	combout => \ent_clk_selec|cuenta~2_combout\);

-- Location: FF_X5_Y10_N5
\ent_clk_selec|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(11));

-- Location: LCCOMB_X4_Y10_N28
\ent_clk_selec|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~24_combout\ = (\ent_clk_selec|cuenta\(12) & (\ent_clk_selec|Add0~23\ $ (GND))) # (!\ent_clk_selec|cuenta\(12) & (!\ent_clk_selec|Add0~23\ & VCC))
-- \ent_clk_selec|Add0~25\ = CARRY((\ent_clk_selec|cuenta\(12) & !\ent_clk_selec|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(12),
	datad => VCC,
	cin => \ent_clk_selec|Add0~23\,
	combout => \ent_clk_selec|Add0~24_combout\,
	cout => \ent_clk_selec|Add0~25\);

-- Location: LCCOMB_X5_Y10_N6
\ent_clk_selec|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|cuenta~1_combout\ = (!\ent_clk_selec|Equal0~8_combout\ & \ent_clk_selec|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|Equal0~8_combout\,
	datad => \ent_clk_selec|Add0~24_combout\,
	combout => \ent_clk_selec|cuenta~1_combout\);

-- Location: FF_X5_Y10_N7
\ent_clk_selec|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(12));

-- Location: LCCOMB_X4_Y10_N30
\ent_clk_selec|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~26_combout\ = (\ent_clk_selec|cuenta\(13) & (!\ent_clk_selec|Add0~25\)) # (!\ent_clk_selec|cuenta\(13) & ((\ent_clk_selec|Add0~25\) # (GND)))
-- \ent_clk_selec|Add0~27\ = CARRY((!\ent_clk_selec|Add0~25\) # (!\ent_clk_selec|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(13),
	datad => VCC,
	cin => \ent_clk_selec|Add0~25\,
	combout => \ent_clk_selec|Add0~26_combout\,
	cout => \ent_clk_selec|Add0~27\);

-- Location: FF_X4_Y10_N31
\ent_clk_selec|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(13));

-- Location: LCCOMB_X4_Y9_N0
\ent_clk_selec|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~28_combout\ = (\ent_clk_selec|cuenta\(14) & (\ent_clk_selec|Add0~27\ $ (GND))) # (!\ent_clk_selec|cuenta\(14) & (!\ent_clk_selec|Add0~27\ & VCC))
-- \ent_clk_selec|Add0~29\ = CARRY((\ent_clk_selec|cuenta\(14) & !\ent_clk_selec|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(14),
	datad => VCC,
	cin => \ent_clk_selec|Add0~27\,
	combout => \ent_clk_selec|Add0~28_combout\,
	cout => \ent_clk_selec|Add0~29\);

-- Location: FF_X4_Y9_N1
\ent_clk_selec|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(14));

-- Location: LCCOMB_X4_Y9_N2
\ent_clk_selec|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~30_combout\ = (\ent_clk_selec|cuenta\(15) & (!\ent_clk_selec|Add0~29\)) # (!\ent_clk_selec|cuenta\(15) & ((\ent_clk_selec|Add0~29\) # (GND)))
-- \ent_clk_selec|Add0~31\ = CARRY((!\ent_clk_selec|Add0~29\) # (!\ent_clk_selec|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(15),
	datad => VCC,
	cin => \ent_clk_selec|Add0~29\,
	combout => \ent_clk_selec|Add0~30_combout\,
	cout => \ent_clk_selec|Add0~31\);

-- Location: LCCOMB_X4_Y9_N30
\ent_clk_selec|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|cuenta~0_combout\ = (!\ent_clk_selec|Equal0~8_combout\ & \ent_clk_selec|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_selec|Equal0~8_combout\,
	datad => \ent_clk_selec|Add0~30_combout\,
	combout => \ent_clk_selec|cuenta~0_combout\);

-- Location: FF_X4_Y9_N31
\ent_clk_selec|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(15));

-- Location: LCCOMB_X5_Y10_N12
\ent_clk_selec|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~2_combout\ = (\ent_clk_selec|cuenta\(12) & (!\ent_clk_selec|cuenta\(13) & (!\ent_clk_selec|cuenta\(14) & \ent_clk_selec|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(12),
	datab => \ent_clk_selec|cuenta\(13),
	datac => \ent_clk_selec|cuenta\(14),
	datad => \ent_clk_selec|cuenta\(15),
	combout => \ent_clk_selec|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y10_N14
\ent_clk_selec|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~3_combout\ = (\ent_clk_selec|cuenta\(10) & (!\ent_clk_selec|cuenta\(8) & (\ent_clk_selec|cuenta\(11) & !\ent_clk_selec|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(10),
	datab => \ent_clk_selec|cuenta\(8),
	datac => \ent_clk_selec|cuenta\(11),
	datad => \ent_clk_selec|cuenta\(9),
	combout => \ent_clk_selec|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y9_N4
\ent_clk_selec|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~32_combout\ = (\ent_clk_selec|cuenta\(16) & (\ent_clk_selec|Add0~31\ $ (GND))) # (!\ent_clk_selec|cuenta\(16) & (!\ent_clk_selec|Add0~31\ & VCC))
-- \ent_clk_selec|Add0~33\ = CARRY((\ent_clk_selec|cuenta\(16) & !\ent_clk_selec|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(16),
	datad => VCC,
	cin => \ent_clk_selec|Add0~31\,
	combout => \ent_clk_selec|Add0~32_combout\,
	cout => \ent_clk_selec|Add0~33\);

-- Location: FF_X4_Y9_N5
\ent_clk_selec|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(16));

-- Location: LCCOMB_X4_Y9_N6
\ent_clk_selec|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~34_combout\ = (\ent_clk_selec|cuenta\(17) & (!\ent_clk_selec|Add0~33\)) # (!\ent_clk_selec|cuenta\(17) & ((\ent_clk_selec|Add0~33\) # (GND)))
-- \ent_clk_selec|Add0~35\ = CARRY((!\ent_clk_selec|Add0~33\) # (!\ent_clk_selec|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(17),
	datad => VCC,
	cin => \ent_clk_selec|Add0~33\,
	combout => \ent_clk_selec|Add0~34_combout\,
	cout => \ent_clk_selec|Add0~35\);

-- Location: FF_X4_Y9_N7
\ent_clk_selec|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(17));

-- Location: LCCOMB_X4_Y9_N8
\ent_clk_selec|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~36_combout\ = (\ent_clk_selec|cuenta\(18) & (\ent_clk_selec|Add0~35\ $ (GND))) # (!\ent_clk_selec|cuenta\(18) & (!\ent_clk_selec|Add0~35\ & VCC))
-- \ent_clk_selec|Add0~37\ = CARRY((\ent_clk_selec|cuenta\(18) & !\ent_clk_selec|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(18),
	datad => VCC,
	cin => \ent_clk_selec|Add0~35\,
	combout => \ent_clk_selec|Add0~36_combout\,
	cout => \ent_clk_selec|Add0~37\);

-- Location: FF_X4_Y9_N9
\ent_clk_selec|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(18));

-- Location: LCCOMB_X4_Y9_N10
\ent_clk_selec|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~38_combout\ = (\ent_clk_selec|cuenta\(19) & (!\ent_clk_selec|Add0~37\)) # (!\ent_clk_selec|cuenta\(19) & ((\ent_clk_selec|Add0~37\) # (GND)))
-- \ent_clk_selec|Add0~39\ = CARRY((!\ent_clk_selec|Add0~37\) # (!\ent_clk_selec|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(19),
	datad => VCC,
	cin => \ent_clk_selec|Add0~37\,
	combout => \ent_clk_selec|Add0~38_combout\,
	cout => \ent_clk_selec|Add0~39\);

-- Location: FF_X4_Y9_N11
\ent_clk_selec|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(19));

-- Location: LCCOMB_X5_Y10_N26
\ent_clk_selec|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~1_combout\ = (!\ent_clk_selec|cuenta\(17) & (!\ent_clk_selec|cuenta\(19) & (!\ent_clk_selec|cuenta\(18) & !\ent_clk_selec|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(17),
	datab => \ent_clk_selec|cuenta\(19),
	datac => \ent_clk_selec|cuenta\(18),
	datad => \ent_clk_selec|cuenta\(16),
	combout => \ent_clk_selec|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y9_N12
\ent_clk_selec|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~40_combout\ = (\ent_clk_selec|cuenta\(20) & (\ent_clk_selec|Add0~39\ $ (GND))) # (!\ent_clk_selec|cuenta\(20) & (!\ent_clk_selec|Add0~39\ & VCC))
-- \ent_clk_selec|Add0~41\ = CARRY((\ent_clk_selec|cuenta\(20) & !\ent_clk_selec|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(20),
	datad => VCC,
	cin => \ent_clk_selec|Add0~39\,
	combout => \ent_clk_selec|Add0~40_combout\,
	cout => \ent_clk_selec|Add0~41\);

-- Location: FF_X4_Y9_N13
\ent_clk_selec|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(20));

-- Location: LCCOMB_X4_Y9_N14
\ent_clk_selec|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~42_combout\ = (\ent_clk_selec|cuenta\(21) & (!\ent_clk_selec|Add0~41\)) # (!\ent_clk_selec|cuenta\(21) & ((\ent_clk_selec|Add0~41\) # (GND)))
-- \ent_clk_selec|Add0~43\ = CARRY((!\ent_clk_selec|Add0~41\) # (!\ent_clk_selec|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(21),
	datad => VCC,
	cin => \ent_clk_selec|Add0~41\,
	combout => \ent_clk_selec|Add0~42_combout\,
	cout => \ent_clk_selec|Add0~43\);

-- Location: FF_X4_Y9_N15
\ent_clk_selec|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(21));

-- Location: LCCOMB_X4_Y9_N16
\ent_clk_selec|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~44_combout\ = (\ent_clk_selec|cuenta\(22) & (\ent_clk_selec|Add0~43\ $ (GND))) # (!\ent_clk_selec|cuenta\(22) & (!\ent_clk_selec|Add0~43\ & VCC))
-- \ent_clk_selec|Add0~45\ = CARRY((\ent_clk_selec|cuenta\(22) & !\ent_clk_selec|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(22),
	datad => VCC,
	cin => \ent_clk_selec|Add0~43\,
	combout => \ent_clk_selec|Add0~44_combout\,
	cout => \ent_clk_selec|Add0~45\);

-- Location: FF_X4_Y9_N17
\ent_clk_selec|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(22));

-- Location: LCCOMB_X4_Y9_N18
\ent_clk_selec|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~46_combout\ = (\ent_clk_selec|cuenta\(23) & (!\ent_clk_selec|Add0~45\)) # (!\ent_clk_selec|cuenta\(23) & ((\ent_clk_selec|Add0~45\) # (GND)))
-- \ent_clk_selec|Add0~47\ = CARRY((!\ent_clk_selec|Add0~45\) # (!\ent_clk_selec|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(23),
	datad => VCC,
	cin => \ent_clk_selec|Add0~45\,
	combout => \ent_clk_selec|Add0~46_combout\,
	cout => \ent_clk_selec|Add0~47\);

-- Location: FF_X4_Y9_N19
\ent_clk_selec|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(23));

-- Location: LCCOMB_X4_Y9_N28
\ent_clk_selec|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~0_combout\ = (!\ent_clk_selec|cuenta\(20) & (!\ent_clk_selec|cuenta\(23) & (!\ent_clk_selec|cuenta\(21) & !\ent_clk_selec|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(20),
	datab => \ent_clk_selec|cuenta\(23),
	datac => \ent_clk_selec|cuenta\(21),
	datad => \ent_clk_selec|cuenta\(22),
	combout => \ent_clk_selec|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y10_N22
\ent_clk_selec|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~4_combout\ = (\ent_clk_selec|Equal0~2_combout\ & (\ent_clk_selec|Equal0~3_combout\ & (\ent_clk_selec|Equal0~1_combout\ & \ent_clk_selec|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|Equal0~2_combout\,
	datab => \ent_clk_selec|Equal0~3_combout\,
	datac => \ent_clk_selec|Equal0~1_combout\,
	datad => \ent_clk_selec|Equal0~0_combout\,
	combout => \ent_clk_selec|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y9_N20
\ent_clk_selec|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~48_combout\ = (\ent_clk_selec|cuenta\(24) & (\ent_clk_selec|Add0~47\ $ (GND))) # (!\ent_clk_selec|cuenta\(24) & (!\ent_clk_selec|Add0~47\ & VCC))
-- \ent_clk_selec|Add0~49\ = CARRY((\ent_clk_selec|cuenta\(24) & !\ent_clk_selec|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(24),
	datad => VCC,
	cin => \ent_clk_selec|Add0~47\,
	combout => \ent_clk_selec|Add0~48_combout\,
	cout => \ent_clk_selec|Add0~49\);

-- Location: FF_X4_Y9_N21
\ent_clk_selec|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(24));

-- Location: LCCOMB_X4_Y9_N22
\ent_clk_selec|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~50_combout\ = (\ent_clk_selec|cuenta\(25) & (!\ent_clk_selec|Add0~49\)) # (!\ent_clk_selec|cuenta\(25) & ((\ent_clk_selec|Add0~49\) # (GND)))
-- \ent_clk_selec|Add0~51\ = CARRY((!\ent_clk_selec|Add0~49\) # (!\ent_clk_selec|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(25),
	datad => VCC,
	cin => \ent_clk_selec|Add0~49\,
	combout => \ent_clk_selec|Add0~50_combout\,
	cout => \ent_clk_selec|Add0~51\);

-- Location: FF_X4_Y9_N23
\ent_clk_selec|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(25));

-- Location: LCCOMB_X4_Y9_N24
\ent_clk_selec|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~52_combout\ = (\ent_clk_selec|cuenta\(26) & (\ent_clk_selec|Add0~51\ $ (GND))) # (!\ent_clk_selec|cuenta\(26) & (!\ent_clk_selec|Add0~51\ & VCC))
-- \ent_clk_selec|Add0~53\ = CARRY((\ent_clk_selec|cuenta\(26) & !\ent_clk_selec|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_selec|cuenta\(26),
	datad => VCC,
	cin => \ent_clk_selec|Add0~51\,
	combout => \ent_clk_selec|Add0~52_combout\,
	cout => \ent_clk_selec|Add0~53\);

-- Location: FF_X4_Y9_N25
\ent_clk_selec|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(26));

-- Location: LCCOMB_X4_Y9_N26
\ent_clk_selec|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Add0~54_combout\ = \ent_clk_selec|cuenta\(27) $ (\ent_clk_selec|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(27),
	cin => \ent_clk_selec|Add0~53\,
	combout => \ent_clk_selec|Add0~54_combout\);

-- Location: FF_X4_Y9_N27
\ent_clk_selec|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|cuenta\(27));

-- Location: LCCOMB_X5_Y9_N0
\ent_clk_selec|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~7_combout\ = (!\ent_clk_selec|cuenta\(27) & (!\ent_clk_selec|cuenta\(24) & (!\ent_clk_selec|cuenta\(26) & !\ent_clk_selec|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|cuenta\(27),
	datab => \ent_clk_selec|cuenta\(24),
	datac => \ent_clk_selec|cuenta\(26),
	datad => \ent_clk_selec|cuenta\(25),
	combout => \ent_clk_selec|Equal0~7_combout\);

-- Location: LCCOMB_X5_Y10_N28
\ent_clk_selec|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|Equal0~8_combout\ = (\ent_clk_selec|Equal0~6_combout\ & (\ent_clk_selec|Equal0~5_combout\ & (\ent_clk_selec|Equal0~4_combout\ & \ent_clk_selec|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_selec|Equal0~6_combout\,
	datab => \ent_clk_selec|Equal0~5_combout\,
	datac => \ent_clk_selec|Equal0~4_combout\,
	datad => \ent_clk_selec|Equal0~7_combout\,
	combout => \ent_clk_selec|Equal0~8_combout\);

-- Location: LCCOMB_X5_Y10_N24
\ent_clk_selec|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|salida~0_combout\ = \ent_clk_selec|salida~q\ $ (\ent_clk_selec|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_selec|salida~q\,
	datad => \ent_clk_selec|Equal0~8_combout\,
	combout => \ent_clk_selec|salida~0_combout\);

-- Location: LCCOMB_X5_Y10_N0
\ent_clk_selec|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_selec|salida~feeder_combout\ = \ent_clk_selec|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_selec|salida~0_combout\,
	combout => \ent_clk_selec|salida~feeder_combout\);

-- Location: FF_X5_Y10_N1
\ent_clk_selec|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_selec|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_selec|salida~q\);

-- Location: CLKCTRL_G4
\ent_clk_selec|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ent_clk_selec|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ent_clk_selec|salida~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y22_N18
\ent_sel|temp_sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_sel|temp_sel[0]~1_combout\ = !\ent_sel|temp_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_sel|temp_sel\(0),
	combout => \ent_sel|temp_sel[0]~1_combout\);

-- Location: FF_X17_Y22_N19
\ent_sel|temp_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_selec|salida~clkctrl_outclk\,
	d => \ent_sel|temp_sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_sel|temp_sel\(0));

-- Location: LCCOMB_X17_Y22_N22
\ent_sel|temp_sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_sel|temp_sel[1]~0_combout\ = \ent_sel|temp_sel\(1) $ (\ent_sel|temp_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_sel|temp_sel\(1),
	datad => \ent_sel|temp_sel\(0),
	combout => \ent_sel|temp_sel[1]~0_combout\);

-- Location: FF_X17_Y22_N23
\ent_sel|temp_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_selec|salida~clkctrl_outclk\,
	d => \ent_sel|temp_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_sel|temp_sel\(1));

-- Location: LCCOMB_X17_Y22_N30
\ent_sel|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_sel|Mux3~0_combout\ = (\ent_sel|temp_sel\(0)) # (\ent_sel|temp_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_sel|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y22_N2
\ent_sel|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_sel|Mux2~0_combout\ = (\ent_sel|temp_sel\(1)) # (!\ent_sel|temp_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_sel|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y22_N4
\ent_sel|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_sel|Mux1~0_combout\ = (\ent_sel|temp_sel\(0)) # (!\ent_sel|temp_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_sel|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y22_N2
\ent_sel|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_sel|Mux0~0_combout\ = (!\ent_sel|temp_sel\(1)) # (!\ent_sel|temp_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_sel|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y18_N4
\ent_clk_Maquina|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~0_combout\ = \ent_clk_Maquina|cuenta\(0) $ (VCC)
-- \ent_clk_Maquina|Add0~1\ = CARRY(\ent_clk_Maquina|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(0),
	datad => VCC,
	combout => \ent_clk_Maquina|Add0~0_combout\,
	cout => \ent_clk_Maquina|Add0~1\);

-- Location: LCCOMB_X8_Y18_N16
\ent_clk_Maquina|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~11_combout\ = (\ent_clk_Maquina|Add0~0_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|Add0~0_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~11_combout\);

-- Location: FF_X8_Y18_N17
\ent_clk_Maquina|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(0));

-- Location: LCCOMB_X9_Y18_N6
\ent_clk_Maquina|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~2_combout\ = (\ent_clk_Maquina|cuenta\(1) & (!\ent_clk_Maquina|Add0~1\)) # (!\ent_clk_Maquina|cuenta\(1) & ((\ent_clk_Maquina|Add0~1\) # (GND)))
-- \ent_clk_Maquina|Add0~3\ = CARRY((!\ent_clk_Maquina|Add0~1\) # (!\ent_clk_Maquina|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(1),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~1\,
	combout => \ent_clk_Maquina|Add0~2_combout\,
	cout => \ent_clk_Maquina|Add0~3\);

-- Location: FF_X9_Y18_N7
\ent_clk_Maquina|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(1));

-- Location: LCCOMB_X9_Y18_N8
\ent_clk_Maquina|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~4_combout\ = (\ent_clk_Maquina|cuenta\(2) & (\ent_clk_Maquina|Add0~3\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(2) & (!\ent_clk_Maquina|Add0~3\ & VCC))
-- \ent_clk_Maquina|Add0~5\ = CARRY((\ent_clk_Maquina|cuenta\(2) & !\ent_clk_Maquina|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(2),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~3\,
	combout => \ent_clk_Maquina|Add0~4_combout\,
	cout => \ent_clk_Maquina|Add0~5\);

-- Location: FF_X9_Y18_N9
\ent_clk_Maquina|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(2));

-- Location: LCCOMB_X9_Y18_N10
\ent_clk_Maquina|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~6_combout\ = (\ent_clk_Maquina|cuenta\(3) & (!\ent_clk_Maquina|Add0~5\)) # (!\ent_clk_Maquina|cuenta\(3) & ((\ent_clk_Maquina|Add0~5\) # (GND)))
-- \ent_clk_Maquina|Add0~7\ = CARRY((!\ent_clk_Maquina|Add0~5\) # (!\ent_clk_Maquina|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(3),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~5\,
	combout => \ent_clk_Maquina|Add0~6_combout\,
	cout => \ent_clk_Maquina|Add0~7\);

-- Location: FF_X9_Y18_N11
\ent_clk_Maquina|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(3));

-- Location: LCCOMB_X9_Y18_N12
\ent_clk_Maquina|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~8_combout\ = (\ent_clk_Maquina|cuenta\(4) & (\ent_clk_Maquina|Add0~7\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(4) & (!\ent_clk_Maquina|Add0~7\ & VCC))
-- \ent_clk_Maquina|Add0~9\ = CARRY((\ent_clk_Maquina|cuenta\(4) & !\ent_clk_Maquina|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(4),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~7\,
	combout => \ent_clk_Maquina|Add0~8_combout\,
	cout => \ent_clk_Maquina|Add0~9\);

-- Location: FF_X9_Y18_N13
\ent_clk_Maquina|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(4));

-- Location: LCCOMB_X9_Y18_N14
\ent_clk_Maquina|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~10_combout\ = (\ent_clk_Maquina|cuenta\(5) & (!\ent_clk_Maquina|Add0~9\)) # (!\ent_clk_Maquina|cuenta\(5) & ((\ent_clk_Maquina|Add0~9\) # (GND)))
-- \ent_clk_Maquina|Add0~11\ = CARRY((!\ent_clk_Maquina|Add0~9\) # (!\ent_clk_Maquina|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(5),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~9\,
	combout => \ent_clk_Maquina|Add0~10_combout\,
	cout => \ent_clk_Maquina|Add0~11\);

-- Location: FF_X9_Y18_N15
\ent_clk_Maquina|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(5));

-- Location: LCCOMB_X9_Y18_N16
\ent_clk_Maquina|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~12_combout\ = (\ent_clk_Maquina|cuenta\(6) & (\ent_clk_Maquina|Add0~11\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(6) & (!\ent_clk_Maquina|Add0~11\ & VCC))
-- \ent_clk_Maquina|Add0~13\ = CARRY((\ent_clk_Maquina|cuenta\(6) & !\ent_clk_Maquina|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(6),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~11\,
	combout => \ent_clk_Maquina|Add0~12_combout\,
	cout => \ent_clk_Maquina|Add0~13\);

-- Location: LCCOMB_X8_Y17_N0
\ent_clk_Maquina|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~10_combout\ = (\ent_clk_Maquina|Add0~12_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~12_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~10_combout\);

-- Location: FF_X8_Y17_N1
\ent_clk_Maquina|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(6));

-- Location: LCCOMB_X9_Y18_N18
\ent_clk_Maquina|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~14_combout\ = (\ent_clk_Maquina|cuenta\(7) & (!\ent_clk_Maquina|Add0~13\)) # (!\ent_clk_Maquina|cuenta\(7) & ((\ent_clk_Maquina|Add0~13\) # (GND)))
-- \ent_clk_Maquina|Add0~15\ = CARRY((!\ent_clk_Maquina|Add0~13\) # (!\ent_clk_Maquina|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(7),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~13\,
	combout => \ent_clk_Maquina|Add0~14_combout\,
	cout => \ent_clk_Maquina|Add0~15\);

-- Location: FF_X9_Y18_N19
\ent_clk_Maquina|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(7));

-- Location: LCCOMB_X9_Y18_N20
\ent_clk_Maquina|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~16_combout\ = (\ent_clk_Maquina|cuenta\(8) & (\ent_clk_Maquina|Add0~15\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(8) & (!\ent_clk_Maquina|Add0~15\ & VCC))
-- \ent_clk_Maquina|Add0~17\ = CARRY((\ent_clk_Maquina|cuenta\(8) & !\ent_clk_Maquina|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(8),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~15\,
	combout => \ent_clk_Maquina|Add0~16_combout\,
	cout => \ent_clk_Maquina|Add0~17\);

-- Location: FF_X9_Y18_N21
\ent_clk_Maquina|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(8));

-- Location: LCCOMB_X9_Y18_N22
\ent_clk_Maquina|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~18_combout\ = (\ent_clk_Maquina|cuenta\(9) & (!\ent_clk_Maquina|Add0~17\)) # (!\ent_clk_Maquina|cuenta\(9) & ((\ent_clk_Maquina|Add0~17\) # (GND)))
-- \ent_clk_Maquina|Add0~19\ = CARRY((!\ent_clk_Maquina|Add0~17\) # (!\ent_clk_Maquina|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(9),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~17\,
	combout => \ent_clk_Maquina|Add0~18_combout\,
	cout => \ent_clk_Maquina|Add0~19\);

-- Location: FF_X9_Y18_N23
\ent_clk_Maquina|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(9));

-- Location: LCCOMB_X9_Y18_N24
\ent_clk_Maquina|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~20_combout\ = (\ent_clk_Maquina|cuenta\(10) & (\ent_clk_Maquina|Add0~19\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(10) & (!\ent_clk_Maquina|Add0~19\ & VCC))
-- \ent_clk_Maquina|Add0~21\ = CARRY((\ent_clk_Maquina|cuenta\(10) & !\ent_clk_Maquina|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(10),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~19\,
	combout => \ent_clk_Maquina|Add0~20_combout\,
	cout => \ent_clk_Maquina|Add0~21\);

-- Location: FF_X9_Y18_N25
\ent_clk_Maquina|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(10));

-- Location: LCCOMB_X9_Y18_N26
\ent_clk_Maquina|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~22_combout\ = (\ent_clk_Maquina|cuenta\(11) & (!\ent_clk_Maquina|Add0~21\)) # (!\ent_clk_Maquina|cuenta\(11) & ((\ent_clk_Maquina|Add0~21\) # (GND)))
-- \ent_clk_Maquina|Add0~23\ = CARRY((!\ent_clk_Maquina|Add0~21\) # (!\ent_clk_Maquina|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(11),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~21\,
	combout => \ent_clk_Maquina|Add0~22_combout\,
	cout => \ent_clk_Maquina|Add0~23\);

-- Location: LCCOMB_X8_Y17_N16
\ent_clk_Maquina|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~9_combout\ = (\ent_clk_Maquina|Add0~22_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~22_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~9_combout\);

-- Location: FF_X8_Y17_N17
\ent_clk_Maquina|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(11));

-- Location: LCCOMB_X9_Y18_N28
\ent_clk_Maquina|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~24_combout\ = (\ent_clk_Maquina|cuenta\(12) & (\ent_clk_Maquina|Add0~23\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(12) & (!\ent_clk_Maquina|Add0~23\ & VCC))
-- \ent_clk_Maquina|Add0~25\ = CARRY((\ent_clk_Maquina|cuenta\(12) & !\ent_clk_Maquina|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(12),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~23\,
	combout => \ent_clk_Maquina|Add0~24_combout\,
	cout => \ent_clk_Maquina|Add0~25\);

-- Location: LCCOMB_X9_Y18_N2
\ent_clk_Maquina|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~8_combout\ = (\ent_clk_Maquina|Add0~24_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|Add0~24_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~8_combout\);

-- Location: FF_X9_Y18_N3
\ent_clk_Maquina|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(12));

-- Location: LCCOMB_X9_Y18_N30
\ent_clk_Maquina|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~26_combout\ = (\ent_clk_Maquina|cuenta\(13) & (!\ent_clk_Maquina|Add0~25\)) # (!\ent_clk_Maquina|cuenta\(13) & ((\ent_clk_Maquina|Add0~25\) # (GND)))
-- \ent_clk_Maquina|Add0~27\ = CARRY((!\ent_clk_Maquina|Add0~25\) # (!\ent_clk_Maquina|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(13),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~25\,
	combout => \ent_clk_Maquina|Add0~26_combout\,
	cout => \ent_clk_Maquina|Add0~27\);

-- Location: LCCOMB_X9_Y18_N0
\ent_clk_Maquina|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~7_combout\ = (\ent_clk_Maquina|Add0~26_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~26_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~7_combout\);

-- Location: FF_X9_Y18_N1
\ent_clk_Maquina|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(13));

-- Location: LCCOMB_X9_Y17_N0
\ent_clk_Maquina|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~28_combout\ = (\ent_clk_Maquina|cuenta\(14) & (\ent_clk_Maquina|Add0~27\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(14) & (!\ent_clk_Maquina|Add0~27\ & VCC))
-- \ent_clk_Maquina|Add0~29\ = CARRY((\ent_clk_Maquina|cuenta\(14) & !\ent_clk_Maquina|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(14),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~27\,
	combout => \ent_clk_Maquina|Add0~28_combout\,
	cout => \ent_clk_Maquina|Add0~29\);

-- Location: LCCOMB_X8_Y18_N28
\ent_clk_Maquina|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~6_combout\ = (\ent_clk_Maquina|Add0~28_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|Add0~28_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~6_combout\);

-- Location: FF_X8_Y18_N29
\ent_clk_Maquina|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(14));

-- Location: LCCOMB_X9_Y17_N2
\ent_clk_Maquina|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~30_combout\ = (\ent_clk_Maquina|cuenta\(15) & (!\ent_clk_Maquina|Add0~29\)) # (!\ent_clk_Maquina|cuenta\(15) & ((\ent_clk_Maquina|Add0~29\) # (GND)))
-- \ent_clk_Maquina|Add0~31\ = CARRY((!\ent_clk_Maquina|Add0~29\) # (!\ent_clk_Maquina|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(15),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~29\,
	combout => \ent_clk_Maquina|Add0~30_combout\,
	cout => \ent_clk_Maquina|Add0~31\);

-- Location: FF_X9_Y17_N3
\ent_clk_Maquina|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(15));

-- Location: LCCOMB_X9_Y17_N4
\ent_clk_Maquina|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~32_combout\ = (\ent_clk_Maquina|cuenta\(16) & (\ent_clk_Maquina|Add0~31\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(16) & (!\ent_clk_Maquina|Add0~31\ & VCC))
-- \ent_clk_Maquina|Add0~33\ = CARRY((\ent_clk_Maquina|cuenta\(16) & !\ent_clk_Maquina|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(16),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~31\,
	combout => \ent_clk_Maquina|Add0~32_combout\,
	cout => \ent_clk_Maquina|Add0~33\);

-- Location: LCCOMB_X8_Y17_N6
\ent_clk_Maquina|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~5_combout\ = (!\ent_clk_Maquina|Equal0~8_combout\ & \ent_clk_Maquina|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|Equal0~8_combout\,
	datad => \ent_clk_Maquina|Add0~32_combout\,
	combout => \ent_clk_Maquina|cuenta~5_combout\);

-- Location: FF_X8_Y17_N7
\ent_clk_Maquina|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(16));

-- Location: LCCOMB_X9_Y17_N6
\ent_clk_Maquina|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~34_combout\ = (\ent_clk_Maquina|cuenta\(17) & (!\ent_clk_Maquina|Add0~33\)) # (!\ent_clk_Maquina|cuenta\(17) & ((\ent_clk_Maquina|Add0~33\) # (GND)))
-- \ent_clk_Maquina|Add0~35\ = CARRY((!\ent_clk_Maquina|Add0~33\) # (!\ent_clk_Maquina|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(17),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~33\,
	combout => \ent_clk_Maquina|Add0~34_combout\,
	cout => \ent_clk_Maquina|Add0~35\);

-- Location: FF_X9_Y17_N7
\ent_clk_Maquina|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(17));

-- Location: LCCOMB_X9_Y17_N8
\ent_clk_Maquina|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~36_combout\ = (\ent_clk_Maquina|cuenta\(18) & (\ent_clk_Maquina|Add0~35\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(18) & (!\ent_clk_Maquina|Add0~35\ & VCC))
-- \ent_clk_Maquina|Add0~37\ = CARRY((\ent_clk_Maquina|cuenta\(18) & !\ent_clk_Maquina|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(18),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~35\,
	combout => \ent_clk_Maquina|Add0~36_combout\,
	cout => \ent_clk_Maquina|Add0~37\);

-- Location: LCCOMB_X8_Y17_N2
\ent_clk_Maquina|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~4_combout\ = (\ent_clk_Maquina|Add0~36_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~36_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~4_combout\);

-- Location: FF_X8_Y17_N3
\ent_clk_Maquina|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(18));

-- Location: LCCOMB_X9_Y17_N10
\ent_clk_Maquina|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~38_combout\ = (\ent_clk_Maquina|cuenta\(19) & (!\ent_clk_Maquina|Add0~37\)) # (!\ent_clk_Maquina|cuenta\(19) & ((\ent_clk_Maquina|Add0~37\) # (GND)))
-- \ent_clk_Maquina|Add0~39\ = CARRY((!\ent_clk_Maquina|Add0~37\) # (!\ent_clk_Maquina|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(19),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~37\,
	combout => \ent_clk_Maquina|Add0~38_combout\,
	cout => \ent_clk_Maquina|Add0~39\);

-- Location: LCCOMB_X9_Y17_N30
\ent_clk_Maquina|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~3_combout\ = (!\ent_clk_Maquina|Equal0~8_combout\ & \ent_clk_Maquina|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|Equal0~8_combout\,
	datad => \ent_clk_Maquina|Add0~38_combout\,
	combout => \ent_clk_Maquina|cuenta~3_combout\);

-- Location: FF_X9_Y17_N31
\ent_clk_Maquina|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(19));

-- Location: LCCOMB_X9_Y17_N12
\ent_clk_Maquina|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~40_combout\ = (\ent_clk_Maquina|cuenta\(20) & (\ent_clk_Maquina|Add0~39\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(20) & (!\ent_clk_Maquina|Add0~39\ & VCC))
-- \ent_clk_Maquina|Add0~41\ = CARRY((\ent_clk_Maquina|cuenta\(20) & !\ent_clk_Maquina|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(20),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~39\,
	combout => \ent_clk_Maquina|Add0~40_combout\,
	cout => \ent_clk_Maquina|Add0~41\);

-- Location: LCCOMB_X8_Y17_N30
\ent_clk_Maquina|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~2_combout\ = (\ent_clk_Maquina|Add0~40_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~40_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~2_combout\);

-- Location: FF_X8_Y17_N31
\ent_clk_Maquina|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(20));

-- Location: LCCOMB_X9_Y17_N14
\ent_clk_Maquina|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~42_combout\ = (\ent_clk_Maquina|cuenta\(21) & (!\ent_clk_Maquina|Add0~41\)) # (!\ent_clk_Maquina|cuenta\(21) & ((\ent_clk_Maquina|Add0~41\) # (GND)))
-- \ent_clk_Maquina|Add0~43\ = CARRY((!\ent_clk_Maquina|Add0~41\) # (!\ent_clk_Maquina|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(21),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~41\,
	combout => \ent_clk_Maquina|Add0~42_combout\,
	cout => \ent_clk_Maquina|Add0~43\);

-- Location: LCCOMB_X9_Y17_N28
\ent_clk_Maquina|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~1_combout\ = (\ent_clk_Maquina|Add0~42_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~42_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~1_combout\);

-- Location: FF_X9_Y17_N29
\ent_clk_Maquina|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(21));

-- Location: LCCOMB_X9_Y17_N16
\ent_clk_Maquina|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~44_combout\ = (\ent_clk_Maquina|cuenta\(22) & (\ent_clk_Maquina|Add0~43\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(22) & (!\ent_clk_Maquina|Add0~43\ & VCC))
-- \ent_clk_Maquina|Add0~45\ = CARRY((\ent_clk_Maquina|cuenta\(22) & !\ent_clk_Maquina|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(22),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~43\,
	combout => \ent_clk_Maquina|Add0~44_combout\,
	cout => \ent_clk_Maquina|Add0~45\);

-- Location: LCCOMB_X8_Y17_N26
\ent_clk_Maquina|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~0_combout\ = (!\ent_clk_Maquina|Equal0~8_combout\ & \ent_clk_Maquina|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|Equal0~8_combout\,
	datad => \ent_clk_Maquina|Add0~44_combout\,
	combout => \ent_clk_Maquina|cuenta~0_combout\);

-- Location: FF_X8_Y17_N27
\ent_clk_Maquina|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(22));

-- Location: LCCOMB_X9_Y17_N18
\ent_clk_Maquina|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~46_combout\ = (\ent_clk_Maquina|cuenta\(23) & (!\ent_clk_Maquina|Add0~45\)) # (!\ent_clk_Maquina|cuenta\(23) & ((\ent_clk_Maquina|Add0~45\) # (GND)))
-- \ent_clk_Maquina|Add0~47\ = CARRY((!\ent_clk_Maquina|Add0~45\) # (!\ent_clk_Maquina|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(23),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~45\,
	combout => \ent_clk_Maquina|Add0~46_combout\,
	cout => \ent_clk_Maquina|Add0~47\);

-- Location: FF_X9_Y17_N19
\ent_clk_Maquina|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(23));

-- Location: LCCOMB_X9_Y17_N20
\ent_clk_Maquina|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~48_combout\ = (\ent_clk_Maquina|cuenta\(24) & (\ent_clk_Maquina|Add0~47\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(24) & (!\ent_clk_Maquina|Add0~47\ & VCC))
-- \ent_clk_Maquina|Add0~49\ = CARRY((\ent_clk_Maquina|cuenta\(24) & !\ent_clk_Maquina|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(24),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~47\,
	combout => \ent_clk_Maquina|Add0~48_combout\,
	cout => \ent_clk_Maquina|Add0~49\);

-- Location: LCCOMB_X8_Y17_N14
\ent_clk_Maquina|cuenta~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|cuenta~12_combout\ = (\ent_clk_Maquina|Add0~48_combout\ & !\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_Maquina|Add0~48_combout\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|cuenta~12_combout\);

-- Location: FF_X8_Y17_N15
\ent_clk_Maquina|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(24));

-- Location: LCCOMB_X9_Y17_N22
\ent_clk_Maquina|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~50_combout\ = (\ent_clk_Maquina|cuenta\(25) & (!\ent_clk_Maquina|Add0~49\)) # (!\ent_clk_Maquina|cuenta\(25) & ((\ent_clk_Maquina|Add0~49\) # (GND)))
-- \ent_clk_Maquina|Add0~51\ = CARRY((!\ent_clk_Maquina|Add0~49\) # (!\ent_clk_Maquina|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(25),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~49\,
	combout => \ent_clk_Maquina|Add0~50_combout\,
	cout => \ent_clk_Maquina|Add0~51\);

-- Location: FF_X9_Y17_N23
\ent_clk_Maquina|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(25));

-- Location: LCCOMB_X9_Y17_N24
\ent_clk_Maquina|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~52_combout\ = (\ent_clk_Maquina|cuenta\(26) & (\ent_clk_Maquina|Add0~51\ $ (GND))) # (!\ent_clk_Maquina|cuenta\(26) & (!\ent_clk_Maquina|Add0~51\ & VCC))
-- \ent_clk_Maquina|Add0~53\ = CARRY((\ent_clk_Maquina|cuenta\(26) & !\ent_clk_Maquina|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|cuenta\(26),
	datad => VCC,
	cin => \ent_clk_Maquina|Add0~51\,
	combout => \ent_clk_Maquina|Add0~52_combout\,
	cout => \ent_clk_Maquina|Add0~53\);

-- Location: FF_X9_Y17_N25
\ent_clk_Maquina|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(26));

-- Location: LCCOMB_X9_Y17_N26
\ent_clk_Maquina|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Add0~54_combout\ = \ent_clk_Maquina|Add0~53\ $ (\ent_clk_Maquina|cuenta\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ent_clk_Maquina|cuenta\(27),
	cin => \ent_clk_Maquina|Add0~53\,
	combout => \ent_clk_Maquina|Add0~54_combout\);

-- Location: FF_X9_Y17_N27
\ent_clk_Maquina|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|cuenta\(27));

-- Location: LCCOMB_X8_Y17_N22
\ent_clk_Maquina|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~7_combout\ = (!\ent_clk_Maquina|cuenta\(27) & (!\ent_clk_Maquina|cuenta\(26) & (\ent_clk_Maquina|cuenta\(24) & !\ent_clk_Maquina|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(27),
	datab => \ent_clk_Maquina|cuenta\(26),
	datac => \ent_clk_Maquina|cuenta\(24),
	datad => \ent_clk_Maquina|cuenta\(25),
	combout => \ent_clk_Maquina|Equal0~7_combout\);

-- Location: LCCOMB_X8_Y17_N20
\ent_clk_Maquina|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~5_combout\ = (!\ent_clk_Maquina|cuenta\(4) & (\ent_clk_Maquina|cuenta\(6) & (!\ent_clk_Maquina|cuenta\(7) & !\ent_clk_Maquina|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(4),
	datab => \ent_clk_Maquina|cuenta\(6),
	datac => \ent_clk_Maquina|cuenta\(7),
	datad => \ent_clk_Maquina|cuenta\(5),
	combout => \ent_clk_Maquina|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y18_N26
\ent_clk_Maquina|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~6_combout\ = (!\ent_clk_Maquina|cuenta\(2) & (!\ent_clk_Maquina|cuenta\(0) & (!\ent_clk_Maquina|cuenta\(3) & !\ent_clk_Maquina|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(2),
	datab => \ent_clk_Maquina|cuenta\(0),
	datac => \ent_clk_Maquina|cuenta\(3),
	datad => \ent_clk_Maquina|cuenta\(1),
	combout => \ent_clk_Maquina|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y17_N10
\ent_clk_Maquina|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~0_combout\ = (\ent_clk_Maquina|cuenta\(22) & (!\ent_clk_Maquina|cuenta\(23) & (\ent_clk_Maquina|cuenta\(20) & \ent_clk_Maquina|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(22),
	datab => \ent_clk_Maquina|cuenta\(23),
	datac => \ent_clk_Maquina|cuenta\(20),
	datad => \ent_clk_Maquina|cuenta\(21),
	combout => \ent_clk_Maquina|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y17_N24
\ent_clk_Maquina|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~1_combout\ = (\ent_clk_Maquina|cuenta\(16) & (\ent_clk_Maquina|cuenta\(18) & (\ent_clk_Maquina|cuenta\(19) & !\ent_clk_Maquina|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(16),
	datab => \ent_clk_Maquina|cuenta\(18),
	datac => \ent_clk_Maquina|cuenta\(19),
	datad => \ent_clk_Maquina|cuenta\(17),
	combout => \ent_clk_Maquina|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y18_N30
\ent_clk_Maquina|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~2_combout\ = (\ent_clk_Maquina|cuenta\(14) & (\ent_clk_Maquina|cuenta\(13) & (!\ent_clk_Maquina|cuenta\(15) & \ent_clk_Maquina|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(14),
	datab => \ent_clk_Maquina|cuenta\(13),
	datac => \ent_clk_Maquina|cuenta\(15),
	datad => \ent_clk_Maquina|cuenta\(12),
	combout => \ent_clk_Maquina|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y17_N18
\ent_clk_Maquina|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~3_combout\ = (!\ent_clk_Maquina|cuenta\(10) & (\ent_clk_Maquina|cuenta\(11) & (!\ent_clk_Maquina|cuenta\(8) & !\ent_clk_Maquina|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|cuenta\(10),
	datab => \ent_clk_Maquina|cuenta\(11),
	datac => \ent_clk_Maquina|cuenta\(8),
	datad => \ent_clk_Maquina|cuenta\(9),
	combout => \ent_clk_Maquina|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y17_N12
\ent_clk_Maquina|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~4_combout\ = (\ent_clk_Maquina|Equal0~0_combout\ & (\ent_clk_Maquina|Equal0~1_combout\ & (\ent_clk_Maquina|Equal0~2_combout\ & \ent_clk_Maquina|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|Equal0~0_combout\,
	datab => \ent_clk_Maquina|Equal0~1_combout\,
	datac => \ent_clk_Maquina|Equal0~2_combout\,
	datad => \ent_clk_Maquina|Equal0~3_combout\,
	combout => \ent_clk_Maquina|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y17_N28
\ent_clk_Maquina|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|Equal0~8_combout\ = (\ent_clk_Maquina|Equal0~7_combout\ & (\ent_clk_Maquina|Equal0~5_combout\ & (\ent_clk_Maquina|Equal0~6_combout\ & \ent_clk_Maquina|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_Maquina|Equal0~7_combout\,
	datab => \ent_clk_Maquina|Equal0~5_combout\,
	datac => \ent_clk_Maquina|Equal0~6_combout\,
	datad => \ent_clk_Maquina|Equal0~4_combout\,
	combout => \ent_clk_Maquina|Equal0~8_combout\);

-- Location: LCCOMB_X8_Y17_N8
\ent_clk_Maquina|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|salida~0_combout\ = \ent_clk_Maquina|salida~q\ $ (\ent_clk_Maquina|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|salida~q\,
	datad => \ent_clk_Maquina|Equal0~8_combout\,
	combout => \ent_clk_Maquina|salida~0_combout\);

-- Location: LCCOMB_X8_Y17_N4
\ent_clk_Maquina|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_Maquina|salida~feeder_combout\ = \ent_clk_Maquina|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_Maquina|salida~0_combout\,
	combout => \ent_clk_Maquina|salida~feeder_combout\);

-- Location: FF_X8_Y17_N5
\ent_clk_Maquina|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_Maquina|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_Maquina|salida~q\);

-- Location: CLKCTRL_G0
\ent_clk_Maquina|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ent_clk_Maquina|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ent_clk_Maquina|salida~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y20_N4
\ent_clk_muestreo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~0_combout\ = \ent_clk_muestreo|cuenta\(0) $ (VCC)
-- \ent_clk_muestreo|Add0~1\ = CARRY(\ent_clk_muestreo|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(0),
	datad => VCC,
	combout => \ent_clk_muestreo|Add0~0_combout\,
	cout => \ent_clk_muestreo|Add0~1\);

-- Location: LCCOMB_X5_Y20_N2
\ent_clk_muestreo|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~6_combout\ = (\ent_clk_muestreo|Add0~0_combout\ & !\ent_clk_muestreo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_muestreo|Add0~0_combout\,
	datad => \ent_clk_muestreo|Equal0~8_combout\,
	combout => \ent_clk_muestreo|cuenta~6_combout\);

-- Location: FF_X5_Y20_N3
\ent_clk_muestreo|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(0));

-- Location: LCCOMB_X5_Y20_N6
\ent_clk_muestreo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~2_combout\ = (\ent_clk_muestreo|cuenta\(1) & (!\ent_clk_muestreo|Add0~1\)) # (!\ent_clk_muestreo|cuenta\(1) & ((\ent_clk_muestreo|Add0~1\) # (GND)))
-- \ent_clk_muestreo|Add0~3\ = CARRY((!\ent_clk_muestreo|Add0~1\) # (!\ent_clk_muestreo|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(1),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~1\,
	combout => \ent_clk_muestreo|Add0~2_combout\,
	cout => \ent_clk_muestreo|Add0~3\);

-- Location: FF_X5_Y20_N7
\ent_clk_muestreo|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(1));

-- Location: LCCOMB_X5_Y20_N8
\ent_clk_muestreo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~4_combout\ = (\ent_clk_muestreo|cuenta\(2) & (\ent_clk_muestreo|Add0~3\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(2) & (!\ent_clk_muestreo|Add0~3\ & VCC))
-- \ent_clk_muestreo|Add0~5\ = CARRY((\ent_clk_muestreo|cuenta\(2) & !\ent_clk_muestreo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(2),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~3\,
	combout => \ent_clk_muestreo|Add0~4_combout\,
	cout => \ent_clk_muestreo|Add0~5\);

-- Location: LCCOMB_X6_Y20_N4
\ent_clk_muestreo|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~5_combout\ = (\ent_clk_muestreo|Add0~4_combout\ & !\ent_clk_muestreo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|Add0~4_combout\,
	datad => \ent_clk_muestreo|Equal0~8_combout\,
	combout => \ent_clk_muestreo|cuenta~5_combout\);

-- Location: FF_X6_Y20_N5
\ent_clk_muestreo|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(2));

-- Location: LCCOMB_X5_Y20_N10
\ent_clk_muestreo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~6_combout\ = (\ent_clk_muestreo|cuenta\(3) & (!\ent_clk_muestreo|Add0~5\)) # (!\ent_clk_muestreo|cuenta\(3) & ((\ent_clk_muestreo|Add0~5\) # (GND)))
-- \ent_clk_muestreo|Add0~7\ = CARRY((!\ent_clk_muestreo|Add0~5\) # (!\ent_clk_muestreo|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(3),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~5\,
	combout => \ent_clk_muestreo|Add0~6_combout\,
	cout => \ent_clk_muestreo|Add0~7\);

-- Location: FF_X5_Y20_N11
\ent_clk_muestreo|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(3));

-- Location: LCCOMB_X6_Y20_N22
\ent_clk_muestreo|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~6_combout\ = (!\ent_clk_muestreo|cuenta\(0) & (\ent_clk_muestreo|cuenta\(2) & (!\ent_clk_muestreo|cuenta\(1) & !\ent_clk_muestreo|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(0),
	datab => \ent_clk_muestreo|cuenta\(2),
	datac => \ent_clk_muestreo|cuenta\(1),
	datad => \ent_clk_muestreo|cuenta\(3),
	combout => \ent_clk_muestreo|Equal0~6_combout\);

-- Location: LCCOMB_X5_Y20_N12
\ent_clk_muestreo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~8_combout\ = (\ent_clk_muestreo|cuenta\(4) & (\ent_clk_muestreo|Add0~7\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(4) & (!\ent_clk_muestreo|Add0~7\ & VCC))
-- \ent_clk_muestreo|Add0~9\ = CARRY((\ent_clk_muestreo|cuenta\(4) & !\ent_clk_muestreo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(4),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~7\,
	combout => \ent_clk_muestreo|Add0~8_combout\,
	cout => \ent_clk_muestreo|Add0~9\);

-- Location: LCCOMB_X6_Y20_N20
\ent_clk_muestreo|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~4_combout\ = (\ent_clk_muestreo|Add0~8_combout\ & !\ent_clk_muestreo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|Add0~8_combout\,
	datad => \ent_clk_muestreo|Equal0~8_combout\,
	combout => \ent_clk_muestreo|cuenta~4_combout\);

-- Location: FF_X6_Y20_N21
\ent_clk_muestreo|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(4));

-- Location: LCCOMB_X5_Y20_N14
\ent_clk_muestreo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~10_combout\ = (\ent_clk_muestreo|cuenta\(5) & (!\ent_clk_muestreo|Add0~9\)) # (!\ent_clk_muestreo|cuenta\(5) & ((\ent_clk_muestreo|Add0~9\) # (GND)))
-- \ent_clk_muestreo|Add0~11\ = CARRY((!\ent_clk_muestreo|Add0~9\) # (!\ent_clk_muestreo|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(5),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~9\,
	combout => \ent_clk_muestreo|Add0~10_combout\,
	cout => \ent_clk_muestreo|Add0~11\);

-- Location: LCCOMB_X6_Y20_N30
\ent_clk_muestreo|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~3_combout\ = (!\ent_clk_muestreo|Equal0~8_combout\ & \ent_clk_muestreo|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|Equal0~8_combout\,
	datad => \ent_clk_muestreo|Add0~10_combout\,
	combout => \ent_clk_muestreo|cuenta~3_combout\);

-- Location: FF_X6_Y20_N31
\ent_clk_muestreo|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(5));

-- Location: LCCOMB_X5_Y20_N16
\ent_clk_muestreo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~12_combout\ = (\ent_clk_muestreo|cuenta\(6) & (\ent_clk_muestreo|Add0~11\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(6) & (!\ent_clk_muestreo|Add0~11\ & VCC))
-- \ent_clk_muestreo|Add0~13\ = CARRY((\ent_clk_muestreo|cuenta\(6) & !\ent_clk_muestreo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(6),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~11\,
	combout => \ent_clk_muestreo|Add0~12_combout\,
	cout => \ent_clk_muestreo|Add0~13\);

-- Location: LCCOMB_X5_Y20_N0
\ent_clk_muestreo|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~2_combout\ = (\ent_clk_muestreo|Add0~12_combout\ & !\ent_clk_muestreo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|Add0~12_combout\,
	datad => \ent_clk_muestreo|Equal0~8_combout\,
	combout => \ent_clk_muestreo|cuenta~2_combout\);

-- Location: FF_X5_Y20_N1
\ent_clk_muestreo|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(6));

-- Location: LCCOMB_X5_Y20_N18
\ent_clk_muestreo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~14_combout\ = (\ent_clk_muestreo|cuenta\(7) & (!\ent_clk_muestreo|Add0~13\)) # (!\ent_clk_muestreo|cuenta\(7) & ((\ent_clk_muestreo|Add0~13\) # (GND)))
-- \ent_clk_muestreo|Add0~15\ = CARRY((!\ent_clk_muestreo|Add0~13\) # (!\ent_clk_muestreo|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(7),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~13\,
	combout => \ent_clk_muestreo|Add0~14_combout\,
	cout => \ent_clk_muestreo|Add0~15\);

-- Location: LCCOMB_X6_Y20_N8
\ent_clk_muestreo|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~1_combout\ = (!\ent_clk_muestreo|Equal0~8_combout\ & \ent_clk_muestreo|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|Equal0~8_combout\,
	datad => \ent_clk_muestreo|Add0~14_combout\,
	combout => \ent_clk_muestreo|cuenta~1_combout\);

-- Location: FF_X6_Y20_N9
\ent_clk_muestreo|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(7));

-- Location: LCCOMB_X6_Y20_N24
\ent_clk_muestreo|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~5_combout\ = (\ent_clk_muestreo|cuenta\(6) & (\ent_clk_muestreo|cuenta\(4) & (\ent_clk_muestreo|cuenta\(5) & \ent_clk_muestreo|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(6),
	datab => \ent_clk_muestreo|cuenta\(4),
	datac => \ent_clk_muestreo|cuenta\(5),
	datad => \ent_clk_muestreo|cuenta\(7),
	combout => \ent_clk_muestreo|Equal0~5_combout\);

-- Location: LCCOMB_X5_Y20_N20
\ent_clk_muestreo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~16_combout\ = (\ent_clk_muestreo|cuenta\(8) & (\ent_clk_muestreo|Add0~15\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(8) & (!\ent_clk_muestreo|Add0~15\ & VCC))
-- \ent_clk_muestreo|Add0~17\ = CARRY((\ent_clk_muestreo|cuenta\(8) & !\ent_clk_muestreo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(8),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~15\,
	combout => \ent_clk_muestreo|Add0~16_combout\,
	cout => \ent_clk_muestreo|Add0~17\);

-- Location: LCCOMB_X6_Y20_N6
\ent_clk_muestreo|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|cuenta~0_combout\ = (!\ent_clk_muestreo|Equal0~8_combout\ & \ent_clk_muestreo|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|Equal0~8_combout\,
	datad => \ent_clk_muestreo|Add0~16_combout\,
	combout => \ent_clk_muestreo|cuenta~0_combout\);

-- Location: FF_X6_Y20_N7
\ent_clk_muestreo|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(8));

-- Location: LCCOMB_X5_Y20_N22
\ent_clk_muestreo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~18_combout\ = (\ent_clk_muestreo|cuenta\(9) & (!\ent_clk_muestreo|Add0~17\)) # (!\ent_clk_muestreo|cuenta\(9) & ((\ent_clk_muestreo|Add0~17\) # (GND)))
-- \ent_clk_muestreo|Add0~19\ = CARRY((!\ent_clk_muestreo|Add0~17\) # (!\ent_clk_muestreo|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(9),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~17\,
	combout => \ent_clk_muestreo|Add0~18_combout\,
	cout => \ent_clk_muestreo|Add0~19\);

-- Location: FF_X5_Y20_N23
\ent_clk_muestreo|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(9));

-- Location: LCCOMB_X5_Y20_N24
\ent_clk_muestreo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~20_combout\ = (\ent_clk_muestreo|cuenta\(10) & (\ent_clk_muestreo|Add0~19\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(10) & (!\ent_clk_muestreo|Add0~19\ & VCC))
-- \ent_clk_muestreo|Add0~21\ = CARRY((\ent_clk_muestreo|cuenta\(10) & !\ent_clk_muestreo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(10),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~19\,
	combout => \ent_clk_muestreo|Add0~20_combout\,
	cout => \ent_clk_muestreo|Add0~21\);

-- Location: FF_X5_Y20_N25
\ent_clk_muestreo|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(10));

-- Location: LCCOMB_X5_Y20_N26
\ent_clk_muestreo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~22_combout\ = (\ent_clk_muestreo|cuenta\(11) & (!\ent_clk_muestreo|Add0~21\)) # (!\ent_clk_muestreo|cuenta\(11) & ((\ent_clk_muestreo|Add0~21\) # (GND)))
-- \ent_clk_muestreo|Add0~23\ = CARRY((!\ent_clk_muestreo|Add0~21\) # (!\ent_clk_muestreo|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(11),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~21\,
	combout => \ent_clk_muestreo|Add0~22_combout\,
	cout => \ent_clk_muestreo|Add0~23\);

-- Location: FF_X5_Y20_N27
\ent_clk_muestreo|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(11));

-- Location: LCCOMB_X5_Y20_N28
\ent_clk_muestreo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~24_combout\ = (\ent_clk_muestreo|cuenta\(12) & (\ent_clk_muestreo|Add0~23\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(12) & (!\ent_clk_muestreo|Add0~23\ & VCC))
-- \ent_clk_muestreo|Add0~25\ = CARRY((\ent_clk_muestreo|cuenta\(12) & !\ent_clk_muestreo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(12),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~23\,
	combout => \ent_clk_muestreo|Add0~24_combout\,
	cout => \ent_clk_muestreo|Add0~25\);

-- Location: FF_X5_Y20_N29
\ent_clk_muestreo|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(12));

-- Location: LCCOMB_X5_Y20_N30
\ent_clk_muestreo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~26_combout\ = (\ent_clk_muestreo|cuenta\(13) & (!\ent_clk_muestreo|Add0~25\)) # (!\ent_clk_muestreo|cuenta\(13) & ((\ent_clk_muestreo|Add0~25\) # (GND)))
-- \ent_clk_muestreo|Add0~27\ = CARRY((!\ent_clk_muestreo|Add0~25\) # (!\ent_clk_muestreo|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(13),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~25\,
	combout => \ent_clk_muestreo|Add0~26_combout\,
	cout => \ent_clk_muestreo|Add0~27\);

-- Location: FF_X5_Y20_N31
\ent_clk_muestreo|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(13));

-- Location: LCCOMB_X5_Y19_N0
\ent_clk_muestreo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~28_combout\ = (\ent_clk_muestreo|cuenta\(14) & (\ent_clk_muestreo|Add0~27\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(14) & (!\ent_clk_muestreo|Add0~27\ & VCC))
-- \ent_clk_muestreo|Add0~29\ = CARRY((\ent_clk_muestreo|cuenta\(14) & !\ent_clk_muestreo|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(14),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~27\,
	combout => \ent_clk_muestreo|Add0~28_combout\,
	cout => \ent_clk_muestreo|Add0~29\);

-- Location: FF_X5_Y19_N1
\ent_clk_muestreo|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(14));

-- Location: LCCOMB_X5_Y19_N2
\ent_clk_muestreo|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~30_combout\ = (\ent_clk_muestreo|cuenta\(15) & (!\ent_clk_muestreo|Add0~29\)) # (!\ent_clk_muestreo|cuenta\(15) & ((\ent_clk_muestreo|Add0~29\) # (GND)))
-- \ent_clk_muestreo|Add0~31\ = CARRY((!\ent_clk_muestreo|Add0~29\) # (!\ent_clk_muestreo|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(15),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~29\,
	combout => \ent_clk_muestreo|Add0~30_combout\,
	cout => \ent_clk_muestreo|Add0~31\);

-- Location: FF_X5_Y19_N3
\ent_clk_muestreo|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(15));

-- Location: LCCOMB_X5_Y19_N4
\ent_clk_muestreo|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~32_combout\ = (\ent_clk_muestreo|cuenta\(16) & (\ent_clk_muestreo|Add0~31\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(16) & (!\ent_clk_muestreo|Add0~31\ & VCC))
-- \ent_clk_muestreo|Add0~33\ = CARRY((\ent_clk_muestreo|cuenta\(16) & !\ent_clk_muestreo|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(16),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~31\,
	combout => \ent_clk_muestreo|Add0~32_combout\,
	cout => \ent_clk_muestreo|Add0~33\);

-- Location: FF_X5_Y19_N5
\ent_clk_muestreo|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(16));

-- Location: LCCOMB_X5_Y19_N6
\ent_clk_muestreo|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~34_combout\ = (\ent_clk_muestreo|cuenta\(17) & (!\ent_clk_muestreo|Add0~33\)) # (!\ent_clk_muestreo|cuenta\(17) & ((\ent_clk_muestreo|Add0~33\) # (GND)))
-- \ent_clk_muestreo|Add0~35\ = CARRY((!\ent_clk_muestreo|Add0~33\) # (!\ent_clk_muestreo|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(17),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~33\,
	combout => \ent_clk_muestreo|Add0~34_combout\,
	cout => \ent_clk_muestreo|Add0~35\);

-- Location: FF_X5_Y19_N7
\ent_clk_muestreo|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(17));

-- Location: LCCOMB_X5_Y19_N8
\ent_clk_muestreo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~36_combout\ = (\ent_clk_muestreo|cuenta\(18) & (\ent_clk_muestreo|Add0~35\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(18) & (!\ent_clk_muestreo|Add0~35\ & VCC))
-- \ent_clk_muestreo|Add0~37\ = CARRY((\ent_clk_muestreo|cuenta\(18) & !\ent_clk_muestreo|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(18),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~35\,
	combout => \ent_clk_muestreo|Add0~36_combout\,
	cout => \ent_clk_muestreo|Add0~37\);

-- Location: FF_X5_Y19_N9
\ent_clk_muestreo|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(18));

-- Location: LCCOMB_X5_Y19_N10
\ent_clk_muestreo|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~38_combout\ = (\ent_clk_muestreo|cuenta\(19) & (!\ent_clk_muestreo|Add0~37\)) # (!\ent_clk_muestreo|cuenta\(19) & ((\ent_clk_muestreo|Add0~37\) # (GND)))
-- \ent_clk_muestreo|Add0~39\ = CARRY((!\ent_clk_muestreo|Add0~37\) # (!\ent_clk_muestreo|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(19),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~37\,
	combout => \ent_clk_muestreo|Add0~38_combout\,
	cout => \ent_clk_muestreo|Add0~39\);

-- Location: FF_X5_Y19_N11
\ent_clk_muestreo|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(19));

-- Location: LCCOMB_X5_Y19_N30
\ent_clk_muestreo|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~1_combout\ = (!\ent_clk_muestreo|cuenta\(19) & (!\ent_clk_muestreo|cuenta\(18) & (!\ent_clk_muestreo|cuenta\(16) & !\ent_clk_muestreo|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(19),
	datab => \ent_clk_muestreo|cuenta\(18),
	datac => \ent_clk_muestreo|cuenta\(16),
	datad => \ent_clk_muestreo|cuenta\(17),
	combout => \ent_clk_muestreo|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y20_N0
\ent_clk_muestreo|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~3_combout\ = (\ent_clk_muestreo|cuenta\(8) & (!\ent_clk_muestreo|cuenta\(9) & (!\ent_clk_muestreo|cuenta\(11) & !\ent_clk_muestreo|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(8),
	datab => \ent_clk_muestreo|cuenta\(9),
	datac => \ent_clk_muestreo|cuenta\(11),
	datad => \ent_clk_muestreo|cuenta\(10),
	combout => \ent_clk_muestreo|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y19_N12
\ent_clk_muestreo|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~40_combout\ = (\ent_clk_muestreo|cuenta\(20) & (\ent_clk_muestreo|Add0~39\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(20) & (!\ent_clk_muestreo|Add0~39\ & VCC))
-- \ent_clk_muestreo|Add0~41\ = CARRY((\ent_clk_muestreo|cuenta\(20) & !\ent_clk_muestreo|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(20),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~39\,
	combout => \ent_clk_muestreo|Add0~40_combout\,
	cout => \ent_clk_muestreo|Add0~41\);

-- Location: FF_X5_Y19_N13
\ent_clk_muestreo|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(20));

-- Location: LCCOMB_X5_Y19_N14
\ent_clk_muestreo|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~42_combout\ = (\ent_clk_muestreo|cuenta\(21) & (!\ent_clk_muestreo|Add0~41\)) # (!\ent_clk_muestreo|cuenta\(21) & ((\ent_clk_muestreo|Add0~41\) # (GND)))
-- \ent_clk_muestreo|Add0~43\ = CARRY((!\ent_clk_muestreo|Add0~41\) # (!\ent_clk_muestreo|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(21),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~41\,
	combout => \ent_clk_muestreo|Add0~42_combout\,
	cout => \ent_clk_muestreo|Add0~43\);

-- Location: FF_X5_Y19_N15
\ent_clk_muestreo|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(21));

-- Location: LCCOMB_X5_Y19_N16
\ent_clk_muestreo|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~44_combout\ = (\ent_clk_muestreo|cuenta\(22) & (\ent_clk_muestreo|Add0~43\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(22) & (!\ent_clk_muestreo|Add0~43\ & VCC))
-- \ent_clk_muestreo|Add0~45\ = CARRY((\ent_clk_muestreo|cuenta\(22) & !\ent_clk_muestreo|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(22),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~43\,
	combout => \ent_clk_muestreo|Add0~44_combout\,
	cout => \ent_clk_muestreo|Add0~45\);

-- Location: FF_X5_Y19_N17
\ent_clk_muestreo|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(22));

-- Location: LCCOMB_X5_Y19_N18
\ent_clk_muestreo|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~46_combout\ = (\ent_clk_muestreo|cuenta\(23) & (!\ent_clk_muestreo|Add0~45\)) # (!\ent_clk_muestreo|cuenta\(23) & ((\ent_clk_muestreo|Add0~45\) # (GND)))
-- \ent_clk_muestreo|Add0~47\ = CARRY((!\ent_clk_muestreo|Add0~45\) # (!\ent_clk_muestreo|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(23),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~45\,
	combout => \ent_clk_muestreo|Add0~46_combout\,
	cout => \ent_clk_muestreo|Add0~47\);

-- Location: FF_X5_Y19_N19
\ent_clk_muestreo|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(23));

-- Location: LCCOMB_X5_Y19_N28
\ent_clk_muestreo|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~0_combout\ = (!\ent_clk_muestreo|cuenta\(20) & (!\ent_clk_muestreo|cuenta\(22) & (!\ent_clk_muestreo|cuenta\(21) & !\ent_clk_muestreo|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(20),
	datab => \ent_clk_muestreo|cuenta\(22),
	datac => \ent_clk_muestreo|cuenta\(21),
	datad => \ent_clk_muestreo|cuenta\(23),
	combout => \ent_clk_muestreo|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y20_N12
\ent_clk_muestreo|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~2_combout\ = (!\ent_clk_muestreo|cuenta\(13) & (!\ent_clk_muestreo|cuenta\(12) & (!\ent_clk_muestreo|cuenta\(15) & !\ent_clk_muestreo|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(13),
	datab => \ent_clk_muestreo|cuenta\(12),
	datac => \ent_clk_muestreo|cuenta\(15),
	datad => \ent_clk_muestreo|cuenta\(14),
	combout => \ent_clk_muestreo|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y20_N26
\ent_clk_muestreo|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~4_combout\ = (\ent_clk_muestreo|Equal0~1_combout\ & (\ent_clk_muestreo|Equal0~3_combout\ & (\ent_clk_muestreo|Equal0~0_combout\ & \ent_clk_muestreo|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|Equal0~1_combout\,
	datab => \ent_clk_muestreo|Equal0~3_combout\,
	datac => \ent_clk_muestreo|Equal0~0_combout\,
	datad => \ent_clk_muestreo|Equal0~2_combout\,
	combout => \ent_clk_muestreo|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y19_N20
\ent_clk_muestreo|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~48_combout\ = (\ent_clk_muestreo|cuenta\(24) & (\ent_clk_muestreo|Add0~47\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(24) & (!\ent_clk_muestreo|Add0~47\ & VCC))
-- \ent_clk_muestreo|Add0~49\ = CARRY((\ent_clk_muestreo|cuenta\(24) & !\ent_clk_muestreo|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(24),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~47\,
	combout => \ent_clk_muestreo|Add0~48_combout\,
	cout => \ent_clk_muestreo|Add0~49\);

-- Location: FF_X5_Y19_N21
\ent_clk_muestreo|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(24));

-- Location: LCCOMB_X5_Y19_N22
\ent_clk_muestreo|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~50_combout\ = (\ent_clk_muestreo|cuenta\(25) & (!\ent_clk_muestreo|Add0~49\)) # (!\ent_clk_muestreo|cuenta\(25) & ((\ent_clk_muestreo|Add0~49\) # (GND)))
-- \ent_clk_muestreo|Add0~51\ = CARRY((!\ent_clk_muestreo|Add0~49\) # (!\ent_clk_muestreo|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(25),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~49\,
	combout => \ent_clk_muestreo|Add0~50_combout\,
	cout => \ent_clk_muestreo|Add0~51\);

-- Location: FF_X5_Y19_N23
\ent_clk_muestreo|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(25));

-- Location: LCCOMB_X5_Y19_N24
\ent_clk_muestreo|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~52_combout\ = (\ent_clk_muestreo|cuenta\(26) & (\ent_clk_muestreo|Add0~51\ $ (GND))) # (!\ent_clk_muestreo|cuenta\(26) & (!\ent_clk_muestreo|Add0~51\ & VCC))
-- \ent_clk_muestreo|Add0~53\ = CARRY((\ent_clk_muestreo|cuenta\(26) & !\ent_clk_muestreo|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|cuenta\(26),
	datad => VCC,
	cin => \ent_clk_muestreo|Add0~51\,
	combout => \ent_clk_muestreo|Add0~52_combout\,
	cout => \ent_clk_muestreo|Add0~53\);

-- Location: FF_X5_Y19_N25
\ent_clk_muestreo|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(26));

-- Location: LCCOMB_X5_Y19_N26
\ent_clk_muestreo|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Add0~54_combout\ = \ent_clk_muestreo|cuenta\(27) $ (\ent_clk_muestreo|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(27),
	cin => \ent_clk_muestreo|Add0~53\,
	combout => \ent_clk_muestreo|Add0~54_combout\);

-- Location: FF_X5_Y19_N27
\ent_clk_muestreo|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|cuenta\(27));

-- Location: LCCOMB_X6_Y19_N0
\ent_clk_muestreo|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~7_combout\ = (!\ent_clk_muestreo|cuenta\(27) & (!\ent_clk_muestreo|cuenta\(25) & (!\ent_clk_muestreo|cuenta\(26) & !\ent_clk_muestreo|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|cuenta\(27),
	datab => \ent_clk_muestreo|cuenta\(25),
	datac => \ent_clk_muestreo|cuenta\(26),
	datad => \ent_clk_muestreo|cuenta\(24),
	combout => \ent_clk_muestreo|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y20_N18
\ent_clk_muestreo|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|Equal0~8_combout\ = (\ent_clk_muestreo|Equal0~6_combout\ & (\ent_clk_muestreo|Equal0~5_combout\ & (\ent_clk_muestreo|Equal0~4_combout\ & \ent_clk_muestreo|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_clk_muestreo|Equal0~6_combout\,
	datab => \ent_clk_muestreo|Equal0~5_combout\,
	datac => \ent_clk_muestreo|Equal0~4_combout\,
	datad => \ent_clk_muestreo|Equal0~7_combout\,
	combout => \ent_clk_muestreo|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y20_N16
\ent_clk_muestreo|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|salida~0_combout\ = \ent_clk_muestreo|salida~q\ $ (\ent_clk_muestreo|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_clk_muestreo|salida~q\,
	datad => \ent_clk_muestreo|Equal0~8_combout\,
	combout => \ent_clk_muestreo|salida~0_combout\);

-- Location: LCCOMB_X6_Y20_N28
\ent_clk_muestreo|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_clk_muestreo|salida~feeder_combout\ = \ent_clk_muestreo|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_clk_muestreo|salida~0_combout\,
	combout => \ent_clk_muestreo|salida~feeder_combout\);

-- Location: FF_X6_Y20_N29
\ent_clk_muestreo|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ent_clk_muestreo|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_clk_muestreo|salida~q\);

-- Location: IOIBUF_X34_Y10_N8
\sig_ctrl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_ctrl(1),
	o => \sig_ctrl[1]~input_o\);

-- Location: LCCOMB_X6_Y17_N18
\btn_velocidad|reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_velocidad|reg[0]~0_combout\ = !\sig_ctrl[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_ctrl[1]~input_o\,
	combout => \btn_velocidad|reg[0]~0_combout\);

-- Location: FF_X6_Y17_N19
\btn_velocidad|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_velocidad|reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_velocidad|reg\(0));

-- Location: LCCOMB_X6_Y17_N22
\btn_velocidad|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_velocidad|reg[1]~feeder_combout\ = \btn_velocidad|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_velocidad|reg\(0),
	combout => \btn_velocidad|reg[1]~feeder_combout\);

-- Location: FF_X6_Y17_N23
\btn_velocidad|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_velocidad|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_velocidad|reg\(1));

-- Location: LCCOMB_X6_Y17_N30
\btn_velocidad|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_velocidad|reg[2]~feeder_combout\ = \btn_velocidad|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_velocidad|reg\(1),
	combout => \btn_velocidad|reg[2]~feeder_combout\);

-- Location: FF_X6_Y17_N31
\btn_velocidad|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_velocidad|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_velocidad|reg\(2));

-- Location: LCCOMB_X6_Y17_N14
\btn_velocidad|reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_velocidad|reg[3]~feeder_combout\ = \btn_velocidad|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_velocidad|reg\(2),
	combout => \btn_velocidad|reg[3]~feeder_combout\);

-- Location: FF_X6_Y17_N15
\btn_velocidad|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_velocidad|reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_velocidad|reg\(3));

-- Location: LCCOMB_X6_Y17_N4
\btn_velocidad|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_velocidad|Equal0~0_combout\ = (\btn_velocidad|reg\(2) & (\btn_velocidad|reg\(3) & (\btn_velocidad|reg\(1) & \btn_velocidad|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_velocidad|reg\(2),
	datab => \btn_velocidad|reg\(3),
	datac => \btn_velocidad|reg\(1),
	datad => \btn_velocidad|reg\(0),
	combout => \btn_velocidad|Equal0~0_combout\);

-- Location: IOIBUF_X34_Y9_N1
\sig_ctrl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig_ctrl(0),
	o => \sig_ctrl[0]~input_o\);

-- Location: LCCOMB_X6_Y17_N16
\btn_sentido|reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_sentido|reg[0]~0_combout\ = !\sig_ctrl[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_ctrl[0]~input_o\,
	combout => \btn_sentido|reg[0]~0_combout\);

-- Location: FF_X6_Y17_N17
\btn_sentido|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_sentido|reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sentido|reg\(0));

-- Location: LCCOMB_X6_Y17_N20
\btn_sentido|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_sentido|reg[1]~feeder_combout\ = \btn_sentido|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sentido|reg\(0),
	combout => \btn_sentido|reg[1]~feeder_combout\);

-- Location: FF_X6_Y17_N21
\btn_sentido|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_sentido|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sentido|reg\(1));

-- Location: LCCOMB_X6_Y17_N26
\btn_sentido|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_sentido|reg[2]~feeder_combout\ = \btn_sentido|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sentido|reg\(1),
	combout => \btn_sentido|reg[2]~feeder_combout\);

-- Location: FF_X6_Y17_N27
\btn_sentido|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	d => \btn_sentido|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sentido|reg\(2));

-- Location: FF_X6_Y17_N25
\btn_sentido|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_muestreo|salida~q\,
	asdata => \btn_sentido|reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sentido|reg\(3));

-- Location: LCCOMB_X6_Y17_N24
\btn_sentido|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btn_sentido|Equal0~0_combout\ = (\btn_sentido|reg\(2) & (\btn_sentido|reg\(0) & (\btn_sentido|reg\(3) & \btn_sentido|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_sentido|reg\(2),
	datab => \btn_sentido|reg\(0),
	datac => \btn_sentido|reg\(3),
	datad => \btn_sentido|reg\(1),
	combout => \btn_sentido|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y17_N28
\ent_maquina|v\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|v~combout\ = LCELL((\btn_velocidad|Equal0~0_combout\) # (\btn_sentido|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_velocidad|Equal0~0_combout\,
	datad => \btn_sentido|Equal0~0_combout\,
	combout => \ent_maquina|v~combout\);

-- Location: CLKCTRL_G3
\ent_maquina|v~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ent_maquina|v~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ent_maquina|v~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y22_N12
\ent_maquina|vel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|vel~0_combout\ = \ent_maquina|vel~q\ $ (\btn_velocidad|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_maquina|vel~q\,
	datad => \btn_velocidad|Equal0~0_combout\,
	combout => \ent_maquina|vel~0_combout\);

-- Location: FF_X16_Y22_N13
\ent_maquina|vel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_maquina|v~clkctrl_outclk\,
	d => \ent_maquina|vel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_maquina|vel~q\);

-- Location: LCCOMB_X16_Y22_N4
\ent_maquina|FF0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF0|Mux0~0_combout\ = \ent_maquina|vel~q\ $ (!\ent_maquina|FF0|qout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_maquina|vel~q\,
	datac => \ent_maquina|FF0|qout~q\,
	combout => \ent_maquina|FF0|Mux0~0_combout\);

-- Location: FF_X16_Y22_N5
\ent_maquina|FF0|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_maquina|FF0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_maquina|FF0|qout~q\);

-- Location: LCCOMB_X16_Y22_N8
\ent_maquina|sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|sel~0_combout\ = \ent_maquina|sel~q\ $ (!\btn_velocidad|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_maquina|sel~q\,
	datad => \btn_velocidad|Equal0~0_combout\,
	combout => \ent_maquina|sel~0_combout\);

-- Location: FF_X16_Y22_N9
\ent_maquina|sel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_maquina|v~clkctrl_outclk\,
	d => \ent_maquina|sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_maquina|sel~q\);

-- Location: LCCOMB_X16_Y22_N14
\ent_maquina|K3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|K3~0_combout\ = (\ent_maquina|vel~q\) # (\ent_maquina|FF0|qout~q\ $ (\ent_maquina|sel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|vel~q\,
	datab => \ent_maquina|FF0|qout~q\,
	datad => \ent_maquina|sel~q\,
	combout => \ent_maquina|K3~0_combout\);

-- Location: LCCOMB_X16_Y22_N26
\ent_maquina|FF2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF2|Mux0~0_combout\ = (\ent_maquina|FF3|qout~q\ & (\ent_maquina|sel~q\ & ((\ent_maquina|vel~q\) # (!\ent_maquina|FF0|qout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|vel~q\,
	datab => \ent_maquina|FF3|qout~q\,
	datac => \ent_maquina|FF0|qout~q\,
	datad => \ent_maquina|sel~q\,
	combout => \ent_maquina|FF2|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y22_N30
\ent_maquina|FF3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF3|Mux0~0_combout\ = (\ent_maquina|FF1|qout~q\ & (!\ent_maquina|sel~q\ & ((\ent_maquina|FF0|qout~q\) # (\ent_maquina|vel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|FF0|qout~q\,
	datab => \ent_maquina|FF1|qout~q\,
	datac => \ent_maquina|sel~q\,
	datad => \ent_maquina|vel~q\,
	combout => \ent_maquina|FF3|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y22_N28
\ent_maquina|K2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|K2~0_combout\ = (\ent_maquina|sel~q\ & (!\ent_maquina|FF1|qout~q\ & ((\ent_maquina|vel~q\) # (!\ent_maquina|FF0|qout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|vel~q\,
	datab => \ent_maquina|FF0|qout~q\,
	datac => \ent_maquina|sel~q\,
	datad => \ent_maquina|FF1|qout~q\,
	combout => \ent_maquina|K2~0_combout\);

-- Location: LCCOMB_X16_Y22_N6
\ent_maquina|FF2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF2|Mux0~1_combout\ = (\ent_maquina|FF3|Mux0~0_combout\ & (((!\ent_maquina|FF2|qout~q\)))) # (!\ent_maquina|FF3|Mux0~0_combout\ & ((\ent_maquina|FF2|qout~q\ & ((!\ent_maquina|K2~0_combout\))) # (!\ent_maquina|FF2|qout~q\ & 
-- (\ent_maquina|FF2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|FF2|Mux0~0_combout\,
	datab => \ent_maquina|FF3|Mux0~0_combout\,
	datac => \ent_maquina|FF2|qout~q\,
	datad => \ent_maquina|K2~0_combout\,
	combout => \ent_maquina|FF2|Mux0~1_combout\);

-- Location: FF_X16_Y22_N7
\ent_maquina|FF2|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_maquina|FF2|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_maquina|FF2|qout~q\);

-- Location: LCCOMB_X16_Y22_N10
\ent_maquina|FF3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF3|Mux0~1_combout\ = (!\ent_maquina|FF3|qout~q\ & ((\ent_maquina|FF2|qout~q\ & (\ent_maquina|FF3|Mux0~0_combout\)) # (!\ent_maquina|FF2|qout~q\ & ((\ent_maquina|K2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|FF2|qout~q\,
	datab => \ent_maquina|FF3|qout~q\,
	datac => \ent_maquina|FF3|Mux0~0_combout\,
	datad => \ent_maquina|K2~0_combout\,
	combout => \ent_maquina|FF3|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y22_N18
\ent_maquina|FF3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF3|Mux0~2_combout\ = (\ent_maquina|FF3|Mux0~1_combout\) # ((!\ent_maquina|K3~0_combout\ & \ent_maquina|FF3|qout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_maquina|K3~0_combout\,
	datac => \ent_maquina|FF3|qout~q\,
	datad => \ent_maquina|FF3|Mux0~1_combout\,
	combout => \ent_maquina|FF3|Mux0~2_combout\);

-- Location: FF_X16_Y22_N19
\ent_maquina|FF3|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_maquina|FF3|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_maquina|FF3|qout~q\);

-- Location: LCCOMB_X16_Y22_N22
\ent_maquina|FF1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF1|Mux0~0_combout\ = (!\ent_maquina|FF3|qout~q\ & (!\ent_maquina|sel~q\ & ((\ent_maquina|vel~q\) # (\ent_maquina|FF0|qout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|vel~q\,
	datab => \ent_maquina|FF3|qout~q\,
	datac => \ent_maquina|FF0|qout~q\,
	datad => \ent_maquina|sel~q\,
	combout => \ent_maquina|FF1|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y22_N0
\ent_maquina|FF1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF1|Mux0~1_combout\ = (\ent_maquina|sel~q\ & \ent_maquina|FF3|qout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_maquina|sel~q\,
	datad => \ent_maquina|FF3|qout~q\,
	combout => \ent_maquina|FF1|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y22_N20
\ent_maquina|FF1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF1|Mux0~2_combout\ = (\ent_maquina|FF2|qout~q\ & ((\ent_maquina|vel~q\) # ((!\ent_maquina|FF0|qout~q\)))) # (!\ent_maquina|FF2|qout~q\ & (\ent_maquina|FF1|Mux0~1_combout\ & ((\ent_maquina|vel~q\) # (!\ent_maquina|FF0|qout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|FF2|qout~q\,
	datab => \ent_maquina|vel~q\,
	datac => \ent_maquina|FF0|qout~q\,
	datad => \ent_maquina|FF1|Mux0~1_combout\,
	combout => \ent_maquina|FF1|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y22_N16
\ent_maquina|FF1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_maquina|FF1|Mux0~3_combout\ = (\ent_maquina|FF1|qout~q\ & (((!\ent_maquina|K3~0_combout\)))) # (!\ent_maquina|FF1|qout~q\ & ((\ent_maquina|FF1|Mux0~0_combout\) # ((\ent_maquina|FF1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_maquina|FF1|Mux0~0_combout\,
	datab => \ent_maquina|K3~0_combout\,
	datac => \ent_maquina|FF1|qout~q\,
	datad => \ent_maquina|FF1|Mux0~2_combout\,
	combout => \ent_maquina|FF1|Mux0~3_combout\);

-- Location: FF_X16_Y22_N17
\ent_maquina|FF1|qout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_maquina|FF1|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_maquina|FF1|qout~q\);

-- Location: FF_X16_Y22_N25
\ent_memoria|vect1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_maquina|FF1|qout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect1\(1));

-- Location: LCCOMB_X17_Y22_N20
\ent_memoria|vect2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect2[1]~feeder_combout\ = \ent_memoria|vect1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_memoria|vect1\(1),
	combout => \ent_memoria|vect2[1]~feeder_combout\);

-- Location: FF_X17_Y22_N21
\ent_memoria|vect2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect2\(1));

-- Location: LCCOMB_X17_Y22_N26
\ent_memoria|vect3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect3[1]~feeder_combout\ = \ent_memoria|vect2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_memoria|vect2\(1),
	combout => \ent_memoria|vect3[1]~feeder_combout\);

-- Location: FF_X17_Y22_N27
\ent_memoria|vect3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect3\(1));

-- Location: FF_X17_Y22_N17
\ent_memoria|vect4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_memoria|vect3\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect4\(1));

-- Location: LCCOMB_X16_Y22_N24
\ent_mul|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux2~0_combout\ = (\ent_sel|temp_sel\(0) & (((\ent_sel|temp_sel\(1))))) # (!\ent_sel|temp_sel\(0) & ((\ent_sel|temp_sel\(1) & (\ent_memoria|vect3\(1))) # (!\ent_sel|temp_sel\(1) & ((\ent_memoria|vect1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datab => \ent_memoria|vect3\(1),
	datac => \ent_memoria|vect1\(1),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_mul|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y22_N16
\ent_mul|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux2~1_combout\ = (\ent_sel|temp_sel\(0) & ((\ent_mul|Mux2~0_combout\ & ((\ent_memoria|vect4\(1)))) # (!\ent_mul|Mux2~0_combout\ & (\ent_memoria|vect2\(1))))) # (!\ent_sel|temp_sel\(0) & (((\ent_mul|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datab => \ent_memoria|vect2\(1),
	datac => \ent_memoria|vect4\(1),
	datad => \ent_mul|Mux2~0_combout\,
	combout => \ent_mul|Mux2~1_combout\);

-- Location: FF_X17_Y22_N11
\ent_memoria|vect1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_maquina|FF2|qout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect1\(2));

-- Location: FF_X16_Y22_N15
\ent_memoria|vect2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_memoria|vect1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect2\(2));

-- Location: LCCOMB_X17_Y22_N10
\ent_mul|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux1~0_combout\ = (\ent_sel|temp_sel\(0) & ((\ent_sel|temp_sel\(1)) # ((\ent_memoria|vect2\(2))))) # (!\ent_sel|temp_sel\(0) & (!\ent_sel|temp_sel\(1) & (\ent_memoria|vect1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datab => \ent_sel|temp_sel\(1),
	datac => \ent_memoria|vect1\(2),
	datad => \ent_memoria|vect2\(2),
	combout => \ent_mul|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y22_N8
\ent_memoria|vect3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect3[2]~feeder_combout\ = \ent_memoria|vect2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_memoria|vect2\(2),
	combout => \ent_memoria|vect3[2]~feeder_combout\);

-- Location: FF_X17_Y22_N9
\ent_memoria|vect3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect3\(2));

-- Location: FF_X17_Y22_N7
\ent_memoria|vect4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_memoria|vect3\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect4\(2));

-- Location: LCCOMB_X17_Y22_N6
\ent_mul|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux1~1_combout\ = (\ent_mul|Mux1~0_combout\ & (((\ent_memoria|vect4\(2)) # (!\ent_sel|temp_sel\(1))))) # (!\ent_mul|Mux1~0_combout\ & (\ent_memoria|vect3\(2) & ((\ent_sel|temp_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux1~0_combout\,
	datab => \ent_memoria|vect3\(2),
	datac => \ent_memoria|vect4\(2),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_mul|Mux1~1_combout\);

-- Location: FF_X16_Y22_N3
\ent_memoria|vect1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_maquina|FF3|qout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect1\(3));

-- Location: LCCOMB_X14_Y22_N22
\ent_memoria|vect2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect2[3]~feeder_combout\ = \ent_memoria|vect1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_memoria|vect1\(3),
	combout => \ent_memoria|vect2[3]~feeder_combout\);

-- Location: FF_X14_Y22_N23
\ent_memoria|vect2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect2\(3));

-- Location: LCCOMB_X16_Y22_N2
\ent_mul|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux0~0_combout\ = (\ent_sel|temp_sel\(0) & ((\ent_memoria|vect2\(3)) # ((\ent_sel|temp_sel\(1))))) # (!\ent_sel|temp_sel\(0) & (((\ent_memoria|vect1\(3) & !\ent_sel|temp_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datab => \ent_memoria|vect2\(3),
	datac => \ent_memoria|vect1\(3),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_mul|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y22_N8
\ent_memoria|vect3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect3[3]~feeder_combout\ = \ent_memoria|vect2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_memoria|vect2\(3),
	combout => \ent_memoria|vect3[3]~feeder_combout\);

-- Location: FF_X14_Y22_N9
\ent_memoria|vect3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect3\(3));

-- Location: FF_X14_Y22_N25
\ent_memoria|vect4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_memoria|vect3\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect4\(3));

-- Location: LCCOMB_X14_Y22_N24
\ent_mul|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux0~1_combout\ = (\ent_mul|Mux0~0_combout\ & (((\ent_memoria|vect4\(3)) # (!\ent_sel|temp_sel\(1))))) # (!\ent_mul|Mux0~0_combout\ & (\ent_memoria|vect3\(3) & ((\ent_sel|temp_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux0~0_combout\,
	datab => \ent_memoria|vect3\(3),
	datac => \ent_memoria|vect4\(3),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_mul|Mux0~1_combout\);

-- Location: FF_X17_Y22_N29
\ent_memoria|vect1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_maquina|FF0|qout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect1\(0));

-- Location: LCCOMB_X17_Y22_N24
\ent_memoria|vect2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect2[0]~feeder_combout\ = \ent_memoria|vect1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_memoria|vect1\(0),
	combout => \ent_memoria|vect2[0]~feeder_combout\);

-- Location: FF_X17_Y22_N25
\ent_memoria|vect2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect2\(0));

-- Location: LCCOMB_X17_Y22_N28
\ent_mul|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux3~0_combout\ = (\ent_sel|temp_sel\(0) & ((\ent_sel|temp_sel\(1)) # ((\ent_memoria|vect2\(0))))) # (!\ent_sel|temp_sel\(0) & (!\ent_sel|temp_sel\(1) & (\ent_memoria|vect1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_sel|temp_sel\(0),
	datab => \ent_sel|temp_sel\(1),
	datac => \ent_memoria|vect1\(0),
	datad => \ent_memoria|vect2\(0),
	combout => \ent_mul|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y22_N14
\ent_memoria|vect3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_memoria|vect3[0]~feeder_combout\ = \ent_memoria|vect2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_memoria|vect2\(0),
	combout => \ent_memoria|vect3[0]~feeder_combout\);

-- Location: FF_X17_Y22_N15
\ent_memoria|vect3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	d => \ent_memoria|vect3[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect3\(0));

-- Location: FF_X17_Y22_N13
\ent_memoria|vect4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent_clk_Maquina|salida~clkctrl_outclk\,
	asdata => \ent_memoria|vect3\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent_memoria|vect4\(0));

-- Location: LCCOMB_X17_Y22_N12
\ent_mul|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_mul|Mux3~1_combout\ = (\ent_mul|Mux3~0_combout\ & (((\ent_memoria|vect4\(0)) # (!\ent_sel|temp_sel\(1))))) # (!\ent_mul|Mux3~0_combout\ & (\ent_memoria|vect3\(0) & ((\ent_sel|temp_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux3~0_combout\,
	datab => \ent_memoria|vect3\(0),
	datac => \ent_memoria|vect4\(0),
	datad => \ent_sel|temp_sel\(1),
	combout => \ent_mul|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y22_N4
\ent_Deco|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux6~0_combout\ = (\ent_mul|Mux2~1_combout\ & (((\ent_mul|Mux0~1_combout\)))) # (!\ent_mul|Mux2~1_combout\ & (\ent_mul|Mux1~1_combout\ $ (((!\ent_mul|Mux0~1_combout\ & \ent_mul|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y22_N2
\ent_Deco|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux5~0_combout\ = (\ent_mul|Mux1~1_combout\ & ((\ent_mul|Mux0~1_combout\) # (\ent_mul|Mux2~1_combout\ $ (\ent_mul|Mux3~1_combout\)))) # (!\ent_mul|Mux1~1_combout\ & (\ent_mul|Mux2~1_combout\ & (\ent_mul|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y22_N8
\ent_Deco|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux4~0_combout\ = (\ent_mul|Mux1~1_combout\ & (((\ent_mul|Mux0~1_combout\)))) # (!\ent_mul|Mux1~1_combout\ & (\ent_mul|Mux2~1_combout\ & ((\ent_mul|Mux0~1_combout\) # (!\ent_mul|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y22_N10
\ent_Deco|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux3~0_combout\ = (\ent_mul|Mux1~1_combout\ & ((\ent_mul|Mux0~1_combout\) # (\ent_mul|Mux2~1_combout\ $ (!\ent_mul|Mux3~1_combout\)))) # (!\ent_mul|Mux1~1_combout\ & ((\ent_mul|Mux2~1_combout\ & (\ent_mul|Mux0~1_combout\)) # 
-- (!\ent_mul|Mux2~1_combout\ & ((\ent_mul|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y22_N28
\ent_Deco|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux2~0_combout\ = (\ent_mul|Mux3~1_combout\) # ((\ent_mul|Mux2~1_combout\ & ((\ent_mul|Mux0~1_combout\))) # (!\ent_mul|Mux2~1_combout\ & (\ent_mul|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y22_N26
\ent_Deco|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux1~0_combout\ = (\ent_mul|Mux1~1_combout\ & ((\ent_mul|Mux0~1_combout\) # ((\ent_mul|Mux2~1_combout\ & \ent_mul|Mux3~1_combout\)))) # (!\ent_mul|Mux1~1_combout\ & ((\ent_mul|Mux2~1_combout\) # ((!\ent_mul|Mux0~1_combout\ & 
-- \ent_mul|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y22_N0
\ent_Deco|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent_Deco|Mux0~0_combout\ = (\ent_mul|Mux2~1_combout\ & (!\ent_mul|Mux0~1_combout\ & ((!\ent_mul|Mux3~1_combout\) # (!\ent_mul|Mux1~1_combout\)))) # (!\ent_mul|Mux2~1_combout\ & (\ent_mul|Mux1~1_combout\ $ ((\ent_mul|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_mul|Mux2~1_combout\,
	datab => \ent_mul|Mux1~1_combout\,
	datac => \ent_mul|Mux0~1_combout\,
	datad => \ent_mul|Mux3~1_combout\,
	combout => \ent_Deco|Mux0~0_combout\);

\ww_gnd\(0) <= \gnd[0]~output_o\;

\ww_gnd\(1) <= \gnd[1]~output_o\;

\ww_gnd\(2) <= \gnd[2]~output_o\;

\ww_gnd\(3) <= \gnd[3]~output_o\;

ww_seg7(0) <= \seg7[0]~output_o\;

ww_seg7(1) <= \seg7[1]~output_o\;

ww_seg7(2) <= \seg7[2]~output_o\;

ww_seg7(3) <= \seg7[3]~output_o\;

ww_seg7(4) <= \seg7[4]~output_o\;

ww_seg7(5) <= \seg7[5]~output_o\;

ww_seg7(6) <= \seg7[6]~output_o\;
END structure;


