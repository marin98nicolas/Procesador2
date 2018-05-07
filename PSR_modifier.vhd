----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:47:14 05/03/2018 
-- Design Name: 
-- Module Name:    PSR_modifier - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR_modifier is
    Port ( Mux_result : in  STD_LOGIC_VECTOR (31 downto 0);
           CRS1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Alu_result : in  STD_LOGIC_VECTOR (31 downto 0);
           Alu_op : in  STD_LOGIC_VECTOR (5 downto 0);
           out_psrM : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_modifier;

architecture Behavioral of PSR_modifier is

begin
process (CRS1, Mux_result, Alu_result, Alu_op)
        begin
		  
		  if( Alu_op = "010000" or Alu_op = "011000"  or Alu_op = "010100" or Alu_op = "011100" )then
                if Alu_op = "010000" or Alu_op = "011000" then
                     out_psrM(3) <= Alu_Result(31);
                    if Alu_Result = "00000000000000000000000000000000" then 
                         out_psrM(2) <= '1';
                    else
                         out_psrM(2) <= '0';
                    end if;
                     out_psrM(1) <= (CRS1(31) and Mux_result(31) and (not Alu_result(31))) or ((not CRS1(31)) and (not Mux_result(31)) and Alu_Result(31));
                     out_psrM(0) <= (CRS1(31) and Mux_result(31)) or ((not Alu_result(31)) and (CRS1(31) or Mux_result(31)));
                end if;
                
                if Alu_op = "010100" or Alu_op = "0111000" then
                     out_psrM(3) <= Alu_Result(31);
                    if Alu_Result = "00000000000000000000000000000000" then 
                        out_psrM(2) <= '1';
                    else
                        out_psrM(2) <= '0';
                    end if;
                     out_psrM(1) <= (CRS1(31) and (not Mux_result(31)) and (not Alu_Result(31))) or ((not CRS1(31)) and Mux_result(31) and Alu_Result(31));
                     out_psrM(0) <= ((not CRS1(31)) and Mux_result(31)) or (Alu_Result(31) and ((not CRS1(31)) or Mux_result(31)));
					end if;
				else 
				out_psrM <= "0000";	
				end if;	
			end process;		 
end Behavioral;


