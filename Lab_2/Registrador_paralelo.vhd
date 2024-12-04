library IEEE;
use ieee.std_logic_1164.all;

entity Registrador_Paralelo is
    port(
        Clock   : in  std_logic;            -- Clock como entrada
        entrada : in  std_logic_vector(3 downto 0);
        saida   : out std_logic_vector(3 downto 0)
    );
end Registrador_Paralelo;

architecture arch of Registrador_Paralelo is
    -- Sinais internos para as saídas de cada flip-flop
    signal Q_0, Q_1, Q_2, Q_3 : std_logic;
begin
    -- Instância 1 do Flip-Flop D
    FFP_A : entity work.Flip_Flop_D
        port map(
            clock => Clock,
            D     => entrada(3),
            Q     => Q_3
        );

    -- Instância 2 do Flip-Flop D
    FFP_B : entity work.Flip_Flop_D
        port map(
            clock => Clock,
            D     => entrada(2),
            Q     => Q_2
        );

    -- Instância 3 do Flip-Flop D
    FFP_C : entity work.Flip_Flop_D
        port map(
            clock => Clock,
            D     => entrada(1),
            Q     => Q_1
        );

    -- Instância 4 do Flip-Flop D
    FFP_D : entity work.Flip_Flop_D
        port map(
            clock => Clock,
            D     => entrada(0),
            Q     => Q_0
        );

    -- Atribuindo os valores de saída
    saida(3) <= (Q_3);
	 saida(2) <= (Q_2);
	 saida(1) <= (Q_1);
	 saida(0) <= (Q_0);
end arch;
