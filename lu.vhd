-- Logic Unit
-- Autor: Pedro Pepeu
-- Date: 23/10/2024

-- Library and Packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

-- Entity
entity lu is
	port
	(
		Ai, Bi	:	in	unsigned(7 downto 0);
		S	:	in	bit_vector(1 downto 0);
		H	:	out	unsigned(7 downto 0)	
	);
end entity lu;

-- Architecture
architecture main of lu is
begin

	H	<=	Ai and Bi	when	S = "00" else
		     	Ai or  Bi	when	S = "01" else 
		    	Ai xor Bi	when	S = "10" else
			not Ai;

end architecture main;

-- Configuration
