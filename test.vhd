-- Vhdl test bench created from schematic C:\Users\Lenovooo\Desktop\mysz\schemat.sch - Tue May 05 11:52:24 2020
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
ENTITY schemat_schemat_sch_tb IS
END schemat_schemat_sch_tb;
ARCHITECTURE behavioral OF schemat_schemat_sch_tb IS 

   COMPONENT schemat
   PORT( PS_C	:	INOUT	STD_LOGIC; 
          PS_D	:	INOUT	STD_LOGIC; 
          CLK_IN	:	IN	STD_LOGIC; 
          RESET_IN	:	IN	STD_LOGIC; 
          WR_IN	:	IN	STD_LOGIC; 
          DIN_IN	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          TX_DONE_TICK	:	OUT	STD_LOGIC; 
          TX_IDLE	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL PS_C	:	STD_LOGIC;
   SIGNAL PS_D	:	STD_LOGIC;
   SIGNAL CLK_IN	:	STD_LOGIC :='0';
   SIGNAL RESET_IN	:	STD_LOGIC :='0';
   SIGNAL WR_IN	:	STD_LOGIC :='0';
   SIGNAL DIN_IN	:	STD_LOGIC_VECTOR (7 DOWNTO 0):= "01101010";---(others => '0');;
   SIGNAL TX_DONE_TICK	:	STD_LOGIC;
   SIGNAL TX_IDLE	:	STD_LOGIC;
  

  constant clk_period : time := 50 ns;


BEGIN

   UUT: schemat PORT MAP(
		PS_C => PS_C, 
		PS_D => PS_D,
		CLK_IN => CLK_IN, 
		RESET_IN => RESET_IN, 
		WR_IN => WR_IN, 
		DIN_IN => DIN_IN, 
		TX_DONE_TICK => TX_DONE_TICK, 
		TX_IDLE => TX_IDLE
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
   PS_C  <= 'H';
   PS_D <= 'H';

   stim_proc: process
   begin
      PS_D <= 'Z';
      PS_C  <= 'Z';
      loop
         wait until PS_C'Delayed'Last_event > 100 us  and  PS_C'Last_value = '0';
         -- 10 bits sent by the host
         for i in 1 to 10 loop
            PS_C <= '0' after 50 us, 'Z' after 100 us;
            wait for 100 us;
         end loop;
         -- ACK sent by the device
         PS_C  <= '0' after 50 us, 'Z' after 100 us;
         PS_D <= '0' after 50 us, 'Z' after 100 us;
         wait for 100 us;
      end loop;
   end process;
	
	process
	begin
	wait for 5 us;
	WR_IN<='1','0' after clk_period;
	DIN_IN<=x"AA";
	wait for 2 ms;
	WR_IN<='1','0' after clk_period;
	DIN_IN<=x"81";
	wait for 2 ms;
	end process;
END;