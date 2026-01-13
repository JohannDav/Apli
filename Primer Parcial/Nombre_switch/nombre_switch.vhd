library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nombre_switch is
	Port (
		E3,E2,E1,E0 : in std_logic;
		salida : out std_logic_vector (15 downto 0)
		);
end nombre_switch;

architecture nombre of nombre_switch is
	signal entrada : std_logic_vector(3 downto 0);
	
begin
	entrada <= E3 & E2 & E1 & E0; --Concatenar entradas --
	
	process(entrada)
	begin
		case(entrada) is
			when "0000" => salida <= "0100100000010011";--J
			when "0001" => salida <= "0000000011111111";--O
			when "0010" => salida <= "0000001111001100";--H
			when "0011" => salida <= "0100100000110011";--A
			when "0100" => salida <= "0010010011001100";--N
			when "0101" => salida <= "0010010011001100";--N
			when "0110" => salida <= "1000010011000000";--D
			when "0111" => salida <= "0100100000110011";--A
			when "1000" => salida <= "0001010000000000";--V
			when "1001" => salida <= "0100100000110011";--I
			when "1010" => salida <= "1000010011000000";--D
			when others => salida <= "0000000100000000";
		end case;
	end process;
end nombre;