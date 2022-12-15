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

-- DATE "10/03/2022 22:06:43"

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

ENTITY 	PWM IS
    PORT (
	up : IN std_logic;
	down : IN std_logic;
	clk : IN std_logic;
	pwm : BUFFER std_logic
	);
END PWM;

-- Design Ports Information
-- pwm	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL \divisor05s|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor10s|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \antirrebote_up|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \antirrebote_down|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor10s|Add0~0_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~11_combout\ : std_logic;
SIGNAL \divisor10s|Add0~1\ : std_logic;
SIGNAL \divisor10s|Add0~2_combout\ : std_logic;
SIGNAL \divisor10s|Add0~3\ : std_logic;
SIGNAL \divisor10s|Add0~4_combout\ : std_logic;
SIGNAL \divisor10s|Add0~5\ : std_logic;
SIGNAL \divisor10s|Add0~6_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~6_combout\ : std_logic;
SIGNAL \divisor10s|Add0~7\ : std_logic;
SIGNAL \divisor10s|Add0~8_combout\ : std_logic;
SIGNAL \divisor10s|Add0~9\ : std_logic;
SIGNAL \divisor10s|Add0~10_combout\ : std_logic;
SIGNAL \divisor10s|Add0~11\ : std_logic;
SIGNAL \divisor10s|Add0~12_combout\ : std_logic;
SIGNAL \divisor10s|Add0~13\ : std_logic;
SIGNAL \divisor10s|Add0~14_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~10_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~5_combout\ : std_logic;
SIGNAL \divisor10s|Add0~15\ : std_logic;
SIGNAL \divisor10s|Add0~16_combout\ : std_logic;
SIGNAL \divisor10s|Add0~17\ : std_logic;
SIGNAL \divisor10s|Add0~18_combout\ : std_logic;
SIGNAL \divisor10s|Add0~19\ : std_logic;
SIGNAL \divisor10s|Add0~20_combout\ : std_logic;
SIGNAL \divisor10s|Add0~21\ : std_logic;
SIGNAL \divisor10s|Add0~22_combout\ : std_logic;
SIGNAL \divisor10s|Add0~23\ : std_logic;
SIGNAL \divisor10s|Add0~24_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~9_combout\ : std_logic;
SIGNAL \divisor10s|Add0~25\ : std_logic;
SIGNAL \divisor10s|Add0~26_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~8_combout\ : std_logic;
SIGNAL \divisor10s|Add0~27\ : std_logic;
SIGNAL \divisor10s|Add0~28_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~7_combout\ : std_logic;
SIGNAL \divisor10s|Add0~29\ : std_logic;
SIGNAL \divisor10s|Add0~30_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~6_combout\ : std_logic;
SIGNAL \divisor10s|Add0~31\ : std_logic;
SIGNAL \divisor10s|Add0~32_combout\ : std_logic;
SIGNAL \divisor10s|Add0~33\ : std_logic;
SIGNAL \divisor10s|Add0~34_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~5_combout\ : std_logic;
SIGNAL \divisor10s|Add0~35\ : std_logic;
SIGNAL \divisor10s|Add0~36_combout\ : std_logic;
SIGNAL \divisor10s|Add0~37\ : std_logic;
SIGNAL \divisor10s|Add0~38_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~4_combout\ : std_logic;
SIGNAL \divisor10s|Add0~39\ : std_logic;
SIGNAL \divisor10s|Add0~40_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~3_combout\ : std_logic;
SIGNAL \divisor10s|Add0~41\ : std_logic;
SIGNAL \divisor10s|Add0~42_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~2_combout\ : std_logic;
SIGNAL \divisor10s|Add0~43\ : std_logic;
SIGNAL \divisor10s|Add0~44_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~1_combout\ : std_logic;
SIGNAL \divisor10s|Add0~45\ : std_logic;
SIGNAL \divisor10s|Add0~46_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~0_combout\ : std_logic;
SIGNAL \divisor10s|Add0~47\ : std_logic;
SIGNAL \divisor10s|Add0~48_combout\ : std_logic;
SIGNAL \divisor10s|Add0~49\ : std_logic;
SIGNAL \divisor10s|Add0~50_combout\ : std_logic;
SIGNAL \divisor10s|cuenta~12_combout\ : std_logic;
SIGNAL \divisor10s|Add0~51\ : std_logic;
SIGNAL \divisor10s|Add0~52_combout\ : std_logic;
SIGNAL \divisor10s|Add0~53\ : std_logic;
SIGNAL \divisor10s|Add0~54_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~7_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~0_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~3_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~1_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~2_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~4_combout\ : std_logic;
SIGNAL \divisor10s|Equal0~8_combout\ : std_logic;
SIGNAL \divisor10s|salida~0_combout\ : std_logic;
SIGNAL \divisor10s|salida~feeder_combout\ : std_logic;
SIGNAL \divisor10s|salida~q\ : std_logic;
SIGNAL \divisor10s|salida~clkctrl_outclk\ : std_logic;
SIGNAL \divisor05s|Add0~0_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~6_combout\ : std_logic;
SIGNAL \divisor05s|Add0~1\ : std_logic;
SIGNAL \divisor05s|Add0~2_combout\ : std_logic;
SIGNAL \divisor05s|Add0~3\ : std_logic;
SIGNAL \divisor05s|Add0~4_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~5_combout\ : std_logic;
SIGNAL \divisor05s|Add0~5\ : std_logic;
SIGNAL \divisor05s|Add0~6_combout\ : std_logic;
SIGNAL \divisor05s|Add0~7\ : std_logic;
SIGNAL \divisor05s|Add0~8_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~4_combout\ : std_logic;
SIGNAL \divisor05s|Add0~9\ : std_logic;
SIGNAL \divisor05s|Add0~10_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~3_combout\ : std_logic;
SIGNAL \divisor05s|Add0~11\ : std_logic;
SIGNAL \divisor05s|Add0~12_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~2_combout\ : std_logic;
SIGNAL \divisor05s|Add0~13\ : std_logic;
SIGNAL \divisor05s|Add0~14_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~1_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~5_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~6_combout\ : std_logic;
SIGNAL \divisor05s|Add0~15\ : std_logic;
SIGNAL \divisor05s|Add0~16_combout\ : std_logic;
SIGNAL \divisor05s|cuenta~0_combout\ : std_logic;
SIGNAL \divisor05s|Add0~17\ : std_logic;
SIGNAL \divisor05s|Add0~18_combout\ : std_logic;
SIGNAL \divisor05s|Add0~19\ : std_logic;
SIGNAL \divisor05s|Add0~20_combout\ : std_logic;
SIGNAL \divisor05s|Add0~21\ : std_logic;
SIGNAL \divisor05s|Add0~22_combout\ : std_logic;
SIGNAL \divisor05s|Add0~23\ : std_logic;
SIGNAL \divisor05s|Add0~24_combout\ : std_logic;
SIGNAL \divisor05s|Add0~25\ : std_logic;
SIGNAL \divisor05s|Add0~26_combout\ : std_logic;
SIGNAL \divisor05s|Add0~27\ : std_logic;
SIGNAL \divisor05s|Add0~28_combout\ : std_logic;
SIGNAL \divisor05s|Add0~29\ : std_logic;
SIGNAL \divisor05s|Add0~30_combout\ : std_logic;
SIGNAL \divisor05s|Add0~31\ : std_logic;
SIGNAL \divisor05s|Add0~32_combout\ : std_logic;
SIGNAL \divisor05s|Add0~33\ : std_logic;
SIGNAL \divisor05s|Add0~34_combout\ : std_logic;
SIGNAL \divisor05s|Add0~35\ : std_logic;
SIGNAL \divisor05s|Add0~36_combout\ : std_logic;
SIGNAL \divisor05s|Add0~37\ : std_logic;
SIGNAL \divisor05s|Add0~38_combout\ : std_logic;
SIGNAL \divisor05s|Add0~39\ : std_logic;
SIGNAL \divisor05s|Add0~40_combout\ : std_logic;
SIGNAL \divisor05s|Add0~41\ : std_logic;
SIGNAL \divisor05s|Add0~42_combout\ : std_logic;
SIGNAL \divisor05s|Add0~43\ : std_logic;
SIGNAL \divisor05s|Add0~44_combout\ : std_logic;
SIGNAL \divisor05s|Add0~45\ : std_logic;
SIGNAL \divisor05s|Add0~46_combout\ : std_logic;
SIGNAL \divisor05s|Add0~47\ : std_logic;
SIGNAL \divisor05s|Add0~48_combout\ : std_logic;
SIGNAL \divisor05s|Add0~49\ : std_logic;
SIGNAL \divisor05s|Add0~50_combout\ : std_logic;
SIGNAL \divisor05s|Add0~51\ : std_logic;
SIGNAL \divisor05s|Add0~52_combout\ : std_logic;
SIGNAL \divisor05s|Add0~53\ : std_logic;
SIGNAL \divisor05s|Add0~54_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~7_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~3_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~0_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~2_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~1_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~4_combout\ : std_logic;
SIGNAL \divisor05s|Equal0~8_combout\ : std_logic;
SIGNAL \divisor05s|salida~0_combout\ : std_logic;
SIGNAL \divisor05s|salida~feeder_combout\ : std_logic;
SIGNAL \divisor05s|salida~q\ : std_logic;
SIGNAL \divisor05s|salida~clkctrl_outclk\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \antirrebote_down|reg[0]~0_combout\ : std_logic;
SIGNAL \antirrebote_down|reg[0]~feeder_combout\ : std_logic;
SIGNAL \antirrebote_down|reg[1]~feeder_combout\ : std_logic;
SIGNAL \antirrebote_down|reg[2]~feeder_combout\ : std_logic;
SIGNAL \antirrebote_down|Equal0~combout\ : std_logic;
SIGNAL \antirrebote_down|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \modul|tau_down[1]~92_combout\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \antirrebote_up|reg[0]~0_combout\ : std_logic;
SIGNAL \antirrebote_up|reg[1]~feeder_combout\ : std_logic;
SIGNAL \antirrebote_up|reg[2]~feeder_combout\ : std_logic;
SIGNAL \antirrebote_up|Equal0~combout\ : std_logic;
SIGNAL \antirrebote_up|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \modul|tau_up[1]~90_combout\ : std_logic;
SIGNAL \modul|Add3~0_combout\ : std_logic;
SIGNAL \modul|tau_down[2]~31_cout\ : std_logic;
SIGNAL \modul|tau_down[2]~32_combout\ : std_logic;
SIGNAL \modul|tau_down[2]~33\ : std_logic;
SIGNAL \modul|tau_down[3]~34_combout\ : std_logic;
SIGNAL \modul|tau_down[3]~35\ : std_logic;
SIGNAL \modul|tau_down[4]~36_combout\ : std_logic;
SIGNAL \modul|tau_down[4]~37\ : std_logic;
SIGNAL \modul|tau_down[5]~38_combout\ : std_logic;
SIGNAL \modul|tau_down[5]~39\ : std_logic;
SIGNAL \modul|tau_down[6]~40_combout\ : std_logic;
SIGNAL \modul|tau_down[6]~41\ : std_logic;
SIGNAL \modul|tau_down[7]~42_combout\ : std_logic;
SIGNAL \modul|tau_down[7]~43\ : std_logic;
SIGNAL \modul|tau_down[8]~44_combout\ : std_logic;
SIGNAL \modul|tau_down[8]~45\ : std_logic;
SIGNAL \modul|tau_down[9]~46_combout\ : std_logic;
SIGNAL \modul|tau_down[9]~47\ : std_logic;
SIGNAL \modul|tau_down[10]~48_combout\ : std_logic;
SIGNAL \modul|tau_down[10]~49\ : std_logic;
SIGNAL \modul|tau_down[11]~50_combout\ : std_logic;
SIGNAL \modul|tau_down[11]~51\ : std_logic;
SIGNAL \modul|tau_down[12]~52_combout\ : std_logic;
SIGNAL \modul|tau_down[12]~53\ : std_logic;
SIGNAL \modul|tau_down[13]~54_combout\ : std_logic;
SIGNAL \modul|tau_down[13]~55\ : std_logic;
SIGNAL \modul|tau_down[14]~56_combout\ : std_logic;
SIGNAL \modul|tau_down[14]~57\ : std_logic;
SIGNAL \modul|tau_down[15]~58_combout\ : std_logic;
SIGNAL \modul|tau_down[15]~59\ : std_logic;
SIGNAL \modul|tau_down[16]~60_combout\ : std_logic;
SIGNAL \modul|tau_down[16]~61\ : std_logic;
SIGNAL \modul|tau_down[17]~62_combout\ : std_logic;
SIGNAL \modul|tau_down[17]~63\ : std_logic;
SIGNAL \modul|tau_down[18]~64_combout\ : std_logic;
SIGNAL \modul|tau_down[18]~65\ : std_logic;
SIGNAL \modul|tau_down[19]~66_combout\ : std_logic;
SIGNAL \modul|tau_down[19]~67\ : std_logic;
SIGNAL \modul|tau_down[20]~68_combout\ : std_logic;
SIGNAL \modul|tau_down[20]~69\ : std_logic;
SIGNAL \modul|tau_down[21]~70_combout\ : std_logic;
SIGNAL \modul|tau_down[21]~71\ : std_logic;
SIGNAL \modul|tau_down[22]~72_combout\ : std_logic;
SIGNAL \modul|tau_down[22]~73\ : std_logic;
SIGNAL \modul|tau_down[23]~74_combout\ : std_logic;
SIGNAL \modul|tau_down[23]~75\ : std_logic;
SIGNAL \modul|tau_down[24]~76_combout\ : std_logic;
SIGNAL \modul|tau_down[24]~77\ : std_logic;
SIGNAL \modul|tau_down[25]~78_combout\ : std_logic;
SIGNAL \modul|tau_down[25]~79\ : std_logic;
SIGNAL \modul|tau_down[26]~80_combout\ : std_logic;
SIGNAL \modul|tau_down[26]~81\ : std_logic;
SIGNAL \modul|tau_down[27]~82_combout\ : std_logic;
SIGNAL \modul|tau_down[27]~83\ : std_logic;
SIGNAL \modul|tau_down[28]~84_combout\ : std_logic;
SIGNAL \modul|tau_down[28]~85\ : std_logic;
SIGNAL \modul|tau_down[29]~86_combout\ : std_logic;
SIGNAL \modul|tau_down[29]~87\ : std_logic;
SIGNAL \modul|tau_down[30]~88_combout\ : std_logic;
SIGNAL \modul|tau_down[30]~89\ : std_logic;
SIGNAL \modul|tau_down[31]~90_combout\ : std_logic;
SIGNAL \modul|tau_up[2]~30_combout\ : std_logic;
SIGNAL \modul|tau_up[2]~31\ : std_logic;
SIGNAL \modul|tau_up[3]~32_combout\ : std_logic;
SIGNAL \modul|tau_up[3]~33\ : std_logic;
SIGNAL \modul|tau_up[4]~34_combout\ : std_logic;
SIGNAL \modul|tau_up[4]~35\ : std_logic;
SIGNAL \modul|tau_up[5]~36_combout\ : std_logic;
SIGNAL \modul|tau_up[5]~37\ : std_logic;
SIGNAL \modul|tau_up[6]~38_combout\ : std_logic;
SIGNAL \modul|tau_up[6]~39\ : std_logic;
SIGNAL \modul|tau_up[7]~40_combout\ : std_logic;
SIGNAL \modul|tau_up[7]~41\ : std_logic;
SIGNAL \modul|tau_up[8]~42_combout\ : std_logic;
SIGNAL \modul|tau_up[8]~43\ : std_logic;
SIGNAL \modul|tau_up[9]~44_combout\ : std_logic;
SIGNAL \modul|tau_up[9]~45\ : std_logic;
SIGNAL \modul|tau_up[10]~46_combout\ : std_logic;
SIGNAL \modul|tau_up[10]~47\ : std_logic;
SIGNAL \modul|tau_up[11]~48_combout\ : std_logic;
SIGNAL \modul|tau_up[11]~49\ : std_logic;
SIGNAL \modul|tau_up[12]~50_combout\ : std_logic;
SIGNAL \modul|tau_up[12]~51\ : std_logic;
SIGNAL \modul|tau_up[13]~52_combout\ : std_logic;
SIGNAL \modul|tau_up[13]~53\ : std_logic;
SIGNAL \modul|tau_up[14]~54_combout\ : std_logic;
SIGNAL \modul|tau_up[14]~55\ : std_logic;
SIGNAL \modul|tau_up[15]~56_combout\ : std_logic;
SIGNAL \modul|tau_up[15]~57\ : std_logic;
SIGNAL \modul|tau_up[16]~58_combout\ : std_logic;
SIGNAL \modul|tau_up[16]~59\ : std_logic;
SIGNAL \modul|tau_up[17]~60_combout\ : std_logic;
SIGNAL \modul|tau_up[17]~feeder_combout\ : std_logic;
SIGNAL \modul|tau_up[17]~61\ : std_logic;
SIGNAL \modul|tau_up[18]~62_combout\ : std_logic;
SIGNAL \modul|tau_up[18]~63\ : std_logic;
SIGNAL \modul|tau_up[19]~64_combout\ : std_logic;
SIGNAL \modul|tau_up[19]~65\ : std_logic;
SIGNAL \modul|tau_up[20]~66_combout\ : std_logic;
SIGNAL \modul|tau_up[20]~67\ : std_logic;
SIGNAL \modul|tau_up[21]~68_combout\ : std_logic;
SIGNAL \modul|tau_up[21]~69\ : std_logic;
SIGNAL \modul|tau_up[22]~70_combout\ : std_logic;
SIGNAL \modul|tau_up[22]~71\ : std_logic;
SIGNAL \modul|tau_up[23]~72_combout\ : std_logic;
SIGNAL \modul|tau_up[23]~73\ : std_logic;
SIGNAL \modul|tau_up[24]~74_combout\ : std_logic;
SIGNAL \modul|tau_up[24]~75\ : std_logic;
SIGNAL \modul|tau_up[25]~76_combout\ : std_logic;
SIGNAL \modul|tau_up[25]~77\ : std_logic;
SIGNAL \modul|tau_up[26]~78_combout\ : std_logic;
SIGNAL \modul|tau_up[26]~79\ : std_logic;
SIGNAL \modul|tau_up[27]~80_combout\ : std_logic;
SIGNAL \modul|tau_up[27]~81\ : std_logic;
SIGNAL \modul|tau_up[28]~82_combout\ : std_logic;
SIGNAL \modul|tau_up[28]~83\ : std_logic;
SIGNAL \modul|tau_up[29]~84_combout\ : std_logic;
SIGNAL \modul|tau_up[29]~85\ : std_logic;
SIGNAL \modul|tau_up[30]~86_combout\ : std_logic;
SIGNAL \modul|tau_up[30]~87\ : std_logic;
SIGNAL \modul|tau_up[31]~88_combout\ : std_logic;
SIGNAL \modul|Add2~1\ : std_logic;
SIGNAL \modul|Add2~3\ : std_logic;
SIGNAL \modul|Add2~5\ : std_logic;
SIGNAL \modul|Add2~7\ : std_logic;
SIGNAL \modul|Add2~9\ : std_logic;
SIGNAL \modul|Add2~11\ : std_logic;
SIGNAL \modul|Add2~13\ : std_logic;
SIGNAL \modul|Add2~15\ : std_logic;
SIGNAL \modul|Add2~17\ : std_logic;
SIGNAL \modul|Add2~19\ : std_logic;
SIGNAL \modul|Add2~21\ : std_logic;
SIGNAL \modul|Add2~23\ : std_logic;
SIGNAL \modul|Add2~25\ : std_logic;
SIGNAL \modul|Add2~27\ : std_logic;
SIGNAL \modul|Add2~29\ : std_logic;
SIGNAL \modul|Add2~31\ : std_logic;
SIGNAL \modul|Add2~33\ : std_logic;
SIGNAL \modul|Add2~35\ : std_logic;
SIGNAL \modul|Add2~37\ : std_logic;
SIGNAL \modul|Add2~39\ : std_logic;
SIGNAL \modul|Add2~41\ : std_logic;
SIGNAL \modul|Add2~43\ : std_logic;
SIGNAL \modul|Add2~45\ : std_logic;
SIGNAL \modul|Add2~47\ : std_logic;
SIGNAL \modul|Add2~49\ : std_logic;
SIGNAL \modul|Add2~51\ : std_logic;
SIGNAL \modul|Add2~53\ : std_logic;
SIGNAL \modul|Add2~55\ : std_logic;
SIGNAL \modul|Add2~57\ : std_logic;
SIGNAL \modul|Add2~58_combout\ : std_logic;
SIGNAL \modul|Add2~56_combout\ : std_logic;
SIGNAL \modul|Add2~54_combout\ : std_logic;
SIGNAL \modul|Add2~52_combout\ : std_logic;
SIGNAL \modul|Add2~50_combout\ : std_logic;
SIGNAL \modul|Add2~48_combout\ : std_logic;
SIGNAL \modul|Add2~46_combout\ : std_logic;
SIGNAL \modul|Add2~44_combout\ : std_logic;
SIGNAL \modul|Add2~42_combout\ : std_logic;
SIGNAL \modul|Add2~40_combout\ : std_logic;
SIGNAL \modul|Add2~38_combout\ : std_logic;
SIGNAL \modul|Add2~36_combout\ : std_logic;
SIGNAL \modul|Add2~34_combout\ : std_logic;
SIGNAL \modul|Add2~32_combout\ : std_logic;
SIGNAL \modul|Add2~30_combout\ : std_logic;
SIGNAL \modul|Add2~28_combout\ : std_logic;
SIGNAL \modul|Add2~26_combout\ : std_logic;
SIGNAL \modul|Add2~24_combout\ : std_logic;
SIGNAL \modul|Add2~22_combout\ : std_logic;
SIGNAL \modul|Add2~20_combout\ : std_logic;
SIGNAL \modul|Add2~18_combout\ : std_logic;
SIGNAL \modul|Add2~16_combout\ : std_logic;
SIGNAL \modul|Add2~14_combout\ : std_logic;
SIGNAL \modul|Add2~12_combout\ : std_logic;
SIGNAL \modul|Add2~10_combout\ : std_logic;
SIGNAL \modul|Add2~8_combout\ : std_logic;
SIGNAL \modul|Add2~6_combout\ : std_logic;
SIGNAL \modul|Add2~4_combout\ : std_logic;
SIGNAL \modul|Add2~2_combout\ : std_logic;
SIGNAL \modul|Add2~0_combout\ : std_logic;
SIGNAL \modul|Add3~1\ : std_logic;
SIGNAL \modul|Add3~3\ : std_logic;
SIGNAL \modul|Add3~5\ : std_logic;
SIGNAL \modul|Add3~7\ : std_logic;
SIGNAL \modul|Add3~9\ : std_logic;
SIGNAL \modul|Add3~11\ : std_logic;
SIGNAL \modul|Add3~13\ : std_logic;
SIGNAL \modul|Add3~15\ : std_logic;
SIGNAL \modul|Add3~17\ : std_logic;
SIGNAL \modul|Add3~19\ : std_logic;
SIGNAL \modul|Add3~21\ : std_logic;
SIGNAL \modul|Add3~23\ : std_logic;
SIGNAL \modul|Add3~25\ : std_logic;
SIGNAL \modul|Add3~27\ : std_logic;
SIGNAL \modul|Add3~29\ : std_logic;
SIGNAL \modul|Add3~31\ : std_logic;
SIGNAL \modul|Add3~33\ : std_logic;
SIGNAL \modul|Add3~35\ : std_logic;
SIGNAL \modul|Add3~37\ : std_logic;
SIGNAL \modul|Add3~39\ : std_logic;
SIGNAL \modul|Add3~41\ : std_logic;
SIGNAL \modul|Add3~43\ : std_logic;
SIGNAL \modul|Add3~45\ : std_logic;
SIGNAL \modul|Add3~47\ : std_logic;
SIGNAL \modul|Add3~49\ : std_logic;
SIGNAL \modul|Add3~51\ : std_logic;
SIGNAL \modul|Add3~53\ : std_logic;
SIGNAL \modul|Add3~55\ : std_logic;
SIGNAL \modul|Add3~57\ : std_logic;
SIGNAL \modul|Add3~59\ : std_logic;
SIGNAL \modul|Add3~60_combout\ : std_logic;
SIGNAL \modul|Add3~48_combout\ : std_logic;
SIGNAL \modul|Add3~50_combout\ : std_logic;
SIGNAL \modul|Add3~52_combout\ : std_logic;
SIGNAL \modul|Add3~54_combout\ : std_logic;
SIGNAL \modul|tau_f3~7_combout\ : std_logic;
SIGNAL \modul|Add3~32_combout\ : std_logic;
SIGNAL \modul|Add3~34_combout\ : std_logic;
SIGNAL \modul|Add3~36_combout\ : std_logic;
SIGNAL \modul|Add3~38_combout\ : std_logic;
SIGNAL \modul|tau_f3~5_combout\ : std_logic;
SIGNAL \modul|Add3~58_combout\ : std_logic;
SIGNAL \modul|Add3~56_combout\ : std_logic;
SIGNAL \modul|tau_f3~8_combout\ : std_logic;
SIGNAL \modul|Add3~42_combout\ : std_logic;
SIGNAL \modul|Add3~40_combout\ : std_logic;
SIGNAL \modul|Add3~44_combout\ : std_logic;
SIGNAL \modul|Add3~46_combout\ : std_logic;
SIGNAL \modul|tau_f3~6_combout\ : std_logic;
SIGNAL \modul|tau_f3~9_combout\ : std_logic;
SIGNAL \modul|Add3~6_combout\ : std_logic;
SIGNAL \modul|Add3~10_combout\ : std_logic;
SIGNAL \modul|Add3~8_combout\ : std_logic;
SIGNAL \modul|Add3~14_combout\ : std_logic;
SIGNAL \modul|Add3~12_combout\ : std_logic;
SIGNAL \modul|tau_f3~0_combout\ : std_logic;
SIGNAL \modul|Add3~24_combout\ : std_logic;
SIGNAL \modul|Add3~26_combout\ : std_logic;
SIGNAL \modul|Add3~28_combout\ : std_logic;
SIGNAL \modul|Add3~16_combout\ : std_logic;
SIGNAL \modul|Add3~18_combout\ : std_logic;
SIGNAL \modul|Add3~4_combout\ : std_logic;
SIGNAL \modul|Add3~2_combout\ : std_logic;
SIGNAL \modul|Add3~20_combout\ : std_logic;
SIGNAL \modul|Add3~22_combout\ : std_logic;
SIGNAL \modul|tau_f3~1_combout\ : std_logic;
SIGNAL \modul|Add3~30_combout\ : std_logic;
SIGNAL \modul|tau_f3~2_combout\ : std_logic;
SIGNAL \modul|tau_f3~3_combout\ : std_logic;
SIGNAL \modul|tau_f3~4_combout\ : std_logic;
SIGNAL \modul|tau_f3[1]~11_combout\ : std_logic;
SIGNAL \modul|tau_f3[3]~10_combout\ : std_logic;
SIGNAL \modul|tau_f3[2]~12_combout\ : std_logic;
SIGNAL \senal|process_0~0_combout\ : std_logic;
SIGNAL \senal|n[24]~2_combout\ : std_logic;
SIGNAL \senal|Add1~0_combout\ : std_logic;
SIGNAL \senal|n~4_combout\ : std_logic;
SIGNAL \senal|LessThan0~5_combout\ : std_logic;
SIGNAL \senal|LessThan0~6_combout\ : std_logic;
SIGNAL \senal|LessThan0~7_combout\ : std_logic;
SIGNAL \senal|LessThan0~1_combout\ : std_logic;
SIGNAL \senal|LessThan0~2_combout\ : std_logic;
SIGNAL \senal|LessThan0~3_combout\ : std_logic;
SIGNAL \senal|LessThan0~0_combout\ : std_logic;
SIGNAL \senal|LessThan0~4_combout\ : std_logic;
SIGNAL \senal|LessThan0~8_combout\ : std_logic;
SIGNAL \senal|Equal0~4_combout\ : std_logic;
SIGNAL \senal|Equal0~2_combout\ : std_logic;
SIGNAL \senal|n~0_combout\ : std_logic;
SIGNAL \senal|n~5_combout\ : std_logic;
SIGNAL \senal|Add1~1\ : std_logic;
SIGNAL \senal|Add1~2_combout\ : std_logic;
SIGNAL \senal|n[1]~35_combout\ : std_logic;
SIGNAL \senal|Add1~3\ : std_logic;
SIGNAL \senal|Add1~5\ : std_logic;
SIGNAL \senal|Add1~6_combout\ : std_logic;
SIGNAL \senal|n[3]~6_combout\ : std_logic;
SIGNAL \senal|Add1~7\ : std_logic;
SIGNAL \senal|Add1~8_combout\ : std_logic;
SIGNAL \senal|n[4]~7_combout\ : std_logic;
SIGNAL \senal|Add1~9\ : std_logic;
SIGNAL \senal|Add1~10_combout\ : std_logic;
SIGNAL \senal|n[5]~8_combout\ : std_logic;
SIGNAL \senal|Add1~11\ : std_logic;
SIGNAL \senal|Add1~12_combout\ : std_logic;
SIGNAL \senal|n[6]~9_combout\ : std_logic;
SIGNAL \senal|Add1~13\ : std_logic;
SIGNAL \senal|Add1~14_combout\ : std_logic;
SIGNAL \senal|n[7]~10_combout\ : std_logic;
SIGNAL \senal|Add1~15\ : std_logic;
SIGNAL \senal|Add1~16_combout\ : std_logic;
SIGNAL \senal|n[8]~11_combout\ : std_logic;
SIGNAL \senal|Add1~17\ : std_logic;
SIGNAL \senal|Add1~18_combout\ : std_logic;
SIGNAL \senal|n[9]~12_combout\ : std_logic;
SIGNAL \senal|Add1~19\ : std_logic;
SIGNAL \senal|Add1~20_combout\ : std_logic;
SIGNAL \senal|n[10]~13_combout\ : std_logic;
SIGNAL \senal|Add1~21\ : std_logic;
SIGNAL \senal|Add1~22_combout\ : std_logic;
SIGNAL \senal|n[11]~14_combout\ : std_logic;
SIGNAL \senal|Add1~23\ : std_logic;
SIGNAL \senal|Add1~24_combout\ : std_logic;
SIGNAL \senal|n[12]~15_combout\ : std_logic;
SIGNAL \senal|Add1~25\ : std_logic;
SIGNAL \senal|Add1~26_combout\ : std_logic;
SIGNAL \senal|n[13]~16_combout\ : std_logic;
SIGNAL \senal|Add1~27\ : std_logic;
SIGNAL \senal|Add1~28_combout\ : std_logic;
SIGNAL \senal|n[14]~17_combout\ : std_logic;
SIGNAL \senal|Add1~29\ : std_logic;
SIGNAL \senal|Add1~30_combout\ : std_logic;
SIGNAL \senal|n[15]~18_combout\ : std_logic;
SIGNAL \senal|Add1~31\ : std_logic;
SIGNAL \senal|Add1~32_combout\ : std_logic;
SIGNAL \senal|n[16]~19_combout\ : std_logic;
SIGNAL \senal|Add1~33\ : std_logic;
SIGNAL \senal|Add1~34_combout\ : std_logic;
SIGNAL \senal|n[17]~20_combout\ : std_logic;
SIGNAL \senal|Add1~35\ : std_logic;
SIGNAL \senal|Add1~36_combout\ : std_logic;
SIGNAL \senal|n[18]~21_combout\ : std_logic;
SIGNAL \senal|Add1~37\ : std_logic;
SIGNAL \senal|Add1~38_combout\ : std_logic;
SIGNAL \senal|n[19]~22_combout\ : std_logic;
SIGNAL \senal|Add1~39\ : std_logic;
SIGNAL \senal|Add1~40_combout\ : std_logic;
SIGNAL \senal|n[20]~23_combout\ : std_logic;
SIGNAL \senal|Add1~41\ : std_logic;
SIGNAL \senal|Add1~42_combout\ : std_logic;
SIGNAL \senal|n[21]~24_combout\ : std_logic;
SIGNAL \senal|Add1~43\ : std_logic;
SIGNAL \senal|Add1~44_combout\ : std_logic;
SIGNAL \senal|n[22]~25_combout\ : std_logic;
SIGNAL \senal|Add1~45\ : std_logic;
SIGNAL \senal|Add1~46_combout\ : std_logic;
SIGNAL \senal|n[23]~26_combout\ : std_logic;
SIGNAL \senal|Add1~47\ : std_logic;
SIGNAL \senal|Add1~48_combout\ : std_logic;
SIGNAL \senal|n[24]~27_combout\ : std_logic;
SIGNAL \senal|Add1~49\ : std_logic;
SIGNAL \senal|Add1~50_combout\ : std_logic;
SIGNAL \senal|n[25]~28_combout\ : std_logic;
SIGNAL \senal|Add1~51\ : std_logic;
SIGNAL \senal|Add1~52_combout\ : std_logic;
SIGNAL \senal|n[26]~29_combout\ : std_logic;
SIGNAL \senal|Add1~53\ : std_logic;
SIGNAL \senal|Add1~54_combout\ : std_logic;
SIGNAL \senal|n[27]~30_combout\ : std_logic;
SIGNAL \senal|Add1~55\ : std_logic;
SIGNAL \senal|Add1~56_combout\ : std_logic;
SIGNAL \senal|n[28]~31_combout\ : std_logic;
SIGNAL \senal|Add1~57\ : std_logic;
SIGNAL \senal|Add1~58_combout\ : std_logic;
SIGNAL \senal|n[29]~32_combout\ : std_logic;
SIGNAL \senal|Add1~59\ : std_logic;
SIGNAL \senal|Add1~60_combout\ : std_logic;
SIGNAL \senal|n[30]~33_combout\ : std_logic;
SIGNAL \senal|Add1~61\ : std_logic;
SIGNAL \senal|Add1~62_combout\ : std_logic;
SIGNAL \senal|n[31]~34_combout\ : std_logic;
SIGNAL \senal|LessThan0~9_combout\ : std_logic;
SIGNAL \senal|LessThan0~10_combout\ : std_logic;
SIGNAL \senal|n[30]~1_combout\ : std_logic;
SIGNAL \senal|Add1~4_combout\ : std_logic;
SIGNAL \senal|n[2]~3_combout\ : std_logic;
SIGNAL \senal|Equal0~3_combout\ : std_logic;
SIGNAL \senal|Equal1~0_combout\ : std_logic;
SIGNAL \senal|salida~0_combout\ : std_logic;
SIGNAL \senal|salida~1_combout\ : std_logic;
SIGNAL \senal|salida~q\ : std_logic;
SIGNAL \divisor10s|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \modul|tau_up\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \modul|tau_down\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \senal|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \antirrebote_up|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor05s|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \antirrebote_down|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor10s|ALT_INV_salida~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_up <= up;
ww_down <= down;
ww_clk <= clk;
pwm <= ww_pwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divisor05s|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor05s|salida~q\);

