-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ConvertWidthC is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    N_pipe_0_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    N_pipe_0_V_V_empty_n : IN STD_LOGIC;
    N_pipe_0_V_V_read : OUT STD_LOGIC;
    c_pipes_0_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    c_pipes_0_V_V_empty_n : IN STD_LOGIC;
    c_pipes_0_V_V_read : OUT STD_LOGIC;
    c_pipes_1_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    c_pipes_1_V_V_empty_n : IN STD_LOGIC;
    c_pipes_1_V_V_read : OUT STD_LOGIC;
    out_V_V_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of ConvertWidthC is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv41_0 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv41_1 : STD_LOGIC_VECTOR (40 downto 0) := "00000000000000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal N_pipe_0_V_V_blk_n : STD_LOGIC;
    signal c_pipes_0_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln401_reg_191 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_pipes_1_V_V_blk_n : STD_LOGIC;
    signal out_V_V_blk_n : STD_LOGIC;
    signal indvar_flatten11_reg_129 : STD_LOGIC_VECTOR (40 downto 0);
    signal bound4_fu_160_p2 : STD_LOGIC_VECTOR (40 downto 0);
    signal bound4_reg_186 : STD_LOGIC_VECTOR (40 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal icmp_ln401_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln401_fu_171_p2 : STD_LOGIC_VECTOR (40 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_fu_148_p3 : STD_LOGIC_VECTOR (38 downto 0);
    signal p_shl_fu_140_p3 : STD_LOGIC_VECTOR (40 downto 0);
    signal p_shl14_fu_156_p1 : STD_LOGIC_VECTOR (40 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten11_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln401_fu_166_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                indvar_flatten11_reg_129 <= add_ln401_fu_171_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten11_reg_129 <= ap_const_lv41_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    bound4_reg_186(40 downto 7) <= bound4_fu_160_p2(40 downto 7);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln401_reg_191 <= icmp_ln401_fu_166_p2;
            end if;
        end if;
    end process;
    bound4_reg_186(6 downto 0) <= "0000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, N_pipe_0_V_V_empty_n, icmp_ln401_fu_166_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln401_fu_166_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln401_fu_166_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    N_pipe_0_V_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, N_pipe_0_V_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            N_pipe_0_V_V_blk_n <= N_pipe_0_V_V_empty_n;
        else 
            N_pipe_0_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    N_pipe_0_V_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, N_pipe_0_V_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            N_pipe_0_V_V_read <= ap_const_logic_1;
        else 
            N_pipe_0_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    add_ln401_fu_171_p2 <= std_logic_vector(unsigned(indvar_flatten11_reg_129) + unsigned(ap_const_lv41_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(c_pipes_0_V_V_empty_n, c_pipes_1_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln401_reg_191)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln401_reg_191 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_1_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_0_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(c_pipes_0_V_V_empty_n, c_pipes_1_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln401_reg_191)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln401_reg_191 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_1_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_0_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(c_pipes_0_V_V_empty_n, c_pipes_1_V_V_empty_n, out_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln401_reg_191)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln401_reg_191 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_1_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_0_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, N_pipe_0_V_V_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_const_logic_0 = N_pipe_0_V_V_empty_n) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(c_pipes_0_V_V_empty_n, c_pipes_1_V_V_empty_n, out_V_V_full_n, icmp_ln401_reg_191)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((icmp_ln401_reg_191 = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_1_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln401_reg_191 = ap_const_lv1_0) and (c_pipes_0_V_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln401_fu_166_p2)
    begin
        if ((icmp_ln401_fu_166_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound4_fu_160_p2 <= std_logic_vector(unsigned(p_shl_fu_140_p3) - unsigned(p_shl14_fu_156_p1));

    c_pipes_0_V_V_blk_n_assign_proc : process(c_pipes_0_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln401_reg_191)
    begin
        if (((icmp_ln401_reg_191 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_pipes_0_V_V_blk_n <= c_pipes_0_V_V_empty_n;
        else 
            c_pipes_0_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    c_pipes_0_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln401_reg_191, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln401_reg_191 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_pipes_0_V_V_read <= ap_const_logic_1;
        else 
            c_pipes_0_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    c_pipes_1_V_V_blk_n_assign_proc : process(c_pipes_1_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln401_reg_191)
    begin
        if (((icmp_ln401_reg_191 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_pipes_1_V_V_blk_n <= c_pipes_1_V_V_empty_n;
        else 
            c_pipes_1_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    c_pipes_1_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln401_reg_191, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln401_reg_191 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_pipes_1_V_V_read <= ap_const_logic_1;
        else 
            c_pipes_1_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln401_fu_166_p2 <= "1" when (indvar_flatten11_reg_129 = bound4_reg_186) else "0";

    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln401_reg_191)
    begin
        if (((icmp_ln401_reg_191 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= (c_pipes_1_V_V_dout & c_pipes_0_V_V_dout);

    out_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln401_reg_191, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln401_reg_191 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_V_V_write <= ap_const_logic_1;
        else 
            out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    p_shl14_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_148_p3),41));
    p_shl_fu_140_p3 <= (N_pipe_0_V_V_dout & ap_const_lv9_0);
    tmp_fu_148_p3 <= (N_pipe_0_V_V_dout & ap_const_lv7_0);
end behav;