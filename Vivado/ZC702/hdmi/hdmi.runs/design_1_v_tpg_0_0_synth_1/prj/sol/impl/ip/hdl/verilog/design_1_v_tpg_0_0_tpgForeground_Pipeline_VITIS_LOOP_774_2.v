// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bckgndYUV_dout,
        bckgndYUV_num_data_valid,
        bckgndYUV_fifo_cap,
        bckgndYUV_empty_n,
        bckgndYUV_read,
        ovrlayYUV_din,
        ovrlayYUV_num_data_valid,
        ovrlayYUV_fifo_cap,
        ovrlayYUV_full_n,
        ovrlayYUV_write,
        boxHCoord_loc_0,
        boxVCoord_loc_0,
        loopWidth,
        boxColorB,
        pixOut,
        boxColorR,
        and4_i,
        and26_i,
        tobool,
        and10_i,
        patternId_val_load,
        boxSize,
        y,
        zext_ln1914,
        vMax,
        hMax,
        zext_ln1914_1,
        icmp,
        boxColorG,
        crossHairX,
        cmp2_i,
        color,
        boxHCoord_loc_1_out,
        boxHCoord_loc_1_out_ap_vld,
        boxVCoord_loc_1_out,
        boxVCoord_loc_1_out_ap_vld,
        boxHCoord,
        boxHCoord_ap_vld,
        boxVCoord,
        boxVCoord_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] bckgndYUV_dout;
input  [4:0] bckgndYUV_num_data_valid;
input  [4:0] bckgndYUV_fifo_cap;
input   bckgndYUV_empty_n;
output   bckgndYUV_read;
output  [23:0] ovrlayYUV_din;
input  [4:0] ovrlayYUV_num_data_valid;
input  [4:0] ovrlayYUV_fifo_cap;
input   ovrlayYUV_full_n;
output   ovrlayYUV_write;
input  [15:0] boxHCoord_loc_0;
input  [15:0] boxVCoord_loc_0;
input  [15:0] loopWidth;
input  [7:0] boxColorB;
input  [7:0] pixOut;
input  [7:0] boxColorR;
input  [0:0] and4_i;
input  [0:0] and26_i;
input  [0:0] tobool;
input  [0:0] and10_i;
input  [7:0] patternId_val_load;
input  [15:0] boxSize;
input  [15:0] y;
input  [7:0] zext_ln1914;
input  [15:0] vMax;
input  [15:0] hMax;
input  [8:0] zext_ln1914_1;
input  [0:0] icmp;
input  [7:0] boxColorG;
input  [15:0] crossHairX;
input  [0:0] cmp2_i;
input  [7:0] color;
output  [15:0] boxHCoord_loc_1_out;
output   boxHCoord_loc_1_out_ap_vld;
output  [15:0] boxVCoord_loc_1_out;
output   boxVCoord_loc_1_out_ap_vld;
output  [15:0] boxHCoord;
output   boxHCoord_ap_vld;
output  [15:0] boxVCoord;
output   boxVCoord_ap_vld;

