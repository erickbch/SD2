library ieee;    
use ieee.std_logic_1164.all;    
  
entity Bufferr is  
generic (n: integer:=5);
port (Entrada: in std_logic_vector(n-1 downto 0);    
      En: in std_logic;    
      Salida: out std_logic_vector(n-1 downto 0));    
end Bufferr;
    
architecture Solucion of Bufferr is    
begin    
   Salida<=(others=>'Z') when En='0' else Entrada;    
end Solucion; 