\divisor10s|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor10s|salida~q\);

\antirrebote_up|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \antirrebote_up|Equal0~combout\);

\antirrebote_down|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \antirrebote_down|Equal0~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\divisor10s|ALT_INV_salida~clkctrl_outclk\ <= NOT \divisor10s|salida~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\pwm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \senal|salida~q\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

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

-- Location: LCCOMB_X7_Y8_N4
\divisor10s|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~0_combout\ = \divisor10s|cuenta\(0) $ (VCC)
-- \divisor10s|Add0~1\ = CARRY(\divisor10s|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(0),
	datad => VCC,
	combout => \divisor10s|Add0~0_combout\,
	cout => \divisor10s|Add0~1\);

-- Location: LCCOMB_X6_Y8_N6
\divisor10s|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~11_combout\ = (\divisor10s|Add0~0_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~0_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~11_combout\);

-- Location: FF_X7_Y8_N19
\divisor10s|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \divisor10s|cuenta~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(0));

-- Location: LCCOMB_X7_Y8_N6
\divisor10s|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~2_combout\ = (\divisor10s|cuenta\(1) & (!\divisor10s|Add0~1\)) # (!\divisor10s|cuenta\(1) & ((\divisor10s|Add0~1\) # (GND)))
-- \divisor10s|Add0~3\ = CARRY((!\divisor10s|Add0~1\) # (!\divisor10s|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(1),
	datad => VCC,
	cin => \divisor10s|Add0~1\,
	combout => \divisor10s|Add0~2_combout\,
	cout => \divisor10s|Add0~3\);

-- Location: FF_X7_Y8_N7
\divisor10s|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(1));

-- Location: LCCOMB_X7_Y8_N8
\divisor10s|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~4_combout\ = (\divisor10s|cuenta\(2) & (\divisor10s|Add0~3\ $ (GND))) # (!\divisor10s|cuenta\(2) & (!\divisor10s|Add0~3\ & VCC))
-- \divisor10s|Add0~5\ = CARRY((\divisor10s|cuenta\(2) & !\divisor10s|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(2),
	datad => VCC,
	cin => \divisor10s|Add0~3\,
	combout => \divisor10s|Add0~4_combout\,
	cout => \divisor10s|Add0~5\);

-- Location: FF_X7_Y8_N9
\divisor10s|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(2));

-- Location: LCCOMB_X7_Y8_N10
\divisor10s|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~6_combout\ = (\divisor10s|cuenta\(3) & (!\divisor10s|Add0~5\)) # (!\divisor10s|cuenta\(3) & ((\divisor10s|Add0~5\) # (GND)))
-- \divisor10s|Add0~7\ = CARRY((!\divisor10s|Add0~5\) # (!\divisor10s|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(3),
	datad => VCC,
	cin => \divisor10s|Add0~5\,
	combout => \divisor10s|Add0~6_combout\,
	cout => \divisor10s|Add0~7\);

-- Location: FF_X7_Y8_N11
\divisor10s|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(3));

-- Location: LCCOMB_X6_Y8_N10
\divisor10s|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~6_combout\ = (!\divisor10s|cuenta\(2) & (!\divisor10s|cuenta\(0) & (!\divisor10s|cuenta\(3) & !\divisor10s|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(2),
	datab => \divisor10s|cuenta\(0),
	datac => \divisor10s|cuenta\(3),
	datad => \divisor10s|cuenta\(1),
	combout => \divisor10s|Equal0~6_combout\);

-- Location: LCCOMB_X7_Y8_N12
\divisor10s|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~8_combout\ = (\divisor10s|cuenta\(4) & (\divisor10s|Add0~7\ $ (GND))) # (!\divisor10s|cuenta\(4) & (!\divisor10s|Add0~7\ & VCC))
-- \divisor10s|Add0~9\ = CARRY((\divisor10s|cuenta\(4) & !\divisor10s|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(4),
	datad => VCC,
	cin => \divisor10s|Add0~7\,
	combout => \divisor10s|Add0~8_combout\,
	cout => \divisor10s|Add0~9\);

-- Location: FF_X7_Y8_N13
\divisor10s|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(4));

-- Location: LCCOMB_X7_Y8_N14
\divisor10s|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~10_combout\ = (\divisor10s|cuenta\(5) & (!\divisor10s|Add0~9\)) # (!\divisor10s|cuenta\(5) & ((\divisor10s|Add0~9\) # (GND)))
-- \divisor10s|Add0~11\ = CARRY((!\divisor10s|Add0~9\) # (!\divisor10s|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(5),
	datad => VCC,
	cin => \divisor10s|Add0~9\,
	combout => \divisor10s|Add0~10_combout\,
	cout => \divisor10s|Add0~11\);

-- Location: FF_X7_Y8_N15
\divisor10s|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(5));

-- Location: LCCOMB_X7_Y8_N16
\divisor10s|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~12_combout\ = (\divisor10s|cuenta\(6) & (\divisor10s|Add0~11\ $ (GND))) # (!\divisor10s|cuenta\(6) & (!\divisor10s|Add0~11\ & VCC))
-- \divisor10s|Add0~13\ = CARRY((\divisor10s|cuenta\(6) & !\divisor10s|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(6),
	datad => VCC,
	cin => \divisor10s|Add0~11\,
	combout => \divisor10s|Add0~12_combout\,
	cout => \divisor10s|Add0~13\);

-- Location: FF_X7_Y8_N17
\divisor10s|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(6));

-- Location: LCCOMB_X7_Y8_N18
\divisor10s|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~14_combout\ = (\divisor10s|cuenta\(7) & (!\divisor10s|Add0~13\)) # (!\divisor10s|cuenta\(7) & ((\divisor10s|Add0~13\) # (GND)))
-- \divisor10s|Add0~15\ = CARRY((!\divisor10s|Add0~13\) # (!\divisor10s|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(7),
	datad => VCC,
	cin => \divisor10s|Add0~13\,
	combout => \divisor10s|Add0~14_combout\,
	cout => \divisor10s|Add0~15\);

-- Location: LCCOMB_X7_Y8_N2
\divisor10s|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~10_combout\ = (\divisor10s|Add0~14_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~14_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~10_combout\);

-- Location: FF_X7_Y8_N3
\divisor10s|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(7));

-- Location: LCCOMB_X6_Y8_N28
\divisor10s|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~5_combout\ = (!\divisor10s|cuenta\(6) & (!\divisor10s|cuenta\(4) & (!\divisor10s|cuenta\(5) & \divisor10s|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(6),
	datab => \divisor10s|cuenta\(4),
	datac => \divisor10s|cuenta\(5),
	datad => \divisor10s|cuenta\(7),
	combout => \divisor10s|Equal0~5_combout\);

-- Location: LCCOMB_X7_Y8_N20
\divisor10s|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~16_combout\ = (\divisor10s|cuenta\(8) & (\divisor10s|Add0~15\ $ (GND))) # (!\divisor10s|cuenta\(8) & (!\divisor10s|Add0~15\ & VCC))
-- \divisor10s|Add0~17\ = CARRY((\divisor10s|cuenta\(8) & !\divisor10s|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(8),
	datad => VCC,
	cin => \divisor10s|Add0~15\,
	combout => \divisor10s|Add0~16_combout\,
	cout => \divisor10s|Add0~17\);

-- Location: FF_X7_Y8_N21
\divisor10s|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(8));

-- Location: LCCOMB_X7_Y8_N22
\divisor10s|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~18_combout\ = (\divisor10s|cuenta\(9) & (!\divisor10s|Add0~17\)) # (!\divisor10s|cuenta\(9) & ((\divisor10s|Add0~17\) # (GND)))
-- \divisor10s|Add0~19\ = CARRY((!\divisor10s|Add0~17\) # (!\divisor10s|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(9),
	datad => VCC,
	cin => \divisor10s|Add0~17\,
	combout => \divisor10s|Add0~18_combout\,
	cout => \divisor10s|Add0~19\);

-- Location: FF_X7_Y8_N23
\divisor10s|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(9));

-- Location: LCCOMB_X7_Y8_N24
\divisor10s|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~20_combout\ = (\divisor10s|cuenta\(10) & (\divisor10s|Add0~19\ $ (GND))) # (!\divisor10s|cuenta\(10) & (!\divisor10s|Add0~19\ & VCC))
-- \divisor10s|Add0~21\ = CARRY((\divisor10s|cuenta\(10) & !\divisor10s|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(10),
	datad => VCC,
	cin => \divisor10s|Add0~19\,
	combout => \divisor10s|Add0~20_combout\,
	cout => \divisor10s|Add0~21\);

-- Location: FF_X7_Y8_N25
\divisor10s|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(10));

-- Location: LCCOMB_X7_Y8_N26
\divisor10s|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~22_combout\ = (\divisor10s|cuenta\(11) & (!\divisor10s|Add0~21\)) # (!\divisor10s|cuenta\(11) & ((\divisor10s|Add0~21\) # (GND)))
-- \divisor10s|Add0~23\ = CARRY((!\divisor10s|Add0~21\) # (!\divisor10s|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(11),
	datad => VCC,
	cin => \divisor10s|Add0~21\,
	combout => \divisor10s|Add0~22_combout\,
	cout => \divisor10s|Add0~23\);

-- Location: FF_X7_Y8_N27
\divisor10s|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(11));

-- Location: LCCOMB_X7_Y8_N28
\divisor10s|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~24_combout\ = (\divisor10s|cuenta\(12) & (\divisor10s|Add0~23\ $ (GND))) # (!\divisor10s|cuenta\(12) & (!\divisor10s|Add0~23\ & VCC))
-- \divisor10s|Add0~25\ = CARRY((\divisor10s|cuenta\(12) & !\divisor10s|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(12),
	datad => VCC,
	cin => \divisor10s|Add0~23\,
	combout => \divisor10s|Add0~24_combout\,
	cout => \divisor10s|Add0~25\);

-- Location: LCCOMB_X6_Y7_N26
\divisor10s|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~9_combout\ = (!\divisor10s|Equal0~8_combout\ & \divisor10s|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|Equal0~8_combout\,
	datac => \divisor10s|Add0~24_combout\,
	combout => \divisor10s|cuenta~9_combout\);

-- Location: FF_X6_Y7_N27
\divisor10s|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(12));

-- Location: LCCOMB_X7_Y8_N30
\divisor10s|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~26_combout\ = (\divisor10s|cuenta\(13) & (!\divisor10s|Add0~25\)) # (!\divisor10s|cuenta\(13) & ((\divisor10s|Add0~25\) # (GND)))
-- \divisor10s|Add0~27\ = CARRY((!\divisor10s|Add0~25\) # (!\divisor10s|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(13),
	datad => VCC,
	cin => \divisor10s|Add0~25\,
	combout => \divisor10s|Add0~26_combout\,
	cout => \divisor10s|Add0~27\);

-- Location: LCCOMB_X6_Y7_N28
\divisor10s|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~8_combout\ = (\divisor10s|Add0~26_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~26_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~8_combout\);

-- Location: FF_X6_Y7_N29
\divisor10s|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(13));

-- Location: LCCOMB_X7_Y7_N0
\divisor10s|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~28_combout\ = (\divisor10s|cuenta\(14) & (\divisor10s|Add0~27\ $ (GND))) # (!\divisor10s|cuenta\(14) & (!\divisor10s|Add0~27\ & VCC))
-- \divisor10s|Add0~29\ = CARRY((\divisor10s|cuenta\(14) & !\divisor10s|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(14),
	datad => VCC,
	cin => \divisor10s|Add0~27\,
	combout => \divisor10s|Add0~28_combout\,
	cout => \divisor10s|Add0~29\);

-- Location: LCCOMB_X6_Y7_N14
\divisor10s|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~7_combout\ = (\divisor10s|Add0~28_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~28_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~7_combout\);

-- Location: FF_X6_Y7_N15
\divisor10s|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(14));

-- Location: LCCOMB_X7_Y7_N2
\divisor10s|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~30_combout\ = (\divisor10s|cuenta\(15) & (!\divisor10s|Add0~29\)) # (!\divisor10s|cuenta\(15) & ((\divisor10s|Add0~29\) # (GND)))
-- \divisor10s|Add0~31\ = CARRY((!\divisor10s|Add0~29\) # (!\divisor10s|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(15),
	datad => VCC,
	cin => \divisor10s|Add0~29\,
	combout => \divisor10s|Add0~30_combout\,
	cout => \divisor10s|Add0~31\);

-- Location: LCCOMB_X6_Y7_N16
\divisor10s|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~6_combout\ = (\divisor10s|Add0~30_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~30_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~6_combout\);

-- Location: FF_X6_Y7_N17
\divisor10s|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(15));

-- Location: LCCOMB_X7_Y7_N4
\divisor10s|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~32_combout\ = (\divisor10s|cuenta\(16) & (\divisor10s|Add0~31\ $ (GND))) # (!\divisor10s|cuenta\(16) & (!\divisor10s|Add0~31\ & VCC))
-- \divisor10s|Add0~33\ = CARRY((\divisor10s|cuenta\(16) & !\divisor10s|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(16),
	datad => VCC,
	cin => \divisor10s|Add0~31\,
	combout => \divisor10s|Add0~32_combout\,
	cout => \divisor10s|Add0~33\);

-- Location: FF_X7_Y7_N5
\divisor10s|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(16));

-- Location: LCCOMB_X7_Y7_N6
\divisor10s|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~34_combout\ = (\divisor10s|cuenta\(17) & (!\divisor10s|Add0~33\)) # (!\divisor10s|cuenta\(17) & ((\divisor10s|Add0~33\) # (GND)))
-- \divisor10s|Add0~35\ = CARRY((!\divisor10s|Add0~33\) # (!\divisor10s|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(17),
	datad => VCC,
	cin => \divisor10s|Add0~33\,
	combout => \divisor10s|Add0~34_combout\,
	cout => \divisor10s|Add0~35\);

-- Location: LCCOMB_X6_Y7_N24
\divisor10s|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~5_combout\ = (!\divisor10s|Equal0~8_combout\ & \divisor10s|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|Equal0~8_combout\,
	datad => \divisor10s|Add0~34_combout\,
	combout => \divisor10s|cuenta~5_combout\);

-- Location: FF_X6_Y7_N25
\divisor10s|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(17));

-- Location: LCCOMB_X7_Y7_N8
\divisor10s|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~36_combout\ = (\divisor10s|cuenta\(18) & (\divisor10s|Add0~35\ $ (GND))) # (!\divisor10s|cuenta\(18) & (!\divisor10s|Add0~35\ & VCC))
-- \divisor10s|Add0~37\ = CARRY((\divisor10s|cuenta\(18) & !\divisor10s|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(18),
	datad => VCC,
	cin => \divisor10s|Add0~35\,
	combout => \divisor10s|Add0~36_combout\,
	cout => \divisor10s|Add0~37\);

-- Location: FF_X7_Y7_N9
\divisor10s|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(18));

-- Location: LCCOMB_X7_Y7_N10
\divisor10s|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~38_combout\ = (\divisor10s|cuenta\(19) & (!\divisor10s|Add0~37\)) # (!\divisor10s|cuenta\(19) & ((\divisor10s|Add0~37\) # (GND)))
-- \divisor10s|Add0~39\ = CARRY((!\divisor10s|Add0~37\) # (!\divisor10s|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(19),
	datad => VCC,
	cin => \divisor10s|Add0~37\,
	combout => \divisor10s|Add0~38_combout\,
	cout => \divisor10s|Add0~39\);

-- Location: LCCOMB_X7_Y7_N30
\divisor10s|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~4_combout\ = (!\divisor10s|Equal0~8_combout\ & \divisor10s|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Equal0~8_combout\,
	datad => \divisor10s|Add0~38_combout\,
	combout => \divisor10s|cuenta~4_combout\);

-- Location: FF_X7_Y7_N31
\divisor10s|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(19));

-- Location: LCCOMB_X7_Y7_N12
\divisor10s|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~40_combout\ = (\divisor10s|cuenta\(20) & (\divisor10s|Add0~39\ $ (GND))) # (!\divisor10s|cuenta\(20) & (!\divisor10s|Add0~39\ & VCC))
-- \divisor10s|Add0~41\ = CARRY((\divisor10s|cuenta\(20) & !\divisor10s|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(20),
	datad => VCC,
	cin => \divisor10s|Add0~39\,
	combout => \divisor10s|Add0~40_combout\,
	cout => \divisor10s|Add0~41\);

-- Location: LCCOMB_X6_Y7_N20
\divisor10s|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~3_combout\ = (\divisor10s|Add0~40_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~40_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~3_combout\);

-- Location: FF_X6_Y7_N21
\divisor10s|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(20));

-- Location: LCCOMB_X7_Y7_N14
\divisor10s|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~42_combout\ = (\divisor10s|cuenta\(21) & (!\divisor10s|Add0~41\)) # (!\divisor10s|cuenta\(21) & ((\divisor10s|Add0~41\) # (GND)))
-- \divisor10s|Add0~43\ = CARRY((!\divisor10s|Add0~41\) # (!\divisor10s|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(21),
	datad => VCC,
	cin => \divisor10s|Add0~41\,
	combout => \divisor10s|Add0~42_combout\,
	cout => \divisor10s|Add0~43\);

-- Location: LCCOMB_X6_Y7_N30
\divisor10s|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~2_combout\ = (\divisor10s|Add0~42_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~42_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~2_combout\);

