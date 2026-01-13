library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity combinatorios is
    Port (
        A, B, C, D, E : in std_logic;
        Y_impares, Y_maquina : out std_logic;
        L1, L2 : out std_logic;
        MA, IG, ME : out std_logic
    );
end combinatorios;

architecture todos of combinatorios is
    
begin
    -- Circuito IMPARES
    Y_impares <= ((Not E) AND (NOT D) AND (NOT C) AND (B)) OR 
                 ((NOT E) AND (NOT D) AND (C) AND (A)) OR 
                 ((E) AND (NOT D) AND (NOT C) AND (A)) OR 
                 ((NOT E) AND (NOT C) AND (B) AND (A)) OR 
                 ((D) AND (C) AND (NOT B) AND (A)) OR 
                 (E AND C AND B AND A);
    
    -- Circuito MAQUINA
    Y_maquina <= (D AND C) OR (B AND A) OR (C AND A) OR (C AND B) OR (D AND B);
    
    -- Circuito LAMPARAS
    L1 <= D XOR C XOR B XOR A;
    L2 <= ((NOT D) AND (NOT C) AND (B XOR A)) OR 
          ((NOT B) AND (NOT A) AND (D XOR C)) OR 
          (D AND C AND B AND A);
    
    -- Circuito JUEGO
    MA <= (E AND (NOT D) AND (NOT C) AND (A)) OR 
          (E AND ( NOT C) AND B AND A) OR 
          (E AND (NOT D) AND B);
    IG <= E AND ((NOT (C XOR A)) AND (NOT (D XOR B)));
    ME <= (E AND D AND C AND (NOT A)) OR 
          (E AND D AND (NOT B)) OR 
          (E AND C AND (NOT B) AND (NOT A));
    
end todos;