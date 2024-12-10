library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Lab_4_att is
    Port (
        clk_50MHz : in STD_LOGIC;   -- Clock de 50 MHz
        reset     : in STD_LOGIC;   -- Reset
        HEX0, HEX1, HEX2, HEX4, HEX5, HEX6 : out STD_LOGIC_VECTOR(6 downto 0) -- Displays
    );
end Lab_4_att;

architecture Behavioral of Lab_4_att is
    -- Sinais intermediários
    signal clk_1kHz : STD_LOGIC;  -- Clock de 1 kHz
    signal ms_count : integer range 0 to 999; -- Contador de milissegundos
    signal s_count  : integer range 0 to 59;  -- Contador de segundos
    signal min_count : integer range 0 to 9;  -- Contador de minutos
    signal ms_count_done : STD_LOGIC; -- Indica fim de 999 ms
    signal s_count_done : STD_LOGIC;  -- Indica fim de 59 s
begin
    -- Divisor de Frequência: Gera clock de 1 kHz
    ClockDivider_inst: entity work.ClockDivider
        Port map (
            clk_in  => clk_50MHz,
            reset   => reset,
            clk_out => clk_1kHz
        );

    -- Contador de Milissegundos (0 a 999)
    MillisecondCounter_inst: entity work.MillisecondCounter
        Port map (
            clk_ms => clk_1kHz,
            reset  => reset,
            count  => ms_count
        );

    -- Gera sinal de 1 Hz quando ms_count atinge 999
    ms_count_done <= '1' when ms_count = 999 else '0';

    -- Contador de Segundos (0 a 59)
    SecondCounter_inst: entity work.SecondCounter
        Port map (
            clk_s => ms_count_done,
            reset => reset,
            count => s_count
        );

    -- Gera sinal de incremento para minutos quando s_count atinge 59
    s_count_done <= '1' when s_count = 59 else '0';

    -- Contador de Minutos (0 a 9)
    MinuteCounter_inst: entity work.MinuteCounter
        Port map (
            clk_min => s_count_done,
            reset   => reset,
            count   => min_count
        );

		

end Behavioral;

