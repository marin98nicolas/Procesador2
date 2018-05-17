--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:13:34 05/15/2018
-- Design Name:   
-- Module Name:   E:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/common/Procesador2/TB_WindowsManager.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Windows_manager
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
 
ENTITY TB_WindowsManager IS
END TB_WindowsManager;
 
ARCHITECTURE behavior OF TB_WindowsManager IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Windows_manager
    PORT(
         in_rs1 : IN  std_logic_vector(4 downto 0);
         in_rs2 : IN  std_logic_vector(4 downto 0);
         in_rd : IN  std_logic_vector(4 downto 0);
         in_op : IN  std_logic_vector(1 downto 0);
         in_op3 : IN  std_logic_vector(5 downto 0);
         in_cwp : IN  std_logic;
         out_rs1 : OUT  std_logic_vector(5 downto 0);
         out_rs2 : OUT  std_logic_vector(5 downto 0);
         out_rd : OUT  std_logic_vector(5 downto 0);
         out_ncwp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal in_rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal in_rd : std_logic_vector(4 downto 0) := (others => '0');
   signal in_op : std_logic_vector(1 downto 0) := (others => '0');
   signal in_op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal in_cwp : std_logic := '0';

 	--Outputs
   signal out_rs1 : std_logic_vector(5 downto 0);
   signal out_rs2 : std_logic_vector(5 downto 0);
   signal out_rd : std_logic_vector(5 downto 0);
   signal out_ncwp : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Windows_manager PORT MAP (
          in_rs1 => in_rs1,
          in_rs2 => in_rs2,
          in_rd => in_rd,
          in_op => in_op,
          in_op3 => in_op3,
          in_cwp => in_cwp,
          out_rs1 => out_rs1,
          out_rs2 => out_rs2,
          out_rd => out_rd,
          out_ncwp => out_ncwp
        );


 


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      

      wait;
   end process;

END;
