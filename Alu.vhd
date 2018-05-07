----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:22 05/03/2018 
-- Design Name: 
-- Module Name:    Alu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu is
    Port ( alu_op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           in_alu1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in_alu2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  carry : in  STD_LOGIC;
           out_alu : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin

process(alu_op3, in_alu1, in_alu2, carry)
begin
	 case (alu_op3) is 
      when "000000" => --add
		out_alu <= in_alu1 + in_alu2;
		when "010000" => --addcc
		out_alu <= in_alu1 + in_alu2;
		when "001000" => --addx
		out_alu <= in_alu1 + in_alu2 + carry ;
		when "011000" => --addXcc
		out_alu <= in_alu1 + in_alu2 + carry;
		when "000100" => --sub
		out_alu <= in_alu1 - in_alu2;
		when "010100" => --subcc
		out_alu <= in_alu1 - in_alu2;
		when "001100" => --subx
		out_alu <= in_alu1 - in_alu2 - carry;
		when "011100" => --subXcc
		out_alu <= in_alu1 - in_alu2 - carry;
		when "000001" => --and
		out_alu <= in_alu1 and in_alu2;
		when "000010" => --or
		out_alu <= in_alu1 or in_alu2;
		when "000011" => --xor
		out_alu <= in_alu1 xor in_alu2;
		when "000111" => --xnor
		out_alu <= in_alu1 xnor in_alu2;
		when "000101" => --nand
		out_alu <= in_alu1 nand in_alu2;
		when "000110" => --nor
		out_alu <= in_alu1 nor in_alu2;
      when others => 
		out_alu <= x"00000000";
   end case; 
end process;


end Behavioral;

