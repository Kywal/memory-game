LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY comparador IS
GENERIC(W : NATURAL := 3);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		eq : OUT STD_LOGIC; -- a = b
		gt : OUT STD_LOGIC; -- a > b
		lt : OUT STD_LOGIC); -- a < b
END comparador;

ARCHITECTURE behavior OF comparador IS
BEGIN
	lt <= '1' WHEN (a < b) ELSE '0';
	eq <= '1' WHEN (a = b) ELSE '0';
	gt <= '1' WHEN (a > b) ELSE '0';
END behavior;