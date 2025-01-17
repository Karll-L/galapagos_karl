// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module tcp_slowrttoe_stream_merger_ap_uint_16_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        closeTimer2stateTable_releaseS_dout,
        closeTimer2stateTable_releaseS_empty_n,
        closeTimer2stateTable_releaseS_read,
        rtTimer2stateTable_releaseStat_dout,
        rtTimer2stateTable_releaseStat_empty_n,
        rtTimer2stateTable_releaseStat_read,
        timer2stateTable_releaseState_s_din,
        timer2stateTable_releaseState_s_full_n,
        timer2stateTable_releaseState_s_write,
        ap_ce,
        closeTimer2stateTable_releaseS_blk_n,
        timer2stateTable_releaseState_s_blk_n,
        rtTimer2stateTable_releaseStat_blk_n
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] closeTimer2stateTable_releaseS_dout;
input   closeTimer2stateTable_releaseS_empty_n;
output   closeTimer2stateTable_releaseS_read;
input  [15:0] rtTimer2stateTable_releaseStat_dout;
input   rtTimer2stateTable_releaseStat_empty_n;
output   rtTimer2stateTable_releaseStat_read;
output  [15:0] timer2stateTable_releaseState_s_din;
input   timer2stateTable_releaseState_s_full_n;
output   timer2stateTable_releaseState_s_write;
input   ap_ce;
output   closeTimer2stateTable_releaseS_blk_n;
output   timer2stateTable_releaseState_s_blk_n;
output   rtTimer2stateTable_releaseStat_blk_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg closeTimer2stateTable_releaseS_read;
reg rtTimer2stateTable_releaseStat_read;
reg[15:0] timer2stateTable_releaseState_s_din;
reg timer2stateTable_releaseState_s_write;
reg closeTimer2stateTable_releaseS_blk_n;
reg timer2stateTable_releaseState_s_blk_n;
reg rtTimer2stateTable_releaseStat_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_19;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_34_p3;
reg    ap_sig_bdd_50;
reg   [0:0] tmp_reg_70;
wire   [0:0] tmp_2_nbreadreq_fu_48_p3;
reg    ap_sig_bdd_64;
reg   [0:0] ap_reg_ppstg_tmp_reg_70_pp0_it1;
reg   [0:0] tmp_2_reg_79;
reg    ap_sig_bdd_82;
reg   [15:0] tmp_V_reg_74;
reg   [15:0] ap_reg_ppstg_tmp_V_reg_74_pp0_it1;
reg   [15:0] tmp_V_1_reg_83;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_78;
reg    ap_sig_bdd_126;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82) | ~(ap_const_logic_1 == ap_ce)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82) | ~(ap_const_logic_1 == ap_ce))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        ap_reg_ppstg_tmp_V_reg_74_pp0_it1 <= tmp_V_reg_74;
        ap_reg_ppstg_tmp_reg_70_pp0_it1 <= tmp_reg_70;
        tmp_reg_70 <= tmp_nbreadreq_fu_34_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_70) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        tmp_2_reg_79 <= tmp_2_nbreadreq_fu_48_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_70) & ~(ap_const_lv1_0 == tmp_2_nbreadreq_fu_48_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        tmp_V_1_reg_83 <= rtTimer2stateTable_releaseStat_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        tmp_V_reg_74 <= closeTimer2stateTable_releaseS_dout;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_50 or ap_sig_bdd_64 or ap_sig_bdd_82 or ap_ce)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_50 or ap_sig_bdd_64 or ap_sig_bdd_82 or ap_ce)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_19)
begin
    if (ap_sig_bdd_19) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// closeTimer2stateTable_releaseS_blk_n assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or closeTimer2stateTable_releaseS_empty_n or tmp_nbreadreq_fu_34_p3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~(ap_start == ap_const_logic_0))) begin
        closeTimer2stateTable_releaseS_blk_n = closeTimer2stateTable_releaseS_empty_n;
    end else begin
        closeTimer2stateTable_releaseS_blk_n = ap_const_logic_1;
    end
end

/// closeTimer2stateTable_releaseS_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_34_p3 or ap_sig_bdd_50 or ap_sig_bdd_64 or ap_sig_bdd_82 or ap_ce)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        closeTimer2stateTable_releaseS_read = ap_const_logic_1;
    end else begin
        closeTimer2stateTable_releaseS_read = ap_const_logic_0;
    end
end

/// rtTimer2stateTable_releaseStat_blk_n assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or rtTimer2stateTable_releaseStat_empty_n or tmp_reg_70 or tmp_2_nbreadreq_fu_48_p3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_lv1_0 == tmp_reg_70) & ~(ap_const_lv1_0 == tmp_2_nbreadreq_fu_48_p3))) begin
        rtTimer2stateTable_releaseStat_blk_n = rtTimer2stateTable_releaseStat_empty_n;
    end else begin
        rtTimer2stateTable_releaseStat_blk_n = ap_const_logic_1;
    end
