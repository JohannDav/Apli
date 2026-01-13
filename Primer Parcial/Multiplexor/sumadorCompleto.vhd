library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity sumadorCompleto is
    port(
        bit_a             : in  STD_LOGIC;
        bit_b             : in  STD_LOGIC;
        acarreo_entrada   : in  STD_LOGIC;
        resultado         : out STD_LOGIC;
        acarreo_salida    : out STD_LOGIC
    );
end sumadorCompleto;

architecture comportamiento of sumadorCompleto is
    signal suma_parcial : STD_LOGIC;
begin
    suma_parcial    <= bit_a xor bit_b;
    resultado       <= suma_parcial xor acarreo_entrada;
    acarreo_salida  <= (bit_a and bit_b) or (suma_parcial and acarreo_entrada);
end comportamiento;