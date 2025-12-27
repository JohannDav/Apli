library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity multiplexor is
    port (
        entrada_a    : in  STD_LOGIC_VECTOR (1 downto 0);
        entrada_b    : in  STD_LOGIC_VECTOR (1 downto 0);
        selector     : in  STD_LOGIC_VECTOR (2 downto 0);
        resultado    : out STD_LOGIC_VECTOR (4 downto 0)
    );
end multiplexor;

architecture componentes of multiplexor is
    signal acarreo_suma      : STD_LOGIC_VECTOR (1 downto 0);
    signal resultado_suma    : STD_LOGIC_VECTOR (1 downto 0);
    signal prestamo_resta    : STD_LOGIC_VECTOR (1 downto 0);
    signal resultado_resta   : STD_LOGIC_VECTOR (1 downto 0);
    signal es_cero_resultado : STD_LOGIC;
    signal menor_que         : STD_LOGIC;
    signal igual_a           : STD_LOGIC;
    signal mayor_que         : STD_LOGIC;
    signal resultado_and     : STD_LOGIC_VECTOR(1 downto 0);
    signal resultado_or      : STD_LOGIC_VECTOR(1 downto 0);
    signal resultado_xor     : STD_LOGIC_VECTOR(1 downto 0);
    signal resultado_not     : STD_LOGIC_VECTOR(1 downto 0);
    
    COMPONENT semiSumador
    PORT(
        bit_a     : in  STD_LOGIC;
        bit_b     : in  STD_LOGIC;
        resultado : out STD_LOGIC;
        acarreo   : out STD_LOGIC
    );
    END COMPONENT;

    COMPONENT sumadorCompleto
    PORT(
        bit_a             : in  STD_LOGIC;
        bit_b             : in  STD_LOGIC;
        acarreo_entrada   : in  STD_LOGIC;
        resultado         : out STD_LOGIC;
        acarreo_salida    : out STD_LOGIC
    );
    END COMPONENT;

    COMPONENT semiRestador
    PORT(
        bit_a         : in  STD_LOGIC;
        bit_b         : in  STD_LOGIC;
        diferencia    : out STD_LOGIC;
        prestamo      : out STD_LOGIC
    );
    END COMPONENT;

    COMPONENT restadorCompleto
    PORT(
        bit_a             : in  STD_LOGIC;
        bit_b             : in  STD_LOGIC;
        prestamo_entrada  : in  STD_LOGIC;
        diferencia        : out STD_LOGIC;
        prestamo_salida   : out STD_LOGIC
    );
    END COMPONENT;

begin
    INST_semisumador: semiSumador PORT MAP(
        bit_a     => entrada_a(0),
        bit_b     => entrada_b(0),
        acarreo   => acarreo_suma(0),
        resultado => resultado_suma(0)
    );

    INST_sumadorCompleto: sumadorCompleto PORT MAP(
        bit_a             => entrada_a(1),
        bit_b             => entrada_b(1),
        acarreo_entrada   => acarreo_suma(0),
        acarreo_salida    => acarreo_suma(1),
        resultado         => resultado_suma(1)
    );

    INST_semiRestador: semiRestador PORT MAP(
        bit_a         => entrada_a(0),
        bit_b         => entrada_b(0),
        diferencia    => resultado_resta(0),
        prestamo      => prestamo_resta(0)
    );

    INST_restadorCompleto: restadorCompleto PORT MAP(
        bit_a             => entrada_a(1),
        bit_b             => entrada_b(1),
        prestamo_entrada  => prestamo_resta(0),
        prestamo_salida   => prestamo_resta(1),
        diferencia        => resultado_resta(1)
    );

    es_cero_resultado <= not(resultado_resta(1) or resultado_resta(0));
    
    menor_que <= prestamo_resta(1);
    igual_a   <= es_cero_resultado;
    mayor_que <= (not prestamo_resta(1)) and (not es_cero_resultado);

    resultado_and(0) <= entrada_a(0) and entrada_b(0);
    resultado_and(1) <= entrada_a(1) and entrada_b(1);
    
    resultado_or(0) <= entrada_a(0) or entrada_b(0);
    resultado_or(1) <= entrada_a(1) or entrada_b(1);
    
    resultado_xor(0) <= entrada_a(0) xor entrada_b(0);
    resultado_xor(1) <= entrada_a(1) xor entrada_b(1);
    
    resultado_not(0) <= not(entrada_a(0));
    resultado_not(1) <= not(entrada_a(1));

    proceso_multiplexor: process(
        selector, resultado_suma, acarreo_suma, resultado_resta, 
        prestamo_resta, menor_que, igual_a, mayor_que,
        resultado_and, resultado_or, resultado_xor, resultado_not
    )
    begin
        resultado <= (others => '0');
        
        case selector is
            when "000" =>  -- SUMA
                resultado(2) <= acarreo_suma(1);
                resultado(1) <= resultado_suma(1);
                resultado(0) <= resultado_suma(0);
            
            when "001" =>  -- RESTA
                resultado(2) <= prestamo_resta(1);
                resultado(1) <= resultado_resta(1);
                resultado(0) <= resultado_resta(0);
            
            when "010" =>  -- COMPARACIÓN
                resultado(2) <= menor_que;
                resultado(1) <= igual_a;
                resultado(0) <= mayor_que;
            
            when "011" =>  -- NADA
                resultado <= (others => '0');
            
            when "100" =>  -- AND
                resultado(2) <= resultado_and(1);
                resultado(1) <= resultado_and(0);
            
            when "101" =>  -- OR
                resultado(2) <= resultado_or(1);
                resultado(1) <= resultado_or(0);
            
            when "110" =>  -- XOR
                resultado(2) <= resultado_xor(1);
                resultado(1) <= resultado_xor(0);
            
            when "111" =>  -- NOT
                resultado(2) <= resultado_not(1);
                resultado(1) <= resultado_not(0);
            
            when others =>
                resultado <= (others => '0');
        end case;
    end process proceso_multiplexor;
    
end architecture componentes;