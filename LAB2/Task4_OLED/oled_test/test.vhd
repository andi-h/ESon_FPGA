-------------------------------------------------------------------------------
--
-- Application for RNG
--
-- GENERICS
--   length:     bit width of the random number
--   ro_polynom: generator polynom of the Ring Oscillator
--
-- INPUTS
--   CLK: clock input
--
--   BTNC: center button
--   BTNR: right button
--   SW:   switch 0
--
--   UART_RECEIVE: UART Rx input
--
-- OUTPUTS
--   LED:
--
--   SEVENSEG_CATH: eight cathodes of the 7-Segment display
--   SEVENSEG_AN:   eight annodes of the 7-Segment display
--
--   UART_TRANSMIT: UART Tx output
--
-------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
--
-------------------------------------------------------------------------------
--
entity test is
    generic (
        -- length of random number in bits
        length     : integer          := 64;
        -- polynom for random bit generator
        ro_polynom : std_logic_vector := "100011101"
    );
    port (
		clk      : in std_logic;
		
        fifo_empty : in std_logic;
        oled_consumed : in std_logic;

        fifo_rd_en : out std_logic;
        oled_valid_in : out std_logic        
	);
end test;
--
-------------------------------------------------------------------------------
--
architecture behavioral of test is
  signal fifo_data_rd_en_ff : std_logic_vector(1 downto 0) := "00";
  signal fifo_empty_neg_edge : std_logic := '0';
  signal oled_consumed_pos_edge : std_logic := '0';
  signal fifo_empty_ff : std_logic_vector(1 downto 0) := "00";
  signal oled_consumed_ff : std_logic_vector(1 downto 0) := "00";
  signal s_fifo_rd_en : std_logic := '0';

  begin
    
    oled_valid_in <= s_fifo_rd_en;
    fifo_rd_en <= s_fifo_rd_en;

    process (clk)
    begin
        if(clk'event and clk = '1') then    
            if(fifo_empty_neg_edge = '1' or (oled_consumed_pos_edge = '1' and fifo_empty = '0')) then
                --fifo_data_rd_en_ff(0) <= '1';
                s_fifo_rd_en <= '1';
            elsif oled_consumed = '1' then
                --fifo_data_rd_en_ff(0) <= '0';
                s_fifo_rd_en <= '0';
            end if;                 
        end if;
    end process;
    
    fifo_empty_edge : process(clk)
    begin
        if(clk'event and clk = '1') then 
            fifo_empty_ff <= fifo_empty_ff(0) & fifo_empty;

            if(fifo_empty_ff(0) = '0' and fifo_empty_ff(1) = '1') then
                fifo_empty_neg_edge <= '1';
            else 
                fifo_empty_neg_edge <= '0';
            end if;
        end if;   
    end process fifo_empty_edge;
    
    oled_consumed_edge : process(clk)
    begin
        if(clk'event and clk = '1') then 
            oled_consumed_ff <= oled_consumed_ff(0) & oled_consumed;

            if(oled_consumed_ff(0) = '0' and oled_consumed_ff(1) = '1') then
                oled_consumed_pos_edge <= '1';
            else 
                oled_consumed_pos_edge <= '0';
            end if;
        end if;   
    end process oled_consumed_edge;

end behavioral;