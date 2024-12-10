library ieee;
use ieee.std_logic_1164.all;

entity JK_FlipFlop is
	port(
	CLK : in std_logic;
		J : in std_logic;
		K: in std_logic;
		RESET : in std_logic;
		Q : out std_logic;
		QN: out std_logic
	);
end JK_FlipFlop;

ARCHITECTURE comportamento OF JK_FlipFlop IS
	signal qsignal : std_logic;
BEGIN
	process(clk, RESET)
	begin
		if(RESET = '1') then
			qsignal <= '0';
		elsif(CLK'event and CLK='0') then
			if(J = '1' and K='0') then
				qsignal <= '1';
			elsif(J = '0' and K='1') then
				qsignal <= '0';
			elsif(J = '1' and K='1') then
				qsignal <= not qsignal;
			end if;
		end if;
	end process;
	
	Q <= qsignal;
	QN <= not qsignal;
END comportamento;




