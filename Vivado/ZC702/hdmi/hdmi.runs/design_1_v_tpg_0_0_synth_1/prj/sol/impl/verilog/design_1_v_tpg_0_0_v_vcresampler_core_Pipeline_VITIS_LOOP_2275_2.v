// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_v_vcresampler_core_Pipeline_VITIS_LOOP_2275_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        stream_out_hresampled_dout,
        stream_out_hresampled_num_data_valid,
        stream_out_hresampled_fifo_cap,
        stream_out_hresampled_empty_n,
        stream_out_hresampled_read,
        stream_out_vresampled_din,
        stream_out_vresampled_num_data_valid,
        stream_out_vresampled_fifo_cap,
        stream_out_vresampled_full_n,
        stream_out_vresampled_write,
        loopWidth,
        p_read,
        cmp33_i,
        cmp107_i,
        linebuf_c_1_address0,
        linebuf_c_1_ce0,
        linebuf_c_1_we0,
        linebuf_c_1_d0,
        linebuf_c_1_address1,
        linebuf_c_1_ce1,
        linebuf_c_1_q1,
        empty_40,
        empty,
        linebuf_y_address0,
        linebuf_y_ce0,
        linebuf_y_we0,
        linebuf_y_d0,
        linebuf_y_q0,
        linebuf_c_address0,
        linebuf_c_ce0,
        linebuf_c_we0,
        linebuf_c_d0,
        linebuf_c_address1,
        linebuf_c_ce1,
        linebuf_c_q1,
        p_0_0324492_i_out_i,
        p_0_0324492_i_out_o,
        p_0_0324492_i_out_o_ap_vld,
        p_0_0335490_i_out_i,
        p_0_0335490_i_out_o,
        p_0_0335490_i_out_o_ap_vld,
        pix_0_2_0_0_0_load488_i_out_i,
        pix_0_2_0_0_0_load488_i_out_o,
        pix_0_2_0_0_0_load488_i_out_o_ap_vld,
        pix_0_1_0_0_0_load486_i_out_i,
        pix_0_1_0_0_0_load486_i_out_o,
        pix_0_1_0_0_0_load486_i_out_o_ap_vld,
        pix_0_0_0_0_0_load484_i_out_i,
        pix_0_0_0_0_0_load484_i_out_o,
        pix_0_0_0_0_0_load484_i_out_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] stream_out_hresampled_dout;
input  [2:0] stream_out_hresampled_num_data_valid;
input  [2:0] stream_out_hresampled_fifo_cap;
input   stream_out_hresampled_empty_n;
output   stream_out_hresampled_read;
output  [23:0] stream_out_vresampled_din;
input  [2:0] stream_out_vresampled_num_data_valid;
input  [2:0] stream_out_vresampled_fifo_cap;
input   stream_out_vresampled_full_n;
output   stream_out_vresampled_write;
input  [15:0] loopWidth;
input  [0:0] p_read;
input  [0:0] cmp33_i;
input  [0:0] cmp107_i;
output  [11:0] linebuf_c_1_address0;
output   linebuf_c_1_ce0;
output   linebuf_c_1_we0;
output  [7:0] linebuf_c_1_d0;
output  [11:0] linebuf_c_1_address1;
output   linebuf_c_1_ce1;
input  [7:0] linebuf_c_1_q1;
input  [0:0] empty_40;
input  [0:0] empty;
output  [11:0] linebuf_y_address0;
output   linebuf_y_ce0;
output   linebuf_y_we0;
output  [7:0] linebuf_y_d0;
input  [7:0] linebuf_y_q0;
output  [11:0] linebuf_c_address0;
output   linebuf_c_ce0;
output   linebuf_c_we0;
output  [7:0] linebuf_c_d0;
output  [11:0] linebuf_c_address1;
output   linebuf_c_ce1;
input  [7:0] linebuf_c_q1;
input  [7:0] p_0_0324492_i_out_i;
output  [7:0] p_0_0324492_i_out_o;
output   p_0_0324492_i_out_o_ap_vld;
input  [7:0] p_0_0335490_i_out_i;
output  [7:0] p_0_0335490_i_out_o;
output   p_0_0335490_i_out_o_ap_vld;
input  [7:0] pix_0_2_0_0_0_load488_i_out_i;
output  [7:0] pix_0_2_0_0_0_load488_i_out_o;
output   pix_0_2_0_0_0_load488_i_out_o_ap_vld;
input  [7:0] pix_0_1_0_0_0_load486_i_out_i;
output  [7:0] pix_0_1_0_0_0_load486_i_out_o;
output   pix_0_1_0_0_0_load486_i_out_o_ap_vld;
input  [7:0] pix_0_0_0_0_0_load484_i_out_i;
output  [7:0] pix_0_0_0_0_0_load484_i_out_o;
output   pix_0_0_0_0_0_load484_i_out_o_ap_vld;

