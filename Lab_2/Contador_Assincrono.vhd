library IEEE;
use ieee.std_logic_1164.all;

entity Contador_Assincrono is
	port(
	
		Palavra : in std_logic_vector(3 downto 0);
		PB0 : in std_logic;
		PB1 : in std_logic;
		Switch : in std_logic;
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0);
		HEX4 : out std_logic_vector(6 downto 0)
		);
end Contador_Assincrono;

architecture arch of Contador_Assincrono is
signal sum : std_logic_vector(4 downto 0);
signal H0 : std_logic_vector(3 downto 0);
signal H1 : std_logic_vector(3 downto 0);
signal H2 : std_logic_vector(3 downto 0);
signal H3 : std_logic_vector(3 downto 0);
signal H4 : std_logic_vector(3 downto 0);


begin
	registrador : work.Registrador
		port map(
			Clk => PB0,
			Entrada => Palavra,
			Somain => sum,
		  LSin => PB1,
		  HEX_0 => H0,
		  HEX_1 => H1,
		  HEX_2 => H2,
		  HEX_3 => H3,  
		  HEX_4 => H4
		);

	somador : work.somador_sub_lab2
		port map(
		  Ain => H1,
        Bin => H0,
        Cin =>	Switch,
        CCout => sum(4),                   
        Sout(0) => sum(0),
		  Sout(1) => sum(1),
		  Sout(2) => sum(2),
		  Sout(3) => sum(3)
		);
		
	conversor0 : work.Conversor_HEXA
		port map(
		  Input => H0,  
        Output => HEX0
		);
	conversor1 : work.Conversor_HEXA
		port map(
		  Input => H1,  
        Output => HEX1
		);
	conversor2 : work.Conversor_HEXA
		port map(
		  Input => H2,  
        Output => HEX2
		);
	conversor3 : work.Conversor_HEXA
		port map(
		  Input => H3,  
        Output => HEX3
		);
	conversor4 : work.Conversor_HEXA
		port map(
		  Input => H4,  
        Output => HEX4
		);
end arch;
		


	
			
			