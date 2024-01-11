-- library declarations
library ieee;
use ieee.std_logic_1164.all;

-- entity and port declarations
entity FSM is
	port( D     : in std_logic;
	      Z1, Z2: out std_logic);
end FSM;

architecture FSMb of FSM is
    type State_type is (A,B,C,E);
    signal y: State_type;
    begin
    process(clock,Resetn):
        begin
        if Resetn = '0' then
          y <= A;
        elsif (clock = '1' and clock'event):
            case y is 
