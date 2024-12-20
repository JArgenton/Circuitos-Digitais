library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contador is
port(
	CK : in std_logic;
	reset : in std_logic;
	Saidas : out std_logic_vector(3 downto 0);
	Qout : out std_logic
	);
end Contador;


architecture arch of Contador is
signal Qaux : std_logic_vector(3 downto 0);
signal rst : std_logic;
signal aux_clk : std_logic;

begin

rst <= (reset or (Qaux(3) and Qaux(1) and not Qaux(2) and not Qaux(0)));

jk0 : entity work.JK_FlipFlop
	port map(
		CLK => CK,
        J => '1',
        K   => '1',
		  RESET => rst,
        Q	=> Qaux(0),
        QN => open
		  );
		  
jk1 : entity work.JK_FlipFlop
	port map(
		CLK => Qaux(0),
        J => '1',
        K   => '1',
		  RESET => rst,
        Q	=> Qaux(1),
        QN => open
		  );
jk2 : entity work.JK_FlipFlop
	port map(
		CLK => Qaux(1),
        J => '1',
        K   => '1',
		  RESET => rst,
        Q	=> Qaux(2),
        QN => open
		  );
jk3 : entity work.JK_FlipFlop
	port map(
		CLK => Qaux(2),
        J => '1',
        K   => '1',
		  RESET => rst,
        Q	=> Qaux(3),
        QN => open
		  );

Qout <= (Qaux(3) and Qaux(1) and not Qaux(2) and not Qaux(0));
Saidas <= Qaux;

end arch;