--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:00:54 04/19/2020
-- Design Name:   
-- Module Name:   C:/Users/Lenovooo/Desktop/mysz/PS2_TX_test.vhd
-- Project Name:  mysz
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PS2_TX
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
 
ENTITY PS2_TX_test IS
END PS2_TX_test;
 
ARCHITECTURE behavior OF PS2_TX_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PS2_TX
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         wr_ps2 :  std_logic;
         ps2c_in : IN  std_logic;
         ps2d_in : IN  std_logic;
         ps2c_out : OUT  std_logic;
         ps2d_out : OUT  std_logic;
         tx_done_tick : OUT  std_logic;
         tx_idle : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal din : std_logic_vector(7 downto 0) := "01101010";---(others => '0');
   signal wr_ps2 : std_logic := '1';
   signal ps2c_in : std_logic := '0';
   signal ps2d_in : std_logic := '0';

 	--Outputs
   signal ps2c_out : std_logic;
   signal ps2d_out : std_logic;
   signal tx_done_tick : std_logic;
   signal tx_idle : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PS2_TX PORT MAP (
          clk => clk,
          reset => reset,
          din => din,
          wr_ps2 => wr_ps2,
          ps2c_in => ps2c_in,
          ps2d_in => ps2d_in,
          ps2c_out => ps2c_out,
          ps2d_out => ps2d_out,
          tx_done_tick => tx_done_tick,
          tx_idle => tx_idle
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
   ps2c_in  <= 'H';
   ps2d_in <= 'H';

   stim_proc: process
   begin
		--reset<='0' after 10 us;
      ps2d_in <= '1';
      ps2c_in  <= '1';
      loop
         wait until ps2c_out'Delayed'Last_event > 100 us  and  ps2c_out'Last_value = '0';
         -- 10 bits sent by the host
         for i in 1 to 10 loop
            ps2c_in <= '0' after 50 us, '1' after 100 us;
            wait for 100 us;
         end loop;
         -- ACK sent by the device
         ps2c_in  <= '0' after 50 us, '1' after 100 us;
         ps2d_in <= '0' after 50 us, '1' after 100 us;
         wait for 100 us;
      end loop;
   end process;
END;
