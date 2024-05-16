// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_MultiPixStream2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        stream_out_vresampled_dout,
        stream_out_vresampled_num_data_valid,
        stream_out_vresampled_fifo_cap,
        stream_out_vresampled_empty_n,
        stream_out_vresampled_read,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        height_val7_dout,
        height_val7_num_data_valid,
        height_val7_fifo_cap,
        height_val7_empty_n,
        height_val7_read,
        width_val12_dout,
        width_val12_num_data_valid,
        width_val12_fifo_cap,
        width_val12_empty_n,
        width_val12_read,
        colorFormat_val_dout,
        colorFormat_val_num_data_valid,
        colorFormat_val_fifo_cap,
        colorFormat_val_empty_n,
        colorFormat_val_read,
        fid_in_val14_dout,
        fid_in_val14_num_data_valid,
        fid_in_val14_fifo_cap,
        fid_in_val14_empty_n,
        fid_in_val14_read,
        fid,
        fid_ap_vld,
        field_id_val13_dout,
        field_id_val13_num_data_valid,
        field_id_val13_fifo_cap,
        field_id_val13_empty_n,
        field_id_val13_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] stream_out_vresampled_dout;
input  [2:0] stream_out_vresampled_num_data_valid;
input  [2:0] stream_out_vresampled_fifo_cap;
input   stream_out_vresampled_empty_n;
output   stream_out_vresampled_read;
output  [23:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input  [11:0] height_val7_dout;
input  [2:0] height_val7_num_data_valid;
input  [2:0] height_val7_fifo_cap;
input   height_val7_empty_n;
output   height_val7_read;
input  [12:0] width_val12_dout;
input  [2:0] width_val12_num_data_valid;
input  [2:0] width_val12_fifo_cap;
input   width_val12_empty_n;
output   width_val12_read;
input  [7:0] colorFormat_val_dout;
input  [2:0] colorFormat_val_num_data_valid;
input  [2:0] colorFormat_val_fifo_cap;
input   colorFormat_val_empty_n;
output   colorFormat_val_read;
input  [0:0] fid_in_val14_dout;
input  [3:0] fid_in_val14_num_data_valid;
input  [3:0] fid_in_val14_fifo_cap;
input   fid_in_val14_empty_n;
output   fid_in_val14_read;
output  [0:0] fid;
output   fid_ap_vld;
input  [15:0] field_id_val13_dout;
input  [3:0] field_id_val13_num_data_valid;
input  [3:0] field_id_val13_fifo_cap;
input   field_id_val13_empty_n;
output   field_id_val13_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stream_out_vresampled_read;
reg height_val7_read;
reg width_val12_read;
reg colorFormat_val_read;
reg fid_in_val14_read;
reg[0:0] fid;
reg fid_ap_vld;
reg field_id_val13_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] fidStored;
reg   [15:0] counter;
reg    height_val7_blk_n;
reg    width_val12_blk_n;
reg    colorFormat_val_blk_n;
reg    fid_in_val14_blk_n;
reg    field_id_val13_blk_n;
reg   [7:0] colorFormat_val_read_reg_289;
reg    ap_block_state1;
reg   [0:0] fid_in_val14_read_reg_294;
reg   [15:0] field_id_val13_read_reg_299;
reg   [12:0] cols_reg_304;
reg   [11:0] rows_reg_309;
wire   [12:0] sub_i_fu_211_p2;
reg   [12:0] sub_i_reg_317;
wire   [0:0] icmp_ln979_fu_217_p2;
reg   [0:0] icmp_ln979_reg_322;
wire   [0:0] and_ln979_fu_251_p2;
reg   [0:0] and_ln979_reg_330;
wire    ap_CS_fsm_state2;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_done;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_idle;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_ready;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid_ap_vld;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_stream_out_vresampled_read;
wire   [23:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TDATA;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TVALID;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TREADY;
wire   [2:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TKEEP;
wire   [2:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TSTRB;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TUSER;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TLAST;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TID;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TDEST;
wire   [15:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_loc_1_i_out_o;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_loc_1_i_out_o_ap_vld;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_p_phi_i_out;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_p_phi_i_out_ap_vld;
wire   [15:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_ap_vld;
reg   [0:0] empty_reg_149;
wire    ap_CS_fsm_state4;
reg   [0:0] sof_reg_159;
reg    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start_reg;
wire   [0:0] icmp_ln979_1_fu_240_p2;
wire    ap_CS_fsm_state3;
reg   [15:0] counter_loc_0_i_fu_104;
reg   [0:0] p_phi_i_loc_fu_108;
reg   [11:0] i_fu_100;
wire   [11:0] i_2_fu_245_p2;
reg   [0:0] fid_preg;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 fidStored = 1'd0;
#0 counter = 16'd0;
#0 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start_reg = 1'b0;
#0 counter_loc_0_i_fu_104 = 16'd0;
#0 i_fu_100 = 12'd0;
#0 fid_preg = 1'd0;
end

design_1_v_tpg_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start),
    .ap_done(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_done),
    .ap_idle(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_idle),
    .ap_ready(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_ready),
    .sof(sof_reg_159),
    .empty(empty_reg_149),
    .cols(cols_reg_304),
    .fid_in_val14_load(fid_in_val14_read_reg_294),
    .fid(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid),
    .fid_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid_ap_vld),
    .stream_out_vresampled_dout(stream_out_vresampled_dout),
    .stream_out_vresampled_num_data_valid(3'd0),
    .stream_out_vresampled_fifo_cap(3'd0),
    .stream_out_vresampled_empty_n(stream_out_vresampled_empty_n),
    .stream_out_vresampled_read(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_stream_out_vresampled_read),
    .colorFormat_val_load(colorFormat_val_read_reg_289),
    .m_axis_video_TDATA(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TDATA),
    .m_axis_video_TVALID(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TVALID),
    .m_axis_video_TREADY(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TREADY),
    .m_axis_video_TKEEP(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TKEEP),
    .m_axis_video_TSTRB(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TSTRB),
    .m_axis_video_TUSER(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TUSER),
    .m_axis_video_TLAST(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TLAST),
    .m_axis_video_TID(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TID),
    .m_axis_video_TDEST(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TDEST),
    .field_id_val13_load(field_id_val13_read_reg_299),
    .sext_ln979(sub_i_reg_317),
    .counter_loc_1_i_out_i(counter_loc_0_i_fu_104),
    .counter_loc_1_i_out_o(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_loc_1_i_out_o),
    .counter_loc_1_i_out_o_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_loc_1_i_out_o_ap_vld),
    .p_phi_i_out(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_p_phi_i_out),
    .p_phi_i_out_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_p_phi_i_out_ap_vld),
    .counter(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter),
    .counter_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        fid_preg <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
            fid_preg <= fidStored;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd0))) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start_reg <= 1'b1;
        end else if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_ready == 1'b1)) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        counter_loc_0_i_fu_104 <= counter;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_loc_1_i_out_o_ap_vld == 1'b1))) begin
        counter_loc_0_i_fu_104 <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_loc_1_i_out_o;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_reg_149 <= p_phi_i_loc_fu_108;
    end else if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        empty_reg_149 <= fidStored;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        i_fu_100 <= 12'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd0))) begin
        i_fu_100 <= i_2_fu_245_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sof_reg_159 <= and_ln979_reg_330;
    end else if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        sof_reg_159 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        and_ln979_reg_330 <= and_ln979_fu_251_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        colorFormat_val_read_reg_289 <= colorFormat_val_dout;
        cols_reg_304 <= width_val12_dout;
        fid_in_val14_read_reg_294 <= fid_in_val14_dout;
        field_id_val13_read_reg_299 <= field_id_val13_dout;
        icmp_ln979_reg_322 <= icmp_ln979_fu_217_p2;
        rows_reg_309 <= height_val7_dout;
        sub_i_reg_317 <= sub_i_fu_211_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter_ap_vld == 1'b1))) begin
        counter <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_counter;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd1))) begin
        fidStored <= empty_reg_149;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_p_phi_i_out_ap_vld == 1'b1))) begin
        p_phi_i_loc_fu_108 <= grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_p_phi_i_out;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_val_blk_n = colorFormat_val_empty_n;
    end else begin
        colorFormat_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        colorFormat_val_read = 1'b1;
    end else begin
        colorFormat_val_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        fid = fidStored;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid_ap_vld == 1'b1))) begin
        fid = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid;
    end else begin
        fid = fid_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        fid_ap_vld = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        fid_ap_vld = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_fid_ap_vld;
    end else begin
        fid_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        fid_in_val14_blk_n = fid_in_val14_empty_n;
    end else begin
        fid_in_val14_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        fid_in_val14_read = 1'b1;
    end else begin
        fid_in_val14_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        field_id_val13_blk_n = field_id_val13_empty_n;
    end else begin
        field_id_val13_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        field_id_val13_read = 1'b1;
    end else begin
        field_id_val13_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_val7_blk_n = height_val7_empty_n;
    end else begin
        height_val7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        height_val7_read = 1'b1;
    end else begin
        height_val7_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        stream_out_vresampled_read = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_stream_out_vresampled_read;
    end else begin
        stream_out_vresampled_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_val12_blk_n = width_val12_empty_n;
    end else begin
        width_val12_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        width_val12_read = 1'b1;
    end else begin
        width_val12_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln979_1_fu_240_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln979_fu_251_p2 = (sof_reg_159 & icmp_ln979_reg_322);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (field_id_val13_empty_n == 1'b0) | (fid_in_val14_empty_n == 1'b0) | (colorFormat_val_empty_n == 1'b0) | (width_val12_empty_n == 1'b0) | (height_val7_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_ap_start_reg;

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TREADY = (m_axis_video_TREADY & ap_CS_fsm_state3);

assign i_2_fu_245_p2 = (i_fu_100 + 12'd1);

assign icmp_ln979_1_fu_240_p2 = ((i_fu_100 == rows_reg_309) ? 1'b1 : 1'b0);

assign icmp_ln979_fu_217_p2 = ((width_val12_dout == 13'd0) ? 1'b1 : 1'b0);

assign m_axis_video_TDATA = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TDATA;

assign m_axis_video_TDEST = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TDEST;

assign m_axis_video_TID = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TID;

assign m_axis_video_TKEEP = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TKEEP;

assign m_axis_video_TLAST = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TLAST;

assign m_axis_video_TSTRB = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TSTRB;

assign m_axis_video_TUSER = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TUSER;

assign m_axis_video_TVALID = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_171_m_axis_video_TVALID;

assign sub_i_fu_211_p2 = ($signed(width_val12_dout) + $signed(13'd8191));

endmodule //design_1_v_tpg_0_0_MultiPixStream2AXIvideo
