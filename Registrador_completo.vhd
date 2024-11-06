library IEEE;
use ieee.std_logic_1164.all;

entity Registrador is
    port(
        Clk      : in  std_logic;            
        Entrada  : in  std_logic_vector(3 downto 0);
        Somain   : in std_logic_vector(4 downto 0);
        LSin     : in std_logic;
        HEX_0    : out std_logic_vector(3 downto 0);
        HEX_1    : out std_logic_vector(3 downto 0);
        HEX_2    : out std_logic_vector(3 downto 0);
        HEX_3    : out std_logic_vector(3 downto 0);
        HEX_4    : out std_logic_vector(3 downto 0)
    );
end Registrador;

architecture arch of Registrador is
    signal desloc3 : std_logic_vector(3 downto 0);
    signal desloc4 : std_logic_vector(3 downto 0);
    
    -- Sinais intermediários para conectar os registradores
    signal HEX_0_inter : std_logic_vector(3 downto 0);
    signal HEX_1_inter : std_logic_vector(3 downto 0);
    signal HEX_2_inter : std_logic_vector(3 downto 0);
    signal HEX_3_inter : std_logic_vector(3 downto 0);
    signal HEX_4_inter : std_logic_vector(3 downto 0);

begin
    -- Conexão do registrador paralelo com sinais intermediários
    FFP_ParaleloA : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => Entrada,
            saida   => HEX_0_inter
        );
          
    FFP_ParaleloB : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => HEX_0_inter,
            saida   => HEX_1_inter
        );
          
    FFP_ParaleloC : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => HEX_1_inter,
            saida   => HEX_2_inter
        );

    Desloc0 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_2_inter(0),
            Din  => Somain(0),
            LS   => LSin,
            Qout => desloc3(0)
        );
        
    Desloc1 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_2_inter(1),
            Din  => Somain(1),
            LS   => LSin,
            Qout => desloc3(1)
        );
        
    Desloc2 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_2_inter(2),
            Din  => Somain(2),
            LS   => LSin,
            Qout => desloc3(2)
        );
        
    Desloc03 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_2_inter(3),
            Din  => Somain(3),
            LS   => LSin,
            Qout => desloc3(3)
        );

    FFP_ParaleloD : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => desloc3,
            saida   => HEX_3_inter
        );

    Desloc5 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_3_inter(0),
            Din  => Somain(4),
            LS   => LSin,
            Qout => desloc4(0)
        );

    Desloc6 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_3_inter(1),
            Din  => '0',
            LS   => LSin,
            Qout => desloc4(1)
        );

    Desloc7 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_3_inter(2),
            Din  => '0',
            LS   => LSin,
            Qout => desloc4(2)
        );

    Desloc8 : entity work.LOAD_X_DESLOCAMENTO
        port map(
            Flip => HEX_3_inter(3),
            Din  => '0',
            LS   => LSin,
            Qout => desloc4(3)
        );

    FFP_ParaleloE : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => desloc4,
            saida   => HEX_4_inter
        );

    -- Conectando os sinais intermediários às saídas HEX
    HEX_0 <= HEX_0_inter;
    HEX_1 <= HEX_1_inter;
    HEX_2 <= HEX_2_inter;
    HEX_3 <= desloc3;
    HEX_4 <= desloc4;

end arch;