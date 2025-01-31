// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Jan 20 17:52:24 2025
// Host        : LAPTOP-5LHV3CRU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/ricca/OneDrive/Desktop/Progetti
//               ASDI/Riconoscitore_Di_Sequenza/Riconoscitore_Di_Sequenza.sim/sim_1/impl/timing/xsim/Riconoscitore_di_sequenza_time_impl.v}
// Design      : Riconoscitore_di_sequenza
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "decd9321" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Riconoscitore_di_sequenza
   (I,
    M,
    CLK,
    RST,
    Y);
  input I;
  input M;
  input CLK;
  input RST;
  output Y;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire I;
  wire I_IBUF;
  wire M;
  wire M_IBUF;
  wire RST;
  wire RST_IBUF;
  wire Y;
  wire Y_OBUF;
  wire [2:0]stato_corrente;
  wire \stato_corrente[0]_i_1_n_0 ;
  wire \stato_corrente[1]_i_1_n_0 ;
  wire \stato_corrente[2]_i_1_n_0 ;
  wire y_temp;

initial begin
 $sdf_annotate("Riconoscitore_di_sequenza_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF I_IBUF_inst
       (.I(I),
        .O(I_IBUF));
  IBUF M_IBUF_inst
       (.I(M),
        .O(M_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  OBUF Y_OBUF_inst
       (.I(Y_OBUF),
        .O(Y));
  LUT4 #(
    .INIT(16'h1000)) 
    Y_i_1
       (.I0(stato_corrente[0]),
        .I1(stato_corrente[2]),
        .I2(stato_corrente[1]),
        .I3(I_IBUF),
        .O(y_temp));
  FDRE #(
    .INIT(1'b0)) 
    Y_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(y_temp),
        .Q(Y_OBUF),
        .R(RST_IBUF));
  LUT6 #(
    .INIT(64'h0000000005010001)) 
    \stato_corrente[0]_i_1 
       (.I0(stato_corrente[2]),
        .I1(stato_corrente[0]),
        .I2(stato_corrente[1]),
        .I3(M_IBUF),
        .I4(I_IBUF),
        .I5(RST_IBUF),
        .O(\stato_corrente[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010001)) 
    \stato_corrente[1]_i_1 
       (.I0(I_IBUF),
        .I1(stato_corrente[1]),
        .I2(stato_corrente[2]),
        .I3(M_IBUF),
        .I4(stato_corrente[0]),
        .I5(RST_IBUF),
        .O(\stato_corrente[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011100000)) 
    \stato_corrente[2]_i_1 
       (.I0(M_IBUF),
        .I1(stato_corrente[2]),
        .I2(I_IBUF),
        .I3(stato_corrente[1]),
        .I4(stato_corrente[0]),
        .I5(RST_IBUF),
        .O(\stato_corrente[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stato_corrente_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\stato_corrente[0]_i_1_n_0 ),
        .Q(stato_corrente[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stato_corrente_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\stato_corrente[1]_i_1_n_0 ),
        .Q(stato_corrente[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stato_corrente_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\stato_corrente[2]_i_1_n_0 ),
        .Q(stato_corrente[2]),
        .R(1'b0));
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
