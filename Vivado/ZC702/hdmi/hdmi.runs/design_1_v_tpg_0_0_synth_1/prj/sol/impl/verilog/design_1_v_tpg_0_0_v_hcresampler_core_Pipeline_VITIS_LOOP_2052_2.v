// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_v_hcresampler_core_Pipeline_VITIS_LOOP_2052_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ovrlayYUV_dout,
        ovrlayYUV_num_data_valid,
        ovrlayYUV_fifo_cap,
        ovrlayYUV_empty_n,
        ovrlayYUV_read,
        stream_out_hresampled_din,
        stream_out_hresampled_num_data_valid,
        stream_out_hresampled_fifo_cap,
        stream_out_hresampled_full_n,
        stream_out_hresampled_write,
        pixbuf_y_4,
        pixbuf_y_3,
        pixbuf_y_2,
        pixbuf_y_1,
        p_0_2_0_0_0595605_lcssa647_i,
        p_0_1_0_0_0593602_lcssa644_i,
        p_0_2_0_0_0595_lcssa624_i,
        p_0_1_0_0_0593_lcssa621_i,
        p_0_0_0_0_0450591_lcssa618_i,
        loopWidth,
        p_read,
        p_cast21_i,
        select_ln2047,
        width_val12_load,
        pixbuf_y_9_out,
        pixbuf_y_9_out_ap_vld,
        pixbuf_y_8_out,
        pixbuf_y_8_out_ap_vld,
        pixbuf_y_7_out,
        pixbuf_y_7_out_ap_vld,
        pixbuf_y_6_out,
        pixbuf_y_6_out_ap_vld,
        pixbuf_y_5_out_i,
        pixbuf_y_5_out_o,
        pixbuf_y_5_out_o_ap_vld,
        p_0_2_0_0_0595604_i_out,
        p_0_2_0_0_0595604_i_out_ap_vld,
        p_0_1_0_0_0593601_i_out,
        p_0_1_0_0_0593601_i_out_ap_vld,
        p_out_i,
        p_out_o,
        p_out_o_ap_vld,
        p_out1_i,
        p_out1_o,
        p_out1_o_ap_vld,
        p_out2_i,
        p_out2_o,
        p_out2_o_ap_vld,
        p_out3_i,
        p_out3_o,
        p_out3_o_ap_vld,
        inpix_0_2_0_0_0_load588_i_out_i,
        inpix_0_2_0_0_0_load588_i_out_o,
        inpix_0_2_0_0_0_load588_i_out_o_ap_vld,
        inpix_0_1_0_0_0_load586_i_out_i,
        inpix_0_1_0_0_0_load586_i_out_o,
        inpix_0_1_0_0_0_load586_i_out_o_ap_vld,
        inpix_0_0_0_0_0_load584_i_out_i,
        inpix_0_0_0_0_0_load584_i_out_o,
        inpix_0_0_0_0_0_load584_i_out_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] ovrlayYUV_dout;
