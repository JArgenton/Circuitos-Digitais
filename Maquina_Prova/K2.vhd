Library IEEE;
use ieee.std_logic_1164.all;

entity K2 is
port(
	X : in std_logic_vector(3 downto 0);
	S : out std_logic
	);
end K2;

architecture arch of K2 is


begin

S <= (X(3) and X(1) and X(0));

end arch;