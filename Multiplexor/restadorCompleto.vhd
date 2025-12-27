library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity restadorCompleto is
    port(
        bit_a             : in  STD_LOGIC;
        bit_b             : in  STD_LOGIC;
        prestamo_entrada  : in  STD_LOGIC;
        diferencia        : out STD_LOGIC;
        prestamo_salida   : out STD_LOGIC
    );
end restadorCompleto;

architecture comportamiento of restadorCompleto is
    signal dif_parcial : STD_LOGIC;
begin
    dif_parcial      <= bit_a xor bit_b;
    diferencia       <= dif_parcial xor prestamo_entrada;
    prestamo_salida  <= ((not bit_a) and bit_b) or 
                       ((not dif_parcial) and prestamo_entrada);
end comportamiento;