reg ap_idle;
reg bckgndYUV_read;
reg ovrlayYUV_write;
reg boxHCoord_loc_1_out_ap_vld;
reg boxVCoord_loc_1_out_ap_vld;
reg boxHCoord_ap_vld;
reg boxVCoord_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln774_reg_910;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln774_fu_434_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] vDir;
reg   [0:0] hDir;
wire   [1:0] whiYuv_address0;
reg    whiYuv_ce0;
wire   [7:0] whiYuv_q0;
reg    ovrlayYUV_blk_n;
wire    ap_block_pp0_stage0;
reg    bckgndYUV_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] color_read_reg_785;
wire   [7:0] patternId_val_load_read_reg_832;
wire   [15:0] zext_ln1914_1_cast_fu_402_p1;
reg   [15:0] zext_ln1914_1_cast_reg_880;
wire   [15:0] zext_ln1914_cast_fu_406_p1;
reg   [15:0] zext_ln1914_cast_reg_886;
reg   [15:0] x_2_reg_894;
reg   [15:0] boxVCoord_loc_1_load_reg_900;
reg   [15:0] boxHCoord_loc_1_load_reg_905;
reg   [0:0] icmp_ln774_reg_910_pp0_iter2_reg;
wire   [0:0] trunc_ln774_fu_445_p1;
reg   [0:0] trunc_ln774_reg_914;
wire   [0:0] icmp_ln1884_fu_454_p2;
wire   [0:0] hDir_load_load_fu_460_p1;
wire   [0:0] icmp_ln1889_fu_464_p2;
wire   [0:0] icmp_ln1894_fu_475_p2;
wire   [0:0] vDir_load_load_fu_486_p1;
wire   [0:0] icmp_ln1901_fu_490_p2;
wire   [0:0] icmp_ln1906_fu_501_p2;
wire   [0:0] or_ln1963_fu_575_p2;
reg   [0:0] or_ln1963_reg_947;
reg   [0:0] or_ln1963_reg_947_pp0_iter2_reg;
wire   [7:0] pixIn_fu_599_p1;
reg   [7:0] pixIn_reg_956;
reg   [7:0] pixIn_5_reg_963;
reg   [7:0] pixIn_6_reg_970;
wire   [0:0] and_ln1942_fu_683_p2;
reg   [0:0] and_ln1942_reg_977;
wire   [7:0] pixOut_7_fu_693_p3;
reg   [0:0] ap_phi_mux_empty_106_phi_fu_305_p8;
wire   [0:0] ap_phi_reg_pp0_iter1_empty_106_reg_302;
reg   [0:0] ap_phi_mux_empty_105_phi_fu_322_p8;
wire   [0:0] ap_phi_reg_pp0_iter1_empty_105_reg_319;
reg   [1:0] ap_phi_mux_phi_ln1975_phi_fu_339_p4;
wire   [1:0] select_ln1975_fu_580_p3;
wire   [1:0] ap_phi_reg_pp0_iter1_phi_ln1975_reg_336;
reg   [7:0] ap_phi_mux_pix_4_phi_fu_349_p12;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_4_reg_346;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_4_reg_346;
reg   [7:0] ap_phi_reg_pp0_iter2_pix_4_reg_346;
reg   [7:0] ap_phi_reg_pp0_iter3_pix_4_reg_346;
reg   [7:0] ap_phi_mux_pix_3_phi_fu_367_p12;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_3_reg_363;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_3_reg_363;
reg   [7:0] ap_phi_reg_pp0_iter2_pix_3_reg_363;
reg   [7:0] ap_phi_reg_pp0_iter3_pix_3_reg_363;
reg   [7:0] ap_phi_mux_pix_phi_fu_386_p12;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_reg_382;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_reg_382;
reg   [7:0] ap_phi_reg_pp0_iter2_pix_reg_382;
reg   [7:0] ap_phi_reg_pp0_iter3_pix_reg_382;
wire   [63:0] zext_ln1975_fu_589_p1;
wire   [15:0] select_ln1911_fu_522_p3;
wire   [15:0] select_ln1915_fu_546_p3;
reg   [15:0] x_fu_132;
wire   [15:0] x_3_fu_439_p2;
wire    ap_loop_init;
reg   [15:0] boxVCoord_loc_1_fu_136;
reg   [15:0] boxHCoord_loc_1_fu_140;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] or_ln1884_fu_449_p2;
wire   [15:0] sub_ln1914_fu_512_p2;
wire   [15:0] add_ln1912_fu_517_p2;
wire   [15:0] sub_ln1918_fu_536_p2;
wire   [15:0] add_ln1916_fu_541_p2;
wire   [0:0] icmp_ln1963_fu_570_p2;
wire   [0:0] icmp_ln1932_fu_639_p2;
wire   [15:0] boxBottom_fu_634_p2;
wire   [0:0] icmp_ln1937_fu_655_p2;
wire   [15:0] boxRight_fu_629_p2;
wire   [0:0] icmp_ln1937_1_fu_666_p2;
wire   [0:0] xor_ln1937_fu_660_p2;
wire   [0:0] xor_ln1932_fu_644_p2;
wire   [0:0] icmp_ln1932_1_fu_650_p2;
wire   [0:0] and_ln1942_1_fu_677_p2;
wire   [0:0] and_ln1942_2_fu_671_p2;
wire   [0:0] and_ln1947_fu_689_p2;
wire   [7:0] select_ln1993_fu_706_p3;
wire   [7:0] pixOut_11_fu_699_p3;
wire   [7:0] select_ln1991_fu_727_p3;
wire   [7:0] p_0_2_0_0_0269699_fu_713_p3;
wire   [7:0] empty_fu_734_p3;
wire   [7:0] pixOut_12_fu_720_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_338;
reg    ap_condition_377;
reg    ap_condition_226;
reg    ap_condition_361;
reg    ap_condition_381;
reg    ap_condition_385;
reg    ap_condition_678;
reg    ap_condition_411;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 vDir = 1'd0;
#0 hDir = 1'd0;
#0 x_fu_132 = 16'd0;
#0 boxVCoord_loc_1_fu_136 = 16'd0;
#0 boxHCoord_loc_1_fu_140 = 16'd0;
#0 ap_done_reg = 1'b0;
end

