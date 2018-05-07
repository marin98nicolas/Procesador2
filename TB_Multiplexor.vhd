--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:38:55 05/03/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/common/Procesador2/TB_Multiplexor.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplexor
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
 
ENTITY TB_Multiplexor IS
END TB_Multiplexor;
 
ARCHITECTURE behavior OF TB_Multiplexor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplexor
    PORT(
         in_rs2 : IN  std_logic_vector(31 downto 0);
         in_imm : IN  std_logic_vector(31 downto 0);
         i : IN  std_logic;
         out_mux : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_rs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal in_imm : std_logic_vector(31 downto 0) := (others => '0');
   signal i : std_logic := '0';

 	--Outputs
   signal out_mux : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexor PORT MAP (
          in_rs2 => in_rs2,
          in_imm => in_imm,
          i => i,
          out_mux => out_mux
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      i <= '0';
		in_rs2 <= "00000000000000000000000000010100";
		wait for 20 ns;
		i <= '1';
		in_imm <= "00000000000000000000000000000001";
		wait for 20 ns;
		i <= '0';
		in_rs2 <= "00001001000000000000000000010100";
		wait for 20 ns;

      i <= '1';
		in_imm <= "00000000000000000000000000000011";

      wait;
   end process;

END;
