-- Vhdl test bench created from schematic C:\Users\Lenovooo\Desktop\mysz\schemat.sch - Tue May 05 11:49:35 2020
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
          PS_D	:	INOUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL PS_C	:	STD_LOGIC;
   SIGNAL PS_D	:	STD_LOGIC;

BEGIN

   UUT: schemat PORT MAP(
		PS_C => PS_C, 
		PS_D => PS_D
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