input  [4:0] ovrlayYUV_num_data_valid;
input  [4:0] ovrlayYUV_fifo_cap;
input   ovrlayYUV_empty_n;
output   ovrlayYUV_read;
output  [23:0] stream_out_hresampled_din;
input  [2:0] stream_out_hresampled_num_data_valid;
input  [2:0] stream_out_hresampled_fifo_cap;
input   stream_out_hresampled_full_n;
output   stream_out_hresampled_write;
input  [7:0] pixbuf_y_4;
input  [7:0] pixbuf_y_3;
input  [7:0] pixbuf_y_2;
input  [7:0] pixbuf_y_1;
input  [7:0] p_0_2_0_0_0595605_lcssa647_i;
input  [7:0] p_0_1_0_0_0593602_lcssa644_i;
input  [7:0] p_0_2_0_0_0595_lcssa624_i;
input  [7:0] p_0_1_0_0_0593_lcssa621_i;
input  [7:0] p_0_0_0_0_0450591_lcssa618_i;
input  [15:0] loopWidth;
input  [0:0] p_read;
input  [0:0] p_cast21_i;
input  [1:0] select_ln2047;
input  [15:0] width_val12_load;
output  [7:0] pixbuf_y_9_out;
output   pixbuf_y_9_out_ap_vld;
output  [7:0] pixbuf_y_8_out;
output   pixbuf_y_8_out_ap_vld;
output  [7:0] pixbuf_y_7_out;
output   pixbuf_y_7_out_ap_vld;
output  [7:0] pixbuf_y_6_out;
output   pixbuf_y_6_out_ap_vld;
input  [7:0] pixbuf_y_5_out_i;
output  [7:0] pixbuf_y_5_out_o;
output   pixbuf_y_5_out_o_ap_vld;
output  [7:0] p_0_2_0_0_0595604_i_out;
output   p_0_2_0_0_0595604_i_out_ap_vld;
output  [7:0] p_0_1_0_0_0593601_i_out;
output   p_0_1_0_0_0593601_i_out_ap_vld;
input  [7:0] p_out_i;
output  [7:0] p_out_o;
output   p_out_o_ap_vld;
input  [7:0] p_out1_i;
output  [7:0] p_out1_o;
output   p_out1_o_ap_vld;
input  [7:0] p_out2_i;
output  [7:0] p_out2_o;
output   p_out2_o_ap_vld;
input  [7:0] p_out3_i;
output  [7:0] p_out3_o;
output   p_out3_o_ap_vld;
input  [7:0] inpix_0_2_0_0_0_load588_i_out_i;
output  [7:0] inpix_0_2_0_0_0_load588_i_out_o;
output   inpix_0_2_0_0_0_load588_i_out_o_ap_vld;
input  [7:0] inpix_0_1_0_0_0_load586_i_out_i;
output  [7:0] inpix_0_1_0_0_0_load586_i_out_o;
output   inpix_0_1_0_0_0_load586_i_out_o_ap_vld;
input  [7:0] inpix_0_0_0_0_0_load584_i_out_i;
output  [7:0] inpix_0_0_0_0_0_load584_i_out_o;
output   inpix_0_0_0_0_0_load584_i_out_o_ap_vld;

