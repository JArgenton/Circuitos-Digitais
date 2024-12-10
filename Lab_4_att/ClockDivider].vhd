library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClockDivider is
    Port (
        clk_in : in STD_LOGIC;  -- Clock de 50 MHz
        reset  : in STD_LOGIC;  -- Sinal de reset
        clk_out : out STD_LOGIC -- Clock de 1 kHz
    );
end ClockDivider;

architecture Behavioral of ClockDivider is
    signal counter : integer range 0 to 49999 := 0;
    signal clk_div : STD_LOGIC := '0';
begin
    process (clk_in, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_div <= '0';
        elsif rising_edge(clk_in) then
            if counter = 49999 then
                counter <= 0;
                clk_div <= not clk_div;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    clk_out <= clk_div;
end Behavioral;
