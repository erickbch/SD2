library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Reg_Sost is
	generic ( n: integer :=8);--<-- nbits
	port(
		Clk,Resetn,en: in std_logic;
		d: in std_logic_vector(n-1 downto 0);
		q: out std_logic_vector(n-1 downto 0));
end Reg_Sost;

--Architecture
architecture solve of Reg_Sost is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(Resetn,Clk)
	--Sequential programming
		begin
			if Resetn='0' then
				q<=(others => '0');
			elsif Clk'event and Clk='1' then
				if en='1' then
					q<=d;
				end if;
			end if;
	end process;
	--Process #n...
end solve;