end

/// rtTimer2stateTable_releaseStat_read assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_50 or tmp_reg_70 or tmp_2_nbreadreq_fu_48_p3 or ap_sig_bdd_64 or ap_sig_bdd_82 or ap_ce)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_lv1_0 == tmp_reg_70) & ~(ap_const_lv1_0 == tmp_2_nbreadreq_fu_48_p3) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce))) begin
        rtTimer2stateTable_releaseStat_read = ap_const_logic_1;
    end else begin
        rtTimer2stateTable_releaseStat_read = ap_const_logic_0;
    end
end

/// timer2stateTable_releaseState_s_blk_n assign process. ///
always @ (ap_reg_ppiten_pp0_it2 or timer2stateTable_releaseState_s_full_n or ap_reg_ppstg_tmp_reg_70_pp0_it1 or tmp_2_reg_79)
begin
    if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1) & ~(ap_const_lv1_0 == tmp_2_reg_79)))) begin
        timer2stateTable_releaseState_s_blk_n = timer2stateTable_releaseState_s_full_n;
    end else begin
        timer2stateTable_releaseState_s_blk_n = ap_const_logic_1;
    end
end

/// timer2stateTable_releaseState_s_din assign process. ///
always @ (ap_reg_ppstg_tmp_reg_70_pp0_it1 or ap_reg_ppstg_tmp_V_reg_74_pp0_it1 or tmp_V_1_reg_83 or ap_sig_bdd_78 or ap_sig_bdd_126)
begin
    if (ap_sig_bdd_126) begin
        if (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1)) begin
            timer2stateTable_releaseState_s_din = ap_reg_ppstg_tmp_V_reg_74_pp0_it1;
        end else if (ap_sig_bdd_78) begin
            timer2stateTable_releaseState_s_din = tmp_V_1_reg_83;
        end else begin
            timer2stateTable_releaseState_s_din = 'bx;
        end
    end else begin
        timer2stateTable_releaseState_s_din = 'bx;
    end
end

/// timer2stateTable_releaseState_s_write assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_50 or ap_sig_bdd_64 or ap_reg_ppstg_tmp_reg_70_pp0_it1 or tmp_2_reg_79 or ap_sig_bdd_82 or ap_ce)
begin
    if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1) & ~(ap_const_lv1_0 == tmp_2_reg_79) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce)))) begin
        timer2stateTable_releaseState_s_write = ap_const_logic_1;
    end else begin
        timer2stateTable_releaseState_s_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_50 or ap_sig_bdd_64 or ap_sig_bdd_82 or ap_ce or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_126 assign process. ///
always @ (ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_50 or ap_sig_bdd_64 or ap_sig_bdd_82 or ap_ce)
begin
    ap_sig_bdd_126 = ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_50) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ap_sig_bdd_64) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ap_sig_bdd_82)) & (ap_const_logic_1 == ap_ce));
end

/// ap_sig_bdd_19 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_19 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_50 assign process. ///
always @ (ap_start or closeTimer2stateTable_releaseS_empty_n or tmp_nbreadreq_fu_34_p3)
begin
    ap_sig_bdd_50 = (((closeTimer2stateTable_releaseS_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0));
end

/// ap_sig_bdd_64 assign process. ///
always @ (rtTimer2stateTable_releaseStat_empty_n or tmp_reg_70 or tmp_2_nbreadreq_fu_48_p3)
begin
    ap_sig_bdd_64 = ((rtTimer2stateTable_releaseStat_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_reg_70) & ~(ap_const_lv1_0 == tmp_2_nbreadreq_fu_48_p3));
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_reg_ppstg_tmp_reg_70_pp0_it1 or tmp_2_reg_79)
begin
    ap_sig_bdd_78 = ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1) & ~(ap_const_lv1_0 == tmp_2_reg_79));
end

/// ap_sig_bdd_82 assign process. ///
always @ (timer2stateTable_releaseState_s_full_n or ap_reg_ppstg_tmp_reg_70_pp0_it1 or tmp_2_reg_79)
begin
    ap_sig_bdd_82 = (((timer2stateTable_releaseState_s_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1) & ~(ap_const_lv1_0 == tmp_2_reg_79)) | ((timer2stateTable_releaseState_s_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_70_pp0_it1)));
end
assign tmp_2_nbreadreq_fu_48_p3 = rtTimer2stateTable_releaseStat_empty_n;
assign tmp_nbreadreq_fu_34_p3 = closeTimer2stateTable_releaseS_empty_n;


endmodule //tcp_slowrttoe_stream_merger_ap_uint_16_s

