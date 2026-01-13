library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nombre_16_segmentos is
	Port (
		E3,E2,E1,E0 : in std_logic;
		salida : out std_logic_vector (16 downto 0)
		);
end nombre_16_segmentos;

architecture switch of nombre_16_segmentos is
	signal entrada : std_logic_vector(3 downto 0);
	
	begin
		entrada <= E3 & E2 & E1 & E0; --Concatenar entradas
		
		process(entrada)
		begin
			case(entrada) is
				when "0000" => salida <= "00110111111011011"; -- J invertido
				when "0001" => salida <= " "; -- O invertido
				when "0010" => salida <= "11001100001111111"; -- H invertido
				when "0011" => salida <= "00001100001111111"; -- A invertido
				when "0100" => salida <= "11001100110110111"; -- N invertido
				when "0101" => salida <= "11001100110110111"; -- N invertido
				when "0110" => salida <= "11111100110111101"; -- D invertido
				when "0111" => salida <= "00001100001111111"; -- A invertido
				when "1000" => salida <= "11111111110101111"; -- V invertido
				when "1001" => salida <= "00110011111011011"; -- I invertido
				when "1010" => salida <= "11111100110111101"; -- D invertido
				when others => salida <= "00000000000000000";
			end case;
		end process;
	end switch;