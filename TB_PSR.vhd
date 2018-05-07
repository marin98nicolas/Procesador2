--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:44 05/03/2018
-- Design Name:   
-- Module Name:   C:/Users/Nicolas/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/common/Procesador2/TB_PSR.vhd
-- Project Name:  Procesador2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR
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
 
ENTITY TB_PSR IS
END TB_PSR;
 
ARCHITECTURE behavior OF TB_PSR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR
    PORT(
         cwp : IN  std_logic;
         nzvcin : IN  std_logic_vector(3 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         cout : OUT  std_logic;
         ncwp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cwp : std_logic := '0';
   signal nzvcin : std_logic_vector(3 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal ncwp : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR PORT MAP (
          cwp => cwp,
          nzvcin => nzvcin,
          reset => reset,
          clk => clk,
          cout => cout,
          ncwp => ncwp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     reset <= '1';
      wait for 100 ns;	
		reset <= '0';
		wait for 100 ns;
		cwp <= '0';
		nzvcin <= "1001";
		wait for 100 ns;
		cwp <= '1';
		nzvcin <= "1010";

      wait;
   end process;

END;
