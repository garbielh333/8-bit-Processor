library verilog;
use verilog.vl_types.all;
entity ALUmod2 is
    port(
        clock           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        OP              : in     vl_logic_vector(15 downto 0);
        R               : out    vl_logic_vector(3 downto 0)
    );
end ALUmod2;
