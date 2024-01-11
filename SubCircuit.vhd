-- library declarations
library ieee;
use ieee.std_logic_1164.all;

-- entity and port declarations
entity SubCircuit is
	port( A, B, C: in std_logic;
	      Z	     : out std_logic);
end SubCircuit;

-- behavioural declarations
architecture SubCircuitb of SubCircuit is
	signal s1,s2: std_logic;
	begin
        s1 <= A nand B;
        s2 <= A nand not C;
        Z <= s1 or s2;

end SubCircuitb;