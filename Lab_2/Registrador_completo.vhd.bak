library IEEE;
use ieee.std_logic.all;

entity Registrador is
    port(
        Clk      : in  std_logic;            
        Entrada  : in  std_logic_vector(3 downto 0);
		  Somain : in std_logic_vector(4 downto 0);
		  LSin : in std_logic;
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

begin
    FFP_ParaleloA : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => Entrada,
            saida   => HEX_0
        );
		  
    FFP_ParaleloB : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => HEX_0,
            saida   => HEX_1
        );
		  
    FFP_ParaleloC : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => HEX_1,
            saida   => HEX_2
        );
	
		  
		  
	Desloc0 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_2(0),
				 Din => Somain(0),
				 LS => LSin,
            saida   => desloc3(0)
        );
	Desloc1 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_2(1),
				 Din => Somain(1),
				 LS => LSin,
            saida   => desloc3(1)
        );
	Desloc2 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_2(2),
				 Din => Somain(2),
				 LS => LSin,
            saida   => desloc3(2)
        );
	Desloc3 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_2(3),
				 Din => Somain(3),
				 LS => LSin,
            saida   => desloc3(3)
        );
		  
		  
    FFP_ParaleloD : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => desloc3,
            saida   => HEX_3
        );
		  
		  
		Desloc5 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_3(0),
				 Din => Somain(4),
				 LS => LSin,
            saida   => desloc4(0)
        );
	Desloc6 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_3(1),
				 Din => "0",
				 LS => LSin,
            saida   => desloc4(1)
        );
	Desloc7 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_3(2),
				 Din => "0",
				 LS => LSin,
            saida   => desloc4(2)
        );
	Desloc8 : entity work.Registrador_Paralelo
        port map(
             Flip => HEX_3(3),
				 Din => "0",
				 LS => LSin,
            saida   => desloc4(3)
        );
		  
    FFP_ParaleloE : entity work.Registrador_Paralelo
        port map(
            clock   => Clk,
            entrada => desloc4,
            saida   => HEX_4
        );

end arch;
