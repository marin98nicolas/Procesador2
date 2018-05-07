library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           out_op3 : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture Behavioral of UC is

begin
process(op, op3)
begin
	if(op="10")then
		case(op3) is
			when "000000" => --add
			out_op3 <= "000000";
			when "010000" => --addcc
			out_op3 <= "010000";
			when "001000" => --addx
			out_op3 <= "001000";
			when "011000" => --addXcc
			out_op3 <= "011000";
			when "000100" => --sub
			out_op3 <= "000100";
			when "010100" => --subcc
			out_op3 <= "010100";
			when "001100" => --subx
			out_op3 <= "001100";
			when "011100" => --subXcc
			out_op3 <= "011100";
			when "000001" => --and
			out_op3 <= "000001";
			when "000010" => --or
			out_op3 <= "000010";
			when "000011" => --xor 
			out_op3 <= "000011";
			when "000111" => --xnor
			out_op3 <= "000111";
			when "000101" => --nand
			out_op3 <= "000101";
			when "000110" => --nor
			out_op3 <= "000110";
			
			
			when "111100" => --save
			out_op3 <= "111100";
			when "111101" => --restore
			out_op3 <= "111101";
			when others =>
			out_op3 <= "111111";
		end case;
	end if;	
end process;

end Behavioral;