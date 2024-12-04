Library IEEE;
use ieee.std_logic_1164.all;

entity Maquina_Prova is
port(
	CLK : in std_logic;
	Hex : out std_logic_vector(6 downto 0)
	);
end Maquina_Prova;

architecture arch of Maquina_Prova is
signal Sout : std_logic_vector(5 downto 0);
signal Saidas : std_logic_vector(3 downto 0);
signal Entradas : std_logic_vector(3 downto 0);

begin

D_0 : entity work.D0
	port map(
		X => Entradas,
		S => Sout(0)
		);
ffpD0 : entity work.flip_flop_D
	port map(
		D => Sout(0),
		Clk => CLK,
		Q => Saidas(0)
		);
D_1 : entity work.D1
	port map(
		X => Entradas,
		S => Sout(1)
		);
ffpD1 : entity work.flip_flop_D
	port map(
		D => Sout(1),
		Clk => CLK,
		Q => Saidas(1)
		);
J_2 : entity work.J2
	port map(
		X => Entradas,
		S => Sout(2)
		);
K_2 : entity work.K2
	port map(
		X => Entradas,
		S => Sout(3)
		);
ffpJK2 : entity work.flip_flop_jk
	port map(
		J => Sout(2),
      K => Sout(3),
      Clk => CLK,
      Q => Saidas(2)
		);
J_3 : entity work.J3
	port map(
		X => Entradas,
		S => Sout(4)
		);
K_3 : entity work.K3
	port map(
		X => Entradas,
		S => Sout(5)
		);
ffpJK3 : entity work.flip_flop_jk
	port map(
		J => Sout(4),
      K => Sout(5),
      Clk => CLK,
      Q => Saidas(3)
		);
conv : entity work.Conversor_HEXA
	port map(
	 Input => Saidas,
	 Output => Hex
	 );

Entradas <= Saidas;
end arch;