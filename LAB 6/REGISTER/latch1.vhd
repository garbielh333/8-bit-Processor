library ieee;
use ieee.std_logic_1164.all;

entity latch1 is
	port (	A: 				IN STD_LOGIC_VECTOR (7 DOWNTO 0);	--8 bit A input
				Resetn, clock:	IN STD_LOGIC;								--1 bit clock input and 1 bit reset input bit
				Q:					OUT STD_LOGIC_VECTOR (7 DOWNTO 0));	--8 bit output
end latch1;

architecture behaviour of latch1 is
begin
	process(Resetn, Clock)	--process takes reset and clock as inputs
	begin
		if Resetn='0' then	-- when reset input is '0' the latches do not operate
			Q <= "00000000";
		elsif Clock'EVENT AND Clock = '1' then		-- level sensitve based on clock
			Q <= A;
		end if;
	end process;
end behaviour;