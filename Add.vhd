----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:32 05/03/2018 
-- Design Name: 
-- Module Name:    Add - arq_Add 
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

entity Add is
    Port ( in_add : in  STD_LOGIC_VECTOR (31 downto 0);
           num : in  STD_LOGIC_VECTOR (31 downto 0);
           out_add : out  STD_LOGIC_VECTOR (31 downto 0));
end Add;

architecture arq_Add of Add is

begin

	out_add <= num + in_add;


end arq_Add;