reg ap_idle;
reg stream_out_hresampled_read;
reg stream_out_vresampled_write;
reg linebuf_c_1_ce0;
reg linebuf_c_1_we0;
reg linebuf_c_1_ce1;
reg linebuf_y_ce0;
reg linebuf_y_we0;
reg linebuf_c_ce0;
reg linebuf_c_we0;
reg linebuf_c_ce1;
reg[7:0] p_0_0324492_i_out_o;
reg p_0_0324492_i_out_o_ap_vld;
reg[7:0] p_0_0335490_i_out_o;
reg p_0_0335490_i_out_o_ap_vld;
reg[7:0] pix_0_2_0_0_0_load488_i_out_o;
reg pix_0_2_0_0_0_load488_i_out_o_ap_vld;
reg[7:0] pix_0_1_0_0_0_load486_i_out_o;
reg pix_0_1_0_0_0_load486_i_out_o_ap_vld;
reg[7:0] pix_0_0_0_0_0_load484_i_out_o;
reg pix_0_0_0_0_0_load484_i_out_o_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln2275_fu_215_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    stream_out_vresampled_blk_n;
wire    ap_block_pp0_stage0;
reg    stream_out_hresampled_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [14:0] x_reg_441;
reg   [14:0] x_reg_441_pp0_iter1_reg;
reg   [14:0] x_reg_441_pp0_iter2_reg;
wire   [63:0] idxprom6_i261_i_fu_231_p1;
reg   [63:0] idxprom6_i261_i_reg_450;
reg   [11:0] linebuf_c_addr_reg_456;
reg   [11:0] linebuf_c_addr_reg_456_pp0_iter1_reg;
reg   [11:0] linebuf_y_addr_reg_462;
reg   [7:0] LineBufVal_1_reg_472;
reg   [7:0] LineBufVal_1_reg_472_pp0_iter2_reg;
wire   [7:0] trunc_ln2287_fu_241_p1;
reg   [7:0] trunc_ln2287_reg_479;
reg   [7:0] trunc_ln2287_2_reg_484;
reg   [7:0] trunc_ln2287_3_reg_490;
reg   [7:0] LineBufVal_2_reg_495;
wire   [7:0] PixBufVal_fu_307_p3;
reg   [7:0] PixBufVal_reg_500;
wire   [8:0] add_ln2416_1_fu_317_p2;
reg   [8:0] add_ln2416_1_reg_505;
reg   [7:0] LineBufVal_reg_510;
reg   [7:0] trunc_ln_reg_515;
reg   [7:0] pix_0_0_0_0_0_load_reg_520;
reg   [7:0] pix_0_1_0_0_0_load_reg_525;
reg   [7:0] pix_0_2_0_0_0_load_reg_530;
wire   [63:0] zext_ln2275_fu_323_p1;
reg   [14:0] out_x_fu_96;
wire   [14:0] add_ln2275_fu_221_p2;
wire    ap_loop_init;
reg   [14:0] ap_sig_allocacmp_x;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] zext_ln2275_1_fu_211_p1;
wire   [11:0] empty_75_fu_227_p1;
wire   [7:0] select_ln2356_fu_301_p3;
wire   [8:0] zext_ln2416_2_fu_313_p1;
wire   [8:0] shl_ln_fu_327_p3;
wire   [9:0] zext_ln2416_1_fu_337_p1;
wire   [9:0] zext_ln2416_fu_334_p1;
wire   [9:0] zext_ln2416_3_fu_347_p1;
wire   [9:0] add_ln2416_fu_341_p2;
wire   [9:0] add_ln2416_2_fu_350_p2;
wire   [7:0] empty_74_fu_378_p3;
wire   [15:0] tmp_i_fu_391_p3;
wire   [23:0] or_ln2444_1_i_fu_384_p4;
wire   [23:0] zext_ln2444_fu_398_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_28;
reg    ap_enable_state1_pp0_iter0_stage0;
wire    ap_enable_operation_35;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_enable_operation_45;
reg    ap_enable_state3_pp0_iter2_stage0;
reg    ap_predicate_op36_load_state2;
reg    ap_enable_operation_36;
reg    ap_predicate_op44_load_state3;
reg    ap_enable_operation_44;
wire    ap_enable_operation_62;
reg    ap_enable_state4_pp0_iter3_stage0;
wire    ap_enable_operation_54;
reg    ap_enable_operation_43;
reg    ap_enable_operation_60;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 out_x_fu_96 = 15'd0;
#0 ap_done_reg = 1'b0;
end

