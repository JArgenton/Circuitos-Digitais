Library IEEE;
use ieee.std_logic_1164.all;

entity D0 is
port(
	X : in std_logic_vector(3 downto 0);
	S : out std_logic
	);
end D0;

architecture arch of D0 is


begin

S <= ((X(3) and X(1) and not(X(0))) or (not(X(3)) and X(0)) or (not(X(1)) and X(0)));

end arch;