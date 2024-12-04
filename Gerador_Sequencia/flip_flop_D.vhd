library IEEE;
use IEEE.std_logic_1164.all;

entity flip_flop_D is
    port (
        D   : in  std_logic;  -- Entrada do Flip-Flop
        Clk : in  std_logic;  -- Sinal de clock
        Q   : out std_logic   -- Saída do Flip-Flop
    );
end flip_flop_D;

architecture behavior of flip_flop_D is
    signal Q_int : std_logic; -- Sinal interno para a saída
begin
    -- Processo sensível ao clock
    process (Clk)
    begin
        if rising_edge(Clk) then
            Q_int <= D; -- Armazena o valor de D na borda de subida do clock
        end if;
    end process;

    -- Atribui o sinal interno à saída
    Q <= Q_int;

end behavior;