design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2_whiYuv_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
whiYuv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(whiYuv_address0),
    .ce0(whiYuv_ce0),
    .q0(whiYuv_q0)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if ((1'b1 == ap_condition_226)) begin
        if ((1'b1 == ap_condition_377)) begin
            ap_phi_reg_pp0_iter2_pix_3_reg_363 <= 8'd240;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_pix_3_reg_363 <= ap_phi_reg_pp0_iter1_pix_3_reg_363;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_226)) begin
        if ((1'b1 == ap_condition_377)) begin
            ap_phi_reg_pp0_iter2_pix_4_reg_346 <= pixOut;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_pix_4_reg_346 <= ap_phi_reg_pp0_iter1_pix_4_reg_346;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_226)) begin
        if ((1'b1 == ap_condition_377)) begin
            ap_phi_reg_pp0_iter2_pix_reg_382 <= 8'd240;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_pix_reg_382 <= ap_phi_reg_pp0_iter1_pix_reg_382;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((1'b1 == ap_condition_385)) begin
            ap_phi_reg_pp0_iter3_pix_3_reg_363 <= whiYuv_q0;
        end else if ((1'b1 == ap_condition_381)) begin
            ap_phi_reg_pp0_iter3_pix_3_reg_363 <= pixOut_7_fu_693_p3;
        end else if ((1'b1 == ap_condition_361)) begin
            ap_phi_reg_pp0_iter3_pix_3_reg_363 <= {{bckgndYUV_dout[15:8]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter3_pix_3_reg_363 <= ap_phi_reg_pp0_iter2_pix_3_reg_363;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((1'b1 == ap_condition_385)) begin
            ap_phi_reg_pp0_iter3_pix_4_reg_346 <= pixOut;
        end else if ((1'b1 == ap_condition_381)) begin
            ap_phi_reg_pp0_iter3_pix_4_reg_346 <= boxColorB;
        end else if ((1'b1 == ap_condition_361)) begin
            ap_phi_reg_pp0_iter3_pix_4_reg_346 <= {{bckgndYUV_dout[23:16]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter3_pix_4_reg_346 <= ap_phi_reg_pp0_iter2_pix_4_reg_346;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((1'b1 == ap_condition_385)) begin
            ap_phi_reg_pp0_iter3_pix_reg_382 <= 8'd240;
        end else if ((1'b1 == ap_condition_381)) begin
            ap_phi_reg_pp0_iter3_pix_reg_382 <= boxColorR;
        end else if ((1'b1 == ap_condition_361)) begin
            ap_phi_reg_pp0_iter3_pix_reg_382 <= pixIn_fu_599_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter3_pix_reg_382 <= ap_phi_reg_pp0_iter2_pix_reg_382;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            boxHCoord_loc_1_fu_140 <= boxHCoord_loc_0;
        end else if ((1'b1 == ap_condition_678)) begin
            boxHCoord_loc_1_fu_140 <= select_ln1911_fu_522_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            boxVCoord_loc_1_fu_136 <= boxVCoord_loc_0;
        end else if ((1'b1 == ap_condition_678)) begin
            boxVCoord_loc_1_fu_136 <= select_ln1915_fu_546_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_411)) begin
        if (((icmp_ln1894_fu_475_p2 == 1'd1) & (hDir_load_load_fu_460_p1 == 1'd1))) begin
            hDir <= 1'd0;
        end else if (((icmp_ln1889_fu_464_p2 == 1'd1) & (hDir_load_load_fu_460_p1 == 1'd0))) begin
            hDir <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_411)) begin
        if (((icmp_ln1906_fu_501_p2 == 1'd1) & (vDir_load_load_fu_486_p1 == 1'd1))) begin
            vDir <= 1'd0;
        end else if (((icmp_ln1901_fu_490_p2 == 1'd1) & (vDir_load_load_fu_486_p1 == 1'd0))) begin
            vDir <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_fu_132 <= 16'd0;
        end else if (((icmp_ln774_fu_434_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_fu_132 <= x_3_fu_439_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        and_ln1942_reg_977 <= and_ln1942_fu_683_p2;
        icmp_ln774_reg_910_pp0_iter2_reg <= icmp_ln774_reg_910;
        or_ln1963_reg_947_pp0_iter2_reg <= or_ln1963_reg_947;
        pixIn_5_reg_963 <= {{bckgndYUV_dout[15:8]}};
        pixIn_6_reg_970 <= {{bckgndYUV_dout[23:16]}};
        pixIn_reg_956 <= pixIn_fu_599_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln774_reg_910 <= icmp_ln774_fu_434_p2;
        or_ln1963_reg_947 <= or_ln1963_fu_575_p2;
        trunc_ln774_reg_914 <= trunc_ln774_fu_445_p1;
        x_2_reg_894 <= x_fu_132;
        zext_ln1914_1_cast_reg_880[8 : 0] <= zext_ln1914_1_cast_fu_402_p1[8 : 0];
        zext_ln1914_cast_reg_886[7 : 0] <= zext_ln1914_cast_fu_406_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_pix_3_reg_363 <= ap_phi_reg_pp0_iter0_pix_3_reg_363;
        ap_phi_reg_pp0_iter1_pix_4_reg_346 <= ap_phi_reg_pp0_iter0_pix_4_reg_346;
        ap_phi_reg_pp0_iter1_pix_reg_382 <= ap_phi_reg_pp0_iter0_pix_reg_382;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        boxHCoord_loc_1_load_reg_905 <= boxHCoord_loc_1_fu_140;
        boxVCoord_loc_1_load_reg_900 <= boxVCoord_loc_1_fu_136;
    end
end

always @ (*) begin
    if (((icmp_ln774_fu_434_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1906_fu_501_p2 == 1'd0) & (vDir_load_load_fu_486_p1 == 1'd1) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)) | ((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1901_fu_490_p2 == 1'd1) & (vDir_load_load_fu_486_p1 == 1'd0) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)))) begin
        ap_phi_mux_empty_105_phi_fu_322_p8 = 1'd1;
    end else if ((((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1901_fu_490_p2 == 1'd0) & (vDir_load_load_fu_486_p1 == 1'd0) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)) | ((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1906_fu_501_p2 == 1'd1) & (vDir_load_load_fu_486_p1 == 1'd1) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)))) begin
        ap_phi_mux_empty_105_phi_fu_322_p8 = 1'd0;
    end else begin
        ap_phi_mux_empty_105_phi_fu_322_p8 = ap_phi_reg_pp0_iter1_empty_105_reg_319;
    end
end

always @ (*) begin
    if ((((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1894_fu_475_p2 == 1'd0) & (hDir_load_load_fu_460_p1 == 1'd1) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)) | ((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1889_fu_464_p2 == 1'd1) & (hDir_load_load_fu_460_p1 == 1'd0) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)))) begin
        ap_phi_mux_empty_106_phi_fu_305_p8 = 1'd1;
    end else if ((((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1889_fu_464_p2 == 1'd0) & (hDir_load_load_fu_460_p1 == 1'd0) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)) | ((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1894_fu_475_p2 == 1'd1) & (hDir_load_load_fu_460_p1 == 1'd1) & (icmp_ln1884_fu_454_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd1)))) begin
        ap_phi_mux_empty_106_phi_fu_305_p8 = 1'd0;
    end else begin
        ap_phi_mux_empty_106_phi_fu_305_p8 = ap_phi_reg_pp0_iter1_empty_106_reg_302;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_338)) begin
        if ((color_read_reg_785 == 8'd1)) begin
            ap_phi_mux_phi_ln1975_phi_fu_339_p4 = 2'd1;
        end else if ((~(color_read_reg_785 == 8'd1) & ~(color_read_reg_785 == 8'd0))) begin
            ap_phi_mux_phi_ln1975_phi_fu_339_p4 = select_ln1975_fu_580_p3;
        end else begin
            ap_phi_mux_phi_ln1975_phi_fu_339_p4 = ap_phi_reg_pp0_iter1_phi_ln1975_reg_336;
        end
    end else begin
        ap_phi_mux_phi_ln1975_phi_fu_339_p4 = ap_phi_reg_pp0_iter1_phi_ln1975_reg_336;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln1942_reg_977) & (icmp_ln774_reg_910_pp0_iter2_reg == 1'd0) & (patternId_val_load_read_reg_832 == 8'd1)) | ((or_ln1963_reg_947_pp0_iter2_reg == 1'd0) & (icmp_ln774_reg_910_pp0_iter2_reg == 1'd0) & (patternId_val_load_read_reg_832 == 8'd2)))) begin
        ap_phi_mux_pix_3_phi_fu_367_p12 = pixIn_5_reg_963;
    end else begin
        ap_phi_mux_pix_3_phi_fu_367_p12 = ap_phi_reg_pp0_iter3_pix_3_reg_363;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln1942_reg_977) & (icmp_ln774_reg_910_pp0_iter2_reg == 1'd0) & (patternId_val_load_read_reg_832 == 8'd1)) | ((or_ln1963_reg_947_pp0_iter2_reg == 1'd0) & (icmp_ln774_reg_910_pp0_iter2_reg == 1'd0) & (patternId_val_load_read_reg_832 == 8'd2)))) begin
        ap_phi_mux_pix_4_phi_fu_349_p12 = pixIn_6_reg_970;
    end else begin
        ap_phi_mux_pix_4_phi_fu_349_p12 = ap_phi_reg_pp0_iter3_pix_4_reg_346;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln1942_reg_977) & (icmp_ln774_reg_910_pp0_iter2_reg == 1'd0) & (patternId_val_load_read_reg_832 == 8'd1)) | ((or_ln1963_reg_947_pp0_iter2_reg == 1'd0) & (icmp_ln774_reg_910_pp0_iter2_reg == 1'd0) & (patternId_val_load_read_reg_832 == 8'd2)))) begin
        ap_phi_mux_pix_phi_fu_386_p12 = pixIn_reg_956;
    end else begin
        ap_phi_mux_pix_phi_fu_386_p12 = ap_phi_reg_pp0_iter3_pix_reg_382;
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
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln774_reg_910 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        bckgndYUV_blk_n = bckgndYUV_empty_n;
    end else begin
        bckgndYUV_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln774_reg_910 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        bckgndYUV_read = 1'b1;
    end else begin
        bckgndYUV_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln774_fu_434_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1884_fu_454_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (patternId_val_load_read_reg_832 == 8'd1))) begin
        boxHCoord_ap_vld = 1'b1;
    end else begin
        boxHCoord_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln774_reg_910 == 1'd1))) begin
        boxHCoord_loc_1_out_ap_vld = 1'b1;
    end else begin
        boxHCoord_loc_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln774_fu_434_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1884_fu_454_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (patternId_val_load_read_reg_832 == 8'd1))) begin
        boxVCoord_ap_vld = 1'b1;
    end else begin
        boxVCoord_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln774_reg_910 == 1'd1))) begin
        boxVCoord_loc_1_out_ap_vld = 1'b1;
    end else begin
        boxVCoord_loc_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ovrlayYUV_blk_n = ovrlayYUV_full_n;
    end else begin
        ovrlayYUV_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ovrlayYUV_write = 1'b1;
    end else begin
        ovrlayYUV_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        whiYuv_ce0 = 1'b1;
    end else begin
        whiYuv_ce0 = 1'b0;
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

assign add_ln1912_fu_517_p2 = (boxHCoord_loc_1_fu_140 + zext_ln1914_cast_reg_886);

assign add_ln1916_fu_541_p2 = (boxVCoord_loc_1_fu_136 + zext_ln1914_cast_reg_886);

assign and_ln1942_1_fu_677_p2 = (xor_ln1932_fu_644_p2 & icmp_ln1932_1_fu_650_p2);

assign and_ln1942_2_fu_671_p2 = (xor_ln1937_fu_660_p2 & icmp_ln1937_1_fu_666_p2);

assign and_ln1942_fu_683_p2 = (and_ln1942_2_fu_671_p2 & and_ln1942_1_fu_677_p2);

assign and_ln1947_fu_689_p2 = (trunc_ln774_reg_914 & icmp);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((icmp_ln774_reg_910 == 1'd0) & (bckgndYUV_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (ovrlayYUV_full_n == 1'b0);
end

always @ (*) begin
    ap_condition_226 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_338 = ((icmp_ln774_fu_434_p2 == 1'd0) & (or_ln1963_fu_575_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd2));
end

always @ (*) begin
    ap_condition_361 = (~(patternId_val_load_read_reg_832 == 8'd2) & ~(patternId_val_load_read_reg_832 == 8'd1) & (icmp_ln774_reg_910 == 1'd0));
end

always @ (*) begin
    ap_condition_377 = ((icmp_ln774_fu_434_p2 == 1'd0) & (or_ln1963_fu_575_p2 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd2) & (color_read_reg_785 == 8'd0));
end

always @ (*) begin
    ap_condition_381 = ((1'd1 == and_ln1942_fu_683_p2) & (icmp_ln774_reg_910 == 1'd0) & (patternId_val_load_read_reg_832 == 8'd1));
end

always @ (*) begin
    ap_condition_385 = (~(color_read_reg_785 == 8'd0) & (icmp_ln774_reg_910 == 1'd0) & (or_ln1963_reg_947 == 1'd1) & (patternId_val_load_read_reg_832 == 8'd2));
end

always @ (*) begin
    ap_condition_411 = ((icmp_ln774_fu_434_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1884_fu_454_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (patternId_val_load_read_reg_832 == 8'd1));
end

always @ (*) begin
    ap_condition_678 = ((icmp_ln774_fu_434_p2 == 1'd0) & (icmp_ln1884_fu_454_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (patternId_val_load_read_reg_832 == 8'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign ap_phi_reg_pp0_iter0_pix_3_reg_363 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_4_reg_346 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_reg_382 = 'bx;

assign ap_phi_reg_pp0_iter1_empty_105_reg_319 = 'bx;

assign ap_phi_reg_pp0_iter1_empty_106_reg_302 = 'bx;

assign ap_phi_reg_pp0_iter1_phi_ln1975_reg_336 = 'bx;

assign boxBottom_fu_634_p2 = (boxSize + boxVCoord_loc_1_fu_136);

assign boxHCoord = ((ap_phi_mux_empty_106_phi_fu_305_p8[0:0] == 1'b1) ? sub_ln1914_fu_512_p2 : add_ln1912_fu_517_p2);

assign boxHCoord_loc_1_out = boxHCoord_loc_1_load_reg_905;

assign boxRight_fu_629_p2 = (boxSize + boxHCoord_loc_1_fu_140);

assign boxVCoord = ((ap_phi_mux_empty_105_phi_fu_322_p8[0:0] == 1'b1) ? sub_ln1918_fu_536_p2 : add_ln1916_fu_541_p2);

assign boxVCoord_loc_1_out = boxVCoord_loc_1_load_reg_900;

assign color_read_reg_785 = color;

assign empty_fu_734_p3 = ((tobool[0:0] == 1'b1) ? ap_phi_mux_pix_3_phi_fu_367_p12 : select_ln1991_fu_727_p3);

assign hDir_load_load_fu_460_p1 = hDir;

assign icmp_ln1884_fu_454_p2 = ((or_ln1884_fu_449_p2 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1889_fu_464_p2 = ((boxHCoord_loc_1_fu_140 > hMax) ? 1'b1 : 1'b0);

assign icmp_ln1894_fu_475_p2 = ((zext_ln1914_1_cast_reg_880 > boxHCoord_loc_1_fu_140) ? 1'b1 : 1'b0);

assign icmp_ln1901_fu_490_p2 = ((boxVCoord_loc_1_fu_136 > vMax) ? 1'b1 : 1'b0);

assign icmp_ln1906_fu_501_p2 = ((zext_ln1914_1_cast_reg_880 > boxVCoord_loc_1_fu_136) ? 1'b1 : 1'b0);

assign icmp_ln1932_1_fu_650_p2 = ((y < boxBottom_fu_634_p2) ? 1'b1 : 1'b0);

assign icmp_ln1932_fu_639_p2 = ((y < boxVCoord_loc_1_fu_136) ? 1'b1 : 1'b0);

assign icmp_ln1937_1_fu_666_p2 = ((x_2_reg_894 < boxRight_fu_629_p2) ? 1'b1 : 1'b0);

assign icmp_ln1937_fu_655_p2 = ((x_2_reg_894 < boxHCoord_loc_1_fu_140) ? 1'b1 : 1'b0);

assign icmp_ln1963_fu_570_p2 = ((x_fu_132 == crossHairX) ? 1'b1 : 1'b0);

assign icmp_ln774_fu_434_p2 = ((x_fu_132 == loopWidth) ? 1'b1 : 1'b0);

assign or_ln1884_fu_449_p2 = (y | x_fu_132);

assign or_ln1963_fu_575_p2 = (icmp_ln1963_fu_570_p2 | cmp2_i);

assign ovrlayYUV_din = {{{p_0_2_0_0_0269699_fu_713_p3}, {empty_fu_734_p3}}, {pixOut_12_fu_720_p3}};

assign p_0_2_0_0_0269699_fu_713_p3 = ((tobool[0:0] == 1'b1) ? ap_phi_mux_pix_4_phi_fu_349_p12 : select_ln1993_fu_706_p3);

assign patternId_val_load_read_reg_832 = patternId_val_load;

assign pixIn_fu_599_p1 = bckgndYUV_dout[7:0];

assign pixOut_11_fu_699_p3 = ((and4_i[0:0] == 1'b1) ? 8'd0 : ap_phi_mux_pix_phi_fu_386_p12);

assign pixOut_12_fu_720_p3 = ((tobool[0:0] == 1'b1) ? ap_phi_mux_pix_phi_fu_386_p12 : pixOut_11_fu_699_p3);

assign pixOut_7_fu_693_p3 = ((and_ln1947_fu_689_p2[0:0] == 1'b1) ? boxColorB : boxColorG);

assign select_ln1911_fu_522_p3 = ((ap_phi_mux_empty_106_phi_fu_305_p8[0:0] == 1'b1) ? sub_ln1914_fu_512_p2 : add_ln1912_fu_517_p2);

assign select_ln1915_fu_546_p3 = ((ap_phi_mux_empty_105_phi_fu_322_p8[0:0] == 1'b1) ? sub_ln1918_fu_536_p2 : add_ln1916_fu_541_p2);

assign select_ln1975_fu_580_p3 = ((trunc_ln774_fu_445_p1[0:0] == 1'b1) ? 2'd2 : 2'd1);

assign select_ln1991_fu_727_p3 = ((and10_i[0:0] == 1'b1) ? 8'd0 : ap_phi_mux_pix_3_phi_fu_367_p12);

assign select_ln1993_fu_706_p3 = ((and26_i[0:0] == 1'b1) ? 8'd0 : ap_phi_mux_pix_4_phi_fu_349_p12);

assign sub_ln1914_fu_512_p2 = (boxHCoord_loc_1_fu_140 - zext_ln1914_cast_reg_886);

assign sub_ln1918_fu_536_p2 = (boxVCoord_loc_1_fu_136 - zext_ln1914_cast_reg_886);

assign trunc_ln774_fu_445_p1 = x_fu_132[0:0];

assign vDir_load_load_fu_486_p1 = vDir;

assign whiYuv_address0 = zext_ln1975_fu_589_p1;

assign x_3_fu_439_p2 = (x_fu_132 + 16'd1);

assign xor_ln1932_fu_644_p2 = (icmp_ln1932_fu_639_p2 ^ 1'd1);

assign xor_ln1937_fu_660_p2 = (icmp_ln1937_fu_655_p2 ^ 1'd1);

assign zext_ln1914_1_cast_fu_402_p1 = zext_ln1914_1;

assign zext_ln1914_cast_fu_406_p1 = zext_ln1914;

assign zext_ln1975_fu_589_p1 = ap_phi_mux_phi_ln1975_phi_fu_339_p4;

always @ (posedge ap_clk) begin
    zext_ln1914_1_cast_reg_880[15:9] <= 7'b0000000;
    zext_ln1914_cast_reg_886[15:8] <= 8'b00000000;
end

endmodule //design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2
