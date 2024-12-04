library IEEE;
use ieee.std_logic_1164.all;

entity PISO_SIPO is
	port(
		Clock : in std_logic;
		Load : in std_logic;
		Entrada : in std_logic_vector(7 downto 0);
		HEX_0 : out std_logic_vector(6 downto 0);
		HEX_1 : out std_logic_vector(6 downto 0);
		HEX_3 : out std_logic_vector(6 downto 0);
		HEX_4 : out std_logic_vector(6 downto 0);
		Leds_SIPO : out std_logic_vector(7 downto 0)
	);
end PISO_SIPO;

architecture arch of PISO_SIPO is
signal H1_H0 : std_logic_vector(7 downto 0);
signal H4_H3 : std_logic_vector(7 downto 0);

begin

piso : entity work.PISO
	port map(
		 Palavra => Entrada,
        Clk => Clock,
        L_S => Load,
        Valor => H1_H0
	);

sipo : entity work.SIPO
	port map(
		Serial => H1_H0(7),
		clk => Clock,
		Saidas => H4_H3
	);
	
conversorH0 : entity work.Conversor_HEXA
	port map(
		Input => H1_H0(3 downto 0), -- Entrada de 4 bits (hexadecimal)
		Output => HEX_0
	);

conversorH1 : entity work.Conversor_HEXA
	port map(
		Input => H1_H0(7 downto 4), -- Entrada de 4 bits (hexadecimal)
		Output => HEX_1
	);
conversorH3 : entity work.Conversor_HEXA
	port map(
		Input => H4_H3(3 downto 0), -- Entrada de 4 bits (hexadecimal)
		Output => HEX_3
	);
conversorH4 : entity work.Conversor_HEXA
	port map(
		Input => H4_H3(7 downto 4), -- Entrada de 4 bits (hexadecimal)
		Output => HEX_4
	);

Leds_SIPO <= H4_H3;

end arch;
		
		
		
		