Library IEEE;
use ieee.std_logic_1164.all;

entity D1 is
port(
	X : in std_logic_vector(3 downto 0);
	S : out std_logic
	);
end D1;

architecture arch of D1 is


begin

S <= (not(X(1)));

end arch;

