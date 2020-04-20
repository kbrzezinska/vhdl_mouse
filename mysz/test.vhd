-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT PS2_RX
          PORT(
                  Clk_50MHz : in STD_LOGIC;   -- syg zegar
						PS2_Clk: in STD_LOGIC;
						PS2_Data : in STD_LOGIC; 
						DO : out STD_LOGIC_VECTOR (7 DOWNTO 0); 
						DO_Rdy: out STD_LOGIC --zakonczenie odbioru bajtu
                  );
          END COMPONENT;
			
			--input
          SIGNAL Clk_50MHz:  std_logic := '0';
          SIGNAL PS2_Clk:  std_logic := '1';
          SIGNAL PS2_Data : std_logic := '1';
			--output
			 SIGNAL DO: std_logic_vector (7 downto 0);
			 SIGNAL DO_Rdy: std_logic; 
			 
			 constant Clk_period: time := 30ns;

  BEGIN

  -- Component Instantiation
          uut: PS2_RX PORT MAP(
                  Clk_50MHz => Clk_50MHz,
						PS2_Clk => PS2_Clk,
						PS2_Data => PS2_Data, 
						DO => DO, 
						DO_Rdy => DO_Rdy
          );


	Clk: PROCESS
	begin 
			Clk_50MHz <= '0'; 
			wait for Clk_period/2;
			Clk_50Mhz <= '1';
			wait for Clk_period/2;
	END PROCESS;


	PROCESS
		procedure TransmPS2( Byte : std_logic_vector( 7 downto 0 ) ) is
		  variable Frame : std_logic_vector( 10 downto 0 ) := "11" & Byte & '0';
		begin
		  -- Parity calculation
		  for i in 0 to 7 loop
			Frame( 9 ) := Frame( 9 ) xor Byte( i );
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
		TransmPS2( X"81" );
		wait; -- will wait forever
	END PROCESS;

  END;
