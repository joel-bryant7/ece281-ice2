--+----------------------------------------------------------------------------
--| 
--| COPYRIGHT 2017 United States Air Force Academy All rights reserved.
--| 
--| United States Air Force Academy     __  _______ ___    _________ 
--| Dept of Electrical &               / / / / ___//   |  / ____/   |
--| Computer Engineering              / / / /\__ \/ /| | / /_  / /| |
--| 2354 Fairchild Drive Ste 2F6     / /_/ /___/ / ___ |/ __/ / ___ |
--| USAF Academy, CO 80840           \____//____/_/  |_/_/   /_/  |_|
--| 
--| ---------------------------------------------------------------------------
--|
--| FILENAME      : halfAdder_tb.vhd
--| AUTHOR(S)     : Capt Warner
--| CREATED       : 01/17/2017
--| DESCRIPTION   : This file implements a half adder test bench.
--|
--| DOCUMENTATION : None
--|
--+----------------------------------------------------------------------------
--|
--| REQUIRED FILES :
--|
--|    Libraries : ieee
--|    Packages  : std_logic_1164, numeric_std, unisim
--|    Files     : halfAdder.vhd
--|
--+----------------------------------------------------------------------------
--|
--| NAMING CONVENSIONS :
--|
--|    xb_<port name>           = off-chip bidirectional port ( _pads file )
--|    xi_<port name>           = off-chip input port         ( _pads file )
--|    xo_<port name>           = off-chip output port        ( _pads file )
--|    b_<port name>            = on-chip bidirectional port
--|    i_<port name>            = on-chip input port
--|    o_<port name>            = on-chip output port
--|    c_<signal name>          = combinatorial signal
--|    f_<signal name>          = synchronous signal
--|    ff_<signal name>         = pipeline stage (ff_, fff_, etc.)
--|    <signal name>_n          = active low signal
--|    w_<signal name>          = top level wiring signal
--|    g_<generic name>         = generic
--|    k_<constant name>        = constant
--|    v_<variable name>        = variable
--|    sm_<state machine type>  = state machine type definition
--|    s_<signal name>          = state name
--|
--+----------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  
entity halfAdder_tb is
end halfAdder_tb;

architecture test_bench of halfAdder_tb is 
	
  -- declare the component of your top-level design unit under test (UUT)
  component halfAdder is
	port(
		i_A     : in  std_logic; -- 1-bit input port
		i_B     : in  std_logic; 
		o_S     : out std_logic  -- 1-bit output port
								 -- (NOTE: NO semicolon on LAST port only!)
		-- TODO:  Carry port
	); -- the semicolon is here instead	
  end component;

  
  -- declare signals needed to stimulate the UUT inputs
  signal i_sw1 : std_logic := '0';
  -- TODO:  sw0 signal
  
  -- also need signals for the outputs of the UUT
  signal o_led1 : std_logic := '0';
  -- TODO:  led0 signal

  
begin
	-- PORT MAPS ----------------------------------------

	-- map ports for any component instances (port mapping is like wiring hardware)
	halfAdder_inst : halfAdder port map (
		i_A     => i_sw1, -- notice comma (not a semicolon)
		i_B     => i_sw0,
		o_S     => o_led0 -- no comma on LAST one
		-- TODO:  map Cout 
	);

	-- CONCURRENT STATEMENTS ----------------------------

	
	-- PROCESSES ----------------------------------------
	
	-- Test Plan Process --------------------------------
	-- Implement the test plan here.  Body of process is continuously from time = 0  
	test_process : process 
	begin
	
		i_sw1 <= '0'; i_sw0 <= '0'; wait for 10 ns;
		-- TODO:  rest of test plan
		
		wait; -- wait forever
	end process;	
	-----------------------------------------------------	
	
end test_bench;
