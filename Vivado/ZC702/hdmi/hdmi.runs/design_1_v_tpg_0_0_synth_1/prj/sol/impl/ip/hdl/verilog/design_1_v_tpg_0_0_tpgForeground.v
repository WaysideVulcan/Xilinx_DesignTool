// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgForeground (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        bckgndYUV_dout,
        bckgndYUV_num_data_valid,
        bckgndYUV_fifo_cap,
        bckgndYUV_empty_n,
        bckgndYUV_read,
        height_val_dout,
        height_val_num_data_valid,
        height_val_fifo_cap,
        height_val_empty_n,
        height_val_read,
        width_val_dout,
        width_val_num_data_valid,
        width_val_fifo_cap,
        width_val_empty_n,
        width_val_read,
        patternId_val_dout,
        patternId_val_num_data_valid,
        patternId_val_fifo_cap,
        patternId_val_empty_n,
        patternId_val_read,
        maskId_val_dout,
        maskId_val_num_data_valid,
        maskId_val_fifo_cap,
        maskId_val_empty_n,
        maskId_val_read,
        colorFormat_val_dout,
        colorFormat_val_num_data_valid,
        colorFormat_val_fifo_cap,
        colorFormat_val_empty_n,
        colorFormat_val_read,
        crossHairX_val_dout,
        crossHairX_val_num_data_valid,
        crossHairX_val_fifo_cap,
        crossHairX_val_empty_n,
        crossHairX_val_read,
        crossHairY_val_dout,
        crossHairY_val_num_data_valid,
        crossHairY_val_fifo_cap,
        crossHairY_val_empty_n,
        crossHairY_val_read,
        boxSize_val_dout,
        boxSize_val_num_data_valid,
        boxSize_val_fifo_cap,
        boxSize_val_empty_n,
        boxSize_val_read,
        boxColorR_val_dout,
        boxColorR_val_num_data_valid,
        boxColorR_val_fifo_cap,
        boxColorR_val_empty_n,
        boxColorR_val_read,
        boxColorG_val_dout,
        boxColorG_val_num_data_valid,
        boxColorG_val_fifo_cap,
        boxColorG_val_empty_n,
        boxColorG_val_read,
        boxColorB_val_dout,
        boxColorB_val_num_data_valid,
        boxColorB_val_fifo_cap,
        boxColorB_val_empty_n,
        boxColorB_val_read,
        motionSpeed_val_dout,
        motionSpeed_val_num_data_valid,
        motionSpeed_val_fifo_cap,
        motionSpeed_val_empty_n,
        motionSpeed_val_read,
        ovrlayYUV_din,
        ovrlayYUV_num_data_valid,
        ovrlayYUV_fifo_cap,
        ovrlayYUV_full_n,
        ovrlayYUV_write,
        height_val7_c20_din,
        height_val7_c20_num_data_valid,
        height_val7_c20_fifo_cap,
        height_val7_c20_full_n,
        height_val7_c20_write,
        width_val12_c23_din,
        width_val12_c23_num_data_valid,
        width_val12_c23_fifo_cap,
        width_val12_c23_full_n,
        width_val12_c23_write,
        colorFormat_val_c_din,
        colorFormat_val_c_num_data_valid,
        colorFormat_val_c_fifo_cap,
        colorFormat_val_c_full_n,
        colorFormat_val_c_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] bckgndYUV_dout;
