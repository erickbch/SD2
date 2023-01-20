library ieee;
use ieee.std_logic_1164.all;
entity MSSPRUEBA is
      port (Clk, Resetn, Start, End_j, AmenB, End_i,Mostrar,jfinal: in std_logic;
		      presiona,Enj,Ldj,s1,Eni,Ldi,EnReg,Sel,EnReg2,Sel2,Done,final: out std_logic;
				estados: out std_logic_vector(4 downto 0));
		  
end MSSPRUEBA;

 architecture solv of MSSPRUEBA is
 type estado is (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R);
 signal y: estado; 
 signal Entradas: std_logic_vector(5 downto 0); 
 signal Salidas: std_logic_vector(10 downto 0);
 
 begin
       entradas <= Start & End_j & AmenB & End_i & Mostrar & jfinal;
		 
		 enj <= Salidas(10); Ldj <= Salidas(9); S1 <= Salidas(8); Eni <= Salidas(7); Ldi <= Salidas(6); EnReg <= Salidas(5); 
		 Sel <= Salidas(4); EnReg2 <= Salidas(3); Sel2 <= Salidas(2); Done <= salidas(1);final <= salidas(0);
		 
		 process(Clk, Resetn)
		 begin
		     
			  if Resetn = '0' then y <= A; 
			  elsif (Clk' event and Clk = '1') then
			       case y is
					      
							when A => if Entradas = "100000" then y <= B; else y <= A; end if;
							
							when B => if Entradas = "100000" then y <= B; else y <= C; end if;
							
					 
							when C => y<= D;
							          
							when D => y <= E;
							
							when E => y <= F; 
					
							when F => if Entradas = "001000" then y <= G; else y <= I; end if;
							
							when G => y <= H; 
							
							when H => y <= I;
							
							when I => if Entradas = "010000" then y <= K; else y<= J; end if;
							
							when J => y <= K;
						
							when K => if Entradas = "000100" then y <= M; else y <= L; end if;
							
							when L => y <= C;
							
							when M => if Entradas = "000010" then y <= N; else y <= M; end if; 
							when N => if Entradas = "000010" then y <= N; else y <= O; end if; 
							when O => if Entradas = "000010" then y <= P; else y <= O; end if;
							when P => if Entradas = "000010" then y <= P; else y <= Q; end if;
							when Q => if Entradas = "000001" then y <= A; else y <= R; end if; 
							when R =>  y <= O; 
			
					  end case;
			   end if; 
			end process; 	
			
process(y)
begin 
     Salidas <= "00000000000";estados<="00000";
	  case y is
		    when A => estados <="00001";
			 when B => estados <="00010";
			 when C => Salidas <= "11000000000";estados<="00011";
		    when D => Salidas <= "00000100000";estados<="00100";
			 when E => Salidas <= "00000011000";estados<="00101";
			 when F => estados <="00110";
			 when G => Salidas <= "00100000100";estados<="00111";
			 when H => Salidas <= "00100010000";estados<="01000";
			 when I => estados <="01001";
			 when J => Salidas <= "10000000000";estados<="01010";
			 when K => estados <="01011";
			 when L => Salidas <= "00010000000";estados <="01100";
			 when M => Salidas <= "11011000010";estados <="01101";
			 when N => Salidas <= "00000000010";estados <="01110";
			 when O => Salidas <= "00000000001";estados <="01111";
			 when P => Salidas <= "00000000001";estados <="10000";
			 when Q => Salidas <= "00000000001";estados <="10001";
			 when R => Salidas <= "10000000000";estados <="10010";
			
			 when others => Salidas <= "00000000000";
	   end case; 
end process; 
end solv;