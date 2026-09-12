library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity ALU is
port(	clock:		in STD_LOGIC;					--input clock signal
		A,B:			in UNSIGNED(7 DOWNTO 0);	--8-bit inputs from latches A and B
		student_id:	in UNSIGNED(3 DOWNTO 0);	--4 bit student id from FSM
		OP:			in UNSIGNED(15 DOWNTO 0);	--16 bit selector for operation from Decoder
		Neg:			out STD_LOGIC;					--is the result negative? set -ve bit output
		R1:			out UNSIGNED(3 DOWNTO 0);	--lower 4-bits of 8-bit result output
		R2:			out UNSIGNED(3 DOWNTO 0));	--higher 4-bits of 8-bit result output
end ALU;
architecture calculation of ALU is		--temporary signal declarations
signal Reg1, Reg2, Result:	unsigned(7 DOWNTO 0) := (others => '0');
signal Reg4:					unsigned(0 to 7);
begin
Reg1 <= A;	--temporarily store A in Reg1 local variable
Reg2 <= B;	--temporarily store B in Reg2 local variable
process(Clock, OP)
begin
	if(rising_edge(Clock)) THEN	--do the calculation @ positive edge of clock cycle
		case OP is
			when "0000000000000001" => 
				Result <= Reg1 + Reg2;	--addition of reg1 and reg2
			when "0000000000000010" =>
				Result <= Reg1 - Reg2;	--subtraction
				if Reg2 > Reg1 then		--"Neg" bit set if required
					Neg <= '1';
				else 
					Neg <= '0';
				end if;
			when "0000000000000100" =>
				Result <= NOT Reg1;		--inverse
			when "0000000000001000" =>
				Result <= Reg1 NAND Reg2;--boolean NAND
			when "0000000000010000" =>
				Result <= NOT (Reg1 OR Reg2);--boolean NOR
			when "0000000000100000" =>
				Result <= Reg1 AND Reg2;--boolean AND
			when "0000000001000000" =>
				Result <= Reg1 XOR Reg2;--boolean XOR
			when "0000000010000000" =>
				Result <= Reg1 OR Reg2;--boolean OR
			when "0000000100000000" =>
				Result <= Reg1 XNOR Reg2;--boolean XNOR
			when OTHERS =>
				--do nothing
		end case;
	end if;
end process;
R1 <= Result(3 downto 0);	--splitting results to fit 2 seven seg displays
R2 <= Result(7 downto 4);	
end calculation;
				