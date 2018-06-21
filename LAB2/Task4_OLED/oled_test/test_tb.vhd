-------------------------------------------------------------------------------
--
-- application testbench
--
-------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--
-------------------------------------------------------------------------------
--
entity test_tb is
end test_tb;
--
-------------------------------------------------------------------------------
--
architecture behavior of test_tb is
    signal clk            : std_logic;
		
    signal fifo_empty     : std_logic;
    signal oled_consumed  : std_logic;

    signal fifo_rd_en     : std_logic;
    signal oled_valid_in  : std_logic;   

    constant clk_period	  : time := 5 ns;

begin

	uut: entity work.test port map (clk, fifo_empty, oled_consumed, fifo_rd_en, oled_valid_in);

	clk_process :process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;

	stim_proc: process
	begin
		fifo_empty <= '1';
		oled_consumed <= '0';
		wait for 20 ns;
		fifo_empty <= '0';
        wait for 20 ns;
        fifo_empty <= '1';
        wait for 20 ns;
        oled_consumed <= '1';
        wait for 20 ns;
        oled_consumed <= '0';
        wait for 50 ns;
        fifo_empty <= '0';
        wait for 20 ns;
        oled_consumed <= '1';
        wait for 20 ns;
        oled_consumed <= '0';
        wait for 20 ns;
        oled_consumed <= '1';
        wait for 20 ns;
        oled_consumed <= '0';
        wait for 20 ns;
        fifo_empty <= '1';
        wait for 20 ns;
        oled_consumed <= '1';
        wait for 20 ns;
        oled_consumed <= '0';
        wait for 20 ns;
		-- Stop simulation
		assert false report "Successfully finished simulation" severity failure;
		--wait;

	end process;

end;
--
-------------------------------------------------------------------------------
