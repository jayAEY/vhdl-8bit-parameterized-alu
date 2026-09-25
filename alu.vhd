library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU is
-- 4 bit	
--	generic (N : integer :=4);

	generic (N : integer :=8);
	
	port (
		a, b		: in	std_logic_vector(N-1 downto 0);
		opcode	: in	std_logic_vector(2 downto 0);
		y			: out	std_logic_vector(N-1 downto 0);
		c_out		: out std_logic
	);
	
end ALU;



architecture ALU_arch of ALU is

	signal y_logic	: std_logic_vector(N-1 downto 0);
	
	signal a_unsigned, b_unsigned, y_unsigned 	: unsigned(N downto 0);
	signal a_signed, b_signed, y_signed 		  	: signed(N downto 0);
	
begin

	a_unsigned <= unsigned('0' & a);
	b_unsigned <= unsigned('0' & b);
	
	a_signed <= signed(a(N-1) & a);
	b_signed <= signed(b(N-1) & b);
	
	with opcode select
		y_logic 	  <= 	not a								when "000",
							a and b							when "001",
							a or b							when "010",
							a xor b							when "011",
							(others=>'0')					when others;				
							
	with opcode select
		y_unsigned <= 	a_unsigned + b_unsigned		when "100",
							a_unsigned - b_unsigned		when "101",
							(others=>'0')					when others;
							
	with opcode select
		y_signed   <= 	a_signed + b_signed			when "110",
							a_signed - b_signed			when "111",
							(others=>'0')					when others;

							
	y	<=	y_logic															when(opcode(2) = '0'	 ) else	
				std_logic_vector(y_unsigned(N-1 downto 0))		when(opcode		= "100") else
				std_logic_vector(y_unsigned(N-1 downto 0))		when(opcode		= "101") else
				std_logic_vector(y_signed(N-1 downto 0))			when(opcode		= "110") else
				std_logic_vector(y_signed(N-1 downto 0))			when(opcode 	= "111") else
				(others => 'Z');
			
   c_out <= std_logic(y_unsigned(N))								when(opcode		= "100") else
				std_logic(y_unsigned(N))								when(opcode		= "101") else
				std_logic(y_signed(N) xor y_signed(N-1))			when(opcode		= "110") else
				std_logic(y_signed(N) xor y_signed(N-1))			when(opcode		= "111") else
				'0';							

		
end ALU_arch;