reg ap_idle;
reg ovrlayYUV_read;
reg stream_out_hresampled_write;
reg pixbuf_y_9_out_ap_vld;
reg pixbuf_y_8_out_ap_vld;
reg pixbuf_y_7_out_ap_vld;
reg pixbuf_y_6_out_ap_vld;
reg[7:0] pixbuf_y_5_out_o;
reg pixbuf_y_5_out_o_ap_vld;
reg p_0_2_0_0_0595604_i_out_ap_vld;
reg p_0_1_0_0_0593601_i_out_ap_vld;
reg[7:0] p_out_o;
reg p_out_o_ap_vld;
reg[7:0] p_out1_o;
reg p_out1_o_ap_vld;
reg[7:0] p_out2_o;
reg p_out2_o_ap_vld;
reg[7:0] p_out3_o;
reg p_out3_o_ap_vld;
reg[7:0] inpix_0_2_0_0_0_load588_i_out_o;
reg inpix_0_2_0_0_0_load588_i_out_o_ap_vld;
reg[7:0] inpix_0_1_0_0_0_load586_i_out_o;
reg inpix_0_1_0_0_0_load586_i_out_o_ap_vld;
reg[7:0] inpix_0_0_0_0_0_load584_i_out_o;
reg inpix_0_0_0_0_0_load584_i_out_o_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln2052_reg_887;
reg   [0:0] icmp_ln2062_reg_896;
reg    ap_predicate_op62_read_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_3_reg_910;
reg   [0:0] tmp_3_reg_910_pp0_iter3_reg;
reg    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln2052_fu_369_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    stream_out_hresampled_blk_n;
wire    ap_block_pp0_stage0;
reg    ovrlayYUV_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] p_cast21_i_cast_fu_304_p3;
reg   [1:0] p_cast21_i_cast_reg_882;
reg   [0:0] icmp_ln2052_reg_887_pp0_iter1_reg;
reg   [0:0] icmp_ln2052_reg_887_pp0_iter2_reg;
wire   [0:0] odd_col_fu_387_p1;
reg   [0:0] odd_col_reg_891;
reg   [0:0] odd_col_reg_891_pp0_iter1_reg;
reg   [0:0] odd_col_reg_891_pp0_iter2_reg;
reg   [0:0] odd_col_reg_891_pp0_iter3_reg;
wire   [0:0] icmp_ln2062_fu_391_p2;
wire   [0:0] cmp148_i_fu_397_p2;
reg   [0:0] cmp148_i_reg_900;
reg   [0:0] cmp148_i_reg_900_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_910_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_910_pp0_iter2_reg;
reg   [7:0] pixbuf_y_8_reg_914;
reg   [7:0] pixbuf_y_9_reg_921;
reg   [7:0] pixbuf_y_10_reg_927;
reg   [7:0] pixbuf_y_11_reg_933;
wire   [7:0] select_ln2143_2_fu_527_p3;
reg   [7:0] select_ln2143_2_reg_938;
wire   [7:0] select_ln2143_3_fu_534_p3;
reg   [7:0] select_ln2143_3_reg_943;
wire   [7:0] select_ln2143_4_fu_541_p3;
reg   [7:0] select_ln2143_4_reg_948;
wire   [7:0] select_ln2143_5_fu_548_p3;
reg   [7:0] select_ln2143_5_reg_953;
wire   [8:0] add_ln2174_fu_559_p2;
reg   [8:0] add_ln2174_reg_958;
wire   [8:0] add_ln2175_fu_569_p2;
reg   [8:0] add_ln2175_reg_963;
reg   [7:0] inpix_0_0_0_0_0_load_reg_968;
reg   [7:0] inpix_0_0_0_0_0_load_reg_968_pp0_iter3_reg;
reg   [7:0] inpix_0_1_0_0_0_load_reg_973;
reg   [7:0] inpix_0_1_0_0_0_load_reg_973_pp0_iter3_reg;
reg   [7:0] inpix_0_2_0_0_0_load_reg_978;
reg   [7:0] inpix_0_2_0_0_0_load_reg_978_pp0_iter3_reg;
wire   [7:0] tmp_8_i_fu_648_p11;
reg   [7:0] tmp_8_i_reg_983;
reg   [7:0] tmp_reg_988;
reg   [7:0] tmp_1_reg_993;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [7:0] select_ln2143_fu_513_p3;
wire   [7:0] select_ln2143_1_fu_520_p3;
wire   [7:0] trunc_ln2064_fu_416_p1;
reg   [7:0] p_0_1_0_0_0593601_i_fu_142;
wire    ap_loop_init;
reg   [7:0] p_0_2_0_0_0595604_i_fu_146;
reg   [14:0] x_fu_150;
wire   [14:0] add_ln2052_fu_375_p2;
reg   [14:0] ap_sig_allocacmp_x_1;
reg   [7:0] p_0_0_0_0_0450590_i_fu_154;
reg   [7:0] p_0_1_0_0_0592_i_fu_158;
reg   [7:0] p_0_2_0_0_0594_i_fu_162;
reg   [7:0] pixbuf_y_fu_166;
reg   [7:0] pixbuf_y_5_fu_170;
reg   [7:0] pixbuf_y_6_fu_174;
reg   [7:0] pixbuf_y_7_fu_178;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] zext_ln2052_fu_365_p1;
wire   [15:0] select_ln2047_cast_fu_300_p1;
wire   [15:0] out_x_fu_381_p2;
wire   [8:0] zext_ln2174_2_fu_555_p1;
wire   [8:0] zext_ln2175_2_fu_565_p1;
wire   [7:0] tmp_8_i_fu_648_p9;
wire   [8:0] shl_ln_fu_668_p3;
wire   [9:0] zext_ln2174_3_fu_682_p1;
wire   [9:0] zext_ln2174_fu_675_p1;
wire   [9:0] add_ln2174_1_fu_685_p2;
wire   [9:0] zext_ln2174_1_fu_678_p1;
wire   [8:0] shl_ln1_fu_697_p3;
wire   [9:0] zext_ln2175_3_fu_711_p1;
wire   [9:0] zext_ln2175_fu_704_p1;
wire   [9:0] add_ln2175_1_fu_714_p2;
wire   [9:0] zext_ln2175_1_fu_707_p1;
wire   [9:0] add_ln2175_2_fu_720_p2;
wire   [9:0] add_ln2174_2_fu_691_p2;
wire   [7:0] select_ln2177_fu_751_p3;
wire   [15:0] tmp_i_fu_763_p3;
wire   [23:0] or_ln_fu_756_p4;
wire   [23:0] zext_ln2203_fu_770_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_605;
wire   [1:0] tmp_8_i_fu_648_p1;
wire   [1:0] tmp_8_i_fu_648_p3;
wire  signed [1:0] tmp_8_i_fu_648_p5;
wire  signed [1:0] tmp_8_i_fu_648_p7;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 p_0_1_0_0_0593601_i_fu_142 = 8'd0;
#0 p_0_2_0_0_0595604_i_fu_146 = 8'd0;
#0 x_fu_150 = 15'd0;
#0 p_0_0_0_0_0450590_i_fu_154 = 8'd0;
#0 p_0_1_0_0_0592_i_fu_158 = 8'd0;
#0 p_0_2_0_0_0594_i_fu_162 = 8'd0;
#0 pixbuf_y_fu_166 = 8'd0;
#0 pixbuf_y_5_fu_170 = 8'd0;
#0 pixbuf_y_6_fu_174 = 8'd0;
#0 pixbuf_y_7_fu_178 = 8'd0;
#0 ap_done_reg = 1'b0;
end