-- Location: FF_X6_Y7_N31
\divisor10s|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(21));

-- Location: LCCOMB_X7_Y7_N16
\divisor10s|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~44_combout\ = (\divisor10s|cuenta\(22) & (\divisor10s|Add0~43\ $ (GND))) # (!\divisor10s|cuenta\(22) & (!\divisor10s|Add0~43\ & VCC))
-- \divisor10s|Add0~45\ = CARRY((\divisor10s|cuenta\(22) & !\divisor10s|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(22),
	datad => VCC,
	cin => \divisor10s|Add0~43\,
	combout => \divisor10s|Add0~44_combout\,
	cout => \divisor10s|Add0~45\);

-- Location: LCCOMB_X7_Y7_N28
\divisor10s|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~1_combout\ = (!\divisor10s|Equal0~8_combout\ & \divisor10s|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Equal0~8_combout\,
	datad => \divisor10s|Add0~44_combout\,
	combout => \divisor10s|cuenta~1_combout\);

-- Location: FF_X7_Y7_N29
\divisor10s|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(22));

-- Location: LCCOMB_X7_Y7_N18
\divisor10s|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~46_combout\ = (\divisor10s|cuenta\(23) & (!\divisor10s|Add0~45\)) # (!\divisor10s|cuenta\(23) & ((\divisor10s|Add0~45\) # (GND)))
-- \divisor10s|Add0~47\ = CARRY((!\divisor10s|Add0~45\) # (!\divisor10s|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(23),
	datad => VCC,
	cin => \divisor10s|Add0~45\,
	combout => \divisor10s|Add0~46_combout\,
	cout => \divisor10s|Add0~47\);

-- Location: LCCOMB_X6_Y7_N12
\divisor10s|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~0_combout\ = (!\divisor10s|Equal0~8_combout\ & \divisor10s|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|Equal0~8_combout\,
	datad => \divisor10s|Add0~46_combout\,
	combout => \divisor10s|cuenta~0_combout\);

-- Location: FF_X6_Y7_N13
\divisor10s|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(23));

-- Location: LCCOMB_X7_Y7_N20
\divisor10s|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~48_combout\ = (\divisor10s|cuenta\(24) & (\divisor10s|Add0~47\ $ (GND))) # (!\divisor10s|cuenta\(24) & (!\divisor10s|Add0~47\ & VCC))
-- \divisor10s|Add0~49\ = CARRY((\divisor10s|cuenta\(24) & !\divisor10s|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(24),
	datad => VCC,
	cin => \divisor10s|Add0~47\,
	combout => \divisor10s|Add0~48_combout\,
	cout => \divisor10s|Add0~49\);

-- Location: FF_X7_Y7_N21
\divisor10s|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(24));

-- Location: LCCOMB_X7_Y7_N22
\divisor10s|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~50_combout\ = (\divisor10s|cuenta\(25) & (!\divisor10s|Add0~49\)) # (!\divisor10s|cuenta\(25) & ((\divisor10s|Add0~49\) # (GND)))
-- \divisor10s|Add0~51\ = CARRY((!\divisor10s|Add0~49\) # (!\divisor10s|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(25),
	datad => VCC,
	cin => \divisor10s|Add0~49\,
	combout => \divisor10s|Add0~50_combout\,
	cout => \divisor10s|Add0~51\);

-- Location: LCCOMB_X6_Y8_N4
\divisor10s|cuenta~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|cuenta~12_combout\ = (\divisor10s|Add0~50_combout\ & !\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor10s|Add0~50_combout\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|cuenta~12_combout\);

-- Location: FF_X6_Y8_N5
\divisor10s|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(25));

-- Location: LCCOMB_X7_Y7_N24
\divisor10s|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~52_combout\ = (\divisor10s|cuenta\(26) & (\divisor10s|Add0~51\ $ (GND))) # (!\divisor10s|cuenta\(26) & (!\divisor10s|Add0~51\ & VCC))
-- \divisor10s|Add0~53\ = CARRY((\divisor10s|cuenta\(26) & !\divisor10s|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|cuenta\(26),
	datad => VCC,
	cin => \divisor10s|Add0~51\,
	combout => \divisor10s|Add0~52_combout\,
	cout => \divisor10s|Add0~53\);

-- Location: FF_X7_Y7_N25
\divisor10s|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(26));

-- Location: LCCOMB_X7_Y7_N26
\divisor10s|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Add0~54_combout\ = \divisor10s|cuenta\(27) $ (\divisor10s|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(27),
	cin => \divisor10s|Add0~53\,
	combout => \divisor10s|Add0~54_combout\);

-- Location: FF_X7_Y7_N27
\divisor10s|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|cuenta\(27));

