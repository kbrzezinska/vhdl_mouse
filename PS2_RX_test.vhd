--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:26:21 04/02/2020
-- Design Name:   
-- Module Name:   C:/Users/frygt/Desktop/studia/6 semestr/ucisw2/mysz/PS2_RX_test.vhd
-- Project Name:  mysz
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PS2_RX
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
 
ENTITY PS2_RX_test IS
END PS2_RX_test;
 
ARCHITECTURE behavior OF PS2_RX_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PS2_RX
    PORT(
         Clk_50MHz : IN  std_logic;
         PS2_Clk : IN  std_logic;
         PS2_Data : IN  std_logic;
         DO : OUT  std_logic_vector(7 downto 0);
         DO_Rdy : OUT  std_logic;
			rx_en:   IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
   signal PS2_Clk : std_logic := '1';
   signal PS2_Data : std_logic := '1';
	signal rx_en : std_logic := '1';
 	--Outputs
   signal DO : std_logic_vector(7 downto 0);
   signal DO_Rdy : std_logic;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PS2_RX PORT MAP (
          Clk_50MHz => Clk_50MHz,
          PS2_Clk => PS2_Clk,
          PS2_Data => PS2_Data,
          DO => DO,
          DO_Rdy => DO_Rdy,
			 rx_en => rx_en
        );

   -- Clock process definitions
   Clk_50MHz_process :process
   begin
		Clk_50MHz <= '0';
		wait for Clk_50MHz_period/2;
		Clk_50MHz <= '1';
		wait for Clk_50MHz_period/2;
   end process;
 
   -- Stimulus process
 
	PROCESS 
 		procedure TransmPS2( Byte : std_logic_vector( 7 downto 0 ) ) is 
 		  variable Frame : std_logic_vector( 10 downto 0 ) := "11" & Byte & '0'; 
 		begin 
 		  -- Parity calculation 
 		  for i in 0 to 7 loop 
 			Frame( 9 ) :=  '0';--Frame( 9 ) xor Byte( i ); 
 		  end loop; 
 		  -- Transmission of the frame; Fclk = 10kHz 
 		  for i in 0 to 10 loop 
 			PS2_Data <= Frame( i ); 
 			wait for 5 us; 
 			PS2_Clk <= '0', '1' after 50 us; 
 			wait for 95 us; 
		  end loop; 
		end procedure; 
	BEGIN 
		wait for 15 us; 
		TransmPS2( X"F0" ); 
		wait for 200 us; 
		TransmPS2( X"01" ); 
		wait; -- will wait forever 
	END PROCESS; 
END;
