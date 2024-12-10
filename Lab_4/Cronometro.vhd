library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cronometro is
port(
	Double_freq : in std_logic;
	Clock : in std_logic;
	Pause : in std_logic;
	RST : in std_logic;
	H0 : out std_logic_vector(6 downto 0);
	H1 : out std_logic_vector(6 downto 0);
	H2 : out std_logic_vector(6 downto 0);
	H3 : out std_logic_vector(6 downto 0);
	H4 : out std_logic_vector(6 downto 0);
	H5 : out std_logic_vector(6 downto 0)
	);
end Cronometro;

architecture arch of Cronometro is
signal Clk : std_logic;
signal s0, s1, s2, s3, s4, s5 : std_logic_vector(3 downto 0);
signal aux_clk1, aux_clk2, aux_clk3 : std_logic;
signal Reset : std_logic;
signal aux_pause : std_logic;
signal Qo : std_logic_vector(5 downto 0);
signal pause_or_ra : std_logic;
begin

Reset <= not RST;
freq : entity work.Timing_Reference
	port map(
		clk => Clock,
        clk_1kHz => aux_clk3
		  );
pause_or_ra <= (Pause xor ((not s4(3) and s4(2) and not s4(1) and s4(0)) and 
(s3(3) and not s3(2) and not s3(1) and not s3(0)) and 
(not s2(3) and not s2(2) and not s2(1) and s2(0)) and
(not s1(3) and s1(2) and s1(1) and not s1(0)) and
(s0(3) and not s0(2) and not s0(1) and s0(0)) and
(not s5(3) and not s5(2) and s5(1) and not s5(0))));
jk0 : entity work.JK_FlipFlop
	port map(
		CLK => pause_or_ra,
        J => '1',
        K   => '1',
		  RESET => '0',
        Q	=> aux_pause,
        QN => open
		  );

jk1 : entity work.JK_FlipFlop
	port map(
		CLK => aux_clk3,
        J => '1',
        K   => '1',
		  RESET => '0',
        Q	=> aux_clk2,
        QN => open
		  );
process(aux_clk3)
	begin
		if(Double_freq = '0') then
			Clk <= aux_clk2;
		else
			Clk <= aux_clk3;
		end if;
	end process;
		
aux_clk1 <= (Clk and (aux_pause));

--colocar um not no s0(0) e da o do argenton
	
cont0 : entity work.Contador
	port map(
		CK => aux_clk1,
	reset => Reset,
	Saidas => s0,
	Qout => Qo(0)
	);
cont1 : entity work.Contador
	port map(
		CK => Qo(0),
	reset => Reset,
	Saidas => s1,
	Qout => Qo(1)
	);
cont2 : entity work.Contador
	port map(
		CK => Qo(1),
	reset => Reset,
	Saidas => s2,
	Qout => Qo(2)
	);
cont3 : entity work.Contador
	port map(
		CK => Qo(2),
	reset => Reset,
	Saidas => s3,
	Qout => Qo(3)
	);
cont4 : entity work.Contador_aux
	port map(
		CK => Qo(3),
	reset => Reset,
	Saidas => s4,
	Qout => Qo(4)
	);

cont5 : entity work.Contador
	port map(
		CK => Qo(4),
	reset => Reset,
	Saidas => s5,
	Qout => Qo(5)
	);

c0 : entity work.Conversor_HEXA
	port map(
		Input => s0,
        Output => H0
	);
c1 : entity work.Conversor_HEXA
	port map(
		Input => s1,
        Output => H1
	);
		  
c2 : entity work.Conversor_HEXA
	port map(
		Input => s2,
        Output => H2
	);
		  
c3 : entity work.Conversor_HEXA
	port map(
		Input => s3,
        Output => H3
	);
c4 : entity work.Conversor_HEXA
	port map(
		Input => s4,
        Output => H4
	);
c5 : entity work.Conversor_HEXA
	port map(
		Input => s5,
        Output => H5
	);
		  
end arch;
		  
		  
		  
		  
		  
		  
		  
		  