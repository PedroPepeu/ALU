-- Logic Unit
-- Autor: Pedro Pepeu
-- Date: 23/10/2024

-- Library and Packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity
entity lu is
	port
	(
		Ai, Bi	:	in	signed(8 downto 0);
		S	:	in	bit_vector(2 downto 0);
		H	:	out	signed(8 downto 0)	
	);
end entity lu;

-- Architecture
architecture main of lu is
begin

	H	<=	Ai and Bi	when	S = "000" else
			Ai or  Bi	when	S = "001" else 
			Ai xor Bi	when	S = "010" else
			not Ai;

end architecture main;

-- Configuration
