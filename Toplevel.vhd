-- library declarations
library ieee;
use ieee.std_logic_1164.all;

-- entity and port declarations
entity Toplevel is
	port( X1, X2, X3: in std_logic;
	      Z1, Z2    : out std_logic);
end Toplevel;

-- behavioural declarations
architecture Toplevelb of Toplevel is

	component SubCircuit
	port( A, B, C: in std_logic;
	      Z	     : out std_logic);
	end component;

	signal D: std_logic_vector(1 downto 0);

	begin
	inst1: Subcircuit port map(X1,X2,X2,D(0));
	inst2: Subcircuit port map(X1,X3,X2,D(1));
	inst3: Subcircuit port map(D(0),'1',D(1),Z1);
	inst4: Subcircuit port map(D(0),'1',D(1),Z2);

end Toplevelb;