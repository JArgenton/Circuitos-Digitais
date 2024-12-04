Library IEEE;
use ieee.std_logic_1164.all;

entity D4 is
port(
	X : in std_logic_vector(3 downto 0);
	S : out std_logic
	);
end D4;

architecture arch of D4 is


begin

S <= ((not(X(3)) and X(2)) or (X(2) and not(X(1))) or (X(3) and not X(2) and (X(1))));

end arch;