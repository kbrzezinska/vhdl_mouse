-- J.Sugier, 2014


   PS2_Clk  <= 'H';
   PS2_Data <= 'H';

   stim_proc: process
   begin
      PS2_Data <= 'Z';
      PS2_Clk  <= 'Z';
      loop
         wait until PS2_Clk'Delayed'Last_event > 100 us  and  PS2_Clk'Last_value = '0';
         -- 10 bits sent by the host
         for i in 1 to 10 loop
            PS2_Clk <= '0' after 50 us, 'Z' after 100 us;
            wait for 100 us;
         end loop;
         -- ACK sent by the device
         PS2_Clk  <= '0' after 50 us, 'Z' after 100 us;
         PS2_Data <= '0' after 50 us, 'Z' after 100 us;
         wait for 100 us;
      end loop;
   end process;
