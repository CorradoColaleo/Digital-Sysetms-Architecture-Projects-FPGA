// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jan 23 11:21:50 2025
// Host        : LAPTOP-IUC6KUAA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/corra/Desktop/Digital Sysetms
//               Architecture
//               Projects/Shift_register_N/Shift_register_N.sim/sim_1/impl/timing/xsim/cfg_tb_shift_register_behavioural_time_impl.v}
// Design      : Shift_register_behavioural
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "d6b2e887" *) (* N = "16" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Shift_register_behavioural
   (serial_in,
    clock,
    reset,
    shift,
    direzione,
    y,
    serial_out,
    parallel_out);
  input serial_in;
  input clock;
  input reset;
  input shift;
  input direzione;
  input [1:0]y;
  output serial_out;
  output [15:0]parallel_out;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire direzione;
  wire direzione_IBUF;
  wire [15:0]p_0_in;
  wire [15:0]parallel_out;
  wire [15:0]parallel_out_OBUF;
  wire registro;
  wire \registro[14]_i_2_n_0 ;
  wire reset;
  wire reset_IBUF;
  wire serial_in;
  wire serial_in_IBUF;
  wire serial_out;
  wire shift;
  wire shift_IBUF;
  wire [1:0]y;
  wire [1:0]y_IBUF;

initial begin
 $sdf_annotate("cfg_tb_shift_register_behavioural_time_impl.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  IBUF direzione_IBUF_inst
       (.I(direzione),
        .O(direzione_IBUF));
  OBUF \parallel_out_OBUF[0]_inst 
       (.I(parallel_out_OBUF[0]),
        .O(parallel_out[0]));
  OBUF \parallel_out_OBUF[10]_inst 
       (.I(parallel_out_OBUF[10]),
        .O(parallel_out[10]));
  OBUF \parallel_out_OBUF[11]_inst 
       (.I(parallel_out_OBUF[11]),
        .O(parallel_out[11]));
  OBUF \parallel_out_OBUF[12]_inst 
       (.I(parallel_out_OBUF[12]),
        .O(parallel_out[12]));
  OBUF \parallel_out_OBUF[13]_inst 
       (.I(parallel_out_OBUF[13]),
        .O(parallel_out[13]));
  OBUF \parallel_out_OBUF[14]_inst 
       (.I(parallel_out_OBUF[14]),
        .O(parallel_out[14]));
  OBUF \parallel_out_OBUF[15]_inst 
       (.I(parallel_out_OBUF[15]),
        .O(parallel_out[15]));
  OBUF \parallel_out_OBUF[1]_inst 
       (.I(parallel_out_OBUF[1]),
        .O(parallel_out[1]));
  OBUF \parallel_out_OBUF[2]_inst 
       (.I(parallel_out_OBUF[2]),
        .O(parallel_out[2]));
  OBUF \parallel_out_OBUF[3]_inst 
       (.I(parallel_out_OBUF[3]),
        .O(parallel_out[3]));
  OBUF \parallel_out_OBUF[4]_inst 
       (.I(parallel_out_OBUF[4]),
        .O(parallel_out[4]));
  OBUF \parallel_out_OBUF[5]_inst 
       (.I(parallel_out_OBUF[5]),
        .O(parallel_out[5]));
  OBUF \parallel_out_OBUF[6]_inst 
       (.I(parallel_out_OBUF[6]),
        .O(parallel_out[6]));
  OBUF \parallel_out_OBUF[7]_inst 
       (.I(parallel_out_OBUF[7]),
        .O(parallel_out[7]));
  OBUF \parallel_out_OBUF[8]_inst 
       (.I(parallel_out_OBUF[8]),
        .O(parallel_out[8]));
  OBUF \parallel_out_OBUF[9]_inst 
       (.I(parallel_out_OBUF[9]),
        .O(parallel_out[9]));
  LUT6 #(
    .INIT(64'hFFFFFB400000FB40)) 
    \registro[0]_i_1 
       (.I0(y_IBUF[1]),
        .I1(y_IBUF[0]),
        .I2(parallel_out_OBUF[1]),
        .I3(parallel_out_OBUF[2]),
        .I4(direzione_IBUF),
        .I5(serial_in_IBUF),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[10]_i_1 
       (.I0(parallel_out_OBUF[8]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[12]),
        .I4(parallel_out_OBUF[9]),
        .I5(parallel_out_OBUF[11]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[11]_i_1 
       (.I0(parallel_out_OBUF[9]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[13]),
        .I4(parallel_out_OBUF[10]),
        .I5(parallel_out_OBUF[12]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[12]_i_1 
       (.I0(parallel_out_OBUF[10]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[14]),
        .I4(parallel_out_OBUF[11]),
        .I5(parallel_out_OBUF[13]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[13]_i_1 
       (.I0(parallel_out_OBUF[11]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[15]),
        .I4(parallel_out_OBUF[12]),
        .I5(parallel_out_OBUF[14]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hEF2FE323EC2CE020)) 
    \registro[14]_i_1 
       (.I0(serial_in_IBUF),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[12]),
        .I4(parallel_out_OBUF[13]),
        .I5(parallel_out_OBUF[15]),
        .O(p_0_in[14]));
  LUT2 #(
    .INIT(4'hB)) 
    \registro[14]_i_2 
       (.I0(y_IBUF[1]),
        .I1(y_IBUF[0]),
        .O(\registro[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \registro[15]_i_1 
       (.I0(y_IBUF[1]),
        .I1(y_IBUF[0]),
        .I2(shift_IBUF),
        .O(registro));
  LUT6 #(
    .INIT(64'hFB40FFFFFB400000)) 
    \registro[15]_i_2 
       (.I0(y_IBUF[1]),
        .I1(y_IBUF[0]),
        .I2(parallel_out_OBUF[14]),
        .I3(parallel_out_OBUF[13]),
        .I4(direzione_IBUF),
        .I5(serial_in_IBUF),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[1]_i_1 
       (.I0(serial_in_IBUF),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[3]),
        .I4(parallel_out_OBUF[0]),
        .I5(parallel_out_OBUF[2]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[2]_i_1 
       (.I0(parallel_out_OBUF[0]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[4]),
        .I4(parallel_out_OBUF[1]),
        .I5(parallel_out_OBUF[3]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[3]_i_1 
       (.I0(parallel_out_OBUF[1]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[5]),
        .I4(parallel_out_OBUF[2]),
        .I5(parallel_out_OBUF[4]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[4]_i_1 
       (.I0(parallel_out_OBUF[2]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[6]),
        .I4(parallel_out_OBUF[3]),
        .I5(parallel_out_OBUF[5]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[5]_i_1 
       (.I0(parallel_out_OBUF[3]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[7]),
        .I4(parallel_out_OBUF[4]),
        .I5(parallel_out_OBUF[6]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[6]_i_1 
       (.I0(parallel_out_OBUF[4]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[8]),
        .I4(parallel_out_OBUF[5]),
        .I5(parallel_out_OBUF[7]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[7]_i_1 
       (.I0(parallel_out_OBUF[5]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[9]),
        .I4(parallel_out_OBUF[6]),
        .I5(parallel_out_OBUF[8]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[8]_i_1 
       (.I0(parallel_out_OBUF[6]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[10]),
        .I4(parallel_out_OBUF[7]),
        .I5(parallel_out_OBUF[9]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \registro[9]_i_1 
       (.I0(parallel_out_OBUF[7]),
        .I1(direzione_IBUF),
        .I2(\registro[14]_i_2_n_0 ),
        .I3(parallel_out_OBUF[11]),
        .I4(parallel_out_OBUF[8]),
        .I5(parallel_out_OBUF[10]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[0]),
        .Q(parallel_out_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[10]),
        .Q(parallel_out_OBUF[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[11]),
        .Q(parallel_out_OBUF[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[12]),
        .Q(parallel_out_OBUF[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[13]),
        .Q(parallel_out_OBUF[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[14]),
        .Q(parallel_out_OBUF[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[15]),
        .Q(parallel_out_OBUF[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[1]),
        .Q(parallel_out_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[2]),
        .Q(parallel_out_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[3]),
        .Q(parallel_out_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[4]),
        .Q(parallel_out_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[5]),
        .Q(parallel_out_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[6]),
        .Q(parallel_out_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[7]),
        .Q(parallel_out_OBUF[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[8]),
        .Q(parallel_out_OBUF[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registro_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(registro),
        .D(p_0_in[9]),
        .Q(parallel_out_OBUF[9]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF serial_in_IBUF_inst
       (.I(serial_in),
        .O(serial_in_IBUF));
  OBUF serial_out_OBUF_inst
       (.I(parallel_out_OBUF[15]),
        .O(serial_out));
  IBUF shift_IBUF_inst
       (.I(shift),
        .O(shift_IBUF));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
