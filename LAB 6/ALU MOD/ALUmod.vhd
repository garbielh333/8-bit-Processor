library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity ALUmod is
port(	clock:		in STD_LOGIC;					--input clock signal
		A,B:			in UNSIGNED(7 DOWNTO 0);	--8-bit inputs from latches A and B
		student_id:	in UNSIGNED(3 DOWNTO 0);	--4 bit student id from FSM
		OP:			in UNSIGNED(15 DOWNTO 0);	--16 bit selector for operation from Decoder
		R1:			out UNSIGNED(3 DOWNTO 0);	--lower 4-bits of 8-bit result output
		R2:			out UNSIGNED(3 DOWNTO 0));	--higher 4-bits of 8-bit result output
end ALUmod;
architecture calculation of ALUmod is		--temporary signal declarations
signal Reg1, Reg2, Result:	unsigned(7 DOWNTO 0) := (others => '0');
signal Reg4:					unsigned(0 to 7);
begin
Reg1 <= A;	--temporarily store A in Reg1 local variable
Reg2 <= B;	--temporarily store B in Reg2 local variable
process(Clock, OP)
begin
	if(rising_edge(Clock)) THEN	--do the calculation @ positive edge of clock cycle
		case OP is						-- assigned problem set: A
			when "0000000000000001" => 
				Result <= Reg1 + 2;	--increment A by 2
			when "0000000000000010" =>
				Result <= "00" & Reg2(7 downto 2);			--shift B right 2 bits, input bit = 0
			when "0000000000000100" =>
				Result <= "1111" & Reg1(7 downto 4);		--shift A right 4 bits, input bit = 1
			when "0000000000001000" =>
				if Reg1 > Reg2 then				--min(A,B)
					Result <= Reg2;
				else
					Result <= Reg1;
				end if;
			when "0000000000010000" =>
				Result <= Reg1(1 downto 0) & Reg1(7 downto 2);--rotate A right 2 bits
			when "0000000000100000" =>
				Result <= Reg2(0) & Reg2(1) & Reg2(2) & Reg2(3) & Reg2(4) & Reg2(5) & Reg2(6) & Reg2(7); --invert bit significance order of B
			when "0000000001000000" =>
				Result <= Reg1 XOR Reg2;--boolean XOR
			when "0000000010000000" =>
				Result <= (Reg1 + Reg2) - 4;
			when "0000000100000000" =>
				Result <= "11111111";	--display all 1s
			when OTHERS =>
				--do nothing
		end case;
	end if;
end process;
R1 <= Result(3 downto 0);	--splitting results to fit 2 seven seg displays
R2 <= Result(7 downto 4);	
end calculation;
				