-- Vhdl test bench created from schematic C:\Users\Lenovooo\Desktop\mysz\test_mouse.sch - Fri May 15 15:04:50 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY test_mouse_test_mouse_sch_tb IS
END test_mouse_test_mouse_sch_tb;
ARCHITECTURE behavioral OF test_mouse_test_mouse_sch_tb IS 

   COMPONENT test_mouse
   PORT( PS2_C	:	INOUT	STD_LOGIC; 
          PS2_D	:	INOUT	STD_LOGIC; 
          M_DONE_TICK	:	OUT	STD_LOGIC; 
          CLK_IN	:	IN	STD_LOGIC; 
          RESET_IN	:	IN	STD_LOGIC; 
          X	:	OUT	STD_LOGIC_VECTOR (8 DOWNTO 0); 
          BTN	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          Y	:	OUT	STD_LOGIC_VECTOR (8 DOWNTO 0));
   END COMPONENT;

   SIGNAL PS2_C	:	STD_LOGIC;
   SIGNAL PS2_D	:	STD_LOGIC;
   SIGNAL M_DONE_TICK	:	STD_LOGIC;
   SIGNAL CLK_IN	:	STD_LOGIC;
   SIGNAL RESET_IN	:	STD_LOGIC;
   SIGNAL X	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
   SIGNAL BTN	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL Y	:	STD_LOGIC_VECTOR (8 DOWNTO 0);

  constant clk_period : time := 50 ns;


BEGIN

   UUT: test_mouse PORT MAP(
		PS2_C => PS2_C, 
		PS2_D => PS2_D, 
		M_DONE_TICK => M_DONE_TICK, 
		CLK_IN => CLK_IN, 
		RESET_IN => RESET_IN, 
		X => X, 
		BTN => BTN, 
		Y => Y
   );

-- *** Test Bench - User Defined Section ***
    clk_process :process
   begin
		CLK_IN <= '0';
		wait for clk_period/2;
		CLK_IN <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   PS2_C  <= 'H';
   PS2_D <= 'H';

   stim_proc: process
   begin
      PS2_D <= 'Z';
      PS2_C  <= 'Z';
      loop
         wait until PS2_C'Delayed'Last_event > 100 us  and  PS2_C'Last_value = '0';
         -- 10 bits sent by the host
         for i in 1 to 10 loop
            PS2_C <= '0' after 50 us, 'Z' after 100 us;
            wait for 100 us;
         end loop;
         -- ACK sent by the device
         PS2_C  <= '0' after 50 us, 'Z' after 100 us;
         PS2_D <= '0' after 50 us, 'Z' after 100 us;
         wait for 100 us;
      end loop;
   end process;
	

END;
-- *** End Test Bench - User Defined Section ***