-- Location: LCCOMB_X6_Y8_N22
\divisor10s|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~7_combout\ = (!\divisor10s|cuenta\(27) & (!\divisor10s|cuenta\(26) & (\divisor10s|cuenta\(25) & !\divisor10s|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(27),
	datab => \divisor10s|cuenta\(26),
	datac => \divisor10s|cuenta\(25),
	datad => \divisor10s|cuenta\(24),
	combout => \divisor10s|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y7_N18
\divisor10s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~0_combout\ = (\divisor10s|cuenta\(23) & (\divisor10s|cuenta\(20) & (\divisor10s|cuenta\(21) & \divisor10s|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(23),
	datab => \divisor10s|cuenta\(20),
	datac => \divisor10s|cuenta\(21),
	datad => \divisor10s|cuenta\(22),
	combout => \divisor10s|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y8_N0
\divisor10s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~3_combout\ = (!\divisor10s|cuenta\(9) & (!\divisor10s|cuenta\(8) & (!\divisor10s|cuenta\(11) & !\divisor10s|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(9),
	datab => \divisor10s|cuenta\(8),
	datac => \divisor10s|cuenta\(11),
	datad => \divisor10s|cuenta\(10),
	combout => \divisor10s|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y7_N22
\divisor10s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~1_combout\ = (\divisor10s|cuenta\(19) & (\divisor10s|cuenta\(17) & (!\divisor10s|cuenta\(18) & !\divisor10s|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(19),
	datab => \divisor10s|cuenta\(17),
	datac => \divisor10s|cuenta\(18),
	datad => \divisor10s|cuenta\(16),
	combout => \divisor10s|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y7_N0
\divisor10s|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~2_combout\ = (\divisor10s|cuenta\(12) & (\divisor10s|cuenta\(15) & (\divisor10s|cuenta\(14) & \divisor10s|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|cuenta\(12),
	datab => \divisor10s|cuenta\(15),
	datac => \divisor10s|cuenta\(14),
	datad => \divisor10s|cuenta\(13),
	combout => \divisor10s|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y8_N12
\divisor10s|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~4_combout\ = (\divisor10s|Equal0~0_combout\ & (\divisor10s|Equal0~3_combout\ & (\divisor10s|Equal0~1_combout\ & \divisor10s|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|Equal0~0_combout\,
	datab => \divisor10s|Equal0~3_combout\,
	datac => \divisor10s|Equal0~1_combout\,
	datad => \divisor10s|Equal0~2_combout\,
	combout => \divisor10s|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y8_N2
\divisor10s|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|Equal0~8_combout\ = (\divisor10s|Equal0~6_combout\ & (\divisor10s|Equal0~5_combout\ & (\divisor10s|Equal0~7_combout\ & \divisor10s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|Equal0~6_combout\,
	datab => \divisor10s|Equal0~5_combout\,
	datac => \divisor10s|Equal0~7_combout\,
	datad => \divisor10s|Equal0~4_combout\,
	combout => \divisor10s|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y8_N8
\divisor10s|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|salida~0_combout\ = \divisor10s|salida~q\ $ (\divisor10s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor10s|salida~q\,
	datad => \divisor10s|Equal0~8_combout\,
	combout => \divisor10s|salida~0_combout\);

-- Location: LCCOMB_X6_Y8_N30
\divisor10s|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor10s|salida~feeder_combout\ = \divisor10s|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor10s|salida~0_combout\,
	combout => \divisor10s|salida~feeder_combout\);

-- Location: FF_X6_Y8_N31
\divisor10s|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor10s|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor10s|salida~q\);

-- Location: CLKCTRL_G0
\divisor10s|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor10s|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor10s|salida~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y14_N4
\divisor05s|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~0_combout\ = \divisor05s|cuenta\(0) $ (VCC)
-- \divisor05s|Add0~1\ = CARRY(\divisor05s|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(0),
	datad => VCC,
	combout => \divisor05s|Add0~0_combout\,
	cout => \divisor05s|Add0~1\);

-- Location: LCCOMB_X25_Y14_N2
\divisor05s|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~6_combout\ = (\divisor05s|Add0~0_combout\ & !\divisor05s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor05s|Add0~0_combout\,
	datad => \divisor05s|Equal0~8_combout\,
	combout => \divisor05s|cuenta~6_combout\);

-- Location: FF_X25_Y14_N3
\divisor05s|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(0));

-- Location: LCCOMB_X25_Y14_N6
\divisor05s|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~2_combout\ = (\divisor05s|cuenta\(1) & (!\divisor05s|Add0~1\)) # (!\divisor05s|cuenta\(1) & ((\divisor05s|Add0~1\) # (GND)))
-- \divisor05s|Add0~3\ = CARRY((!\divisor05s|Add0~1\) # (!\divisor05s|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(1),
	datad => VCC,
	cin => \divisor05s|Add0~1\,
	combout => \divisor05s|Add0~2_combout\,
	cout => \divisor05s|Add0~3\);

-- Location: FF_X25_Y14_N7
\divisor05s|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(1));

-- Location: LCCOMB_X25_Y14_N8
\divisor05s|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~4_combout\ = (\divisor05s|cuenta\(2) & (\divisor05s|Add0~3\ $ (GND))) # (!\divisor05s|cuenta\(2) & (!\divisor05s|Add0~3\ & VCC))
-- \divisor05s|Add0~5\ = CARRY((\divisor05s|cuenta\(2) & !\divisor05s|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(2),
	datad => VCC,
	cin => \divisor05s|Add0~3\,
	combout => \divisor05s|Add0~4_combout\,
	cout => \divisor05s|Add0~5\);

-- Location: LCCOMB_X25_Y14_N0
\divisor05s|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~5_combout\ = (\divisor05s|Add0~4_combout\ & !\divisor05s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor05s|Add0~4_combout\,
	datad => \divisor05s|Equal0~8_combout\,
	combout => \divisor05s|cuenta~5_combout\);

-- Location: FF_X25_Y14_N1
\divisor05s|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(2));

-- Location: LCCOMB_X25_Y14_N10
\divisor05s|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~6_combout\ = (\divisor05s|cuenta\(3) & (!\divisor05s|Add0~5\)) # (!\divisor05s|cuenta\(3) & ((\divisor05s|Add0~5\) # (GND)))
-- \divisor05s|Add0~7\ = CARRY((!\divisor05s|Add0~5\) # (!\divisor05s|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(3),
	datad => VCC,
	cin => \divisor05s|Add0~5\,
	combout => \divisor05s|Add0~6_combout\,
	cout => \divisor05s|Add0~7\);

-- Location: FF_X25_Y14_N11
\divisor05s|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(3));

-- Location: LCCOMB_X25_Y14_N12
\divisor05s|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~8_combout\ = (\divisor05s|cuenta\(4) & (\divisor05s|Add0~7\ $ (GND))) # (!\divisor05s|cuenta\(4) & (!\divisor05s|Add0~7\ & VCC))
-- \divisor05s|Add0~9\ = CARRY((\divisor05s|cuenta\(4) & !\divisor05s|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(4),
	datad => VCC,
	cin => \divisor05s|Add0~7\,
	combout => \divisor05s|Add0~8_combout\,
	cout => \divisor05s|Add0~9\);

-- Location: LCCOMB_X26_Y14_N0
\divisor05s|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~4_combout\ = (!\divisor05s|Equal0~8_combout\ & \divisor05s|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor05s|Equal0~8_combout\,
	datad => \divisor05s|Add0~8_combout\,
	combout => \divisor05s|cuenta~4_combout\);

-- Location: FF_X25_Y14_N13
\divisor05s|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \divisor05s|cuenta~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(4));

-- Location: LCCOMB_X25_Y14_N14
\divisor05s|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~10_combout\ = (\divisor05s|cuenta\(5) & (!\divisor05s|Add0~9\)) # (!\divisor05s|cuenta\(5) & ((\divisor05s|Add0~9\) # (GND)))
-- \divisor05s|Add0~11\ = CARRY((!\divisor05s|Add0~9\) # (!\divisor05s|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(5),
	datad => VCC,
	cin => \divisor05s|Add0~9\,
	combout => \divisor05s|Add0~10_combout\,
	cout => \divisor05s|Add0~11\);

-- Location: LCCOMB_X26_Y14_N4
\divisor05s|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~3_combout\ = (!\divisor05s|Equal0~8_combout\ & \divisor05s|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor05s|Equal0~8_combout\,
	datad => \divisor05s|Add0~10_combout\,
	combout => \divisor05s|cuenta~3_combout\);

-- Location: FF_X26_Y14_N5
\divisor05s|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(5));

-- Location: LCCOMB_X25_Y14_N16
\divisor05s|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~12_combout\ = (\divisor05s|cuenta\(6) & (\divisor05s|Add0~11\ $ (GND))) # (!\divisor05s|cuenta\(6) & (!\divisor05s|Add0~11\ & VCC))
-- \divisor05s|Add0~13\ = CARRY((\divisor05s|cuenta\(6) & !\divisor05s|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(6),
	datad => VCC,
	cin => \divisor05s|Add0~11\,
	combout => \divisor05s|Add0~12_combout\,
	cout => \divisor05s|Add0~13\);

-- Location: LCCOMB_X26_Y14_N30
\divisor05s|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~2_combout\ = (!\divisor05s|Equal0~8_combout\ & \divisor05s|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|Equal0~8_combout\,
	datac => \divisor05s|Add0~12_combout\,
	combout => \divisor05s|cuenta~2_combout\);

-- Location: FF_X26_Y14_N31
\divisor05s|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(6));

-- Location: LCCOMB_X25_Y14_N18
\divisor05s|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~14_combout\ = (\divisor05s|cuenta\(7) & (!\divisor05s|Add0~13\)) # (!\divisor05s|cuenta\(7) & ((\divisor05s|Add0~13\) # (GND)))
-- \divisor05s|Add0~15\ = CARRY((!\divisor05s|Add0~13\) # (!\divisor05s|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(7),
	datad => VCC,
	cin => \divisor05s|Add0~13\,
	combout => \divisor05s|Add0~14_combout\,
	cout => \divisor05s|Add0~15\);

-- Location: LCCOMB_X26_Y14_N2
\divisor05s|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~1_combout\ = (!\divisor05s|Equal0~8_combout\ & \divisor05s|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor05s|Equal0~8_combout\,
	datad => \divisor05s|Add0~14_combout\,
	combout => \divisor05s|cuenta~1_combout\);

-- Location: FF_X26_Y14_N3
\divisor05s|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(7));

-- Location: LCCOMB_X26_Y14_N26
\divisor05s|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~5_combout\ = (\divisor05s|cuenta\(6) & (\divisor05s|cuenta\(4) & (\divisor05s|cuenta\(5) & \divisor05s|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(6),
	datab => \divisor05s|cuenta\(4),
	datac => \divisor05s|cuenta\(5),
	datad => \divisor05s|cuenta\(7),
	combout => \divisor05s|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y14_N18
\divisor05s|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~6_combout\ = (!\divisor05s|cuenta\(0) & (!\divisor05s|cuenta\(1) & (\divisor05s|cuenta\(2) & !\divisor05s|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(0),
	datab => \divisor05s|cuenta\(1),
	datac => \divisor05s|cuenta\(2),
	datad => \divisor05s|cuenta\(3),
	combout => \divisor05s|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y14_N20
\divisor05s|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~16_combout\ = (\divisor05s|cuenta\(8) & (\divisor05s|Add0~15\ $ (GND))) # (!\divisor05s|cuenta\(8) & (!\divisor05s|Add0~15\ & VCC))
-- \divisor05s|Add0~17\ = CARRY((\divisor05s|cuenta\(8) & !\divisor05s|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(8),
	datad => VCC,
	cin => \divisor05s|Add0~15\,
	combout => \divisor05s|Add0~16_combout\,
	cout => \divisor05s|Add0~17\);

-- Location: LCCOMB_X26_Y14_N10
\divisor05s|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|cuenta~0_combout\ = (!\divisor05s|Equal0~8_combout\ & \divisor05s|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor05s|Equal0~8_combout\,
	datad => \divisor05s|Add0~16_combout\,
	combout => \divisor05s|cuenta~0_combout\);

-- Location: FF_X26_Y14_N11
\divisor05s|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(8));

-- Location: LCCOMB_X25_Y14_N22
\divisor05s|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~18_combout\ = (\divisor05s|cuenta\(9) & (!\divisor05s|Add0~17\)) # (!\divisor05s|cuenta\(9) & ((\divisor05s|Add0~17\) # (GND)))
-- \divisor05s|Add0~19\ = CARRY((!\divisor05s|Add0~17\) # (!\divisor05s|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(9),
	datad => VCC,
	cin => \divisor05s|Add0~17\,
	combout => \divisor05s|Add0~18_combout\,
	cout => \divisor05s|Add0~19\);

-- Location: FF_X25_Y14_N23
\divisor05s|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(9));

-- Location: LCCOMB_X25_Y14_N24
\divisor05s|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~20_combout\ = (\divisor05s|cuenta\(10) & (\divisor05s|Add0~19\ $ (GND))) # (!\divisor05s|cuenta\(10) & (!\divisor05s|Add0~19\ & VCC))
-- \divisor05s|Add0~21\ = CARRY((\divisor05s|cuenta\(10) & !\divisor05s|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(10),
	datad => VCC,
	cin => \divisor05s|Add0~19\,
	combout => \divisor05s|Add0~20_combout\,
	cout => \divisor05s|Add0~21\);

-- Location: FF_X25_Y14_N25
\divisor05s|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(10));

-- Location: LCCOMB_X25_Y14_N26
\divisor05s|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~22_combout\ = (\divisor05s|cuenta\(11) & (!\divisor05s|Add0~21\)) # (!\divisor05s|cuenta\(11) & ((\divisor05s|Add0~21\) # (GND)))
-- \divisor05s|Add0~23\ = CARRY((!\divisor05s|Add0~21\) # (!\divisor05s|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(11),
	datad => VCC,
	cin => \divisor05s|Add0~21\,
	combout => \divisor05s|Add0~22_combout\,
	cout => \divisor05s|Add0~23\);

-- Location: FF_X25_Y14_N27
\divisor05s|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(11));

-- Location: LCCOMB_X25_Y14_N28
\divisor05s|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~24_combout\ = (\divisor05s|cuenta\(12) & (\divisor05s|Add0~23\ $ (GND))) # (!\divisor05s|cuenta\(12) & (!\divisor05s|Add0~23\ & VCC))
-- \divisor05s|Add0~25\ = CARRY((\divisor05s|cuenta\(12) & !\divisor05s|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(12),
	datad => VCC,
	cin => \divisor05s|Add0~23\,
	combout => \divisor05s|Add0~24_combout\,
	cout => \divisor05s|Add0~25\);

-- Location: FF_X25_Y14_N29
\divisor05s|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(12));

-- Location: LCCOMB_X25_Y14_N30
\divisor05s|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~26_combout\ = (\divisor05s|cuenta\(13) & (!\divisor05s|Add0~25\)) # (!\divisor05s|cuenta\(13) & ((\divisor05s|Add0~25\) # (GND)))
-- \divisor05s|Add0~27\ = CARRY((!\divisor05s|Add0~25\) # (!\divisor05s|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(13),
	datad => VCC,
	cin => \divisor05s|Add0~25\,
	combout => \divisor05s|Add0~26_combout\,
	cout => \divisor05s|Add0~27\);

-- Location: FF_X25_Y14_N31
\divisor05s|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(13));

-- Location: LCCOMB_X25_Y13_N0
\divisor05s|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~28_combout\ = (\divisor05s|cuenta\(14) & (\divisor05s|Add0~27\ $ (GND))) # (!\divisor05s|cuenta\(14) & (!\divisor05s|Add0~27\ & VCC))
-- \divisor05s|Add0~29\ = CARRY((\divisor05s|cuenta\(14) & !\divisor05s|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(14),
	datad => VCC,
	cin => \divisor05s|Add0~27\,
	combout => \divisor05s|Add0~28_combout\,
	cout => \divisor05s|Add0~29\);

-- Location: FF_X25_Y13_N1
\divisor05s|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(14));

-- Location: LCCOMB_X25_Y13_N2
\divisor05s|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~30_combout\ = (\divisor05s|cuenta\(15) & (!\divisor05s|Add0~29\)) # (!\divisor05s|cuenta\(15) & ((\divisor05s|Add0~29\) # (GND)))
-- \divisor05s|Add0~31\ = CARRY((!\divisor05s|Add0~29\) # (!\divisor05s|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(15),
	datad => VCC,
	cin => \divisor05s|Add0~29\,
	combout => \divisor05s|Add0~30_combout\,
	cout => \divisor05s|Add0~31\);

-- Location: FF_X25_Y13_N3
\divisor05s|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(15));

-- Location: LCCOMB_X25_Y13_N4
\divisor05s|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~32_combout\ = (\divisor05s|cuenta\(16) & (\divisor05s|Add0~31\ $ (GND))) # (!\divisor05s|cuenta\(16) & (!\divisor05s|Add0~31\ & VCC))
-- \divisor05s|Add0~33\ = CARRY((\divisor05s|cuenta\(16) & !\divisor05s|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(16),
	datad => VCC,
	cin => \divisor05s|Add0~31\,
	combout => \divisor05s|Add0~32_combout\,
	cout => \divisor05s|Add0~33\);

-- Location: FF_X25_Y13_N5
\divisor05s|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(16));

-- Location: LCCOMB_X25_Y13_N6
\divisor05s|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~34_combout\ = (\divisor05s|cuenta\(17) & (!\divisor05s|Add0~33\)) # (!\divisor05s|cuenta\(17) & ((\divisor05s|Add0~33\) # (GND)))
-- \divisor05s|Add0~35\ = CARRY((!\divisor05s|Add0~33\) # (!\divisor05s|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(17),
	datad => VCC,
	cin => \divisor05s|Add0~33\,
	combout => \divisor05s|Add0~34_combout\,
	cout => \divisor05s|Add0~35\);

-- Location: FF_X25_Y13_N7
\divisor05s|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(17));

-- Location: LCCOMB_X25_Y13_N8
\divisor05s|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~36_combout\ = (\divisor05s|cuenta\(18) & (\divisor05s|Add0~35\ $ (GND))) # (!\divisor05s|cuenta\(18) & (!\divisor05s|Add0~35\ & VCC))
-- \divisor05s|Add0~37\ = CARRY((\divisor05s|cuenta\(18) & !\divisor05s|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(18),
	datad => VCC,
	cin => \divisor05s|Add0~35\,
	combout => \divisor05s|Add0~36_combout\,
	cout => \divisor05s|Add0~37\);

-- Location: FF_X25_Y13_N9
\divisor05s|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(18));

-- Location: LCCOMB_X25_Y13_N10
\divisor05s|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~38_combout\ = (\divisor05s|cuenta\(19) & (!\divisor05s|Add0~37\)) # (!\divisor05s|cuenta\(19) & ((\divisor05s|Add0~37\) # (GND)))
-- \divisor05s|Add0~39\ = CARRY((!\divisor05s|Add0~37\) # (!\divisor05s|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(19),
	datad => VCC,
	cin => \divisor05s|Add0~37\,
	combout => \divisor05s|Add0~38_combout\,
	cout => \divisor05s|Add0~39\);

-- Location: FF_X25_Y13_N11
\divisor05s|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(19));

-- Location: LCCOMB_X25_Y13_N12
\divisor05s|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~40_combout\ = (\divisor05s|cuenta\(20) & (\divisor05s|Add0~39\ $ (GND))) # (!\divisor05s|cuenta\(20) & (!\divisor05s|Add0~39\ & VCC))
-- \divisor05s|Add0~41\ = CARRY((\divisor05s|cuenta\(20) & !\divisor05s|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(20),
	datad => VCC,
	cin => \divisor05s|Add0~39\,
	combout => \divisor05s|Add0~40_combout\,
	cout => \divisor05s|Add0~41\);

-- Location: FF_X25_Y13_N13
\divisor05s|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(20));

-- Location: LCCOMB_X25_Y13_N14
\divisor05s|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~42_combout\ = (\divisor05s|cuenta\(21) & (!\divisor05s|Add0~41\)) # (!\divisor05s|cuenta\(21) & ((\divisor05s|Add0~41\) # (GND)))
-- \divisor05s|Add0~43\ = CARRY((!\divisor05s|Add0~41\) # (!\divisor05s|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(21),
	datad => VCC,
	cin => \divisor05s|Add0~41\,
	combout => \divisor05s|Add0~42_combout\,
	cout => \divisor05s|Add0~43\);

-- Location: FF_X25_Y13_N15
\divisor05s|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(21));

-- Location: LCCOMB_X25_Y13_N16
\divisor05s|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~44_combout\ = (\divisor05s|cuenta\(22) & (\divisor05s|Add0~43\ $ (GND))) # (!\divisor05s|cuenta\(22) & (!\divisor05s|Add0~43\ & VCC))
-- \divisor05s|Add0~45\ = CARRY((\divisor05s|cuenta\(22) & !\divisor05s|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(22),
	datad => VCC,
	cin => \divisor05s|Add0~43\,
	combout => \divisor05s|Add0~44_combout\,
	cout => \divisor05s|Add0~45\);

-- Location: FF_X25_Y13_N17
\divisor05s|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(22));

-- Location: LCCOMB_X25_Y13_N18
\divisor05s|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~46_combout\ = (\divisor05s|cuenta\(23) & (!\divisor05s|Add0~45\)) # (!\divisor05s|cuenta\(23) & ((\divisor05s|Add0~45\) # (GND)))
-- \divisor05s|Add0~47\ = CARRY((!\divisor05s|Add0~45\) # (!\divisor05s|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(23),
	datad => VCC,
	cin => \divisor05s|Add0~45\,
	combout => \divisor05s|Add0~46_combout\,
	cout => \divisor05s|Add0~47\);

-- Location: FF_X25_Y13_N19
\divisor05s|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(23));

-- Location: LCCOMB_X25_Y13_N20
\divisor05s|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~48_combout\ = (\divisor05s|cuenta\(24) & (\divisor05s|Add0~47\ $ (GND))) # (!\divisor05s|cuenta\(24) & (!\divisor05s|Add0~47\ & VCC))
-- \divisor05s|Add0~49\ = CARRY((\divisor05s|cuenta\(24) & !\divisor05s|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(24),
	datad => VCC,
	cin => \divisor05s|Add0~47\,
	combout => \divisor05s|Add0~48_combout\,
	cout => \divisor05s|Add0~49\);

-- Location: FF_X25_Y13_N21
\divisor05s|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(24));

-- Location: LCCOMB_X25_Y13_N22
\divisor05s|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~50_combout\ = (\divisor05s|cuenta\(25) & (!\divisor05s|Add0~49\)) # (!\divisor05s|cuenta\(25) & ((\divisor05s|Add0~49\) # (GND)))
-- \divisor05s|Add0~51\ = CARRY((!\divisor05s|Add0~49\) # (!\divisor05s|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(25),
	datad => VCC,
	cin => \divisor05s|Add0~49\,
	combout => \divisor05s|Add0~50_combout\,
	cout => \divisor05s|Add0~51\);

-- Location: FF_X25_Y13_N23
\divisor05s|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(25));

-- Location: LCCOMB_X25_Y13_N24
\divisor05s|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~52_combout\ = (\divisor05s|cuenta\(26) & (\divisor05s|Add0~51\ $ (GND))) # (!\divisor05s|cuenta\(26) & (!\divisor05s|Add0~51\ & VCC))
-- \divisor05s|Add0~53\ = CARRY((\divisor05s|cuenta\(26) & !\divisor05s|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|cuenta\(26),
	datad => VCC,
	cin => \divisor05s|Add0~51\,
	combout => \divisor05s|Add0~52_combout\,
	cout => \divisor05s|Add0~53\);

-- Location: FF_X25_Y13_N25
\divisor05s|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(26));

-- Location: LCCOMB_X25_Y13_N26
\divisor05s|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Add0~54_combout\ = \divisor05s|cuenta\(27) $ (\divisor05s|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(27),
	cin => \divisor05s|Add0~53\,
	combout => \divisor05s|Add0~54_combout\);

-- Location: FF_X25_Y13_N27
\divisor05s|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|cuenta\(27));

-- Location: LCCOMB_X26_Y14_N8
\divisor05s|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~7_combout\ = (!\divisor05s|cuenta\(26) & (!\divisor05s|cuenta\(25) & (!\divisor05s|cuenta\(27) & !\divisor05s|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(26),
	datab => \divisor05s|cuenta\(25),
	datac => \divisor05s|cuenta\(27),
	datad => \divisor05s|cuenta\(24),
	combout => \divisor05s|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y14_N12
\divisor05s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~3_combout\ = (!\divisor05s|cuenta\(11) & (\divisor05s|cuenta\(8) & (!\divisor05s|cuenta\(10) & !\divisor05s|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(11),
	datab => \divisor05s|cuenta\(8),
	datac => \divisor05s|cuenta\(10),
	datad => \divisor05s|cuenta\(9),
	combout => \divisor05s|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y13_N28
\divisor05s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~0_combout\ = (!\divisor05s|cuenta\(20) & (!\divisor05s|cuenta\(22) & (!\divisor05s|cuenta\(21) & !\divisor05s|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(20),
	datab => \divisor05s|cuenta\(22),
	datac => \divisor05s|cuenta\(21),
	datad => \divisor05s|cuenta\(23),
	combout => \divisor05s|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y14_N14
\divisor05s|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~2_combout\ = (!\divisor05s|cuenta\(15) & (!\divisor05s|cuenta\(13) & (!\divisor05s|cuenta\(14) & !\divisor05s|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(15),
	datab => \divisor05s|cuenta\(13),
	datac => \divisor05s|cuenta\(14),
	datad => \divisor05s|cuenta\(12),
	combout => \divisor05s|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y13_N30
\divisor05s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~1_combout\ = (!\divisor05s|cuenta\(19) & (!\divisor05s|cuenta\(16) & (!\divisor05s|cuenta\(18) & !\divisor05s|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|cuenta\(19),
	datab => \divisor05s|cuenta\(16),
	datac => \divisor05s|cuenta\(18),
	datad => \divisor05s|cuenta\(17),
	combout => \divisor05s|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y14_N20
\divisor05s|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~4_combout\ = (\divisor05s|Equal0~3_combout\ & (\divisor05s|Equal0~0_combout\ & (\divisor05s|Equal0~2_combout\ & \divisor05s|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|Equal0~3_combout\,
	datab => \divisor05s|Equal0~0_combout\,
	datac => \divisor05s|Equal0~2_combout\,
	datad => \divisor05s|Equal0~1_combout\,
	combout => \divisor05s|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y14_N22
\divisor05s|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|Equal0~8_combout\ = (\divisor05s|Equal0~5_combout\ & (\divisor05s|Equal0~6_combout\ & (\divisor05s|Equal0~7_combout\ & \divisor05s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor05s|Equal0~5_combout\,
	datab => \divisor05s|Equal0~6_combout\,
	datac => \divisor05s|Equal0~7_combout\,
	datad => \divisor05s|Equal0~4_combout\,
	combout => \divisor05s|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y14_N28
\divisor05s|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|salida~0_combout\ = \divisor05s|salida~q\ $ (\divisor05s|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|salida~q\,
	datac => \divisor05s|Equal0~8_combout\,
	combout => \divisor05s|salida~0_combout\);

-- Location: LCCOMB_X26_Y14_N6
\divisor05s|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor05s|salida~feeder_combout\ = \divisor05s|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor05s|salida~0_combout\,
	combout => \divisor05s|salida~feeder_combout\);

-- Location: FF_X26_Y14_N7
\divisor05s|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor05s|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor05s|salida~q\);

-- Location: CLKCTRL_G6
\divisor05s|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor05s|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor05s|salida~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y10_N8
\down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: LCCOMB_X30_Y13_N14
\antirrebote_down|reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_down|reg[0]~0_combout\ = !\down~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \down~input_o\,
	combout => \antirrebote_down|reg[0]~0_combout\);

-- Location: LCCOMB_X29_Y14_N24
\antirrebote_down|reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_down|reg[0]~feeder_combout\ = \antirrebote_down|reg[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebote_down|reg[0]~0_combout\,
	combout => \antirrebote_down|reg[0]~feeder_combout\);

-- Location: FF_X29_Y14_N25
\antirrebote_down|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~clkctrl_outclk\,
	d => \antirrebote_down|reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_down|reg\(0));

-- Location: LCCOMB_X29_Y14_N28
\antirrebote_down|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_down|reg[1]~feeder_combout\ = \antirrebote_down|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \antirrebote_down|reg\(0),
	combout => \antirrebote_down|reg[1]~feeder_combout\);

-- Location: FF_X29_Y14_N29
\antirrebote_down|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~q\,
	d => \antirrebote_down|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_down|reg\(1));

-- Location: LCCOMB_X29_Y14_N22
\antirrebote_down|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_down|reg[2]~feeder_combout\ = \antirrebote_down|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebote_down|reg\(1),
	combout => \antirrebote_down|reg[2]~feeder_combout\);

-- Location: FF_X29_Y14_N23
\antirrebote_down|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~q\,
	d => \antirrebote_down|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_down|reg\(2));

-- Location: FF_X29_Y14_N27
\antirrebote_down|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~q\,
	asdata => \antirrebote_down|reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_down|reg\(3));

-- Location: LCCOMB_X29_Y14_N26
\antirrebote_down|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_down|Equal0~combout\ = LCELL((((!\antirrebote_down|reg\(1)) # (!\antirrebote_down|reg\(3))) # (!\antirrebote_down|reg\(0))) # (!\antirrebote_down|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebote_down|reg\(2),
	datab => \antirrebote_down|reg\(0),
	datac => \antirrebote_down|reg\(3),
	datad => \antirrebote_down|reg\(1),
	combout => \antirrebote_down|Equal0~combout\);

-- Location: CLKCTRL_G8
\antirrebote_down|Equal0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \antirrebote_down|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \antirrebote_down|Equal0~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y15_N0
\modul|tau_down[1]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[1]~92_combout\ = !\modul|tau_down\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modul|tau_down\(1),
	combout => \modul|tau_down[1]~92_combout\);

-- Location: FF_X10_Y15_N1
\modul|tau_down[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[1]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(1));

-- Location: IOIBUF_X34_Y9_N1
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X30_Y13_N0
\antirrebote_up|reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_up|reg[0]~0_combout\ = !\up~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up~input_o\,
	combout => \antirrebote_up|reg[0]~0_combout\);

-- Location: FF_X30_Y14_N25
\antirrebote_up|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~clkctrl_outclk\,
	asdata => \antirrebote_up|reg[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_up|reg\(0));

-- Location: LCCOMB_X30_Y14_N26
\antirrebote_up|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_up|reg[1]~feeder_combout\ = \antirrebote_up|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \antirrebote_up|reg\(0),
	combout => \antirrebote_up|reg[1]~feeder_combout\);

-- Location: FF_X30_Y14_N27
\antirrebote_up|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~q\,
	d => \antirrebote_up|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_up|reg\(1));

-- Location: LCCOMB_X30_Y14_N30
\antirrebote_up|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_up|reg[2]~feeder_combout\ = \antirrebote_up|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \antirrebote_up|reg\(1),
	combout => \antirrebote_up|reg[2]~feeder_combout\);

-- Location: FF_X30_Y14_N31
\antirrebote_up|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~q\,
	d => \antirrebote_up|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_up|reg\(2));

-- Location: FF_X30_Y14_N29
\antirrebote_up|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor05s|salida~q\,
	asdata => \antirrebote_up|reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebote_up|reg\(3));

-- Location: LCCOMB_X30_Y14_N28
\antirrebote_up|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebote_up|Equal0~combout\ = LCELL((((!\antirrebote_up|reg\(0)) # (!\antirrebote_up|reg\(3))) # (!\antirrebote_up|reg\(1))) # (!\antirrebote_up|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebote_up|reg\(2),
	datab => \antirrebote_up|reg\(1),
	datac => \antirrebote_up|reg\(3),
	datad => \antirrebote_up|reg\(0),
	combout => \antirrebote_up|Equal0~combout\);

-- Location: CLKCTRL_G5
\antirrebote_up|Equal0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \antirrebote_up|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \antirrebote_up|Equal0~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y15_N0
\modul|tau_up[1]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[1]~90_combout\ = !\modul|tau_up\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modul|tau_up\(1),
	combout => \modul|tau_up[1]~90_combout\);

-- Location: FF_X13_Y15_N1
\modul|tau_up[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[1]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(1));

-- Location: LCCOMB_X11_Y15_N2
\modul|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~0_combout\ = (\modul|tau_down\(1) & (\modul|tau_up\(1) $ (VCC))) # (!\modul|tau_down\(1) & (\modul|tau_up\(1) & VCC))
-- \modul|Add3~1\ = CARRY((\modul|tau_down\(1) & \modul|tau_up\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(1),
	datab => \modul|tau_up\(1),
	datad => VCC,
	combout => \modul|Add3~0_combout\,
	cout => \modul|Add3~1\);

-- Location: LCCOMB_X10_Y15_N2
\modul|tau_down[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[2]~31_cout\ = CARRY(\modul|tau_down\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(1),
	datad => VCC,
	cout => \modul|tau_down[2]~31_cout\);

-- Location: LCCOMB_X10_Y15_N4
\modul|tau_down[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[2]~32_combout\ = (\modul|tau_down\(2) & (\modul|tau_down[2]~31_cout\ & VCC)) # (!\modul|tau_down\(2) & (!\modul|tau_down[2]~31_cout\))
-- \modul|tau_down[2]~33\ = CARRY((!\modul|tau_down\(2) & !\modul|tau_down[2]~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(2),
	datad => VCC,
	cin => \modul|tau_down[2]~31_cout\,
	combout => \modul|tau_down[2]~32_combout\,
	cout => \modul|tau_down[2]~33\);

-- Location: FF_X10_Y15_N5
\modul|tau_down[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(2));

-- Location: LCCOMB_X10_Y15_N6
\modul|tau_down[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[3]~34_combout\ = (\modul|tau_down\(3) & ((GND) # (!\modul|tau_down[2]~33\))) # (!\modul|tau_down\(3) & (\modul|tau_down[2]~33\ $ (GND)))
-- \modul|tau_down[3]~35\ = CARRY((\modul|tau_down\(3)) # (!\modul|tau_down[2]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(3),
	datad => VCC,
	cin => \modul|tau_down[2]~33\,
	combout => \modul|tau_down[3]~34_combout\,
	cout => \modul|tau_down[3]~35\);

-- Location: FF_X10_Y15_N7
\modul|tau_down[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(3));

-- Location: LCCOMB_X10_Y15_N8
\modul|tau_down[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[4]~36_combout\ = (\modul|tau_down\(4) & (\modul|tau_down[3]~35\ & VCC)) # (!\modul|tau_down\(4) & (!\modul|tau_down[3]~35\))
-- \modul|tau_down[4]~37\ = CARRY((!\modul|tau_down\(4) & !\modul|tau_down[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(4),
	datad => VCC,
	cin => \modul|tau_down[3]~35\,
	combout => \modul|tau_down[4]~36_combout\,
	cout => \modul|tau_down[4]~37\);

-- Location: FF_X10_Y15_N9
\modul|tau_down[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(4));

-- Location: LCCOMB_X10_Y15_N10
\modul|tau_down[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[5]~38_combout\ = (\modul|tau_down\(5) & ((GND) # (!\modul|tau_down[4]~37\))) # (!\modul|tau_down\(5) & (\modul|tau_down[4]~37\ $ (GND)))
-- \modul|tau_down[5]~39\ = CARRY((\modul|tau_down\(5)) # (!\modul|tau_down[4]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(5),
	datad => VCC,
	cin => \modul|tau_down[4]~37\,
	combout => \modul|tau_down[5]~38_combout\,
	cout => \modul|tau_down[5]~39\);

-- Location: FF_X10_Y15_N11
\modul|tau_down[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(5));

-- Location: LCCOMB_X10_Y15_N12
\modul|tau_down[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[6]~40_combout\ = (\modul|tau_down\(6) & (\modul|tau_down[5]~39\ & VCC)) # (!\modul|tau_down\(6) & (!\modul|tau_down[5]~39\))
-- \modul|tau_down[6]~41\ = CARRY((!\modul|tau_down\(6) & !\modul|tau_down[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(6),
	datad => VCC,
	cin => \modul|tau_down[5]~39\,
	combout => \modul|tau_down[6]~40_combout\,
	cout => \modul|tau_down[6]~41\);

-- Location: FF_X10_Y15_N13
\modul|tau_down[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(6));

-- Location: LCCOMB_X10_Y15_N14
\modul|tau_down[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[7]~42_combout\ = (\modul|tau_down\(7) & ((GND) # (!\modul|tau_down[6]~41\))) # (!\modul|tau_down\(7) & (\modul|tau_down[6]~41\ $ (GND)))
-- \modul|tau_down[7]~43\ = CARRY((\modul|tau_down\(7)) # (!\modul|tau_down[6]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(7),
	datad => VCC,
	cin => \modul|tau_down[6]~41\,
	combout => \modul|tau_down[7]~42_combout\,
	cout => \modul|tau_down[7]~43\);

-- Location: FF_X10_Y15_N15
\modul|tau_down[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[7]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(7));

-- Location: LCCOMB_X10_Y15_N16
\modul|tau_down[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[8]~44_combout\ = (\modul|tau_down\(8) & (\modul|tau_down[7]~43\ & VCC)) # (!\modul|tau_down\(8) & (!\modul|tau_down[7]~43\))
-- \modul|tau_down[8]~45\ = CARRY((!\modul|tau_down\(8) & !\modul|tau_down[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(8),
	datad => VCC,
	cin => \modul|tau_down[7]~43\,
	combout => \modul|tau_down[8]~44_combout\,
	cout => \modul|tau_down[8]~45\);

-- Location: FF_X10_Y15_N17
\modul|tau_down[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[8]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(8));

-- Location: LCCOMB_X10_Y15_N18
\modul|tau_down[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[9]~46_combout\ = (\modul|tau_down\(9) & ((GND) # (!\modul|tau_down[8]~45\))) # (!\modul|tau_down\(9) & (\modul|tau_down[8]~45\ $ (GND)))
-- \modul|tau_down[9]~47\ = CARRY((\modul|tau_down\(9)) # (!\modul|tau_down[8]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(9),
	datad => VCC,
	cin => \modul|tau_down[8]~45\,
	combout => \modul|tau_down[9]~46_combout\,
	cout => \modul|tau_down[9]~47\);

-- Location: FF_X10_Y15_N19
\modul|tau_down[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[9]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(9));

-- Location: LCCOMB_X10_Y15_N20
\modul|tau_down[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[10]~48_combout\ = (\modul|tau_down\(10) & (\modul|tau_down[9]~47\ & VCC)) # (!\modul|tau_down\(10) & (!\modul|tau_down[9]~47\))
-- \modul|tau_down[10]~49\ = CARRY((!\modul|tau_down\(10) & !\modul|tau_down[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(10),
	datad => VCC,
	cin => \modul|tau_down[9]~47\,
	combout => \modul|tau_down[10]~48_combout\,
	cout => \modul|tau_down[10]~49\);

-- Location: FF_X10_Y15_N21
\modul|tau_down[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(10));

-- Location: LCCOMB_X10_Y15_N22
\modul|tau_down[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[11]~50_combout\ = (\modul|tau_down\(11) & ((GND) # (!\modul|tau_down[10]~49\))) # (!\modul|tau_down\(11) & (\modul|tau_down[10]~49\ $ (GND)))
-- \modul|tau_down[11]~51\ = CARRY((\modul|tau_down\(11)) # (!\modul|tau_down[10]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(11),
	datad => VCC,
	cin => \modul|tau_down[10]~49\,
	combout => \modul|tau_down[11]~50_combout\,
	cout => \modul|tau_down[11]~51\);

-- Location: FF_X10_Y15_N23
\modul|tau_down[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[11]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(11));

-- Location: LCCOMB_X10_Y15_N24
\modul|tau_down[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[12]~52_combout\ = (\modul|tau_down\(12) & (\modul|tau_down[11]~51\ & VCC)) # (!\modul|tau_down\(12) & (!\modul|tau_down[11]~51\))
-- \modul|tau_down[12]~53\ = CARRY((!\modul|tau_down\(12) & !\modul|tau_down[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(12),
	datad => VCC,
	cin => \modul|tau_down[11]~51\,
	combout => \modul|tau_down[12]~52_combout\,
	cout => \modul|tau_down[12]~53\);

-- Location: FF_X10_Y15_N25
\modul|tau_down[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(12));

-- Location: LCCOMB_X10_Y15_N26
\modul|tau_down[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[13]~54_combout\ = (\modul|tau_down\(13) & ((GND) # (!\modul|tau_down[12]~53\))) # (!\modul|tau_down\(13) & (\modul|tau_down[12]~53\ $ (GND)))
-- \modul|tau_down[13]~55\ = CARRY((\modul|tau_down\(13)) # (!\modul|tau_down[12]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(13),
	datad => VCC,
	cin => \modul|tau_down[12]~53\,
	combout => \modul|tau_down[13]~54_combout\,
	cout => \modul|tau_down[13]~55\);

-- Location: FF_X10_Y15_N27
\modul|tau_down[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[13]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(13));

-- Location: LCCOMB_X10_Y15_N28
\modul|tau_down[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[14]~56_combout\ = (\modul|tau_down\(14) & (\modul|tau_down[13]~55\ & VCC)) # (!\modul|tau_down\(14) & (!\modul|tau_down[13]~55\))
-- \modul|tau_down[14]~57\ = CARRY((!\modul|tau_down\(14) & !\modul|tau_down[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(14),
	datad => VCC,
	cin => \modul|tau_down[13]~55\,
	combout => \modul|tau_down[14]~56_combout\,
	cout => \modul|tau_down[14]~57\);

-- Location: FF_X10_Y15_N29
\modul|tau_down[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[14]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(14));

-- Location: LCCOMB_X10_Y15_N30
\modul|tau_down[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[15]~58_combout\ = (\modul|tau_down\(15) & ((GND) # (!\modul|tau_down[14]~57\))) # (!\modul|tau_down\(15) & (\modul|tau_down[14]~57\ $ (GND)))
-- \modul|tau_down[15]~59\ = CARRY((\modul|tau_down\(15)) # (!\modul|tau_down[14]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(15),
	datad => VCC,
	cin => \modul|tau_down[14]~57\,
	combout => \modul|tau_down[15]~58_combout\,
	cout => \modul|tau_down[15]~59\);

-- Location: FF_X10_Y15_N31
\modul|tau_down[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[15]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(15));

-- Location: LCCOMB_X10_Y14_N0
\modul|tau_down[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[16]~60_combout\ = (\modul|tau_down\(16) & (\modul|tau_down[15]~59\ & VCC)) # (!\modul|tau_down\(16) & (!\modul|tau_down[15]~59\))
-- \modul|tau_down[16]~61\ = CARRY((!\modul|tau_down\(16) & !\modul|tau_down[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(16),
	datad => VCC,
	cin => \modul|tau_down[15]~59\,
	combout => \modul|tau_down[16]~60_combout\,
	cout => \modul|tau_down[16]~61\);

-- Location: FF_X10_Y14_N1
\modul|tau_down[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[16]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(16));

-- Location: LCCOMB_X10_Y14_N2
\modul|tau_down[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[17]~62_combout\ = (\modul|tau_down\(17) & ((GND) # (!\modul|tau_down[16]~61\))) # (!\modul|tau_down\(17) & (\modul|tau_down[16]~61\ $ (GND)))
-- \modul|tau_down[17]~63\ = CARRY((\modul|tau_down\(17)) # (!\modul|tau_down[16]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(17),
	datad => VCC,
	cin => \modul|tau_down[16]~61\,
	combout => \modul|tau_down[17]~62_combout\,
	cout => \modul|tau_down[17]~63\);

-- Location: FF_X10_Y14_N3
\modul|tau_down[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[17]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(17));

-- Location: LCCOMB_X10_Y14_N4
\modul|tau_down[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[18]~64_combout\ = (\modul|tau_down\(18) & (\modul|tau_down[17]~63\ & VCC)) # (!\modul|tau_down\(18) & (!\modul|tau_down[17]~63\))
-- \modul|tau_down[18]~65\ = CARRY((!\modul|tau_down\(18) & !\modul|tau_down[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(18),
	datad => VCC,
	cin => \modul|tau_down[17]~63\,
	combout => \modul|tau_down[18]~64_combout\,
	cout => \modul|tau_down[18]~65\);

-- Location: FF_X10_Y14_N5
\modul|tau_down[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[18]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(18));

-- Location: LCCOMB_X10_Y14_N6
\modul|tau_down[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[19]~66_combout\ = (\modul|tau_down\(19) & ((GND) # (!\modul|tau_down[18]~65\))) # (!\modul|tau_down\(19) & (\modul|tau_down[18]~65\ $ (GND)))
-- \modul|tau_down[19]~67\ = CARRY((\modul|tau_down\(19)) # (!\modul|tau_down[18]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(19),
	datad => VCC,
	cin => \modul|tau_down[18]~65\,
	combout => \modul|tau_down[19]~66_combout\,
	cout => \modul|tau_down[19]~67\);

-- Location: FF_X10_Y14_N7
\modul|tau_down[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[19]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(19));

-- Location: LCCOMB_X10_Y14_N8
\modul|tau_down[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[20]~68_combout\ = (\modul|tau_down\(20) & (\modul|tau_down[19]~67\ & VCC)) # (!\modul|tau_down\(20) & (!\modul|tau_down[19]~67\))
-- \modul|tau_down[20]~69\ = CARRY((!\modul|tau_down\(20) & !\modul|tau_down[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(20),
	datad => VCC,
	cin => \modul|tau_down[19]~67\,
	combout => \modul|tau_down[20]~68_combout\,
	cout => \modul|tau_down[20]~69\);

-- Location: FF_X10_Y14_N9
\modul|tau_down[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[20]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(20));

-- Location: LCCOMB_X10_Y14_N10
\modul|tau_down[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[21]~70_combout\ = (\modul|tau_down\(21) & ((GND) # (!\modul|tau_down[20]~69\))) # (!\modul|tau_down\(21) & (\modul|tau_down[20]~69\ $ (GND)))
-- \modul|tau_down[21]~71\ = CARRY((\modul|tau_down\(21)) # (!\modul|tau_down[20]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(21),
	datad => VCC,
	cin => \modul|tau_down[20]~69\,
	combout => \modul|tau_down[21]~70_combout\,
	cout => \modul|tau_down[21]~71\);

-- Location: FF_X10_Y14_N11
\modul|tau_down[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[21]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(21));

-- Location: LCCOMB_X10_Y14_N12
\modul|tau_down[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[22]~72_combout\ = (\modul|tau_down\(22) & (\modul|tau_down[21]~71\ & VCC)) # (!\modul|tau_down\(22) & (!\modul|tau_down[21]~71\))
-- \modul|tau_down[22]~73\ = CARRY((!\modul|tau_down\(22) & !\modul|tau_down[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(22),
	datad => VCC,
	cin => \modul|tau_down[21]~71\,
	combout => \modul|tau_down[22]~72_combout\,
	cout => \modul|tau_down[22]~73\);

-- Location: FF_X10_Y14_N13
\modul|tau_down[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[22]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(22));

-- Location: LCCOMB_X10_Y14_N14
\modul|tau_down[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[23]~74_combout\ = (\modul|tau_down\(23) & ((GND) # (!\modul|tau_down[22]~73\))) # (!\modul|tau_down\(23) & (\modul|tau_down[22]~73\ $ (GND)))
-- \modul|tau_down[23]~75\ = CARRY((\modul|tau_down\(23)) # (!\modul|tau_down[22]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(23),
	datad => VCC,
	cin => \modul|tau_down[22]~73\,
	combout => \modul|tau_down[23]~74_combout\,
	cout => \modul|tau_down[23]~75\);

-- Location: FF_X10_Y14_N15
\modul|tau_down[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[23]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(23));

-- Location: LCCOMB_X10_Y14_N16
\modul|tau_down[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[24]~76_combout\ = (\modul|tau_down\(24) & (\modul|tau_down[23]~75\ & VCC)) # (!\modul|tau_down\(24) & (!\modul|tau_down[23]~75\))
-- \modul|tau_down[24]~77\ = CARRY((!\modul|tau_down\(24) & !\modul|tau_down[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(24),
	datad => VCC,
	cin => \modul|tau_down[23]~75\,
	combout => \modul|tau_down[24]~76_combout\,
	cout => \modul|tau_down[24]~77\);

-- Location: FF_X10_Y14_N17
\modul|tau_down[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[24]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(24));

-- Location: LCCOMB_X10_Y14_N18
\modul|tau_down[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[25]~78_combout\ = (\modul|tau_down\(25) & ((GND) # (!\modul|tau_down[24]~77\))) # (!\modul|tau_down\(25) & (\modul|tau_down[24]~77\ $ (GND)))
-- \modul|tau_down[25]~79\ = CARRY((\modul|tau_down\(25)) # (!\modul|tau_down[24]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(25),
	datad => VCC,
	cin => \modul|tau_down[24]~77\,
	combout => \modul|tau_down[25]~78_combout\,
	cout => \modul|tau_down[25]~79\);

-- Location: FF_X10_Y14_N19
\modul|tau_down[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[25]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(25));

-- Location: LCCOMB_X10_Y14_N20
\modul|tau_down[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[26]~80_combout\ = (\modul|tau_down\(26) & (\modul|tau_down[25]~79\ & VCC)) # (!\modul|tau_down\(26) & (!\modul|tau_down[25]~79\))
-- \modul|tau_down[26]~81\ = CARRY((!\modul|tau_down\(26) & !\modul|tau_down[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(26),
	datad => VCC,
	cin => \modul|tau_down[25]~79\,
	combout => \modul|tau_down[26]~80_combout\,
	cout => \modul|tau_down[26]~81\);

-- Location: FF_X10_Y14_N21
\modul|tau_down[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[26]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(26));

-- Location: LCCOMB_X10_Y14_N22
\modul|tau_down[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[27]~82_combout\ = (\modul|tau_down\(27) & ((GND) # (!\modul|tau_down[26]~81\))) # (!\modul|tau_down\(27) & (\modul|tau_down[26]~81\ $ (GND)))
-- \modul|tau_down[27]~83\ = CARRY((\modul|tau_down\(27)) # (!\modul|tau_down[26]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(27),
	datad => VCC,
	cin => \modul|tau_down[26]~81\,
	combout => \modul|tau_down[27]~82_combout\,
	cout => \modul|tau_down[27]~83\);

-- Location: FF_X10_Y14_N23
\modul|tau_down[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[27]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(27));

-- Location: LCCOMB_X10_Y14_N24
\modul|tau_down[28]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[28]~84_combout\ = (\modul|tau_down\(28) & (\modul|tau_down[27]~83\ & VCC)) # (!\modul|tau_down\(28) & (!\modul|tau_down[27]~83\))
-- \modul|tau_down[28]~85\ = CARRY((!\modul|tau_down\(28) & !\modul|tau_down[27]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(28),
	datad => VCC,
	cin => \modul|tau_down[27]~83\,
	combout => \modul|tau_down[28]~84_combout\,
	cout => \modul|tau_down[28]~85\);

-- Location: FF_X10_Y14_N25
\modul|tau_down[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[28]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(28));

-- Location: LCCOMB_X10_Y14_N26
\modul|tau_down[29]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[29]~86_combout\ = (\modul|tau_down\(29) & ((GND) # (!\modul|tau_down[28]~85\))) # (!\modul|tau_down\(29) & (\modul|tau_down[28]~85\ $ (GND)))
-- \modul|tau_down[29]~87\ = CARRY((\modul|tau_down\(29)) # (!\modul|tau_down[28]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(29),
	datad => VCC,
	cin => \modul|tau_down[28]~85\,
	combout => \modul|tau_down[29]~86_combout\,
	cout => \modul|tau_down[29]~87\);

-- Location: FF_X10_Y14_N27
\modul|tau_down[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[29]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(29));

-- Location: LCCOMB_X10_Y14_N28
\modul|tau_down[30]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[30]~88_combout\ = (\modul|tau_down\(30) & (\modul|tau_down[29]~87\ & VCC)) # (!\modul|tau_down\(30) & (!\modul|tau_down[29]~87\))
-- \modul|tau_down[30]~89\ = CARRY((!\modul|tau_down\(30) & !\modul|tau_down[29]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(30),
	datad => VCC,
	cin => \modul|tau_down[29]~87\,
	combout => \modul|tau_down[30]~88_combout\,
	cout => \modul|tau_down[30]~89\);

-- Location: FF_X10_Y14_N29
\modul|tau_down[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[30]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(30));

-- Location: LCCOMB_X10_Y14_N30
\modul|tau_down[31]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_down[31]~90_combout\ = \modul|tau_down\(31) $ (\modul|tau_down[30]~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(31),
	cin => \modul|tau_down[30]~89\,
	combout => \modul|tau_down[31]~90_combout\);

-- Location: FF_X10_Y14_N31
\modul|tau_down[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_down|Equal0~clkctrl_outclk\,
	d => \modul|tau_down[31]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_down\(31));

-- Location: LCCOMB_X13_Y15_N2
\modul|tau_up[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[2]~30_combout\ = (\modul|tau_up\(1) & (\modul|tau_up\(2) $ (VCC))) # (!\modul|tau_up\(1) & (\modul|tau_up\(2) & VCC))
-- \modul|tau_up[2]~31\ = CARRY((\modul|tau_up\(1) & \modul|tau_up\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(1),
	datab => \modul|tau_up\(2),
	datad => VCC,
	combout => \modul|tau_up[2]~30_combout\,
	cout => \modul|tau_up[2]~31\);

-- Location: FF_X13_Y15_N3
\modul|tau_up[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(2));

-- Location: LCCOMB_X13_Y15_N4
\modul|tau_up[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[3]~32_combout\ = (\modul|tau_up\(3) & (!\modul|tau_up[2]~31\)) # (!\modul|tau_up\(3) & ((\modul|tau_up[2]~31\) # (GND)))
-- \modul|tau_up[3]~33\ = CARRY((!\modul|tau_up[2]~31\) # (!\modul|tau_up\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(3),
	datad => VCC,
	cin => \modul|tau_up[2]~31\,
	combout => \modul|tau_up[3]~32_combout\,
	cout => \modul|tau_up[3]~33\);

-- Location: FF_X13_Y15_N5
\modul|tau_up[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(3));

-- Location: LCCOMB_X13_Y15_N6
\modul|tau_up[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[4]~34_combout\ = (\modul|tau_up\(4) & (\modul|tau_up[3]~33\ $ (GND))) # (!\modul|tau_up\(4) & (!\modul|tau_up[3]~33\ & VCC))
-- \modul|tau_up[4]~35\ = CARRY((\modul|tau_up\(4) & !\modul|tau_up[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(4),
	datad => VCC,
	cin => \modul|tau_up[3]~33\,
	combout => \modul|tau_up[4]~34_combout\,
	cout => \modul|tau_up[4]~35\);

-- Location: FF_X13_Y15_N7
\modul|tau_up[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(4));

-- Location: LCCOMB_X13_Y15_N8
\modul|tau_up[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[5]~36_combout\ = (\modul|tau_up\(5) & (!\modul|tau_up[4]~35\)) # (!\modul|tau_up\(5) & ((\modul|tau_up[4]~35\) # (GND)))
-- \modul|tau_up[5]~37\ = CARRY((!\modul|tau_up[4]~35\) # (!\modul|tau_up\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(5),
	datad => VCC,
	cin => \modul|tau_up[4]~35\,
	combout => \modul|tau_up[5]~36_combout\,
	cout => \modul|tau_up[5]~37\);

-- Location: FF_X13_Y15_N9
\modul|tau_up[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(5));

-- Location: LCCOMB_X13_Y15_N10
\modul|tau_up[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[6]~38_combout\ = (\modul|tau_up\(6) & (\modul|tau_up[5]~37\ $ (GND))) # (!\modul|tau_up\(6) & (!\modul|tau_up[5]~37\ & VCC))
-- \modul|tau_up[6]~39\ = CARRY((\modul|tau_up\(6) & !\modul|tau_up[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(6),
	datad => VCC,
	cin => \modul|tau_up[5]~37\,
	combout => \modul|tau_up[6]~38_combout\,
	cout => \modul|tau_up[6]~39\);

-- Location: FF_X13_Y15_N11
\modul|tau_up[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(6));

-- Location: LCCOMB_X13_Y15_N12
\modul|tau_up[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[7]~40_combout\ = (\modul|tau_up\(7) & (!\modul|tau_up[6]~39\)) # (!\modul|tau_up\(7) & ((\modul|tau_up[6]~39\) # (GND)))
-- \modul|tau_up[7]~41\ = CARRY((!\modul|tau_up[6]~39\) # (!\modul|tau_up\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(7),
	datad => VCC,
	cin => \modul|tau_up[6]~39\,
	combout => \modul|tau_up[7]~40_combout\,
	cout => \modul|tau_up[7]~41\);

-- Location: FF_X13_Y15_N13
\modul|tau_up[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(7));

-- Location: LCCOMB_X13_Y15_N14
\modul|tau_up[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[8]~42_combout\ = (\modul|tau_up\(8) & (\modul|tau_up[7]~41\ $ (GND))) # (!\modul|tau_up\(8) & (!\modul|tau_up[7]~41\ & VCC))
-- \modul|tau_up[8]~43\ = CARRY((\modul|tau_up\(8) & !\modul|tau_up[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(8),
	datad => VCC,
	cin => \modul|tau_up[7]~41\,
	combout => \modul|tau_up[8]~42_combout\,
	cout => \modul|tau_up[8]~43\);

-- Location: FF_X13_Y15_N15
\modul|tau_up[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(8));

-- Location: LCCOMB_X13_Y15_N16
\modul|tau_up[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[9]~44_combout\ = (\modul|tau_up\(9) & (!\modul|tau_up[8]~43\)) # (!\modul|tau_up\(9) & ((\modul|tau_up[8]~43\) # (GND)))
-- \modul|tau_up[9]~45\ = CARRY((!\modul|tau_up[8]~43\) # (!\modul|tau_up\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(9),
	datad => VCC,
	cin => \modul|tau_up[8]~43\,
	combout => \modul|tau_up[9]~44_combout\,
	cout => \modul|tau_up[9]~45\);

-- Location: FF_X13_Y15_N17
\modul|tau_up[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(9));

-- Location: LCCOMB_X13_Y15_N18
\modul|tau_up[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[10]~46_combout\ = (\modul|tau_up\(10) & (\modul|tau_up[9]~45\ $ (GND))) # (!\modul|tau_up\(10) & (!\modul|tau_up[9]~45\ & VCC))
-- \modul|tau_up[10]~47\ = CARRY((\modul|tau_up\(10) & !\modul|tau_up[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(10),
	datad => VCC,
	cin => \modul|tau_up[9]~45\,
	combout => \modul|tau_up[10]~46_combout\,
	cout => \modul|tau_up[10]~47\);

-- Location: FF_X13_Y15_N19
\modul|tau_up[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(10));

-- Location: LCCOMB_X13_Y15_N20
\modul|tau_up[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[11]~48_combout\ = (\modul|tau_up\(11) & (!\modul|tau_up[10]~47\)) # (!\modul|tau_up\(11) & ((\modul|tau_up[10]~47\) # (GND)))
-- \modul|tau_up[11]~49\ = CARRY((!\modul|tau_up[10]~47\) # (!\modul|tau_up\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(11),
	datad => VCC,
	cin => \modul|tau_up[10]~47\,
	combout => \modul|tau_up[11]~48_combout\,
	cout => \modul|tau_up[11]~49\);

-- Location: FF_X13_Y15_N21
\modul|tau_up[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(11));

-- Location: LCCOMB_X13_Y15_N22
\modul|tau_up[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[12]~50_combout\ = (\modul|tau_up\(12) & (\modul|tau_up[11]~49\ $ (GND))) # (!\modul|tau_up\(12) & (!\modul|tau_up[11]~49\ & VCC))
-- \modul|tau_up[12]~51\ = CARRY((\modul|tau_up\(12) & !\modul|tau_up[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(12),
	datad => VCC,
	cin => \modul|tau_up[11]~49\,
	combout => \modul|tau_up[12]~50_combout\,
	cout => \modul|tau_up[12]~51\);

-- Location: FF_X13_Y15_N23
\modul|tau_up[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(12));

-- Location: LCCOMB_X13_Y15_N24
\modul|tau_up[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[13]~52_combout\ = (\modul|tau_up\(13) & (!\modul|tau_up[12]~51\)) # (!\modul|tau_up\(13) & ((\modul|tau_up[12]~51\) # (GND)))
-- \modul|tau_up[13]~53\ = CARRY((!\modul|tau_up[12]~51\) # (!\modul|tau_up\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(13),
	datad => VCC,
	cin => \modul|tau_up[12]~51\,
	combout => \modul|tau_up[13]~52_combout\,
	cout => \modul|tau_up[13]~53\);

-- Location: FF_X12_Y15_N23
\modul|tau_up[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	asdata => \modul|tau_up[13]~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(13));

-- Location: LCCOMB_X13_Y15_N26
\modul|tau_up[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[14]~54_combout\ = (\modul|tau_up\(14) & (\modul|tau_up[13]~53\ $ (GND))) # (!\modul|tau_up\(14) & (!\modul|tau_up[13]~53\ & VCC))
-- \modul|tau_up[14]~55\ = CARRY((\modul|tau_up\(14) & !\modul|tau_up[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(14),
	datad => VCC,
	cin => \modul|tau_up[13]~53\,
	combout => \modul|tau_up[14]~54_combout\,
	cout => \modul|tau_up[14]~55\);

-- Location: FF_X13_Y15_N27
\modul|tau_up[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(14));

-- Location: LCCOMB_X13_Y15_N28
\modul|tau_up[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[15]~56_combout\ = (\modul|tau_up\(15) & (!\modul|tau_up[14]~55\)) # (!\modul|tau_up\(15) & ((\modul|tau_up[14]~55\) # (GND)))
-- \modul|tau_up[15]~57\ = CARRY((!\modul|tau_up[14]~55\) # (!\modul|tau_up\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(15),
	datad => VCC,
	cin => \modul|tau_up[14]~55\,
	combout => \modul|tau_up[15]~56_combout\,
	cout => \modul|tau_up[15]~57\);

-- Location: FF_X12_Y15_N21
\modul|tau_up[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	asdata => \modul|tau_up[15]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(15));

-- Location: LCCOMB_X13_Y15_N30
\modul|tau_up[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[16]~58_combout\ = (\modul|tau_up\(16) & (\modul|tau_up[15]~57\ $ (GND))) # (!\modul|tau_up\(16) & (!\modul|tau_up[15]~57\ & VCC))
-- \modul|tau_up[16]~59\ = CARRY((\modul|tau_up\(16) & !\modul|tau_up[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(16),
	datad => VCC,
	cin => \modul|tau_up[15]~57\,
	combout => \modul|tau_up[16]~58_combout\,
	cout => \modul|tau_up[16]~59\);

-- Location: FF_X12_Y15_N15
\modul|tau_up[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	asdata => \modul|tau_up[16]~58_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(16));

-- Location: LCCOMB_X13_Y14_N0
\modul|tau_up[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[17]~60_combout\ = (\modul|tau_up\(17) & (!\modul|tau_up[16]~59\)) # (!\modul|tau_up\(17) & ((\modul|tau_up[16]~59\) # (GND)))
-- \modul|tau_up[17]~61\ = CARRY((!\modul|tau_up[16]~59\) # (!\modul|tau_up\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(17),
	datad => VCC,
	cin => \modul|tau_up[16]~59\,
	combout => \modul|tau_up[17]~60_combout\,
	cout => \modul|tau_up[17]~61\);

-- Location: LCCOMB_X12_Y14_N30
\modul|tau_up[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[17]~feeder_combout\ = \modul|tau_up[17]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modul|tau_up[17]~60_combout\,
	combout => \modul|tau_up[17]~feeder_combout\);

-- Location: FF_X12_Y14_N31
\modul|tau_up[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(17));

-- Location: LCCOMB_X13_Y14_N2
\modul|tau_up[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[18]~62_combout\ = (\modul|tau_up\(18) & (\modul|tau_up[17]~61\ $ (GND))) # (!\modul|tau_up\(18) & (!\modul|tau_up[17]~61\ & VCC))
-- \modul|tau_up[18]~63\ = CARRY((\modul|tau_up\(18) & !\modul|tau_up[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(18),
	datad => VCC,
	cin => \modul|tau_up[17]~61\,
	combout => \modul|tau_up[18]~62_combout\,
	cout => \modul|tau_up[18]~63\);

-- Location: FF_X13_Y14_N3
\modul|tau_up[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(18));

-- Location: LCCOMB_X13_Y14_N4
\modul|tau_up[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[19]~64_combout\ = (\modul|tau_up\(19) & (!\modul|tau_up[18]~63\)) # (!\modul|tau_up\(19) & ((\modul|tau_up[18]~63\) # (GND)))
-- \modul|tau_up[19]~65\ = CARRY((!\modul|tau_up[18]~63\) # (!\modul|tau_up\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(19),
	datad => VCC,
	cin => \modul|tau_up[18]~63\,
	combout => \modul|tau_up[19]~64_combout\,
	cout => \modul|tau_up[19]~65\);

-- Location: FF_X13_Y14_N5
\modul|tau_up[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(19));

-- Location: LCCOMB_X13_Y14_N6
\modul|tau_up[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[20]~66_combout\ = (\modul|tau_up\(20) & (\modul|tau_up[19]~65\ $ (GND))) # (!\modul|tau_up\(20) & (!\modul|tau_up[19]~65\ & VCC))
-- \modul|tau_up[20]~67\ = CARRY((\modul|tau_up\(20) & !\modul|tau_up[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(20),
	datad => VCC,
	cin => \modul|tau_up[19]~65\,
	combout => \modul|tau_up[20]~66_combout\,
	cout => \modul|tau_up[20]~67\);

-- Location: FF_X13_Y14_N7
\modul|tau_up[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(20));

-- Location: LCCOMB_X13_Y14_N8
\modul|tau_up[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[21]~68_combout\ = (\modul|tau_up\(21) & (!\modul|tau_up[20]~67\)) # (!\modul|tau_up\(21) & ((\modul|tau_up[20]~67\) # (GND)))
-- \modul|tau_up[21]~69\ = CARRY((!\modul|tau_up[20]~67\) # (!\modul|tau_up\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(21),
	datad => VCC,
	cin => \modul|tau_up[20]~67\,
	combout => \modul|tau_up[21]~68_combout\,
	cout => \modul|tau_up[21]~69\);

-- Location: FF_X13_Y14_N9
\modul|tau_up[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(21));

-- Location: LCCOMB_X13_Y14_N10
\modul|tau_up[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[22]~70_combout\ = (\modul|tau_up\(22) & (\modul|tau_up[21]~69\ $ (GND))) # (!\modul|tau_up\(22) & (!\modul|tau_up[21]~69\ & VCC))
-- \modul|tau_up[22]~71\ = CARRY((\modul|tau_up\(22) & !\modul|tau_up[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(22),
	datad => VCC,
	cin => \modul|tau_up[21]~69\,
	combout => \modul|tau_up[22]~70_combout\,
	cout => \modul|tau_up[22]~71\);

-- Location: FF_X13_Y14_N11
\modul|tau_up[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(22));

-- Location: LCCOMB_X13_Y14_N12
\modul|tau_up[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[23]~72_combout\ = (\modul|tau_up\(23) & (!\modul|tau_up[22]~71\)) # (!\modul|tau_up\(23) & ((\modul|tau_up[22]~71\) # (GND)))
-- \modul|tau_up[23]~73\ = CARRY((!\modul|tau_up[22]~71\) # (!\modul|tau_up\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(23),
	datad => VCC,
	cin => \modul|tau_up[22]~71\,
	combout => \modul|tau_up[23]~72_combout\,
	cout => \modul|tau_up[23]~73\);

-- Location: FF_X13_Y14_N13
\modul|tau_up[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(23));

-- Location: LCCOMB_X13_Y14_N14
\modul|tau_up[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[24]~74_combout\ = (\modul|tau_up\(24) & (\modul|tau_up[23]~73\ $ (GND))) # (!\modul|tau_up\(24) & (!\modul|tau_up[23]~73\ & VCC))
-- \modul|tau_up[24]~75\ = CARRY((\modul|tau_up\(24) & !\modul|tau_up[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(24),
	datad => VCC,
	cin => \modul|tau_up[23]~73\,
	combout => \modul|tau_up[24]~74_combout\,
	cout => \modul|tau_up[24]~75\);

-- Location: FF_X13_Y14_N15
\modul|tau_up[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(24));

-- Location: LCCOMB_X13_Y14_N16
\modul|tau_up[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[25]~76_combout\ = (\modul|tau_up\(25) & (!\modul|tau_up[24]~75\)) # (!\modul|tau_up\(25) & ((\modul|tau_up[24]~75\) # (GND)))
-- \modul|tau_up[25]~77\ = CARRY((!\modul|tau_up[24]~75\) # (!\modul|tau_up\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(25),
	datad => VCC,
	cin => \modul|tau_up[24]~75\,
	combout => \modul|tau_up[25]~76_combout\,
	cout => \modul|tau_up[25]~77\);

-- Location: FF_X13_Y14_N17
\modul|tau_up[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(25));

-- Location: LCCOMB_X13_Y14_N18
\modul|tau_up[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[26]~78_combout\ = (\modul|tau_up\(26) & (\modul|tau_up[25]~77\ $ (GND))) # (!\modul|tau_up\(26) & (!\modul|tau_up[25]~77\ & VCC))
-- \modul|tau_up[26]~79\ = CARRY((\modul|tau_up\(26) & !\modul|tau_up[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(26),
	datad => VCC,
	cin => \modul|tau_up[25]~77\,
	combout => \modul|tau_up[26]~78_combout\,
	cout => \modul|tau_up[26]~79\);

-- Location: FF_X13_Y14_N19
\modul|tau_up[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(26));

-- Location: LCCOMB_X13_Y14_N20
\modul|tau_up[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[27]~80_combout\ = (\modul|tau_up\(27) & (!\modul|tau_up[26]~79\)) # (!\modul|tau_up\(27) & ((\modul|tau_up[26]~79\) # (GND)))
-- \modul|tau_up[27]~81\ = CARRY((!\modul|tau_up[26]~79\) # (!\modul|tau_up\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(27),
	datad => VCC,
	cin => \modul|tau_up[26]~79\,
	combout => \modul|tau_up[27]~80_combout\,
	cout => \modul|tau_up[27]~81\);

-- Location: FF_X13_Y14_N21
\modul|tau_up[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(27));

-- Location: LCCOMB_X13_Y14_N22
\modul|tau_up[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[28]~82_combout\ = (\modul|tau_up\(28) & (\modul|tau_up[27]~81\ $ (GND))) # (!\modul|tau_up\(28) & (!\modul|tau_up[27]~81\ & VCC))
-- \modul|tau_up[28]~83\ = CARRY((\modul|tau_up\(28) & !\modul|tau_up[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(28),
	datad => VCC,
	cin => \modul|tau_up[27]~81\,
	combout => \modul|tau_up[28]~82_combout\,
	cout => \modul|tau_up[28]~83\);

-- Location: FF_X13_Y14_N23
\modul|tau_up[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(28));

-- Location: LCCOMB_X13_Y14_N24
\modul|tau_up[29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[29]~84_combout\ = (\modul|tau_up\(29) & (!\modul|tau_up[28]~83\)) # (!\modul|tau_up\(29) & ((\modul|tau_up[28]~83\) # (GND)))
-- \modul|tau_up[29]~85\ = CARRY((!\modul|tau_up[28]~83\) # (!\modul|tau_up\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(29),
	datad => VCC,
	cin => \modul|tau_up[28]~83\,
	combout => \modul|tau_up[29]~84_combout\,
	cout => \modul|tau_up[29]~85\);

-- Location: FF_X13_Y14_N25
\modul|tau_up[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(29));

-- Location: LCCOMB_X13_Y14_N26
\modul|tau_up[30]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[30]~86_combout\ = (\modul|tau_up\(30) & (\modul|tau_up[29]~85\ $ (GND))) # (!\modul|tau_up\(30) & (!\modul|tau_up[29]~85\ & VCC))
-- \modul|tau_up[30]~87\ = CARRY((\modul|tau_up\(30) & !\modul|tau_up[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(30),
	datad => VCC,
	cin => \modul|tau_up[29]~85\,
	combout => \modul|tau_up[30]~86_combout\,
	cout => \modul|tau_up[30]~87\);

-- Location: FF_X13_Y14_N27
\modul|tau_up[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(30));

-- Location: LCCOMB_X13_Y14_N28
\modul|tau_up[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_up[31]~88_combout\ = \modul|tau_up[30]~87\ $ (\modul|tau_up\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \modul|tau_up\(31),
	cin => \modul|tau_up[30]~87\,
	combout => \modul|tau_up[31]~88_combout\);

-- Location: FF_X13_Y14_N29
\modul|tau_up[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \antirrebote_up|Equal0~clkctrl_outclk\,
	d => \modul|tau_up[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modul|tau_up\(31));

-- Location: LCCOMB_X12_Y15_N2
\modul|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~0_combout\ = \modul|tau_up\(2) $ (VCC)
-- \modul|Add2~1\ = CARRY(\modul|tau_up\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(2),
	datad => VCC,
	combout => \modul|Add2~0_combout\,
	cout => \modul|Add2~1\);

-- Location: LCCOMB_X12_Y15_N4
\modul|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~2_combout\ = (\modul|tau_up\(3) & (!\modul|Add2~1\)) # (!\modul|tau_up\(3) & ((\modul|Add2~1\) # (GND)))
-- \modul|Add2~3\ = CARRY((!\modul|Add2~1\) # (!\modul|tau_up\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(3),
	datad => VCC,
	cin => \modul|Add2~1\,
	combout => \modul|Add2~2_combout\,
	cout => \modul|Add2~3\);

-- Location: LCCOMB_X12_Y15_N6
\modul|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~4_combout\ = (\modul|tau_up\(4) & (\modul|Add2~3\ $ (GND))) # (!\modul|tau_up\(4) & (!\modul|Add2~3\ & VCC))
-- \modul|Add2~5\ = CARRY((\modul|tau_up\(4) & !\modul|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(4),
	datad => VCC,
	cin => \modul|Add2~3\,
	combout => \modul|Add2~4_combout\,
	cout => \modul|Add2~5\);

-- Location: LCCOMB_X12_Y15_N8
\modul|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~6_combout\ = (\modul|tau_up\(5) & (!\modul|Add2~5\)) # (!\modul|tau_up\(5) & ((\modul|Add2~5\) # (GND)))
-- \modul|Add2~7\ = CARRY((!\modul|Add2~5\) # (!\modul|tau_up\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(5),
	datad => VCC,
	cin => \modul|Add2~5\,
	combout => \modul|Add2~6_combout\,
	cout => \modul|Add2~7\);

-- Location: LCCOMB_X12_Y15_N10
\modul|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~8_combout\ = (\modul|tau_up\(6) & (\modul|Add2~7\ $ (GND))) # (!\modul|tau_up\(6) & (!\modul|Add2~7\ & VCC))
-- \modul|Add2~9\ = CARRY((\modul|tau_up\(6) & !\modul|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(6),
	datad => VCC,
	cin => \modul|Add2~7\,
	combout => \modul|Add2~8_combout\,
	cout => \modul|Add2~9\);

-- Location: LCCOMB_X12_Y15_N12
\modul|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~10_combout\ = (\modul|tau_up\(7) & (!\modul|Add2~9\)) # (!\modul|tau_up\(7) & ((\modul|Add2~9\) # (GND)))
-- \modul|Add2~11\ = CARRY((!\modul|Add2~9\) # (!\modul|tau_up\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(7),
	datad => VCC,
	cin => \modul|Add2~9\,
	combout => \modul|Add2~10_combout\,
	cout => \modul|Add2~11\);

-- Location: LCCOMB_X12_Y15_N14
\modul|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~12_combout\ = (\modul|tau_up\(8) & (\modul|Add2~11\ $ (GND))) # (!\modul|tau_up\(8) & (!\modul|Add2~11\ & VCC))
-- \modul|Add2~13\ = CARRY((\modul|tau_up\(8) & !\modul|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(8),
	datad => VCC,
	cin => \modul|Add2~11\,
	combout => \modul|Add2~12_combout\,
	cout => \modul|Add2~13\);

-- Location: LCCOMB_X12_Y15_N16
\modul|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~14_combout\ = (\modul|tau_up\(9) & (!\modul|Add2~13\)) # (!\modul|tau_up\(9) & ((\modul|Add2~13\) # (GND)))
-- \modul|Add2~15\ = CARRY((!\modul|Add2~13\) # (!\modul|tau_up\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(9),
	datad => VCC,
	cin => \modul|Add2~13\,
	combout => \modul|Add2~14_combout\,
	cout => \modul|Add2~15\);

-- Location: LCCOMB_X12_Y15_N18
\modul|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~16_combout\ = (\modul|tau_up\(10) & (\modul|Add2~15\ $ (GND))) # (!\modul|tau_up\(10) & (!\modul|Add2~15\ & VCC))
-- \modul|Add2~17\ = CARRY((\modul|tau_up\(10) & !\modul|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(10),
	datad => VCC,
	cin => \modul|Add2~15\,
	combout => \modul|Add2~16_combout\,
	cout => \modul|Add2~17\);

-- Location: LCCOMB_X12_Y15_N20
\modul|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~18_combout\ = (\modul|tau_up\(11) & (!\modul|Add2~17\)) # (!\modul|tau_up\(11) & ((\modul|Add2~17\) # (GND)))
-- \modul|Add2~19\ = CARRY((!\modul|Add2~17\) # (!\modul|tau_up\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(11),
	datad => VCC,
	cin => \modul|Add2~17\,
	combout => \modul|Add2~18_combout\,
	cout => \modul|Add2~19\);

-- Location: LCCOMB_X12_Y15_N22
\modul|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~20_combout\ = (\modul|tau_up\(12) & (\modul|Add2~19\ $ (GND))) # (!\modul|tau_up\(12) & (!\modul|Add2~19\ & VCC))
-- \modul|Add2~21\ = CARRY((\modul|tau_up\(12) & !\modul|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(12),
	datad => VCC,
	cin => \modul|Add2~19\,
	combout => \modul|Add2~20_combout\,
	cout => \modul|Add2~21\);

-- Location: LCCOMB_X12_Y15_N24
\modul|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~22_combout\ = (\modul|tau_up\(13) & (!\modul|Add2~21\)) # (!\modul|tau_up\(13) & ((\modul|Add2~21\) # (GND)))
-- \modul|Add2~23\ = CARRY((!\modul|Add2~21\) # (!\modul|tau_up\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(13),
	datad => VCC,
	cin => \modul|Add2~21\,
	combout => \modul|Add2~22_combout\,
	cout => \modul|Add2~23\);

-- Location: LCCOMB_X12_Y15_N26
\modul|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~24_combout\ = (\modul|tau_up\(14) & (\modul|Add2~23\ $ (GND))) # (!\modul|tau_up\(14) & (!\modul|Add2~23\ & VCC))
-- \modul|Add2~25\ = CARRY((\modul|tau_up\(14) & !\modul|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(14),
	datad => VCC,
	cin => \modul|Add2~23\,
	combout => \modul|Add2~24_combout\,
	cout => \modul|Add2~25\);

-- Location: LCCOMB_X12_Y15_N28
\modul|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~26_combout\ = (\modul|tau_up\(15) & (!\modul|Add2~25\)) # (!\modul|tau_up\(15) & ((\modul|Add2~25\) # (GND)))
-- \modul|Add2~27\ = CARRY((!\modul|Add2~25\) # (!\modul|tau_up\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(15),
	datad => VCC,
	cin => \modul|Add2~25\,
	combout => \modul|Add2~26_combout\,
	cout => \modul|Add2~27\);

-- Location: LCCOMB_X12_Y15_N30
\modul|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~28_combout\ = (\modul|tau_up\(16) & (\modul|Add2~27\ $ (GND))) # (!\modul|tau_up\(16) & (!\modul|Add2~27\ & VCC))
-- \modul|Add2~29\ = CARRY((\modul|tau_up\(16) & !\modul|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(16),
	datad => VCC,
	cin => \modul|Add2~27\,
	combout => \modul|Add2~28_combout\,
	cout => \modul|Add2~29\);

-- Location: LCCOMB_X12_Y14_N0
\modul|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~30_combout\ = (\modul|tau_up\(17) & (!\modul|Add2~29\)) # (!\modul|tau_up\(17) & ((\modul|Add2~29\) # (GND)))
-- \modul|Add2~31\ = CARRY((!\modul|Add2~29\) # (!\modul|tau_up\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(17),
	datad => VCC,
	cin => \modul|Add2~29\,
	combout => \modul|Add2~30_combout\,
	cout => \modul|Add2~31\);

-- Location: LCCOMB_X12_Y14_N2
\modul|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~32_combout\ = (\modul|tau_up\(18) & (\modul|Add2~31\ $ (GND))) # (!\modul|tau_up\(18) & (!\modul|Add2~31\ & VCC))
-- \modul|Add2~33\ = CARRY((\modul|tau_up\(18) & !\modul|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(18),
	datad => VCC,
	cin => \modul|Add2~31\,
	combout => \modul|Add2~32_combout\,
	cout => \modul|Add2~33\);

-- Location: LCCOMB_X12_Y14_N4
\modul|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~34_combout\ = (\modul|tau_up\(19) & (!\modul|Add2~33\)) # (!\modul|tau_up\(19) & ((\modul|Add2~33\) # (GND)))
-- \modul|Add2~35\ = CARRY((!\modul|Add2~33\) # (!\modul|tau_up\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(19),
	datad => VCC,
	cin => \modul|Add2~33\,
	combout => \modul|Add2~34_combout\,
	cout => \modul|Add2~35\);

-- Location: LCCOMB_X12_Y14_N6
\modul|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~36_combout\ = (\modul|tau_up\(20) & (\modul|Add2~35\ $ (GND))) # (!\modul|tau_up\(20) & (!\modul|Add2~35\ & VCC))
-- \modul|Add2~37\ = CARRY((\modul|tau_up\(20) & !\modul|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(20),
	datad => VCC,
	cin => \modul|Add2~35\,
	combout => \modul|Add2~36_combout\,
	cout => \modul|Add2~37\);

-- Location: LCCOMB_X12_Y14_N8
\modul|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~38_combout\ = (\modul|tau_up\(21) & (!\modul|Add2~37\)) # (!\modul|tau_up\(21) & ((\modul|Add2~37\) # (GND)))
-- \modul|Add2~39\ = CARRY((!\modul|Add2~37\) # (!\modul|tau_up\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(21),
	datad => VCC,
	cin => \modul|Add2~37\,
	combout => \modul|Add2~38_combout\,
	cout => \modul|Add2~39\);

-- Location: LCCOMB_X12_Y14_N10
\modul|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~40_combout\ = (\modul|tau_up\(22) & (\modul|Add2~39\ $ (GND))) # (!\modul|tau_up\(22) & (!\modul|Add2~39\ & VCC))
-- \modul|Add2~41\ = CARRY((\modul|tau_up\(22) & !\modul|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(22),
	datad => VCC,
	cin => \modul|Add2~39\,
	combout => \modul|Add2~40_combout\,
	cout => \modul|Add2~41\);

-- Location: LCCOMB_X12_Y14_N12
\modul|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~42_combout\ = (\modul|tau_up\(23) & (!\modul|Add2~41\)) # (!\modul|tau_up\(23) & ((\modul|Add2~41\) # (GND)))
-- \modul|Add2~43\ = CARRY((!\modul|Add2~41\) # (!\modul|tau_up\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(23),
	datad => VCC,
	cin => \modul|Add2~41\,
	combout => \modul|Add2~42_combout\,
	cout => \modul|Add2~43\);

-- Location: LCCOMB_X12_Y14_N14
\modul|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~44_combout\ = (\modul|tau_up\(24) & (\modul|Add2~43\ $ (GND))) # (!\modul|tau_up\(24) & (!\modul|Add2~43\ & VCC))
-- \modul|Add2~45\ = CARRY((\modul|tau_up\(24) & !\modul|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(24),
	datad => VCC,
	cin => \modul|Add2~43\,
	combout => \modul|Add2~44_combout\,
	cout => \modul|Add2~45\);

-- Location: LCCOMB_X12_Y14_N16
\modul|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~46_combout\ = (\modul|tau_up\(25) & (!\modul|Add2~45\)) # (!\modul|tau_up\(25) & ((\modul|Add2~45\) # (GND)))
-- \modul|Add2~47\ = CARRY((!\modul|Add2~45\) # (!\modul|tau_up\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(25),
	datad => VCC,
	cin => \modul|Add2~45\,
	combout => \modul|Add2~46_combout\,
	cout => \modul|Add2~47\);

-- Location: LCCOMB_X12_Y14_N18
\modul|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~48_combout\ = (\modul|tau_up\(26) & (\modul|Add2~47\ $ (GND))) # (!\modul|tau_up\(26) & (!\modul|Add2~47\ & VCC))
-- \modul|Add2~49\ = CARRY((\modul|tau_up\(26) & !\modul|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(26),
	datad => VCC,
	cin => \modul|Add2~47\,
	combout => \modul|Add2~48_combout\,
	cout => \modul|Add2~49\);

-- Location: LCCOMB_X12_Y14_N20
\modul|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~50_combout\ = (\modul|tau_up\(27) & (!\modul|Add2~49\)) # (!\modul|tau_up\(27) & ((\modul|Add2~49\) # (GND)))
-- \modul|Add2~51\ = CARRY((!\modul|Add2~49\) # (!\modul|tau_up\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_up\(27),
	datad => VCC,
	cin => \modul|Add2~49\,
	combout => \modul|Add2~50_combout\,
	cout => \modul|Add2~51\);

-- Location: LCCOMB_X12_Y14_N22
\modul|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~52_combout\ = (\modul|tau_up\(28) & (\modul|Add2~51\ $ (GND))) # (!\modul|tau_up\(28) & (!\modul|Add2~51\ & VCC))
-- \modul|Add2~53\ = CARRY((\modul|tau_up\(28) & !\modul|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(28),
	datad => VCC,
	cin => \modul|Add2~51\,
	combout => \modul|Add2~52_combout\,
	cout => \modul|Add2~53\);

-- Location: LCCOMB_X12_Y14_N24
\modul|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~54_combout\ = (\modul|tau_up\(29) & (!\modul|Add2~53\)) # (!\modul|tau_up\(29) & ((\modul|Add2~53\) # (GND)))
-- \modul|Add2~55\ = CARRY((!\modul|Add2~53\) # (!\modul|tau_up\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(29),
	datad => VCC,
	cin => \modul|Add2~53\,
	combout => \modul|Add2~54_combout\,
	cout => \modul|Add2~55\);

-- Location: LCCOMB_X12_Y14_N26
\modul|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~56_combout\ = (\modul|tau_up\(30) & (\modul|Add2~55\ $ (GND))) # (!\modul|tau_up\(30) & (!\modul|Add2~55\ & VCC))
-- \modul|Add2~57\ = CARRY((\modul|tau_up\(30) & !\modul|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_up\(30),
	datad => VCC,
	cin => \modul|Add2~55\,
	combout => \modul|Add2~56_combout\,
	cout => \modul|Add2~57\);

-- Location: LCCOMB_X12_Y14_N28
\modul|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add2~58_combout\ = \modul|Add2~57\ $ (\modul|tau_up\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \modul|tau_up\(31),
	cin => \modul|Add2~57\,
	combout => \modul|Add2~58_combout\);

-- Location: LCCOMB_X11_Y15_N4
\modul|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~2_combout\ = (\modul|Add2~0_combout\ & ((\modul|tau_down\(2) & (\modul|Add3~1\ & VCC)) # (!\modul|tau_down\(2) & (!\modul|Add3~1\)))) # (!\modul|Add2~0_combout\ & ((\modul|tau_down\(2) & (!\modul|Add3~1\)) # (!\modul|tau_down\(2) & 
-- ((\modul|Add3~1\) # (GND)))))
-- \modul|Add3~3\ = CARRY((\modul|Add2~0_combout\ & (!\modul|tau_down\(2) & !\modul|Add3~1\)) # (!\modul|Add2~0_combout\ & ((!\modul|Add3~1\) # (!\modul|tau_down\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~0_combout\,
	datab => \modul|tau_down\(2),
	datad => VCC,
	cin => \modul|Add3~1\,
	combout => \modul|Add3~2_combout\,
	cout => \modul|Add3~3\);

-- Location: LCCOMB_X11_Y15_N6
\modul|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~4_combout\ = ((\modul|Add2~2_combout\ $ (\modul|tau_down\(3) $ (!\modul|Add3~3\)))) # (GND)
-- \modul|Add3~5\ = CARRY((\modul|Add2~2_combout\ & ((\modul|tau_down\(3)) # (!\modul|Add3~3\))) # (!\modul|Add2~2_combout\ & (\modul|tau_down\(3) & !\modul|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~2_combout\,
	datab => \modul|tau_down\(3),
	datad => VCC,
	cin => \modul|Add3~3\,
	combout => \modul|Add3~4_combout\,
	cout => \modul|Add3~5\);

-- Location: LCCOMB_X11_Y15_N8
\modul|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~6_combout\ = (\modul|Add2~4_combout\ & ((\modul|tau_down\(4) & (\modul|Add3~5\ & VCC)) # (!\modul|tau_down\(4) & (!\modul|Add3~5\)))) # (!\modul|Add2~4_combout\ & ((\modul|tau_down\(4) & (!\modul|Add3~5\)) # (!\modul|tau_down\(4) & 
-- ((\modul|Add3~5\) # (GND)))))
-- \modul|Add3~7\ = CARRY((\modul|Add2~4_combout\ & (!\modul|tau_down\(4) & !\modul|Add3~5\)) # (!\modul|Add2~4_combout\ & ((!\modul|Add3~5\) # (!\modul|tau_down\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~4_combout\,
	datab => \modul|tau_down\(4),
	datad => VCC,
	cin => \modul|Add3~5\,
	combout => \modul|Add3~6_combout\,
	cout => \modul|Add3~7\);

-- Location: LCCOMB_X11_Y15_N10
\modul|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~8_combout\ = ((\modul|tau_down\(5) $ (\modul|Add2~6_combout\ $ (!\modul|Add3~7\)))) # (GND)
-- \modul|Add3~9\ = CARRY((\modul|tau_down\(5) & ((\modul|Add2~6_combout\) # (!\modul|Add3~7\))) # (!\modul|tau_down\(5) & (\modul|Add2~6_combout\ & !\modul|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(5),
	datab => \modul|Add2~6_combout\,
	datad => VCC,
	cin => \modul|Add3~7\,
	combout => \modul|Add3~8_combout\,
	cout => \modul|Add3~9\);

-- Location: LCCOMB_X11_Y15_N12
\modul|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~10_combout\ = (\modul|tau_down\(6) & ((\modul|Add2~8_combout\ & (\modul|Add3~9\ & VCC)) # (!\modul|Add2~8_combout\ & (!\modul|Add3~9\)))) # (!\modul|tau_down\(6) & ((\modul|Add2~8_combout\ & (!\modul|Add3~9\)) # (!\modul|Add2~8_combout\ & 
-- ((\modul|Add3~9\) # (GND)))))
-- \modul|Add3~11\ = CARRY((\modul|tau_down\(6) & (!\modul|Add2~8_combout\ & !\modul|Add3~9\)) # (!\modul|tau_down\(6) & ((!\modul|Add3~9\) # (!\modul|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(6),
	datab => \modul|Add2~8_combout\,
	datad => VCC,
	cin => \modul|Add3~9\,
	combout => \modul|Add3~10_combout\,
	cout => \modul|Add3~11\);

-- Location: LCCOMB_X11_Y15_N14
\modul|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~12_combout\ = ((\modul|tau_down\(7) $ (\modul|Add2~10_combout\ $ (!\modul|Add3~11\)))) # (GND)
-- \modul|Add3~13\ = CARRY((\modul|tau_down\(7) & ((\modul|Add2~10_combout\) # (!\modul|Add3~11\))) # (!\modul|tau_down\(7) & (\modul|Add2~10_combout\ & !\modul|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(7),
	datab => \modul|Add2~10_combout\,
	datad => VCC,
	cin => \modul|Add3~11\,
	combout => \modul|Add3~12_combout\,
	cout => \modul|Add3~13\);

-- Location: LCCOMB_X11_Y15_N16
\modul|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~14_combout\ = (\modul|tau_down\(8) & ((\modul|Add2~12_combout\ & (\modul|Add3~13\ & VCC)) # (!\modul|Add2~12_combout\ & (!\modul|Add3~13\)))) # (!\modul|tau_down\(8) & ((\modul|Add2~12_combout\ & (!\modul|Add3~13\)) # (!\modul|Add2~12_combout\ 
-- & ((\modul|Add3~13\) # (GND)))))
-- \modul|Add3~15\ = CARRY((\modul|tau_down\(8) & (!\modul|Add2~12_combout\ & !\modul|Add3~13\)) # (!\modul|tau_down\(8) & ((!\modul|Add3~13\) # (!\modul|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(8),
	datab => \modul|Add2~12_combout\,
	datad => VCC,
	cin => \modul|Add3~13\,
	combout => \modul|Add3~14_combout\,
	cout => \modul|Add3~15\);

-- Location: LCCOMB_X11_Y15_N18
\modul|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~16_combout\ = ((\modul|tau_down\(9) $ (\modul|Add2~14_combout\ $ (!\modul|Add3~15\)))) # (GND)
-- \modul|Add3~17\ = CARRY((\modul|tau_down\(9) & ((\modul|Add2~14_combout\) # (!\modul|Add3~15\))) # (!\modul|tau_down\(9) & (\modul|Add2~14_combout\ & !\modul|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(9),
	datab => \modul|Add2~14_combout\,
	datad => VCC,
	cin => \modul|Add3~15\,
	combout => \modul|Add3~16_combout\,
	cout => \modul|Add3~17\);

-- Location: LCCOMB_X11_Y15_N20
\modul|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~18_combout\ = (\modul|tau_down\(10) & ((\modul|Add2~16_combout\ & (\modul|Add3~17\ & VCC)) # (!\modul|Add2~16_combout\ & (!\modul|Add3~17\)))) # (!\modul|tau_down\(10) & ((\modul|Add2~16_combout\ & (!\modul|Add3~17\)) # 
-- (!\modul|Add2~16_combout\ & ((\modul|Add3~17\) # (GND)))))
-- \modul|Add3~19\ = CARRY((\modul|tau_down\(10) & (!\modul|Add2~16_combout\ & !\modul|Add3~17\)) # (!\modul|tau_down\(10) & ((!\modul|Add3~17\) # (!\modul|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(10),
	datab => \modul|Add2~16_combout\,
	datad => VCC,
	cin => \modul|Add3~17\,
	combout => \modul|Add3~18_combout\,
	cout => \modul|Add3~19\);

-- Location: LCCOMB_X11_Y15_N22
\modul|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~20_combout\ = ((\modul|Add2~18_combout\ $ (\modul|tau_down\(11) $ (!\modul|Add3~19\)))) # (GND)
-- \modul|Add3~21\ = CARRY((\modul|Add2~18_combout\ & ((\modul|tau_down\(11)) # (!\modul|Add3~19\))) # (!\modul|Add2~18_combout\ & (\modul|tau_down\(11) & !\modul|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~18_combout\,
	datab => \modul|tau_down\(11),
	datad => VCC,
	cin => \modul|Add3~19\,
	combout => \modul|Add3~20_combout\,
	cout => \modul|Add3~21\);

-- Location: LCCOMB_X11_Y15_N24
\modul|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~22_combout\ = (\modul|tau_down\(12) & ((\modul|Add2~20_combout\ & (\modul|Add3~21\ & VCC)) # (!\modul|Add2~20_combout\ & (!\modul|Add3~21\)))) # (!\modul|tau_down\(12) & ((\modul|Add2~20_combout\ & (!\modul|Add3~21\)) # 
-- (!\modul|Add2~20_combout\ & ((\modul|Add3~21\) # (GND)))))
-- \modul|Add3~23\ = CARRY((\modul|tau_down\(12) & (!\modul|Add2~20_combout\ & !\modul|Add3~21\)) # (!\modul|tau_down\(12) & ((!\modul|Add3~21\) # (!\modul|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(12),
	datab => \modul|Add2~20_combout\,
	datad => VCC,
	cin => \modul|Add3~21\,
	combout => \modul|Add3~22_combout\,
	cout => \modul|Add3~23\);

-- Location: LCCOMB_X11_Y15_N26
\modul|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~24_combout\ = ((\modul|tau_down\(13) $ (\modul|Add2~22_combout\ $ (!\modul|Add3~23\)))) # (GND)
-- \modul|Add3~25\ = CARRY((\modul|tau_down\(13) & ((\modul|Add2~22_combout\) # (!\modul|Add3~23\))) # (!\modul|tau_down\(13) & (\modul|Add2~22_combout\ & !\modul|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(13),
	datab => \modul|Add2~22_combout\,
	datad => VCC,
	cin => \modul|Add3~23\,
	combout => \modul|Add3~24_combout\,
	cout => \modul|Add3~25\);

-- Location: LCCOMB_X11_Y15_N28
\modul|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~26_combout\ = (\modul|tau_down\(14) & ((\modul|Add2~24_combout\ & (\modul|Add3~25\ & VCC)) # (!\modul|Add2~24_combout\ & (!\modul|Add3~25\)))) # (!\modul|tau_down\(14) & ((\modul|Add2~24_combout\ & (!\modul|Add3~25\)) # 
-- (!\modul|Add2~24_combout\ & ((\modul|Add3~25\) # (GND)))))
-- \modul|Add3~27\ = CARRY((\modul|tau_down\(14) & (!\modul|Add2~24_combout\ & !\modul|Add3~25\)) # (!\modul|tau_down\(14) & ((!\modul|Add3~25\) # (!\modul|Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(14),
	datab => \modul|Add2~24_combout\,
	datad => VCC,
	cin => \modul|Add3~25\,
	combout => \modul|Add3~26_combout\,
	cout => \modul|Add3~27\);

-- Location: LCCOMB_X11_Y15_N30
\modul|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~28_combout\ = ((\modul|tau_down\(15) $ (\modul|Add2~26_combout\ $ (!\modul|Add3~27\)))) # (GND)
-- \modul|Add3~29\ = CARRY((\modul|tau_down\(15) & ((\modul|Add2~26_combout\) # (!\modul|Add3~27\))) # (!\modul|tau_down\(15) & (\modul|Add2~26_combout\ & !\modul|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(15),
	datab => \modul|Add2~26_combout\,
	datad => VCC,
	cin => \modul|Add3~27\,
	combout => \modul|Add3~28_combout\,
	cout => \modul|Add3~29\);

-- Location: LCCOMB_X11_Y14_N0
\modul|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~30_combout\ = (\modul|tau_down\(16) & ((\modul|Add2~28_combout\ & (\modul|Add3~29\ & VCC)) # (!\modul|Add2~28_combout\ & (!\modul|Add3~29\)))) # (!\modul|tau_down\(16) & ((\modul|Add2~28_combout\ & (!\modul|Add3~29\)) # 
-- (!\modul|Add2~28_combout\ & ((\modul|Add3~29\) # (GND)))))
-- \modul|Add3~31\ = CARRY((\modul|tau_down\(16) & (!\modul|Add2~28_combout\ & !\modul|Add3~29\)) # (!\modul|tau_down\(16) & ((!\modul|Add3~29\) # (!\modul|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(16),
	datab => \modul|Add2~28_combout\,
	datad => VCC,
	cin => \modul|Add3~29\,
	combout => \modul|Add3~30_combout\,
	cout => \modul|Add3~31\);

-- Location: LCCOMB_X11_Y14_N2
\modul|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~32_combout\ = ((\modul|tau_down\(17) $ (\modul|Add2~30_combout\ $ (!\modul|Add3~31\)))) # (GND)
-- \modul|Add3~33\ = CARRY((\modul|tau_down\(17) & ((\modul|Add2~30_combout\) # (!\modul|Add3~31\))) # (!\modul|tau_down\(17) & (\modul|Add2~30_combout\ & !\modul|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(17),
	datab => \modul|Add2~30_combout\,
	datad => VCC,
	cin => \modul|Add3~31\,
	combout => \modul|Add3~32_combout\,
	cout => \modul|Add3~33\);

-- Location: LCCOMB_X11_Y14_N4
\modul|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~34_combout\ = (\modul|Add2~32_combout\ & ((\modul|tau_down\(18) & (\modul|Add3~33\ & VCC)) # (!\modul|tau_down\(18) & (!\modul|Add3~33\)))) # (!\modul|Add2~32_combout\ & ((\modul|tau_down\(18) & (!\modul|Add3~33\)) # (!\modul|tau_down\(18) & 
-- ((\modul|Add3~33\) # (GND)))))
-- \modul|Add3~35\ = CARRY((\modul|Add2~32_combout\ & (!\modul|tau_down\(18) & !\modul|Add3~33\)) # (!\modul|Add2~32_combout\ & ((!\modul|Add3~33\) # (!\modul|tau_down\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~32_combout\,
	datab => \modul|tau_down\(18),
	datad => VCC,
	cin => \modul|Add3~33\,
	combout => \modul|Add3~34_combout\,
	cout => \modul|Add3~35\);

-- Location: LCCOMB_X11_Y14_N6
\modul|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~36_combout\ = ((\modul|Add2~34_combout\ $ (\modul|tau_down\(19) $ (!\modul|Add3~35\)))) # (GND)
-- \modul|Add3~37\ = CARRY((\modul|Add2~34_combout\ & ((\modul|tau_down\(19)) # (!\modul|Add3~35\))) # (!\modul|Add2~34_combout\ & (\modul|tau_down\(19) & !\modul|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~34_combout\,
	datab => \modul|tau_down\(19),
	datad => VCC,
	cin => \modul|Add3~35\,
	combout => \modul|Add3~36_combout\,
	cout => \modul|Add3~37\);

-- Location: LCCOMB_X11_Y14_N8
\modul|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~38_combout\ = (\modul|Add2~36_combout\ & ((\modul|tau_down\(20) & (\modul|Add3~37\ & VCC)) # (!\modul|tau_down\(20) & (!\modul|Add3~37\)))) # (!\modul|Add2~36_combout\ & ((\modul|tau_down\(20) & (!\modul|Add3~37\)) # (!\modul|tau_down\(20) & 
-- ((\modul|Add3~37\) # (GND)))))
-- \modul|Add3~39\ = CARRY((\modul|Add2~36_combout\ & (!\modul|tau_down\(20) & !\modul|Add3~37\)) # (!\modul|Add2~36_combout\ & ((!\modul|Add3~37\) # (!\modul|tau_down\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~36_combout\,
	datab => \modul|tau_down\(20),
	datad => VCC,
	cin => \modul|Add3~37\,
	combout => \modul|Add3~38_combout\,
	cout => \modul|Add3~39\);

-- Location: LCCOMB_X11_Y14_N10
\modul|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~40_combout\ = ((\modul|tau_down\(21) $ (\modul|Add2~38_combout\ $ (!\modul|Add3~39\)))) # (GND)
-- \modul|Add3~41\ = CARRY((\modul|tau_down\(21) & ((\modul|Add2~38_combout\) # (!\modul|Add3~39\))) # (!\modul|tau_down\(21) & (\modul|Add2~38_combout\ & !\modul|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(21),
	datab => \modul|Add2~38_combout\,
	datad => VCC,
	cin => \modul|Add3~39\,
	combout => \modul|Add3~40_combout\,
	cout => \modul|Add3~41\);

-- Location: LCCOMB_X11_Y14_N12
\modul|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~42_combout\ = (\modul|tau_down\(22) & ((\modul|Add2~40_combout\ & (\modul|Add3~41\ & VCC)) # (!\modul|Add2~40_combout\ & (!\modul|Add3~41\)))) # (!\modul|tau_down\(22) & ((\modul|Add2~40_combout\ & (!\modul|Add3~41\)) # 
-- (!\modul|Add2~40_combout\ & ((\modul|Add3~41\) # (GND)))))
-- \modul|Add3~43\ = CARRY((\modul|tau_down\(22) & (!\modul|Add2~40_combout\ & !\modul|Add3~41\)) # (!\modul|tau_down\(22) & ((!\modul|Add3~41\) # (!\modul|Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(22),
	datab => \modul|Add2~40_combout\,
	datad => VCC,
	cin => \modul|Add3~41\,
	combout => \modul|Add3~42_combout\,
	cout => \modul|Add3~43\);

-- Location: LCCOMB_X11_Y14_N14
\modul|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~44_combout\ = ((\modul|tau_down\(23) $ (\modul|Add2~42_combout\ $ (!\modul|Add3~43\)))) # (GND)
-- \modul|Add3~45\ = CARRY((\modul|tau_down\(23) & ((\modul|Add2~42_combout\) # (!\modul|Add3~43\))) # (!\modul|tau_down\(23) & (\modul|Add2~42_combout\ & !\modul|Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(23),
	datab => \modul|Add2~42_combout\,
	datad => VCC,
	cin => \modul|Add3~43\,
	combout => \modul|Add3~44_combout\,
	cout => \modul|Add3~45\);

-- Location: LCCOMB_X11_Y14_N16
\modul|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~46_combout\ = (\modul|tau_down\(24) & ((\modul|Add2~44_combout\ & (\modul|Add3~45\ & VCC)) # (!\modul|Add2~44_combout\ & (!\modul|Add3~45\)))) # (!\modul|tau_down\(24) & ((\modul|Add2~44_combout\ & (!\modul|Add3~45\)) # 
-- (!\modul|Add2~44_combout\ & ((\modul|Add3~45\) # (GND)))))
-- \modul|Add3~47\ = CARRY((\modul|tau_down\(24) & (!\modul|Add2~44_combout\ & !\modul|Add3~45\)) # (!\modul|tau_down\(24) & ((!\modul|Add3~45\) # (!\modul|Add2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(24),
	datab => \modul|Add2~44_combout\,
	datad => VCC,
	cin => \modul|Add3~45\,
	combout => \modul|Add3~46_combout\,
	cout => \modul|Add3~47\);

-- Location: LCCOMB_X11_Y14_N18
\modul|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~48_combout\ = ((\modul|tau_down\(25) $ (\modul|Add2~46_combout\ $ (!\modul|Add3~47\)))) # (GND)
-- \modul|Add3~49\ = CARRY((\modul|tau_down\(25) & ((\modul|Add2~46_combout\) # (!\modul|Add3~47\))) # (!\modul|tau_down\(25) & (\modul|Add2~46_combout\ & !\modul|Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(25),
	datab => \modul|Add2~46_combout\,
	datad => VCC,
	cin => \modul|Add3~47\,
	combout => \modul|Add3~48_combout\,
	cout => \modul|Add3~49\);

-- Location: LCCOMB_X11_Y14_N20
\modul|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~50_combout\ = (\modul|tau_down\(26) & ((\modul|Add2~48_combout\ & (\modul|Add3~49\ & VCC)) # (!\modul|Add2~48_combout\ & (!\modul|Add3~49\)))) # (!\modul|tau_down\(26) & ((\modul|Add2~48_combout\ & (!\modul|Add3~49\)) # 
-- (!\modul|Add2~48_combout\ & ((\modul|Add3~49\) # (GND)))))
-- \modul|Add3~51\ = CARRY((\modul|tau_down\(26) & (!\modul|Add2~48_combout\ & !\modul|Add3~49\)) # (!\modul|tau_down\(26) & ((!\modul|Add3~49\) # (!\modul|Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(26),
	datab => \modul|Add2~48_combout\,
	datad => VCC,
	cin => \modul|Add3~49\,
	combout => \modul|Add3~50_combout\,
	cout => \modul|Add3~51\);

-- Location: LCCOMB_X11_Y14_N22
\modul|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~52_combout\ = ((\modul|Add2~50_combout\ $ (\modul|tau_down\(27) $ (!\modul|Add3~51\)))) # (GND)
-- \modul|Add3~53\ = CARRY((\modul|Add2~50_combout\ & ((\modul|tau_down\(27)) # (!\modul|Add3~51\))) # (!\modul|Add2~50_combout\ & (\modul|tau_down\(27) & !\modul|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~50_combout\,
	datab => \modul|tau_down\(27),
	datad => VCC,
	cin => \modul|Add3~51\,
	combout => \modul|Add3~52_combout\,
	cout => \modul|Add3~53\);

-- Location: LCCOMB_X11_Y14_N24
\modul|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~54_combout\ = (\modul|tau_down\(28) & ((\modul|Add2~52_combout\ & (\modul|Add3~53\ & VCC)) # (!\modul|Add2~52_combout\ & (!\modul|Add3~53\)))) # (!\modul|tau_down\(28) & ((\modul|Add2~52_combout\ & (!\modul|Add3~53\)) # 
-- (!\modul|Add2~52_combout\ & ((\modul|Add3~53\) # (GND)))))
-- \modul|Add3~55\ = CARRY((\modul|tau_down\(28) & (!\modul|Add2~52_combout\ & !\modul|Add3~53\)) # (!\modul|tau_down\(28) & ((!\modul|Add3~53\) # (!\modul|Add2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(28),
	datab => \modul|Add2~52_combout\,
	datad => VCC,
	cin => \modul|Add3~53\,
	combout => \modul|Add3~54_combout\,
	cout => \modul|Add3~55\);

-- Location: LCCOMB_X11_Y14_N26
\modul|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~56_combout\ = ((\modul|tau_down\(29) $ (\modul|Add2~54_combout\ $ (!\modul|Add3~55\)))) # (GND)
-- \modul|Add3~57\ = CARRY((\modul|tau_down\(29) & ((\modul|Add2~54_combout\) # (!\modul|Add3~55\))) # (!\modul|tau_down\(29) & (\modul|Add2~54_combout\ & !\modul|Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_down\(29),
	datab => \modul|Add2~54_combout\,
	datad => VCC,
	cin => \modul|Add3~55\,
	combout => \modul|Add3~56_combout\,
	cout => \modul|Add3~57\);

-- Location: LCCOMB_X11_Y14_N28
\modul|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~58_combout\ = (\modul|Add2~56_combout\ & ((\modul|tau_down\(30) & (\modul|Add3~57\ & VCC)) # (!\modul|tau_down\(30) & (!\modul|Add3~57\)))) # (!\modul|Add2~56_combout\ & ((\modul|tau_down\(30) & (!\modul|Add3~57\)) # (!\modul|tau_down\(30) & 
-- ((\modul|Add3~57\) # (GND)))))
-- \modul|Add3~59\ = CARRY((\modul|Add2~56_combout\ & (!\modul|tau_down\(30) & !\modul|Add3~57\)) # (!\modul|Add2~56_combout\ & ((!\modul|Add3~57\) # (!\modul|tau_down\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add2~56_combout\,
	datab => \modul|tau_down\(30),
	datad => VCC,
	cin => \modul|Add3~57\,
	combout => \modul|Add3~58_combout\,
	cout => \modul|Add3~59\);

-- Location: LCCOMB_X11_Y14_N30
\modul|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|Add3~60_combout\ = \modul|tau_down\(31) $ (\modul|Add3~59\ $ (\modul|Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_down\(31),
	datad => \modul|Add2~58_combout\,
	cin => \modul|Add3~59\,
	combout => \modul|Add3~60_combout\);

-- Location: LCCOMB_X11_Y10_N12
\modul|tau_f3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~7_combout\ = (\modul|Add3~48_combout\) # ((\modul|Add3~50_combout\) # ((\modul|Add3~52_combout\) # (\modul|Add3~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~48_combout\,
	datab => \modul|Add3~50_combout\,
	datac => \modul|Add3~52_combout\,
	datad => \modul|Add3~54_combout\,
	combout => \modul|tau_f3~7_combout\);

-- Location: LCCOMB_X12_Y10_N12
\modul|tau_f3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~5_combout\ = (\modul|Add3~32_combout\) # ((\modul|Add3~34_combout\) # ((\modul|Add3~36_combout\) # (\modul|Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~32_combout\,
	datab => \modul|Add3~34_combout\,
	datac => \modul|Add3~36_combout\,
	datad => \modul|Add3~38_combout\,
	combout => \modul|tau_f3~5_combout\);

-- Location: LCCOMB_X11_Y10_N26
\modul|tau_f3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~8_combout\ = (\modul|Add3~58_combout\) # (\modul|Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modul|Add3~58_combout\,
	datad => \modul|Add3~56_combout\,
	combout => \modul|tau_f3~8_combout\);

-- Location: LCCOMB_X10_Y10_N24
\modul|tau_f3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~6_combout\ = (\modul|Add3~42_combout\) # ((\modul|Add3~40_combout\) # ((\modul|Add3~44_combout\) # (\modul|Add3~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~42_combout\,
	datab => \modul|Add3~40_combout\,
	datac => \modul|Add3~44_combout\,
	datad => \modul|Add3~46_combout\,
	combout => \modul|tau_f3~6_combout\);

-- Location: LCCOMB_X11_Y10_N8
\modul|tau_f3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~9_combout\ = (\modul|tau_f3~7_combout\) # ((\modul|tau_f3~5_combout\) # ((\modul|tau_f3~8_combout\) # (\modul|tau_f3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_f3~7_combout\,
	datab => \modul|tau_f3~5_combout\,
	datac => \modul|tau_f3~8_combout\,
	datad => \modul|tau_f3~6_combout\,
	combout => \modul|tau_f3~9_combout\);

-- Location: LCCOMB_X12_Y15_N0
\modul|tau_f3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~0_combout\ = (\modul|Add3~10_combout\) # ((\modul|Add3~8_combout\) # ((\modul|Add3~14_combout\) # (\modul|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~10_combout\,
	datab => \modul|Add3~8_combout\,
	datac => \modul|Add3~14_combout\,
	datad => \modul|Add3~12_combout\,
	combout => \modul|tau_f3~0_combout\);

-- Location: LCCOMB_X11_Y15_N0
\modul|tau_f3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~1_combout\ = (\modul|Add3~20_combout\) # ((\modul|Add3~22_combout\) # ((\modul|Add3~4_combout\ & \modul|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~4_combout\,
	datab => \modul|Add3~2_combout\,
	datac => \modul|Add3~20_combout\,
	datad => \modul|Add3~22_combout\,
	combout => \modul|tau_f3~1_combout\);

-- Location: LCCOMB_X11_Y13_N28
\modul|tau_f3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~2_combout\ = (\modul|Add3~16_combout\) # ((\modul|Add3~18_combout\) # ((\modul|tau_f3~1_combout\) # (\modul|Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~16_combout\,
	datab => \modul|Add3~18_combout\,
	datac => \modul|tau_f3~1_combout\,
	datad => \modul|Add3~30_combout\,
	combout => \modul|tau_f3~2_combout\);

-- Location: LCCOMB_X11_Y13_N14
\modul|tau_f3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~3_combout\ = (\modul|Add3~24_combout\) # ((\modul|Add3~26_combout\) # ((\modul|Add3~28_combout\) # (\modul|tau_f3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~24_combout\,
	datab => \modul|Add3~26_combout\,
	datac => \modul|Add3~28_combout\,
	datad => \modul|tau_f3~2_combout\,
	combout => \modul|tau_f3~3_combout\);

-- Location: LCCOMB_X11_Y10_N6
\modul|tau_f3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3~4_combout\ = (\modul|Add3~6_combout\) # (((\modul|tau_f3~0_combout\) # (\modul|tau_f3~3_combout\)) # (!\modul|Add3~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~6_combout\,
	datab => \modul|Add3~60_combout\,
	datac => \modul|tau_f3~0_combout\,
	datad => \modul|tau_f3~3_combout\,
	combout => \modul|tau_f3~4_combout\);

-- Location: LCCOMB_X11_Y10_N24
\modul|tau_f3[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3[1]~11_combout\ = (\modul|tau_f3~9_combout\ & (((\modul|Add3~60_combout\)))) # (!\modul|tau_f3~9_combout\ & ((\modul|tau_f3~4_combout\ & ((\modul|Add3~60_combout\))) # (!\modul|tau_f3~4_combout\ & (\modul|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~0_combout\,
	datab => \modul|Add3~60_combout\,
	datac => \modul|tau_f3~9_combout\,
	datad => \modul|tau_f3~4_combout\,
	combout => \modul|tau_f3[1]~11_combout\);

-- Location: LCCOMB_X11_Y10_N14
\modul|tau_f3[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3[3]~10_combout\ = (\modul|tau_f3~9_combout\ & (((\modul|Add3~60_combout\)))) # (!\modul|tau_f3~9_combout\ & ((\modul|tau_f3~4_combout\ & ((\modul|Add3~60_combout\))) # (!\modul|tau_f3~4_combout\ & (\modul|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~4_combout\,
	datab => \modul|Add3~60_combout\,
	datac => \modul|tau_f3~9_combout\,
	datad => \modul|tau_f3~4_combout\,
	combout => \modul|tau_f3[3]~10_combout\);

-- Location: LCCOMB_X11_Y10_N2
\modul|tau_f3[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \modul|tau_f3[2]~12_combout\ = (\modul|Add3~2_combout\ & (!\modul|tau_f3~9_combout\ & !\modul|tau_f3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|Add3~2_combout\,
	datac => \modul|tau_f3~9_combout\,
	datad => \modul|tau_f3~4_combout\,
	combout => \modul|tau_f3[2]~12_combout\);

-- Location: LCCOMB_X11_Y10_N4
\senal|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|process_0~0_combout\ = (!\modul|tau_f3[2]~12_combout\ & (\modul|tau_f3[1]~11_combout\ $ (!\modul|tau_f3[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modul|tau_f3[1]~11_combout\,
	datac => \modul|tau_f3[3]~10_combout\,
	datad => \modul|tau_f3[2]~12_combout\,
	combout => \senal|process_0~0_combout\);

-- Location: LCCOMB_X10_Y10_N18
\senal|n[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[24]~2_combout\ = (!\senal|LessThan0~10_combout\ & (\senal|Equal1~0_combout\ & \senal|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|LessThan0~10_combout\,
	datac => \senal|Equal1~0_combout\,
	datad => \senal|process_0~0_combout\,
	combout => \senal|n[24]~2_combout\);

-- Location: LCCOMB_X13_Y10_N0
\senal|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~0_combout\ = \senal|n\(0) $ (GND)
-- \senal|Add1~1\ = CARRY(!\senal|n\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(0),
	datad => VCC,
	combout => \senal|Add1~0_combout\,
	cout => \senal|Add1~1\);

-- Location: LCCOMB_X12_Y10_N8
\senal|n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n~4_combout\ = (\senal|LessThan0~10_combout\ & (\senal|Add1~0_combout\)) # (!\senal|LessThan0~10_combout\ & ((\senal|process_0~0_combout\ & ((!\senal|n\(0)))) # (!\senal|process_0~0_combout\ & (\senal|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|LessThan0~10_combout\,
	datab => \senal|Add1~0_combout\,
	datac => \senal|process_0~0_combout\,
	datad => \senal|n\(0),
	combout => \senal|n~4_combout\);

-- Location: LCCOMB_X10_Y10_N20
\senal|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~5_combout\ = (!\senal|n\(20) & (!\senal|n\(19) & (!\senal|n\(21) & !\senal|n\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(20),
	datab => \senal|n\(19),
	datac => \senal|n\(21),
	datad => \senal|n\(22),
	combout => \senal|LessThan0~5_combout\);

-- Location: LCCOMB_X9_Y10_N18
\senal|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~6_combout\ = (!\senal|n\(25) & (!\senal|n\(23) & (!\senal|n\(24) & !\senal|n\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(25),
	datab => \senal|n\(23),
	datac => \senal|n\(24),
	datad => \senal|n\(26),
	combout => \senal|LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y10_N24
\senal|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~7_combout\ = (!\senal|n\(30) & (!\senal|n\(27) & (!\senal|n\(29) & !\senal|n\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(30),
	datab => \senal|n\(27),
	datac => \senal|n\(29),
	datad => \senal|n\(28),
	combout => \senal|LessThan0~7_combout\);

-- Location: LCCOMB_X9_Y10_N22
\senal|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~1_combout\ = (!\senal|n\(7) & (!\senal|n\(10) & (!\senal|n\(9) & !\senal|n\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(7),
	datab => \senal|n\(10),
	datac => \senal|n\(9),
	datad => \senal|n\(8),
	combout => \senal|LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y10_N8
\senal|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~2_combout\ = (!\senal|n\(12) & (!\senal|n\(11) & (!\senal|n\(14) & !\senal|n\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(12),
	datab => \senal|n\(11),
	datac => \senal|n\(14),
	datad => \senal|n\(13),
	combout => \senal|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y10_N10
\senal|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~3_combout\ = (!\senal|n\(15) & (!\senal|n\(18) & (!\senal|n\(17) & !\senal|n\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(15),
	datab => \senal|n\(18),
	datac => \senal|n\(17),
	datad => \senal|n\(16),
	combout => \senal|LessThan0~3_combout\);

-- Location: LCCOMB_X9_Y10_N28
\senal|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~0_combout\ = (!\senal|n\(4) & (!\senal|n\(3) & (!\senal|n\(5) & !\senal|n\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(4),
	datab => \senal|n\(3),
	datac => \senal|n\(5),
	datad => \senal|n\(6),
	combout => \senal|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y10_N2
\senal|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~4_combout\ = (\senal|LessThan0~1_combout\ & (\senal|LessThan0~2_combout\ & (\senal|LessThan0~3_combout\ & \senal|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|LessThan0~1_combout\,
	datab => \senal|LessThan0~2_combout\,
	datac => \senal|LessThan0~3_combout\,
	datad => \senal|LessThan0~0_combout\,
	combout => \senal|LessThan0~4_combout\);

-- Location: LCCOMB_X9_Y10_N12
\senal|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~8_combout\ = (\senal|LessThan0~5_combout\ & (\senal|LessThan0~6_combout\ & (\senal|LessThan0~7_combout\ & \senal|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|LessThan0~5_combout\,
	datab => \senal|LessThan0~6_combout\,
	datac => \senal|LessThan0~7_combout\,
	datad => \senal|LessThan0~4_combout\,
	combout => \senal|LessThan0~8_combout\);

-- Location: LCCOMB_X11_Y10_N30
\senal|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Equal0~4_combout\ = (!\senal|n\(31) & (\senal|LessThan0~8_combout\ & (\senal|n\(1) $ (!\modul|tau_f3[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(31),
	datab => \senal|n\(1),
	datac => \senal|LessThan0~8_combout\,
	datad => \modul|tau_f3[2]~12_combout\,
	combout => \senal|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y10_N18
\senal|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Equal0~2_combout\ = (\senal|n\(2) & (\modul|tau_f3[3]~10_combout\ & (\senal|n\(0) $ (\modul|tau_f3[1]~11_combout\)))) # (!\senal|n\(2) & (!\modul|tau_f3[3]~10_combout\ & (\senal|n\(0) $ (\modul|tau_f3[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(2),
	datab => \senal|n\(0),
	datac => \modul|tau_f3[3]~10_combout\,
	datad => \modul|tau_f3[1]~11_combout\,
	combout => \senal|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y10_N10
\senal|n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n~0_combout\ = (!\senal|Equal1~0_combout\ & ((!\senal|Equal0~2_combout\) # (!\senal|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \senal|Equal1~0_combout\,
	datac => \senal|Equal0~4_combout\,
	datad => \senal|Equal0~2_combout\,
	combout => \senal|n~0_combout\);

-- Location: LCCOMB_X12_Y10_N16
\senal|n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n~5_combout\ = (!\senal|n~4_combout\ & ((\senal|process_0~0_combout\) # (!\senal|n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \senal|process_0~0_combout\,
	datac => \senal|n~4_combout\,
	datad => \senal|n~0_combout\,
	combout => \senal|n~5_combout\);

-- Location: FF_X12_Y10_N17
\senal|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(0));

-- Location: LCCOMB_X13_Y10_N2
\senal|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~2_combout\ = (\senal|n\(1) & (!\senal|Add1~1\)) # (!\senal|n\(1) & ((\senal|Add1~1\) # (GND)))
-- \senal|Add1~3\ = CARRY((!\senal|Add1~1\) # (!\senal|n\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(1),
	datad => VCC,
	cin => \senal|Add1~1\,
	combout => \senal|Add1~2_combout\,
	cout => \senal|Add1~3\);

-- Location: LCCOMB_X12_Y10_N0
\senal|n[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[1]~35_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~2_combout\) # ((\senal|n\(1) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(1) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~2_combout\,
	datac => \senal|n\(1),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[1]~35_combout\);

-- Location: FF_X12_Y10_N1
\senal|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(1));

-- Location: LCCOMB_X13_Y10_N4
\senal|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~4_combout\ = (\senal|n\(2) & (\senal|Add1~3\ $ (GND))) # (!\senal|n\(2) & (!\senal|Add1~3\ & VCC))
-- \senal|Add1~5\ = CARRY((\senal|n\(2) & !\senal|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(2),
	datad => VCC,
	cin => \senal|Add1~3\,
	combout => \senal|Add1~4_combout\,
	cout => \senal|Add1~5\);

-- Location: LCCOMB_X13_Y10_N6
\senal|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~6_combout\ = (\senal|n\(3) & (!\senal|Add1~5\)) # (!\senal|n\(3) & ((\senal|Add1~5\) # (GND)))
-- \senal|Add1~7\ = CARRY((!\senal|Add1~5\) # (!\senal|n\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(3),
	datad => VCC,
	cin => \senal|Add1~5\,
	combout => \senal|Add1~6_combout\,
	cout => \senal|Add1~7\);

-- Location: LCCOMB_X9_Y10_N0
\senal|n[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[3]~6_combout\ = (\senal|Add1~6_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(3))))) # (!\senal|Add1~6_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~6_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(3),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[3]~6_combout\);

-- Location: FF_X9_Y10_N1
\senal|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(3));

-- Location: LCCOMB_X13_Y10_N8
\senal|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~8_combout\ = (\senal|n\(4) & (\senal|Add1~7\ $ (GND))) # (!\senal|n\(4) & (!\senal|Add1~7\ & VCC))
-- \senal|Add1~9\ = CARRY((\senal|n\(4) & !\senal|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(4),
	datad => VCC,
	cin => \senal|Add1~7\,
	combout => \senal|Add1~8_combout\,
	cout => \senal|Add1~9\);

-- Location: LCCOMB_X9_Y10_N6
\senal|n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[4]~7_combout\ = (\senal|Add1~8_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(4))))) # (!\senal|Add1~8_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~8_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(4),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[4]~7_combout\);

-- Location: FF_X9_Y10_N7
\senal|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(4));

-- Location: LCCOMB_X13_Y10_N10
\senal|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~10_combout\ = (\senal|n\(5) & (!\senal|Add1~9\)) # (!\senal|n\(5) & ((\senal|Add1~9\) # (GND)))
-- \senal|Add1~11\ = CARRY((!\senal|Add1~9\) # (!\senal|n\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(5),
	datad => VCC,
	cin => \senal|Add1~9\,
	combout => \senal|Add1~10_combout\,
	cout => \senal|Add1~11\);

-- Location: LCCOMB_X12_Y10_N2
\senal|n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[5]~8_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~10_combout\) # ((\senal|n\(5) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(5) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~10_combout\,
	datac => \senal|n\(5),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[5]~8_combout\);

-- Location: FF_X12_Y10_N3
\senal|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(5));

-- Location: LCCOMB_X13_Y10_N12
\senal|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~12_combout\ = (\senal|n\(6) & (\senal|Add1~11\ $ (GND))) # (!\senal|n\(6) & (!\senal|Add1~11\ & VCC))
-- \senal|Add1~13\ = CARRY((\senal|n\(6) & !\senal|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(6),
	datad => VCC,
	cin => \senal|Add1~11\,
	combout => \senal|Add1~12_combout\,
	cout => \senal|Add1~13\);

-- Location: LCCOMB_X12_Y10_N28
\senal|n[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[6]~9_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~12_combout\) # ((\senal|n\(6) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(6) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~12_combout\,
	datac => \senal|n\(6),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[6]~9_combout\);

-- Location: FF_X12_Y10_N29
\senal|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(6));

-- Location: LCCOMB_X13_Y10_N14
\senal|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~14_combout\ = (\senal|n\(7) & (!\senal|Add1~13\)) # (!\senal|n\(7) & ((\senal|Add1~13\) # (GND)))
-- \senal|Add1~15\ = CARRY((!\senal|Add1~13\) # (!\senal|n\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(7),
	datad => VCC,
	cin => \senal|Add1~13\,
	combout => \senal|Add1~14_combout\,
	cout => \senal|Add1~15\);

-- Location: LCCOMB_X9_Y10_N10
\senal|n[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[7]~10_combout\ = (\senal|Add1~14_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(7))))) # (!\senal|Add1~14_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~14_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(7),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[7]~10_combout\);

-- Location: FF_X9_Y10_N11
\senal|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(7));

-- Location: LCCOMB_X13_Y10_N16
\senal|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~16_combout\ = (\senal|n\(8) & (\senal|Add1~15\ $ (GND))) # (!\senal|n\(8) & (!\senal|Add1~15\ & VCC))
-- \senal|Add1~17\ = CARRY((\senal|n\(8) & !\senal|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(8),
	datad => VCC,
	cin => \senal|Add1~15\,
	combout => \senal|Add1~16_combout\,
	cout => \senal|Add1~17\);

-- Location: LCCOMB_X10_Y10_N22
\senal|n[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[8]~11_combout\ = (\senal|Add1~16_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(8))))) # (!\senal|Add1~16_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~16_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(8),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[8]~11_combout\);

-- Location: FF_X10_Y10_N23
\senal|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(8));

-- Location: LCCOMB_X13_Y10_N18
\senal|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~18_combout\ = (\senal|n\(9) & (!\senal|Add1~17\)) # (!\senal|n\(9) & ((\senal|Add1~17\) # (GND)))
-- \senal|Add1~19\ = CARRY((!\senal|Add1~17\) # (!\senal|n\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(9),
	datad => VCC,
	cin => \senal|Add1~17\,
	combout => \senal|Add1~18_combout\,
	cout => \senal|Add1~19\);

-- Location: LCCOMB_X10_Y10_N12
\senal|n[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[9]~12_combout\ = (\senal|Add1~18_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(9))))) # (!\senal|Add1~18_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~18_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(9),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[9]~12_combout\);

-- Location: FF_X10_Y10_N13
\senal|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(9));

-- Location: LCCOMB_X13_Y10_N20
\senal|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~20_combout\ = (\senal|n\(10) & (\senal|Add1~19\ $ (GND))) # (!\senal|n\(10) & (!\senal|Add1~19\ & VCC))
-- \senal|Add1~21\ = CARRY((\senal|n\(10) & !\senal|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(10),
	datad => VCC,
	cin => \senal|Add1~19\,
	combout => \senal|Add1~20_combout\,
	cout => \senal|Add1~21\);

-- Location: LCCOMB_X9_Y10_N20
\senal|n[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[10]~13_combout\ = (\senal|Add1~20_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(10))))) # (!\senal|Add1~20_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~20_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(10),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[10]~13_combout\);

-- Location: FF_X9_Y10_N21
\senal|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(10));

-- Location: LCCOMB_X13_Y10_N22
\senal|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~22_combout\ = (\senal|n\(11) & (!\senal|Add1~21\)) # (!\senal|n\(11) & ((\senal|Add1~21\) # (GND)))
-- \senal|Add1~23\ = CARRY((!\senal|Add1~21\) # (!\senal|n\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(11),
	datad => VCC,
	cin => \senal|Add1~21\,
	combout => \senal|Add1~22_combout\,
	cout => \senal|Add1~23\);

-- Location: LCCOMB_X9_Y10_N16
\senal|n[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[11]~14_combout\ = (\senal|Add1~22_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(11))))) # (!\senal|Add1~22_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~22_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(11),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[11]~14_combout\);

-- Location: FF_X9_Y10_N17
\senal|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(11));

-- Location: LCCOMB_X13_Y10_N24
\senal|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~24_combout\ = (\senal|n\(12) & (\senal|Add1~23\ $ (GND))) # (!\senal|n\(12) & (!\senal|Add1~23\ & VCC))
-- \senal|Add1~25\ = CARRY((\senal|n\(12) & !\senal|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(12),
	datad => VCC,
	cin => \senal|Add1~23\,
	combout => \senal|Add1~24_combout\,
	cout => \senal|Add1~25\);

-- Location: LCCOMB_X9_Y10_N30
\senal|n[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[12]~15_combout\ = (\senal|Add1~24_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(12))))) # (!\senal|Add1~24_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~24_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(12),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[12]~15_combout\);

-- Location: FF_X9_Y10_N31
\senal|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(12));

-- Location: LCCOMB_X13_Y10_N26
\senal|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~26_combout\ = (\senal|n\(13) & (!\senal|Add1~25\)) # (!\senal|n\(13) & ((\senal|Add1~25\) # (GND)))
-- \senal|Add1~27\ = CARRY((!\senal|Add1~25\) # (!\senal|n\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(13),
	datad => VCC,
	cin => \senal|Add1~25\,
	combout => \senal|Add1~26_combout\,
	cout => \senal|Add1~27\);

-- Location: LCCOMB_X9_Y10_N24
\senal|n[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[13]~16_combout\ = (\senal|Add1~26_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(13))))) # (!\senal|Add1~26_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~26_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(13),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[13]~16_combout\);

-- Location: FF_X9_Y10_N25
\senal|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(13));

-- Location: LCCOMB_X13_Y10_N28
\senal|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~28_combout\ = (\senal|n\(14) & (\senal|Add1~27\ $ (GND))) # (!\senal|n\(14) & (!\senal|Add1~27\ & VCC))
-- \senal|Add1~29\ = CARRY((\senal|n\(14) & !\senal|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(14),
	datad => VCC,
	cin => \senal|Add1~27\,
	combout => \senal|Add1~28_combout\,
	cout => \senal|Add1~29\);

-- Location: LCCOMB_X9_Y10_N26
\senal|n[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[14]~17_combout\ = (\senal|Add1~28_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(14))))) # (!\senal|Add1~28_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~28_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(14),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[14]~17_combout\);

-- Location: FF_X9_Y10_N27
\senal|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(14));

-- Location: LCCOMB_X13_Y10_N30
\senal|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~30_combout\ = (\senal|n\(15) & (!\senal|Add1~29\)) # (!\senal|n\(15) & ((\senal|Add1~29\) # (GND)))
-- \senal|Add1~31\ = CARRY((!\senal|Add1~29\) # (!\senal|n\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(15),
	datad => VCC,
	cin => \senal|Add1~29\,
	combout => \senal|Add1~30_combout\,
	cout => \senal|Add1~31\);

-- Location: LCCOMB_X10_Y10_N26
\senal|n[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[15]~18_combout\ = (\senal|Add1~30_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(15))))) # (!\senal|Add1~30_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~30_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(15),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[15]~18_combout\);

-- Location: FF_X10_Y10_N27
\senal|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(15));

-- Location: LCCOMB_X13_Y9_N0
\senal|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~32_combout\ = (\senal|n\(16) & (\senal|Add1~31\ $ (GND))) # (!\senal|n\(16) & (!\senal|Add1~31\ & VCC))
-- \senal|Add1~33\ = CARRY((\senal|n\(16) & !\senal|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(16),
	datad => VCC,
	cin => \senal|Add1~31\,
	combout => \senal|Add1~32_combout\,
	cout => \senal|Add1~33\);

-- Location: LCCOMB_X10_Y10_N0
\senal|n[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[16]~19_combout\ = (\senal|Add1~32_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(16))))) # (!\senal|Add1~32_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~32_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(16),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[16]~19_combout\);

-- Location: FF_X10_Y10_N1
\senal|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(16));

-- Location: LCCOMB_X13_Y9_N2
\senal|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~34_combout\ = (\senal|n\(17) & (!\senal|Add1~33\)) # (!\senal|n\(17) & ((\senal|Add1~33\) # (GND)))
-- \senal|Add1~35\ = CARRY((!\senal|Add1~33\) # (!\senal|n\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(17),
	datad => VCC,
	cin => \senal|Add1~33\,
	combout => \senal|Add1~34_combout\,
	cout => \senal|Add1~35\);

-- Location: LCCOMB_X10_Y10_N30
\senal|n[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[17]~20_combout\ = (\senal|Add1~34_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(17))))) # (!\senal|Add1~34_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~34_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(17),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[17]~20_combout\);

-- Location: FF_X10_Y10_N31
\senal|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(17));

-- Location: LCCOMB_X13_Y9_N4
\senal|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~36_combout\ = (\senal|n\(18) & (\senal|Add1~35\ $ (GND))) # (!\senal|n\(18) & (!\senal|Add1~35\ & VCC))
-- \senal|Add1~37\ = CARRY((\senal|n\(18) & !\senal|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(18),
	datad => VCC,
	cin => \senal|Add1~35\,
	combout => \senal|Add1~36_combout\,
	cout => \senal|Add1~37\);

-- Location: LCCOMB_X10_Y10_N4
\senal|n[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[18]~21_combout\ = (\senal|Add1~36_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(18))))) # (!\senal|Add1~36_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~36_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(18),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[18]~21_combout\);

-- Location: FF_X10_Y10_N5
\senal|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[18]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(18));

-- Location: LCCOMB_X13_Y9_N6
\senal|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~38_combout\ = (\senal|n\(19) & (!\senal|Add1~37\)) # (!\senal|n\(19) & ((\senal|Add1~37\) # (GND)))
-- \senal|Add1~39\ = CARRY((!\senal|Add1~37\) # (!\senal|n\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(19),
	datad => VCC,
	cin => \senal|Add1~37\,
	combout => \senal|Add1~38_combout\,
	cout => \senal|Add1~39\);

-- Location: LCCOMB_X10_Y10_N16
\senal|n[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[19]~22_combout\ = (\senal|Add1~38_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(19))))) # (!\senal|Add1~38_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~38_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(19),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[19]~22_combout\);

-- Location: FF_X10_Y10_N17
\senal|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[19]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(19));

-- Location: LCCOMB_X13_Y9_N8
\senal|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~40_combout\ = (\senal|n\(20) & (\senal|Add1~39\ $ (GND))) # (!\senal|n\(20) & (!\senal|Add1~39\ & VCC))
-- \senal|Add1~41\ = CARRY((\senal|n\(20) & !\senal|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(20),
	datad => VCC,
	cin => \senal|Add1~39\,
	combout => \senal|Add1~40_combout\,
	cout => \senal|Add1~41\);

-- Location: LCCOMB_X10_Y10_N6
\senal|n[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[20]~23_combout\ = (\senal|Add1~40_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(20))))) # (!\senal|Add1~40_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~40_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(20),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[20]~23_combout\);

-- Location: FF_X10_Y10_N7
\senal|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[20]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(20));

-- Location: LCCOMB_X13_Y9_N10
\senal|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~42_combout\ = (\senal|n\(21) & (!\senal|Add1~41\)) # (!\senal|n\(21) & ((\senal|Add1~41\) # (GND)))
-- \senal|Add1~43\ = CARRY((!\senal|Add1~41\) # (!\senal|n\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(21),
	datad => VCC,
	cin => \senal|Add1~41\,
	combout => \senal|Add1~42_combout\,
	cout => \senal|Add1~43\);

-- Location: LCCOMB_X10_Y10_N8
\senal|n[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[21]~24_combout\ = (\senal|Add1~42_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(21))))) # (!\senal|Add1~42_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~42_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(21),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[21]~24_combout\);

-- Location: FF_X10_Y10_N9
\senal|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[21]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(21));

-- Location: LCCOMB_X13_Y9_N12
\senal|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~44_combout\ = (\senal|n\(22) & (\senal|Add1~43\ $ (GND))) # (!\senal|n\(22) & (!\senal|Add1~43\ & VCC))
-- \senal|Add1~45\ = CARRY((\senal|n\(22) & !\senal|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(22),
	datad => VCC,
	cin => \senal|Add1~43\,
	combout => \senal|Add1~44_combout\,
	cout => \senal|Add1~45\);

-- Location: LCCOMB_X10_Y10_N2
\senal|n[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[22]~25_combout\ = (\senal|Add1~44_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(22))))) # (!\senal|Add1~44_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~44_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(22),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[22]~25_combout\);

-- Location: FF_X10_Y10_N3
\senal|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[22]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(22));

-- Location: LCCOMB_X13_Y9_N14
\senal|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~46_combout\ = (\senal|n\(23) & (!\senal|Add1~45\)) # (!\senal|n\(23) & ((\senal|Add1~45\) # (GND)))
-- \senal|Add1~47\ = CARRY((!\senal|Add1~45\) # (!\senal|n\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(23),
	datad => VCC,
	cin => \senal|Add1~45\,
	combout => \senal|Add1~46_combout\,
	cout => \senal|Add1~47\);

-- Location: LCCOMB_X9_Y10_N4
\senal|n[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[23]~26_combout\ = (\senal|Add1~46_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(23))))) # (!\senal|Add1~46_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~46_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(23),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[23]~26_combout\);

-- Location: FF_X9_Y10_N5
\senal|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[23]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(23));

-- Location: LCCOMB_X13_Y9_N16
\senal|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~48_combout\ = (\senal|n\(24) & (\senal|Add1~47\ $ (GND))) # (!\senal|n\(24) & (!\senal|Add1~47\ & VCC))
-- \senal|Add1~49\ = CARRY((\senal|n\(24) & !\senal|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(24),
	datad => VCC,
	cin => \senal|Add1~47\,
	combout => \senal|Add1~48_combout\,
	cout => \senal|Add1~49\);

-- Location: LCCOMB_X10_Y10_N14
\senal|n[24]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[24]~27_combout\ = (\senal|Add1~48_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(24))))) # (!\senal|Add1~48_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~48_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(24),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[24]~27_combout\);

-- Location: FF_X10_Y10_N15
\senal|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[24]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(24));

-- Location: LCCOMB_X13_Y9_N18
\senal|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~50_combout\ = (\senal|n\(25) & (!\senal|Add1~49\)) # (!\senal|n\(25) & ((\senal|Add1~49\) # (GND)))
-- \senal|Add1~51\ = CARRY((!\senal|Add1~49\) # (!\senal|n\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(25),
	datad => VCC,
	cin => \senal|Add1~49\,
	combout => \senal|Add1~50_combout\,
	cout => \senal|Add1~51\);

-- Location: LCCOMB_X12_Y10_N22
\senal|n[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[25]~28_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~50_combout\) # ((\senal|n\(25) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(25) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~50_combout\,
	datac => \senal|n\(25),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[25]~28_combout\);

-- Location: FF_X12_Y10_N23
\senal|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[25]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(25));

-- Location: LCCOMB_X13_Y9_N20
\senal|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~52_combout\ = (\senal|n\(26) & (\senal|Add1~51\ $ (GND))) # (!\senal|n\(26) & (!\senal|Add1~51\ & VCC))
-- \senal|Add1~53\ = CARRY((\senal|n\(26) & !\senal|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(26),
	datad => VCC,
	cin => \senal|Add1~51\,
	combout => \senal|Add1~52_combout\,
	cout => \senal|Add1~53\);

-- Location: LCCOMB_X10_Y10_N28
\senal|n[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[26]~29_combout\ = (\senal|Add1~52_combout\ & ((\senal|n[30]~1_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(26))))) # (!\senal|Add1~52_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|Add1~52_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(26),
	datad => \senal|n[30]~1_combout\,
	combout => \senal|n[26]~29_combout\);

-- Location: FF_X10_Y10_N29
\senal|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[26]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(26));

-- Location: LCCOMB_X13_Y9_N22
\senal|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~54_combout\ = (\senal|n\(27) & (!\senal|Add1~53\)) # (!\senal|n\(27) & ((\senal|Add1~53\) # (GND)))
-- \senal|Add1~55\ = CARRY((!\senal|Add1~53\) # (!\senal|n\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(27),
	datad => VCC,
	cin => \senal|Add1~53\,
	combout => \senal|Add1~54_combout\,
	cout => \senal|Add1~55\);

-- Location: LCCOMB_X12_Y10_N20
\senal|n[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[27]~30_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~54_combout\) # ((\senal|n\(27) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(27) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~54_combout\,
	datac => \senal|n\(27),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[27]~30_combout\);

-- Location: FF_X12_Y10_N21
\senal|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(27));

-- Location: LCCOMB_X13_Y9_N24
\senal|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~56_combout\ = (\senal|n\(28) & (\senal|Add1~55\ $ (GND))) # (!\senal|n\(28) & (!\senal|Add1~55\ & VCC))
-- \senal|Add1~57\ = CARRY((\senal|n\(28) & !\senal|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(28),
	datad => VCC,
	cin => \senal|Add1~55\,
	combout => \senal|Add1~56_combout\,
	cout => \senal|Add1~57\);

-- Location: LCCOMB_X12_Y10_N18
\senal|n[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[28]~31_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~56_combout\) # ((\senal|n\(28) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(28) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~56_combout\,
	datac => \senal|n\(28),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[28]~31_combout\);

-- Location: FF_X12_Y10_N19
\senal|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(28));

-- Location: LCCOMB_X13_Y9_N26
\senal|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~58_combout\ = (\senal|n\(29) & (!\senal|Add1~57\)) # (!\senal|n\(29) & ((\senal|Add1~57\) # (GND)))
-- \senal|Add1~59\ = CARRY((!\senal|Add1~57\) # (!\senal|n\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(29),
	datad => VCC,
	cin => \senal|Add1~57\,
	combout => \senal|Add1~58_combout\,
	cout => \senal|Add1~59\);

-- Location: LCCOMB_X12_Y10_N4
\senal|n[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[29]~32_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~58_combout\) # ((\senal|n\(29) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(29) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~58_combout\,
	datac => \senal|n\(29),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[29]~32_combout\);

-- Location: FF_X12_Y10_N5
\senal|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[29]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(29));

-- Location: LCCOMB_X13_Y9_N28
\senal|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~60_combout\ = (\senal|n\(30) & (\senal|Add1~59\ $ (GND))) # (!\senal|n\(30) & (!\senal|Add1~59\ & VCC))
-- \senal|Add1~61\ = CARRY((\senal|n\(30) & !\senal|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(30),
	datad => VCC,
	cin => \senal|Add1~59\,
	combout => \senal|Add1~60_combout\,
	cout => \senal|Add1~61\);

-- Location: LCCOMB_X12_Y10_N30
\senal|n[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[30]~33_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~60_combout\) # ((\senal|n[24]~2_combout\ & \senal|n\(30))))) # (!\senal|n[30]~1_combout\ & (\senal|n[24]~2_combout\ & (\senal|n\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|n[24]~2_combout\,
	datac => \senal|n\(30),
	datad => \senal|Add1~60_combout\,
	combout => \senal|n[30]~33_combout\);

-- Location: FF_X12_Y10_N31
\senal|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[30]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(30));

-- Location: LCCOMB_X13_Y9_N30
\senal|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Add1~62_combout\ = \senal|Add1~61\ $ (\senal|n\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \senal|n\(31),
	cin => \senal|Add1~61\,
	combout => \senal|Add1~62_combout\);

-- Location: LCCOMB_X12_Y10_N26
\senal|n[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[31]~34_combout\ = (\senal|Add1~62_combout\ & ((\senal|process_0~0_combout\ & (\senal|LessThan0~10_combout\)) # (!\senal|process_0~0_combout\ & ((!\senal|n~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|LessThan0~10_combout\,
	datab => \senal|process_0~0_combout\,
	datac => \senal|Add1~62_combout\,
	datad => \senal|n~0_combout\,
	combout => \senal|n[31]~34_combout\);

-- Location: FF_X12_Y10_N27
\senal|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(31));

-- Location: LCCOMB_X12_Y10_N10
\senal|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~9_combout\ = ((\senal|n\(0) & !\senal|n\(1))) # (!\senal|n\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(0),
	datac => \senal|n\(2),
	datad => \senal|n\(1),
	combout => \senal|LessThan0~9_combout\);

-- Location: LCCOMB_X9_Y10_N14
\senal|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|LessThan0~10_combout\ = (\senal|n\(31)) # ((\senal|LessThan0~9_combout\ & \senal|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \senal|n\(31),
	datac => \senal|LessThan0~9_combout\,
	datad => \senal|LessThan0~8_combout\,
	combout => \senal|LessThan0~10_combout\);

-- Location: LCCOMB_X11_Y10_N16
\senal|n[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[30]~1_combout\ = (\senal|process_0~0_combout\ & (\senal|LessThan0~10_combout\)) # (!\senal|process_0~0_combout\ & ((!\senal|n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|LessThan0~10_combout\,
	datac => \senal|process_0~0_combout\,
	datad => \senal|n~0_combout\,
	combout => \senal|n[30]~1_combout\);

-- Location: LCCOMB_X12_Y10_N14
\senal|n[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|n[2]~3_combout\ = (\senal|n[30]~1_combout\ & ((\senal|Add1~4_combout\) # ((\senal|n\(2) & \senal|n[24]~2_combout\)))) # (!\senal|n[30]~1_combout\ & (((\senal|n\(2) & \senal|n[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n[30]~1_combout\,
	datab => \senal|Add1~4_combout\,
	datac => \senal|n\(2),
	datad => \senal|n[24]~2_combout\,
	combout => \senal|n[2]~3_combout\);

-- Location: FF_X12_Y10_N15
\senal|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|n[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|n\(2));

-- Location: LCCOMB_X11_Y10_N0
\senal|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Equal0~3_combout\ = (!\senal|n\(31) & \senal|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \senal|n\(31),
	datad => \senal|LessThan0~8_combout\,
	combout => \senal|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y10_N20
\senal|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|Equal1~0_combout\ = ((\senal|n\(0)) # ((\senal|n\(1)) # (!\senal|Equal0~3_combout\))) # (!\senal|n\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|n\(2),
	datab => \senal|n\(0),
	datac => \senal|n\(1),
	datad => \senal|Equal0~3_combout\,
	combout => \senal|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y10_N22
\senal|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|salida~0_combout\ = (\senal|salida~q\ & ((\senal|Equal1~0_combout\) # ((\senal|Equal0~4_combout\ & \senal|Equal0~2_combout\)))) # (!\senal|salida~q\ & (((\senal|Equal0~4_combout\ & \senal|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal|salida~q\,
	datab => \senal|Equal1~0_combout\,
	datac => \senal|Equal0~4_combout\,
	datad => \senal|Equal0~2_combout\,
	combout => \senal|salida~0_combout\);

-- Location: LCCOMB_X11_Y10_N28
\senal|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal|salida~1_combout\ = (\modul|tau_f3[1]~11_combout\ & (\senal|salida~0_combout\ & ((\modul|tau_f3[2]~12_combout\) # (!\modul|tau_f3[3]~10_combout\)))) # (!\modul|tau_f3[1]~11_combout\ & ((\senal|salida~0_combout\) # ((!\modul|tau_f3[3]~10_combout\ & 
-- !\modul|tau_f3[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modul|tau_f3[1]~11_combout\,
	datab => \modul|tau_f3[3]~10_combout\,
	datac => \senal|salida~0_combout\,
	datad => \modul|tau_f3[2]~12_combout\,
	combout => \senal|salida~1_combout\);

-- Location: FF_X11_Y10_N29
\senal|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor10s|ALT_INV_salida~clkctrl_outclk\,
	d => \senal|salida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal|salida~q\);

ww_pwm <= \pwm~output_o\;
END structure;


