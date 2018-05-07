--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:30:25 05/03/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/common/Procesador2/TB_Alu.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu
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
 
ENTITY TB_Alu IS
END TB_Alu;
 
ARCHITECTURE behavior OF TB_Alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu
    PORT(
         alu_op3 : IN  std_logic_vector(5 downto 0);
         in_alu1 : IN  std_logic_vector(31 downto 0);
         in_alu2 : IN  std_logic_vector(31 downto 0);
         out_alu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal alu_op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal in_alu1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in_alu2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal out_alu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          alu_op3 => alu_op3,
          in_alu1 => in_alu1,
          in_alu2 => in_alu2,
          out_alu => out_alu
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
      wait for 100 ns;	
		in_alu1 <= "00000000000000000000000000111000";
		in_alu2 <= "00000000000000000000000000001111";
		alu_op3 <= "000000";
		wait for 100 ns;	
		alu_op3 <= "000001";
		wait for 100 ns;	
		alu_op3 <= "000010";
		wait for 100 ns;	
		alu_op3 <= "000011";
      

      -- insert stimulus here 

      wait;
   end process;

END;