design_1_v_tpg_0_0_sparsemux_9_2_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 2'h0 ),
    .din0_WIDTH( 8 ),
    .CASE1( 2'h1 ),
    .din1_WIDTH( 8 ),
    .CASE2( 2'h2 ),
    .din2_WIDTH( 8 ),
    .CASE3( 2'h3 ),
    .din3_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U196(
    .din0(pixbuf_y_5_out_i),
    .din1(pixbuf_y_8_reg_914),
    .din2(pixbuf_y_9_reg_921),
    .din3(pixbuf_y_10_reg_927),
    .def(tmp_8_i_fu_648_p9),
    .sel(p_cast21_i_cast_reg_882),
    .dout(tmp_8_i_fu_648_p11)
);

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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
        if ((ap_loop_init == 1'b1)) begin
            p_0_0_0_0_0450590_i_fu_154 <= p_0_0_0_0_0450591_lcssa618_i;
        end else if ((1'b1 == ap_condition_605)) begin
            p_0_0_0_0_0450590_i_fu_154 <= trunc_ln2064_fu_416_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            p_0_1_0_0_0592_i_fu_158 <= p_0_1_0_0_0593_lcssa621_i;
        end else if ((1'b1 == ap_condition_605)) begin
            p_0_1_0_0_0592_i_fu_158 <= {{ovrlayYUV_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            p_0_1_0_0_0593601_i_fu_142 <= p_0_1_0_0_0593602_lcssa644_i;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
            p_0_1_0_0_0593601_i_fu_142 <= p_0_1_0_0_0592_i_fu_158;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            p_0_2_0_0_0594_i_fu_162 <= p_0_2_0_0_0595_lcssa624_i;
        end else if ((1'b1 == ap_condition_605)) begin
            p_0_2_0_0_0594_i_fu_162 <= {{ovrlayYUV_dout[23:16]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            p_0_2_0_0_0595604_i_fu_146 <= p_0_2_0_0_0595605_lcssa647_i;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
            p_0_2_0_0_0595604_i_fu_146 <= p_0_2_0_0_0594_i_fu_162;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_5_fu_170 <= pixbuf_y_2;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
            pixbuf_y_5_fu_170 <= pixbuf_y_6_fu_174;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_6_fu_174 <= pixbuf_y_3;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
            pixbuf_y_6_fu_174 <= pixbuf_y_7_fu_178;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_7_fu_178 <= pixbuf_y_4;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
            pixbuf_y_7_fu_178 <= p_0_0_0_0_0450590_i_fu_154;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            pixbuf_y_fu_166 <= pixbuf_y_1;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
            pixbuf_y_fu_166 <= pixbuf_y_5_fu_170;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln2052_fu_369_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            x_fu_150 <= add_ln2052_fu_375_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_150 <= 15'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln2174_reg_958 <= add_ln2174_fu_559_p2;
        add_ln2175_reg_963 <= add_ln2175_fu_569_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln2052_reg_887_pp0_iter2_reg <= icmp_ln2052_reg_887_pp0_iter1_reg;
        inpix_0_0_0_0_0_load_reg_968 <= inpix_0_0_0_0_0_load584_i_out_i;
        inpix_0_0_0_0_0_load_reg_968_pp0_iter3_reg <= inpix_0_0_0_0_0_load_reg_968;
        inpix_0_1_0_0_0_load_reg_973 <= inpix_0_1_0_0_0_load586_i_out_i;
        inpix_0_1_0_0_0_load_reg_973_pp0_iter3_reg <= inpix_0_1_0_0_0_load_reg_973;
        inpix_0_2_0_0_0_load_reg_978 <= inpix_0_2_0_0_0_load588_i_out_i;
        inpix_0_2_0_0_0_load_reg_978_pp0_iter3_reg <= inpix_0_2_0_0_0_load_reg_978;
        odd_col_reg_891_pp0_iter2_reg <= odd_col_reg_891_pp0_iter1_reg;
        odd_col_reg_891_pp0_iter3_reg <= odd_col_reg_891_pp0_iter2_reg;
        select_ln2143_2_reg_938 <= select_ln2143_2_fu_527_p3;
        select_ln2143_3_reg_943 <= select_ln2143_3_fu_534_p3;
        select_ln2143_4_reg_948 <= select_ln2143_4_fu_541_p3;
        select_ln2143_5_reg_953 <= select_ln2143_5_fu_548_p3;
        tmp_1_reg_993 <= {{add_ln2174_2_fu_691_p2[9:2]}};
        tmp_3_reg_910_pp0_iter2_reg <= tmp_3_reg_910_pp0_iter1_reg;
        tmp_3_reg_910_pp0_iter3_reg <= tmp_3_reg_910_pp0_iter2_reg;
        tmp_8_i_reg_983 <= tmp_8_i_fu_648_p11;
        tmp_reg_988 <= {{add_ln2175_2_fu_720_p2[9:2]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp148_i_reg_900 <= cmp148_i_fu_397_p2;
        cmp148_i_reg_900_pp0_iter1_reg <= cmp148_i_reg_900;
        icmp_ln2052_reg_887 <= icmp_ln2052_fu_369_p2;
        icmp_ln2052_reg_887_pp0_iter1_reg <= icmp_ln2052_reg_887;
        icmp_ln2062_reg_896 <= icmp_ln2062_fu_391_p2;
        odd_col_reg_891 <= odd_col_fu_387_p1;
        odd_col_reg_891_pp0_iter1_reg <= odd_col_reg_891;
        p_cast21_i_cast_reg_882 <= p_cast21_i_cast_fu_304_p3;
        tmp_3_reg_910 <= out_x_fu_381_p2[32'd15];
        tmp_3_reg_910_pp0_iter1_reg <= tmp_3_reg_910;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pixbuf_y_10_reg_927 <= pixbuf_y_6_fu_174;
        pixbuf_y_11_reg_933 <= pixbuf_y_7_fu_178;
        pixbuf_y_8_reg_914 <= pixbuf_y_fu_166;
        pixbuf_y_9_reg_921 <= pixbuf_y_5_fu_170;
    end
end

always @ (*) begin
    if (((icmp_ln2052_fu_369_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x_1 = 15'd0;
    end else begin
        ap_sig_allocacmp_x_1 = x_fu_150;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inpix_0_0_0_0_0_load584_i_out_o = trunc_ln2064_fu_416_p1;
    end else begin
        inpix_0_0_0_0_0_load584_i_out_o = inpix_0_0_0_0_0_load584_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inpix_0_0_0_0_0_load584_i_out_o_ap_vld = 1'b1;
    end else begin
        inpix_0_0_0_0_0_load584_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inpix_0_1_0_0_0_load586_i_out_o = {{ovrlayYUV_dout[15:8]}};
    end else begin
        inpix_0_1_0_0_0_load586_i_out_o = inpix_0_1_0_0_0_load586_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inpix_0_1_0_0_0_load586_i_out_o_ap_vld = 1'b1;
    end else begin
        inpix_0_1_0_0_0_load586_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inpix_0_2_0_0_0_load588_i_out_o = {{ovrlayYUV_dout[23:16]}};
    end else begin
        inpix_0_2_0_0_0_load588_i_out_o = inpix_0_2_0_0_0_load588_i_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inpix_0_2_0_0_0_load588_i_out_o_ap_vld = 1'b1;
    end else begin
        inpix_0_2_0_0_0_load588_i_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op62_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ovrlayYUV_blk_n = ovrlayYUV_empty_n;
    end else begin
        ovrlayYUV_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op62_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ovrlayYUV_read = 1'b1;
    end else begin
        ovrlayYUV_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2052_reg_887_pp0_iter2_reg == 1'd0))) begin
        p_0_1_0_0_0593601_i_out_ap_vld = 1'b1;
    end else begin
        p_0_1_0_0_0593601_i_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2052_reg_887_pp0_iter2_reg == 1'd0))) begin
        p_0_2_0_0_0595604_i_out_ap_vld = 1'b1;
    end else begin
        p_0_2_0_0_0595604_i_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out1_o = select_ln2143_1_fu_520_p3;
    end else begin
        p_out1_o = p_out1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out1_o_ap_vld = 1'b1;
    end else begin
        p_out1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out2_o = select_ln2143_3_fu_534_p3;
    end else begin
        p_out2_o = p_out2_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out2_o_ap_vld = 1'b1;
    end else begin
        p_out2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out3_o = select_ln2143_5_fu_548_p3;
    end else begin
        p_out3_o = p_out3_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out3_o_ap_vld = 1'b1;
    end else begin
        p_out3_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out_o = select_ln2143_fu_513_p3;
    end else begin
        p_out_o = p_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln2052_reg_887_pp0_iter1_reg == 1'd1))) begin
        p_out_o_ap_vld = 1'b1;
    end else begin
        p_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        pixbuf_y_5_out_o = pixbuf_y_8_reg_914;
    end else begin
        pixbuf_y_5_out_o = pixbuf_y_5_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        pixbuf_y_5_out_o_ap_vld = 1'b1;
    end else begin
        pixbuf_y_5_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2052_reg_887_pp0_iter2_reg == 1'd0))) begin
        pixbuf_y_6_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2052_reg_887_pp0_iter2_reg == 1'd0))) begin
        pixbuf_y_7_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_7_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2052_reg_887_pp0_iter2_reg == 1'd0))) begin
        pixbuf_y_8_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_8_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln2052_reg_887_pp0_iter2_reg == 1'd0))) begin
        pixbuf_y_9_out_ap_vld = 1'b1;
    end else begin
        pixbuf_y_9_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_3_reg_910_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        stream_out_hresampled_blk_n = stream_out_hresampled_full_n;
    end else begin
        stream_out_hresampled_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_3_reg_910_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        stream_out_hresampled_write = 1'b1;
    end else begin
        stream_out_hresampled_write = 1'b0;
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

assign add_ln2052_fu_375_p2 = (ap_sig_allocacmp_x_1 + 15'd1);

assign add_ln2174_1_fu_685_p2 = (zext_ln2174_3_fu_682_p1 + zext_ln2174_fu_675_p1);

assign add_ln2174_2_fu_691_p2 = (add_ln2174_1_fu_685_p2 + zext_ln2174_1_fu_678_p1);

assign add_ln2174_fu_559_p2 = (zext_ln2174_2_fu_555_p1 + 9'd2);

assign add_ln2175_1_fu_714_p2 = (zext_ln2175_3_fu_711_p1 + zext_ln2175_fu_704_p1);

assign add_ln2175_2_fu_720_p2 = (add_ln2175_1_fu_714_p2 + zext_ln2175_1_fu_707_p1);

assign add_ln2175_fu_569_p2 = (zext_ln2175_2_fu_565_p1 + 9'd2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

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
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op62_read_state2 == 1'b1) & (ovrlayYUV_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter4 = ((tmp_3_reg_910_pp0_iter3_reg == 1'd0) & (stream_out_hresampled_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_605 = ((icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op62_read_state2 = ((icmp_ln2062_reg_896 == 1'd1) & (icmp_ln2052_reg_887 == 1'd1));
end

assign cmp148_i_fu_397_p2 = ((ap_sig_allocacmp_x_1 == 15'd0) ? 1'b1 : 1'b0);

assign icmp_ln2052_fu_369_p2 = (($signed(zext_ln2052_fu_365_p1) < $signed(loopWidth)) ? 1'b1 : 1'b0);

assign icmp_ln2062_fu_391_p2 = ((zext_ln2052_fu_365_p1 < width_val12_load) ? 1'b1 : 1'b0);

assign odd_col_fu_387_p1 = out_x_fu_381_p2[0:0];

assign or_ln_fu_756_p4 = {{{inpix_0_2_0_0_0_load_reg_978_pp0_iter3_reg}, {inpix_0_1_0_0_0_load_reg_973_pp0_iter3_reg}}, {inpix_0_0_0_0_0_load_reg_968_pp0_iter3_reg}};

assign out_x_fu_381_p2 = (zext_ln2052_fu_365_p1 - select_ln2047_cast_fu_300_p1);

assign p_0_1_0_0_0593601_i_out = p_0_1_0_0_0593601_i_fu_142;

assign p_0_2_0_0_0595604_i_out = p_0_2_0_0_0595604_i_fu_146;

assign p_cast21_i_cast_fu_304_p3 = ((p_cast21_i[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign pixbuf_y_6_out = pixbuf_y_8_reg_914;

assign pixbuf_y_7_out = pixbuf_y_9_reg_921;

assign pixbuf_y_8_out = pixbuf_y_10_reg_927;

assign pixbuf_y_9_out = pixbuf_y_11_reg_933;

assign select_ln2047_cast_fu_300_p1 = select_ln2047;

assign select_ln2143_1_fu_520_p3 = ((cmp148_i_reg_900_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_0592_i_fu_158 : p_0_1_0_0_0593601_i_fu_142);

assign select_ln2143_2_fu_527_p3 = ((cmp148_i_reg_900_pp0_iter1_reg[0:0] == 1'b1) ? p_0_2_0_0_0594_i_fu_162 : p_out2_i);

assign select_ln2143_3_fu_534_p3 = ((cmp148_i_reg_900_pp0_iter1_reg[0:0] == 1'b1) ? p_0_2_0_0_0594_i_fu_162 : p_out_i);

assign select_ln2143_4_fu_541_p3 = ((cmp148_i_reg_900_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_0592_i_fu_158 : p_out3_i);

assign select_ln2143_5_fu_548_p3 = ((cmp148_i_reg_900_pp0_iter1_reg[0:0] == 1'b1) ? p_0_1_0_0_0592_i_fu_158 : p_out1_i);

assign select_ln2143_fu_513_p3 = ((cmp148_i_reg_900_pp0_iter1_reg[0:0] == 1'b1) ? p_0_2_0_0_0594_i_fu_162 : p_0_2_0_0_0595604_i_fu_146);

assign select_ln2177_fu_751_p3 = ((odd_col_reg_891_pp0_iter3_reg[0:0] == 1'b1) ? tmp_reg_988 : tmp_1_reg_993);

assign shl_ln1_fu_697_p3 = {{select_ln2143_3_reg_943}, {1'd0}};

assign shl_ln_fu_668_p3 = {{select_ln2143_5_reg_953}, {1'd0}};

assign stream_out_hresampled_din = ((p_read[0:0] == 1'b1) ? or_ln_fu_756_p4 : zext_ln2203_fu_770_p1);

assign tmp_8_i_fu_648_p9 = 'bx;

assign tmp_i_fu_763_p3 = {{select_ln2177_fu_751_p3}, {tmp_8_i_reg_983}};

assign trunc_ln2064_fu_416_p1 = ovrlayYUV_dout[7:0];

assign zext_ln2052_fu_365_p1 = ap_sig_allocacmp_x_1;

assign zext_ln2174_1_fu_678_p1 = shl_ln_fu_668_p3;

assign zext_ln2174_2_fu_555_p1 = select_ln2143_1_fu_520_p3;

assign zext_ln2174_3_fu_682_p1 = add_ln2174_reg_958;

assign zext_ln2174_fu_675_p1 = select_ln2143_4_reg_948;

assign zext_ln2175_1_fu_707_p1 = shl_ln1_fu_697_p3;

assign zext_ln2175_2_fu_565_p1 = select_ln2143_fu_513_p3;

assign zext_ln2175_3_fu_711_p1 = add_ln2175_reg_963;

assign zext_ln2175_fu_704_p1 = select_ln2143_2_reg_938;

assign zext_ln2203_fu_770_p1 = tmp_i_fu_763_p3;

endmodule //design_1_v_tpg_0_0_v_hcresampler_core_Pipeline_VITIS_LOOP_2052_2