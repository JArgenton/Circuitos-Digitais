library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_flop_jk is
    Port (
        J   : in  STD_LOGIC;  -- Entrada J
        K   : in  STD_LOGIC;  -- Entrada K
        clk : in  STD_LOGIC;  -- Clock
        Q   : out STD_LOGIC   -- Saída Q
    );
end flip_flop_jk;

architecture Behavioral of flip_flop_jk is
    signal Q_int : STD_LOGIC := '0'; -- Sinal interno para saída Q
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if J = '0' and K = '0' then
                Q_int <= Q_int; -- Mantém o estado
            elsif J = '0' and K = '1' then
                Q_int <= '0'; -- Reseta para 0
            elsif J = '1' and K = '0' then
                Q_int <= '1'; -- Define para 1
            elsif J = '1' and K = '1' then
                Q_int <= not Q_int; -- Alterna o estado (toggle)
            end if;
        end if;
    end process;

    -- Saída
    Q <= Q_int;

end Behavioral;

