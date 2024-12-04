Library IEEE;
use ieee.std_logic_1164.all;

entity Gerador_Sequencia is
port(
	Clk : in std_logic;
	Hex : out std_logic_vector(6 downto 0)
	);
end Gerador_Sequencia;

architecture arch of Gerador_Sequencia is
signal Sout : std_logic_vector(3 downto 0);
signal Saidas : std_logic_vector(3 downto 0);
signal Entradas : std_logic_vector(3 downto 0);

begin

D_1 : entity work.D1
	port map(
	X => Entradas,
	S => Sout(0)
	);

ffp1 : entity work.flip_flop_D
	port map(
	D => Sout(0),
	CLK => Clk,
	Q => Saidas(0)
	);
	
D_2 : entity work.D2
	port map(
	X => Entradas,
	S => Sout(1)
	);

ffp2 : entity work.flip_flop_D
	port map(
	D => Sout(1),
	CLK => Clk,
	Q => Saidas(1)
	);
	
D_3 : entity work.D3
	port map(
	X => Entradas,
	S => Sout(2)
	);

ffp3 : entity work.flip_flop_D
	port map(
	D => Sout(2),
	CLK => Clk,
	Q => Saidas(2)
	);
	
D_4 : entity work.D4
	port map(
	X => Entradas,
	S => Sout(3)
	);

ffp4 : entity work.flip_flop_D
	port map(
	D => Sout(3),
	CLK => Clk,
	Q => Saidas(3)
	);
	
conv : entity work.Conversor_HEXA
	port map(
	 Input => Saidas,
	 Output => Hex
	 );

Entradas <= Saidas;



end arch;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	