library verilog;
use verilog.vl_types.all;
entity finalproject is
    port(
        current_state   : out    vl_logic_vector(3 downto 0);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        op_code         : out    vl_logic_vector(0 to 15);
        dec_en          : in     vl_logic;
        R1              : out    vl_logic_vector(3 downto 0);
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(3 downto 0);
        R_first_four    : out    vl_logic_vector(0 to 6);
        R_last_four     : out    vl_logic_vector(0 to 6);
        R_sign          : out    vl_logic_vector(0 to 6);
        std_id          : out    vl_logic_vector(0 to 6)
    );
end finalproject;
