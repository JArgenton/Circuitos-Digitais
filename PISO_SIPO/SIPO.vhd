library IEEE;
use ieee.std_logic_1164.all;

entity SIPO is
	port(
		Serial : in std_logic;
		clk : in std_logic;
		Saidas : out std_logic_vector(7 downto 0)
	);
end SIPO;

architecture arch of SIPO is
signal vl : std_logic_vector(7 downto 0);

begin

 FFP1 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => Serial,
            Q => vl(0)
        );
 FFP2 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(0),
            Q => vl(1)
        );
 FFP3 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(1),
            Q => vl(2)
        );
 FFP4 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(2),
            Q => vl(3)
        );
 FFP5 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(3),
            Q => vl(4)
        );
 FFP6 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(4),
            Q => vl(5)
        );
 FFP7 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(5),
            Q => vl(6)
        );
 FFP8 : entity work.Flip_Flop_D
        port map(
            clock => clk,
            D => vl(6),
            Q => vl(7)
        );
		  
 Saidas <= vl;
end arch;