design_1_v_tpg_0_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln2275_fu_215_p2 == 1'd1) & (ap_start_int == 1'b1))) begin
            out_x_fu_96 <= add_ln2275_fu_221_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            out_x_fu_96 <= 15'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        LineBufVal_1_reg_472 <= linebuf_c_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        LineBufVal_1_reg_472_pp0_iter2_reg <= LineBufVal_1_reg_472;
        PixBufVal_reg_500 <= PixBufVal_fu_307_p3;
        add_ln2416_1_reg_505 <= add_ln2416_1_fu_317_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        pix_0_0_0_0_0_load_reg_520 <= pix_0_0_0_0_0_load484_i_out_i;
        pix_0_1_0_0_0_load_reg_525 <= pix_0_1_0_0_0_load486_i_out_i;
        pix_0_2_0_0_0_load_reg_530 <= pix_0_2_0_0_0_load488_i_out_i;
        trunc_ln_reg_515 <= {{add_ln2416_2_fu_350_p2[9:2]}};
        x_reg_441_pp0_iter2_reg <= x_reg_441_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        LineBufVal_2_reg_495 <= linebuf_c_1_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        LineBufVal_reg_510 <= linebuf_y_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        idxprom6_i261_i_reg_450[11 : 0] <= idxprom6_i261_i_fu_231_p1[11 : 0];
        linebuf_c_addr_reg_456 <= idxprom6_i261_i_fu_231_p1;
        linebuf_c_addr_reg_456_pp0_iter1_reg <= linebuf_c_addr_reg_456;
        linebuf_y_addr_reg_462 <= idxprom6_i261_i_reg_450;
        trunc_ln2287_2_reg_484 <= {{stream_out_hresampled_dout[15:8]}};
        trunc_ln2287_3_reg_490 <= {{stream_out_hresampled_dout[23:16]}};
        trunc_ln2287_reg_479 <= trunc_ln2287_fu_241_p1;
        x_reg_441 <= ap_sig_allocacmp_x;
        x_reg_441_pp0_iter1_reg <= x_reg_441;
    end
end

