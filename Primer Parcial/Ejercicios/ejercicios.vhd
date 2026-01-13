library IEEE;
use IEEE.std_logic_1164.all;

entity ejercicios is
    port (
        E, D, C, B, A : in  std_logic;
        PRI, COPI, L1, L2, MA, ME, IG : out std_logic
    );
end entity ejercicios;

architecture Ecuacion of ejercicios is

begin
    PRI <= (not E and not D and not C and B) or
           (E and not D and not C and A) or
           (not E and not C and B and A) or
           (not E and not D and C and A) or
           (D and C and not B and A) or
           (E and C and B and A);

    COPI <= (B and A) or
            (C and A) or
            (C and B) or
            (D and B) or
            (D and C);

    L1 <= D xor C xor B xor A;

    L2 <= ((D xor C) and (not B and not A)) or
          ((B xor A) and (not D and not C)) or
          ((D and C) and (B and A));

    MA <= (E and not C and B and A) or
          (E and not D and not C and A) or
          (E and not D and B);

    ME <= (E and D and not B) or
          (E and D and not A) or
          (E and C and not B and not A);

    IG <= ( not (C xor A)) and E and (not (D  xor B));

end architecture Ecuacion;