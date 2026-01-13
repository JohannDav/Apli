library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador is
    Port( 
        -- ENTRADAS (Switches con pull-down en protoboard)
        -- Número B (3 bits)
        B2 : in std_logic;  -- PIN_2  -> Switch B2 (bit más significativo de B)
        B1 : in std_logic;  -- PIN_4  -> Switch B1 (bit medio de B)
        B0 : in std_logic;  -- PIN_6  -> Switch B0 (bit menos significativo de B)
        
        -- Número A (3 bits)  
        A2 : in std_logic;  -- PIN_8  -> Switch A2 (bit más significativo de A)
        A1 : in std_logic;  -- PIN_16 -> Switch A1 (bit medio de A)
        A0 : in std_logic;  -- PIN_18 -> Switch A0 (bit menos significativo de A)
        
        -- SALIDAS (LEDs con resistencia 330Ω a GND en protoboard)
        Cs : out std_logic;  -- PIN_33 -> LED Carry final (bit más significativo)
        S2 : out std_logic;  -- PIN_35 -> LED Bit 2 del resultado
        S1 : out std_logic;  -- PIN_37 -> LED Bit 1 del resultado
        S0 : out std_logic   -- PIN_39 -> LED Bit 0 del resultado (bit menos significativo)
    );
end sumador;

architecture sum of sumador is
    -- Carries internos (no salen al exterior)
    signal C0 : std_logic;  -- Carry del bit 0 al bit 1
    signal C1 : std_logic;  -- Carry del bit 1 al bit 2
    
begin  
    -- BIT 0 (menos significativo): B0 + A0
    S0 <= B0 XOR A0;        -- Suma bit 0
    C0 <= B0 AND A0;        -- Carry generado en bit 0
    
    -- BIT 1: B1 + A1 + C0 (carry anterior)
    S1 <= B1 XOR A1 XOR C0; -- Suma bit 1 con carry
    C1 <= (B1 AND A1) OR (B1 AND C0) OR (A1 AND C0); -- Carry bit 1
    
    -- BIT 2 (más significativo): B2 + A2 + C1 (carry anterior)
    S2 <= B2 XOR A2 XOR C1; -- Suma bit 2 con carry
    Cs <= (B2 AND A2) OR (B2 AND C1) OR (A2 AND C1); -- Carry final
    
end sum;