input  [4:0] bckgndYUV_num_data_valid;
input  [4:0] bckgndYUV_fifo_cap;
input   bckgndYUV_empty_n;
output   bckgndYUV_read;
input  [15:0] height_val_dout;
input  [2:0] height_val_num_data_valid;
input  [2:0] height_val_fifo_cap;
input   height_val_empty_n;
output   height_val_read;
input  [15:0] width_val_dout;
input  [2:0] width_val_num_data_valid;
input  [2:0] width_val_fifo_cap;
input   width_val_empty_n;
output   width_val_read;
input  [7:0] patternId_val_dout;
input  [2:0] patternId_val_num_data_valid;
input  [2:0] patternId_val_fifo_cap;
input   patternId_val_empty_n;
output   patternId_val_read;
input  [7:0] maskId_val_dout;
input  [2:0] maskId_val_num_data_valid;
input  [2:0] maskId_val_fifo_cap;
input   maskId_val_empty_n;
output   maskId_val_read;
input  [7:0] colorFormat_val_dout;
input  [2:0] colorFormat_val_num_data_valid;
input  [2:0] colorFormat_val_fifo_cap;
input   colorFormat_val_empty_n;
output   colorFormat_val_read;
input  [15:0] crossHairX_val_dout;
input  [2:0] crossHairX_val_num_data_valid;
input  [2:0] crossHairX_val_fifo_cap;
input   crossHairX_val_empty_n;
output   crossHairX_val_read;
input  [15:0] crossHairY_val_dout;
input  [2:0] crossHairY_val_num_data_valid;
input  [2:0] crossHairY_val_fifo_cap;
input   crossHairY_val_empty_n;
output   crossHairY_val_read;
input  [15:0] boxSize_val_dout;
input  [2:0] boxSize_val_num_data_valid;
input  [2:0] boxSize_val_fifo_cap;
input   boxSize_val_empty_n;
output   boxSize_val_read;
input  [7:0] boxColorR_val_dout;
input  [2:0] boxColorR_val_num_data_valid;
input  [2:0] boxColorR_val_fifo_cap;
input   boxColorR_val_empty_n;
output   boxColorR_val_read;
input  [7:0] boxColorG_val_dout;
input  [2:0] boxColorG_val_num_data_valid;
input  [2:0] boxColorG_val_fifo_cap;
input   boxColorG_val_empty_n;
output   boxColorG_val_read;
input  [7:0] boxColorB_val_dout;
input  [2:0] boxColorB_val_num_data_valid;
input  [2:0] boxColorB_val_fifo_cap;
input   boxColorB_val_empty_n;
output   boxColorB_val_read;
input  [7:0] motionSpeed_val_dout;
input  [2:0] motionSpeed_val_num_data_valid;
input  [2:0] motionSpeed_val_fifo_cap;
input   motionSpeed_val_empty_n;
output   motionSpeed_val_read;
output  [23:0] ovrlayYUV_din;
input  [4:0] ovrlayYUV_num_data_valid;
input  [4:0] ovrlayYUV_fifo_cap;
input   ovrlayYUV_full_n;
output   ovrlayYUV_write;
output  [15:0] height_val7_c20_din;
input  [2:0] height_val7_c20_num_data_valid;
input  [2:0] height_val7_c20_fifo_cap;
input   height_val7_c20_full_n;
output   height_val7_c20_write;
output  [15:0] width_val12_c23_din;
input  [2:0] width_val12_c23_num_data_valid;
input  [2:0] width_val12_c23_fifo_cap;
input   width_val12_c23_full_n;
output   width_val12_c23_write;
output  [7:0] colorFormat_val_c_din;
input  [2:0] colorFormat_val_c_num_data_valid;
input  [2:0] colorFormat_val_c_fifo_cap;
input   colorFormat_val_c_full_n;
output   colorFormat_val_c_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg bckgndYUV_read;
reg height_val_read;
reg width_val_read;
reg patternId_val_read;
reg maskId_val_read;
reg colorFormat_val_read;
reg crossHairX_val_read;
reg crossHairY_val_read;
reg boxSize_val_read;
reg boxColorR_val_read;
reg boxColorG_val_read;
reg boxColorB_val_read;
reg motionSpeed_val_read;
reg ovrlayYUV_write;
reg height_val7_c20_write;
reg width_val12_c23_write;
reg colorFormat_val_c_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] boxHCoord;
reg   [15:0] boxVCoord;
reg    height_val_blk_n;
reg    width_val_blk_n;
reg    patternId_val_blk_n;
reg    maskId_val_blk_n;
reg    colorFormat_val_blk_n;
reg    crossHairX_val_blk_n;
reg    crossHairY_val_blk_n;
reg    boxSize_val_blk_n;
reg    boxColorR_val_blk_n;
reg    boxColorG_val_blk_n;
reg    boxColorB_val_blk_n;
reg    motionSpeed_val_blk_n;
reg    height_val7_c20_blk_n;
reg    width_val12_c23_blk_n;
reg    colorFormat_val_c_blk_n;
reg   [7:0] boxColorB_val_read_reg_421;
reg    ap_block_state1;
reg   [7:0] boxColorG_val_read_reg_426;
reg   [7:0] boxColorR_val_read_reg_431;
reg   [15:0] boxSize_val_read_reg_436;
reg   [15:0] crossHairY_val_read_reg_443;
reg   [15:0] crossHairX_val_read_reg_448;
reg   [7:0] colorFormat_val_read_reg_453;
reg   [7:0] motionSpeed_val_read_reg_459;
reg   [7:0] patternId_val_read_reg_465;
reg   [15:0] loopWidth_reg_470;
reg   [15:0] loopHeight_reg_476;
wire   [0:0] tobool_fu_262_p2;
reg   [0:0] tobool_reg_482;
wire   [0:0] empty_fu_268_p1;
reg   [0:0] empty_reg_487;
reg   [0:0] tmp_reg_492;
reg   [0:0] tmp_4_reg_497;
wire   [0:0] icmp_fu_298_p2;
reg   [0:0] icmp_reg_502;
wire   [7:0] pixOut_fu_332_p3;
reg   [7:0] pixOut_reg_507;
wire    ap_CS_fsm_state2;
wire   [15:0] hMax_fu_340_p2;
reg   [15:0] hMax_reg_512;
wire   [15:0] vMax_fu_344_p2;
reg   [15:0] vMax_reg_517;
wire   [0:0] and4_i_fu_348_p2;
reg   [0:0] and4_i_reg_522;
wire   [0:0] and10_i_fu_353_p2;
reg   [0:0] and10_i_reg_527;
wire   [0:0] and26_i_fu_358_p2;
reg   [0:0] and26_i_reg_532;
wire   [8:0] shl_i_fu_363_p3;
reg   [8:0] shl_i_reg_537;
reg   [15:0] y_2_reg_542;
wire    ap_CS_fsm_state3;
reg   [15:0] boxVCoord_loc_0_load_reg_550;
reg   [15:0] boxHCoord_loc_0_load_reg_555;
wire   [0:0] cmp2_i_fu_390_p2;
reg   [0:0] cmp2_i_reg_560;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_done;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_idle;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_ready;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_bckgndYUV_read;
wire   [23:0] grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ovrlayYUV_din;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ovrlayYUV_write;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_loc_1_out;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_loc_1_out_ap_vld;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_loc_1_out;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_loc_1_out_ap_vld;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_ap_vld;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_ap_vld;
reg    grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start_reg;
reg   [4:0] ap_NS_fsm;
wire    ap_NS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [15:0] boxHCoord_loc_0_fu_120;
reg   [15:0] boxVCoord_loc_0_fu_116;
reg   [15:0] y_fu_112;
wire   [15:0] y_3_fu_378_p2;
wire   [0:0] icmp_ln772_fu_373_p2;
wire   [6:0] tmp_5_fu_288_p4;
wire   [0:0] cmp31_i_fu_327_p2;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 boxHCoord = 16'd0;
#0 boxVCoord = 16'd0;
#0 grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start_reg = 1'b0;
#0 boxHCoord_loc_0_fu_120 = 16'd0;
#0 boxVCoord_loc_0_fu_116 = 16'd0;
#0 y_fu_112 = 16'd0;
end

