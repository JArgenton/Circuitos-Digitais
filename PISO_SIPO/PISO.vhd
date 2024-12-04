library IEEE;
use ieee.std_logic_1164.all;

entity PISO is
    port(
        Palavra : in std_logic_vector(7 downto 0);  -- Entradas paralelas
        Clk     : in std_logic;                    -- Clock
        L_S     : in std_logic;                    -- Modo: Load/Shift
        Valor   : out std_logic_vector(7 downto 0) -- Saída paralela
    );
end PISO;

architecture arch of PISO is
    signal vl : std_logic_vector(7 downto 0);      -- Registrador interno
    signal loadv : std_logic_vector(6 downto 0);  -- Sinais intermediários
begin

    -- Flip-Flop 1 (Bit menos significativo)
    FFP1 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => Palavra(0),
            Q => vl(0)
        );

    LS1 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(1),
            LS => L_S,
            Flip => vl(0),
            Qout => loadv(0)
        );

    -- Flip-Flop 2
    FFP2 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(0),
            Q => vl(1)
        );

    LS2 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(2),
            LS => L_S,
            Flip => vl(1),
            Qout => loadv(1)
        );

    -- Flip-Flop 3
    FFP3 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(1),
            Q => vl(2)
        );

    LS3 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(3),
            LS => L_S,
            Flip => vl(2),
            Qout => loadv(2)
        );

    -- Flip-Flop 4
    FFP4 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(2),
            Q => vl(3)
        );

    LS4 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(4),
            LS => L_S,
            Flip => vl(3),
            Qout => loadv(3)
        );

    -- Flip-Flop 5
    FFP5 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(3),
            Q => vl(4)
        );

    LS5 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(5),
            LS => L_S,
            Flip => vl(4),
            Qout => loadv(4)
        );

    -- Flip-Flop 6
    FFP6 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(4),
            Q => vl(5)
        );

    LS6 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(6),
            LS => L_S,
            Flip => vl(5),
            Qout => loadv(5)
        );

    -- Flip-Flop 7
    FFP7 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(5),
            Q => vl(6)
        );

    LS7 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Din => Palavra(7),
            LS => L_S,
            Flip => vl(6),
            Qout => loadv(6)
        );

    -- Flip-Flop 8 (Bit mais significativo)
    FFP8 : entity work.Flip_Flop_D
        port map(
            clock => Clk,
            D => loadv(6),
            Q => vl(7)
        );

    -- Saída do registrador interno
    Valor <= vl;

end arch;
	
	
	

	