always @ (*) begin
    if (((icmp_ln2275_fu_215_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x = 15'd0;
    end else begin
        ap_sig_allocacmp_x = out_x_fu_96;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        linebuf_c_1_ce0 = 1'b1;
    end else begin
        linebuf_c_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linebuf_c_1_ce1 = 1'b1;
    end else begin
        linebuf_c_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        linebuf_c_1_we0 = 1'b1;
    end else begin
        linebuf_c_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuf_c_ce0 = 1'b1;
    end else begin
        linebuf_c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linebuf_c_ce1 = 1'b1;
    end else begin
        linebuf_c_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuf_c_we0 = 1'b1;
    end else begin
        linebuf_c_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuf_y_ce0 = 1'b1;
    end else begin
        linebuf_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        linebuf_y_we0 = 1'b1;
    end else begin
        linebuf_y_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0324492_i_out_o = {{stream_out_hresampled_dout[15:8]}};
    end else begin
        p_0_0324492_i_out_o = p_0_0324492_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0324492_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_0324492_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0335490_i_out_o = trunc_ln2287_fu_241_p1;
    end else begin
        p_0_0335490_i_out_o = p_0_0335490_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_0335490_i_out_o_ap_vld = 1'b1;
    end else begin
        p_0_0335490_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pix_0_0_0_0_0_load484_i_out_o = trunc_ln2287_reg_479;
    end else begin
        pix_0_0_0_0_0_load484_i_out_o = pix_0_0_0_0_0_load484_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pix_0_0_0_0_0_load484_i_out_o_ap_vld = 1'b1;
    end else begin
        pix_0_0_0_0_0_load484_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pix_0_1_0_0_0_load486_i_out_o = trunc_ln2287_2_reg_484;
    end else begin
        pix_0_1_0_0_0_load486_i_out_o = pix_0_1_0_0_0_load486_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pix_0_1_0_0_0_load486_i_out_o_ap_vld = 1'b1;
    end else begin
        pix_0_1_0_0_0_load486_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pix_0_2_0_0_0_load488_i_out_o = trunc_ln2287_3_reg_490;
    end else begin
        pix_0_2_0_0_0_load488_i_out_o = pix_0_2_0_0_0_load488_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pix_0_2_0_0_0_load488_i_out_o_ap_vld = 1'b1;
    end else begin
        pix_0_2_0_0_0_load488_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_out_hresampled_blk_n = stream_out_hresampled_empty_n;
    end else begin
        stream_out_hresampled_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (cmp33_i == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_out_hresampled_read = 1'b1;
    end else begin
        stream_out_hresampled_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (empty == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        stream_out_vresampled_blk_n = stream_out_vresampled_full_n;
    end else begin
        stream_out_vresampled_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (empty == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        stream_out_vresampled_write = 1'b1;
    end else begin
        stream_out_vresampled_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign PixBufVal_fu_307_p3 = ((cmp107_i[0:0] == 1'b1) ? LineBufVal_1_reg_472 : select_ln2356_fu_301_p3);

assign add_ln2275_fu_221_p2 = (ap_sig_allocacmp_x + 15'd1);

assign add_ln2416_1_fu_317_p2 = (zext_ln2416_2_fu_313_p1 + 9'd2);

assign add_ln2416_2_fu_350_p2 = (zext_ln2416_3_fu_347_p1 + add_ln2416_fu_341_p2);

assign add_ln2416_fu_341_p2 = (zext_ln2416_1_fu_337_p1 + zext_ln2416_fu_334_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((cmp33_i == 1'd1) & (stream_out_hresampled_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter4 = ((empty == 1'd0) & (stream_out_vresampled_full_n == 1'b0));
end

always @ (*) begin
    ap_enable_operation_28 = (icmp_ln2275_fu_215_p2 == 1'd1);
end

assign ap_enable_operation_35 = (1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_36 = (ap_predicate_op36_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_43 = (p_read == 1'd0);
end

always @ (*) begin
    ap_enable_operation_44 = (ap_predicate_op44_load_state3 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_45 = (cmp33_i == 1'd1);
end

assign ap_enable_operation_54 = (1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_60 = (p_read == 1'd0);
end

assign ap_enable_operation_62 = (1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state3_pp0_iter2_stage0 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state4_pp0_iter3_stage0 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op36_load_state2 = ((p_read == 1'd0) & (empty_40 == 1'd0));
end

always @ (*) begin
    ap_predicate_op44_load_state3 = ((p_read == 1'd0) & (empty_40 == 1'd0));
end

assign empty_74_fu_378_p3 = ((empty_40[0:0] == 1'b1) ? 8'd0 : trunc_ln_reg_515);

assign empty_75_fu_227_p1 = ap_sig_allocacmp_x[11:0];

assign icmp_ln2275_fu_215_p2 = (($signed(zext_ln2275_1_fu_211_p1) < $signed(loopWidth)) ? 1'b1 : 1'b0);

assign idxprom6_i261_i_fu_231_p1 = empty_75_fu_227_p1;

assign linebuf_c_1_address0 = zext_ln2275_fu_323_p1;

assign linebuf_c_1_address1 = idxprom6_i261_i_reg_450;

assign linebuf_c_1_d0 = PixBufVal_reg_500;

assign linebuf_c_address0 = linebuf_c_addr_reg_456_pp0_iter1_reg;

assign linebuf_c_address1 = idxprom6_i261_i_fu_231_p1;

assign linebuf_c_d0 = trunc_ln2287_2_reg_484;

assign linebuf_y_address0 = linebuf_y_addr_reg_462;

assign linebuf_y_d0 = p_0_0335490_i_out_i;

assign or_ln2444_1_i_fu_384_p4 = {{{pix_0_2_0_0_0_load_reg_530}, {pix_0_1_0_0_0_load_reg_525}}, {pix_0_0_0_0_0_load_reg_520}};

assign select_ln2356_fu_301_p3 = ((cmp33_i[0:0] == 1'b1) ? p_0_0324492_i_out_i : LineBufVal_1_reg_472);

assign shl_ln_fu_327_p3 = {{LineBufVal_1_reg_472_pp0_iter2_reg}, {1'd0}};

assign stream_out_vresampled_din = ((p_read[0:0] == 1'b1) ? or_ln2444_1_i_fu_384_p4 : zext_ln2444_fu_398_p1);

assign tmp_i_fu_391_p3 = {{empty_74_fu_378_p3}, {LineBufVal_reg_510}};

assign trunc_ln2287_fu_241_p1 = stream_out_hresampled_dout[7:0];

assign zext_ln2275_1_fu_211_p1 = ap_sig_allocacmp_x;

assign zext_ln2275_fu_323_p1 = x_reg_441_pp0_iter2_reg;

assign zext_ln2416_1_fu_337_p1 = shl_ln_fu_327_p3;

assign zext_ln2416_2_fu_313_p1 = select_ln2356_fu_301_p3;

assign zext_ln2416_3_fu_347_p1 = add_ln2416_1_reg_505;

assign zext_ln2416_fu_334_p1 = LineBufVal_2_reg_495;

assign zext_ln2444_fu_398_p1 = tmp_i_fu_391_p3;

always @ (posedge ap_clk) begin
    idxprom6_i261_i_reg_450[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end

endmodule //design_1_v_tpg_0_0_v_vcresampler_core_Pipeline_VITIS_LOOP_2275_2