design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2 grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start),
    .ap_done(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_done),
    .ap_idle(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_idle),
    .ap_ready(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_ready),
    .bckgndYUV_dout(bckgndYUV_dout),
    .bckgndYUV_num_data_valid(5'd0),
    .bckgndYUV_fifo_cap(5'd0),
    .bckgndYUV_empty_n(bckgndYUV_empty_n),
    .bckgndYUV_read(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_bckgndYUV_read),
    .ovrlayYUV_din(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ovrlayYUV_din),
    .ovrlayYUV_num_data_valid(5'd0),
    .ovrlayYUV_fifo_cap(5'd0),
    .ovrlayYUV_full_n(ovrlayYUV_full_n),
    .ovrlayYUV_write(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ovrlayYUV_write),
    .boxHCoord_loc_0(boxHCoord_loc_0_load_reg_555),
    .boxVCoord_loc_0(boxVCoord_loc_0_load_reg_550),
    .loopWidth(loopWidth_reg_470),
    .boxColorB(boxColorB_val_read_reg_421),
    .pixOut(pixOut_reg_507),
    .boxColorR(boxColorR_val_read_reg_431),
    .and4_i(and4_i_reg_522),
    .and26_i(and26_i_reg_532),
    .tobool(tobool_reg_482),
    .and10_i(and10_i_reg_527),
    .patternId_val_load(patternId_val_read_reg_465),
    .boxSize(boxSize_val_read_reg_436),
    .y(y_2_reg_542),
    .zext_ln1914(motionSpeed_val_read_reg_459),
    .vMax(vMax_reg_517),
    .hMax(hMax_reg_512),
    .zext_ln1914_1(shl_i_reg_537),
    .icmp(icmp_reg_502),
    .boxColorG(boxColorG_val_read_reg_426),
    .crossHairX(crossHairX_val_read_reg_448),
    .cmp2_i(cmp2_i_reg_560),
    .color(colorFormat_val_read_reg_453),
    .boxHCoord_loc_1_out(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_loc_1_out),
    .boxHCoord_loc_1_out_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_loc_1_out_ap_vld),
    .boxVCoord_loc_1_out(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_loc_1_out),
    .boxVCoord_loc_1_out_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_loc_1_out_ap_vld),
    .boxHCoord(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord),
    .boxHCoord_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_ap_vld),
    .boxVCoord(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord),
    .boxVCoord_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_ap_vld)
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
        end else if (((icmp_ln772_fu_373_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state4) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start_reg <= 1'b1;
        end else if ((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_ready == 1'b1)) begin
            grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxHCoord_loc_0_fu_120 <= boxHCoord;
    end else if (((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_loc_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        boxHCoord_loc_0_fu_120 <= grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxVCoord_loc_0_fu_116 <= boxVCoord;
    end else if (((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_loc_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        boxVCoord_loc_0_fu_116 <= grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        y_fu_112 <= 16'd0;
    end else if (((icmp_ln772_fu_373_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        y_fu_112 <= y_3_fu_378_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        and10_i_reg_527 <= and10_i_fu_353_p2;
        and26_i_reg_532 <= and26_i_fu_358_p2;
        and4_i_reg_522 <= and4_i_fu_348_p2;
        hMax_reg_512 <= hMax_fu_340_p2;
        pixOut_reg_507[6 : 4] <= pixOut_fu_332_p3[6 : 4];
        shl_i_reg_537[8 : 1] <= shl_i_fu_363_p3[8 : 1];
        vMax_reg_517 <= vMax_fu_344_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxColorB_val_read_reg_421 <= boxColorB_val_dout;
        boxColorG_val_read_reg_426 <= boxColorG_val_dout;
        boxColorR_val_read_reg_431 <= boxColorR_val_dout;
        boxSize_val_read_reg_436 <= boxSize_val_dout;
        colorFormat_val_read_reg_453 <= colorFormat_val_dout;
        crossHairX_val_read_reg_448 <= crossHairX_val_dout;
        crossHairY_val_read_reg_443 <= crossHairY_val_dout;
        empty_reg_487 <= empty_fu_268_p1;
        icmp_reg_502 <= icmp_fu_298_p2;
        loopHeight_reg_476 <= height_val_dout;
        loopWidth_reg_470 <= width_val_dout;
        motionSpeed_val_read_reg_459 <= motionSpeed_val_dout;
        patternId_val_read_reg_465 <= patternId_val_dout;
        tmp_4_reg_497 <= maskId_val_dout[32'd2];
        tmp_reg_492 <= maskId_val_dout[32'd1];
        tobool_reg_482 <= tobool_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        boxHCoord <= grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxHCoord;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        boxHCoord_loc_0_load_reg_555 <= boxHCoord_loc_0_fu_120;
        boxVCoord_loc_0_load_reg_550 <= boxVCoord_loc_0_fu_116;
        cmp2_i_reg_560 <= cmp2_i_fu_390_p2;
        y_2_reg_542 <= y_fu_112;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        boxVCoord <= grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_boxVCoord;
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

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln772_fu_373_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln772_fu_373_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bckgndYUV_read = grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_bckgndYUV_read;
    end else begin
        bckgndYUV_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        boxColorB_val_blk_n = boxColorB_val_empty_n;
    end else begin
        boxColorB_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxColorB_val_read = 1'b1;
    end else begin
        boxColorB_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        boxColorG_val_blk_n = boxColorG_val_empty_n;
    end else begin
        boxColorG_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxColorG_val_read = 1'b1;
    end else begin
        boxColorG_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        boxColorR_val_blk_n = boxColorR_val_empty_n;
    end else begin
        boxColorR_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxColorR_val_read = 1'b1;
    end else begin
        boxColorR_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        boxSize_val_blk_n = boxSize_val_empty_n;
    end else begin
        boxSize_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        boxSize_val_read = 1'b1;
    end else begin
        boxSize_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_val_blk_n = colorFormat_val_empty_n;
    end else begin
        colorFormat_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_val_c_blk_n = colorFormat_val_c_full_n;
    end else begin
        colorFormat_val_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        colorFormat_val_c_write = 1'b1;
    end else begin
        colorFormat_val_c_write = 1'b0;
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
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        crossHairX_val_blk_n = crossHairX_val_empty_n;
    end else begin
        crossHairX_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        crossHairX_val_read = 1'b1;
    end else begin
        crossHairX_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        crossHairY_val_blk_n = crossHairY_val_empty_n;
    end else begin
        crossHairY_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        crossHairY_val_read = 1'b1;
    end else begin
        crossHairY_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_val7_c20_blk_n = height_val7_c20_full_n;
    end else begin
        height_val7_c20_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        height_val7_c20_write = 1'b1;
    end else begin
        height_val7_c20_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_val_blk_n = height_val_empty_n;
    end else begin
        height_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        height_val_read = 1'b1;
    end else begin
        height_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        maskId_val_blk_n = maskId_val_empty_n;
    end else begin
        maskId_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        maskId_val_read = 1'b1;
    end else begin
        maskId_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        motionSpeed_val_blk_n = motionSpeed_val_empty_n;
    end else begin
        motionSpeed_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        motionSpeed_val_read = 1'b1;
    end else begin
        motionSpeed_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ovrlayYUV_write = grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ovrlayYUV_write;
    end else begin
        ovrlayYUV_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        patternId_val_blk_n = patternId_val_empty_n;
    end else begin
        patternId_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        patternId_val_read = 1'b1;
    end else begin
        patternId_val_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_val12_c23_blk_n = width_val12_c23_full_n;
    end else begin
        width_val12_c23_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        width_val12_c23_write = 1'b1;
    end else begin
        width_val12_c23_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_val_blk_n = width_val_empty_n;
    end else begin
        width_val_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        width_val_read = 1'b1;
    end else begin
        width_val_read = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln772_fu_373_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and10_i_fu_353_p2 = (tmp_reg_492 & cmp31_i_fu_327_p2);

assign and26_i_fu_358_p2 = (tmp_4_reg_497 & cmp31_i_fu_327_p2);

assign and4_i_fu_348_p2 = (empty_reg_487 & cmp31_i_fu_327_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_NS_fsm_state4 = ap_NS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((boxColorB_val_empty_n == 1'b0) | (boxColorG_val_empty_n == 1'b0) | (boxColorR_val_empty_n == 1'b0) | (boxSize_val_empty_n == 1'b0) | (crossHairY_val_empty_n == 1'b0) | (crossHairX_val_empty_n == 1'b0) | (colorFormat_val_empty_n == 1'b0) | (maskId_val_empty_n == 1'b0) | (patternId_val_empty_n == 1'b0) | (width_val_empty_n == 1'b0) | (height_val_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (colorFormat_val_c_full_n == 1'b0) | (width_val12_c23_full_n == 1'b0) | (height_val7_c20_full_n == 1'b0) | (ap_start == 1'b0) | (motionSpeed_val_empty_n == 1'b0));
end

assign cmp2_i_fu_390_p2 = ((y_fu_112 == crossHairY_val_read_reg_443) ? 1'b1 : 1'b0);

assign cmp31_i_fu_327_p2 = ((colorFormat_val_read_reg_453 == 8'd0) ? 1'b1 : 1'b0);

assign colorFormat_val_c_din = colorFormat_val_dout;

assign empty_fu_268_p1 = maskId_val_dout[0:0];

assign grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start = grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ap_start_reg;

assign hMax_fu_340_p2 = (loopWidth_reg_470 - boxSize_val_read_reg_436);

assign height_val7_c20_din = height_val_dout;

assign icmp_fu_298_p2 = ((tmp_5_fu_288_p4 != 7'd0) ? 1'b1 : 1'b0);

assign icmp_ln772_fu_373_p2 = ((y_fu_112 == loopHeight_reg_476) ? 1'b1 : 1'b0);

assign ovrlayYUV_din = grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_220_ovrlayYUV_din;

assign pixOut_fu_332_p3 = ((cmp31_i_fu_327_p2[0:0] == 1'b1) ? 8'd240 : 8'd128);

assign shl_i_fu_363_p3 = {{motionSpeed_val_read_reg_459}, {1'd0}};

assign tmp_5_fu_288_p4 = {{colorFormat_val_dout[7:1]}};

assign tobool_fu_262_p2 = ((maskId_val_dout == 8'd0) ? 1'b1 : 1'b0);

assign vMax_fu_344_p2 = (loopHeight_reg_476 - boxSize_val_read_reg_436);

assign width_val12_c23_din = width_val_dout;

assign y_3_fu_378_p2 = (y_fu_112 + 16'd1);

always @ (posedge ap_clk) begin
    pixOut_reg_507[3:0] <= 4'b0000;
    pixOut_reg_507[7] <= 1'b1;
    shl_i_reg_537[0] <= 1'b0;
end

endmodule //design_1_v_tpg_0_0_tpgForeground
