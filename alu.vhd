-- Arithmetic Logic Unit
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

-- Library and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity
entity alu is
	port
	(
		Ai, Bi			:	in	signed(8 downto 0);
		S2, S1, S0		:	in	bit;
		M			:	in	bit;
		Fi			:	out	signed(8 downto 0)
	);
end entity alu;

-- Architecture
architecture main of alu is
	signal S	:	bit_vector(2 downto 0);
	signal G, H	:	signed(8 downto 0);
begin
	
	S	<=	S2 & S1 & S0;

	AU: entity work.au(main)
		port map
		(
			Ai	=>	Ai,
			Bi	=>	Bi,
			S	=>	S,
			G	=>	G
		);

	LU: entity work.lu(main)
		port map
		(
			Ai	=>	Ai,
			Bi	=>	Bi,
			S	=>	S,
			H	=>	H
		);

	Fi	<=	G 	when	M = '0'	else	H;

end architecture main;

-- Configuration
