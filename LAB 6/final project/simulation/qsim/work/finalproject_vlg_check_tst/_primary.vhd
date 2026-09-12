library verilog;
use verilog.vl_types.all;
entity finalproject_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        op_code         : in     vl_logic_vector(0 to 15);
        R1              : in     vl_logic_vector(3 downto 0);
        R2              : in     vl_logic_vector(3 downto 0);
        R_first_four    : in     vl_logic_vector(0 to 6);
        R_last_four     : in     vl_logic_vector(0 to 6);
        R_sign          : in     vl_logic_vector(0 to 6);
        std_id          : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end finalproject_vlg_check_tst;
