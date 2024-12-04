Library IEEE;
use ieee.std_logic_1164.all;

entity soma_4bits is
port(
		A: in std_logic_vector(3 downto 0); --palavra A
		B: in std_logic_vector(3 downto 0); --palavra B
		Ci: in std_logic;
		Cout: out std_logic; 
		S : out std_logic_vector(3 downto 0) -- palavra resultado
);
end soma_4bits;

architecture Soma of soma_4bits is
	--declaracao de sinais para carregar as saidas das somas
	signal C : std_logic_vector(3 downto 0); -- Carryouts 
	
begin 
	--inicio da declaraçao das instancias de soma_bit
	SomaBit0 : entity work.soma_bit
		port map(
			inputs => (A(0), B(0), Ci), --atribui a entrada inputs do soma_bit a pos no vetor de soma_4bits
        S => S(0),
        Cout => C(0) --armazena o cout no vetor auxiliar	
	);
	SomaBit1 : entity work.soma_bit
		port map(
			inputs => (A(1), B(1), C(0)), --atribui a entrada inputs do soma_bit a pos no vetor de soma_4bits
        S => S(1),
        Cout => C(1) --armazena o cout no vetor auxiliar	
	);
	SomaBit2 : entity work.soma_bit
		port map(
			inputs => (A(2), B(2), C(1)), --atribui a entrada inputs do soma_bit a pos no vetor de soma_4bits
        S => S(2),
        Cout => C(2) --armazena o cout no vetor auxiliar	
	);
	SomaBit3 : entity work.soma_bit
		port map(
			inputs => (A(3), B(3), C(2)), --atribui a entrada inputs do soma_bit a pos no vetor de soma_4bits
        S => S(3),
        Cout => C(3) --armazena o cout no vetor auxiliar	
	);
	Cout <= C(3);
	
end Soma;