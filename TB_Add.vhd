--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:50:21 05/03/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/common/Procesador2/TB_Add.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Add
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Add IS
END TB_Add;
 
ARCHITECTURE behavior OF TB_Add IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Add
    PORT(
         in_add : IN  std_logic_vector(31 downto 0);
         num : IN  std_logic_vector(31 downto 0);
         out_add : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_add : std_logic_vector(31 downto 0) := (others => '0');
   signal num : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal out_add : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Add PORT MAP (
          in_add => in_add,
          num => num,
          out_add => out_add
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		num <= x"00000001";
		in_add <= x"00000001";
      wait for 100 ns;	
		in_add <= x"00000002";
      wait for 100 ns;	
		in_add <= x"00000003";
      wait;
   end process;

END;
