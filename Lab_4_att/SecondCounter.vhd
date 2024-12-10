library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SecondCounter is
    Port (
        clk_s : in STD_LOGIC;  -- Clock de 1 Hz (gerado a partir do contador de milissegundos)
        reset : in STD_LOGIC;  -- Reset
        count : out integer range 0 to 59  -- Saída do contador
    );
end SecondCounter;

architecture Behavioral of SecondCounter is
    signal counter : integer range 0 to 59 := 0;
begin
    process (clk_s, reset)
    begin
        if reset = '1' then
            counter <= 0;
        elsif rising_edge(clk_s) then
            if counter = 59 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    count <= counter;
end Behavioral;
