library ieee;
use ieee.std_logic_1164.all;

entity MUX2a1 is
generic (n: integer := 5);
port( Sel: in std_logic;
		I0,I1: in std_logic_vector (n-1 downto 0);
		Q: out std_logic_vector (n-1 downto 0));
end MUX2a1;

architecture solve of MUX2a1 is
begin
	process(Sel)
	begin
		case Sel is
			when '0'=>Q<=I0;
			when '1'=>Q<=I1;
		end case;
	end process;
end solve;