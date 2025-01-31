// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jan 29 15:39:10 2025
// Host        : LAPTOP-IUC6KUAA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/corra/Desktop/Digital Sysetms
//               Architecture
//               Projects/Comunicazione_Seriale/Comunicazione_Seriale.sim/sim_1/impl/timing/xsim/tb_time_impl.v}
// Design      : Comunicazione_seriale
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD3
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* ECO_CHECKSUM = "4789e471" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Comunicazione_seriale
   (clck,
    start,
    tx_rst,
    rx_rst,
    Data,
    PE,
    FE,
    OE);
  input clck;
  input start;
  input tx_rst;
  input rx_rst;
  output [7:0]Data;
  output PE;
  output FE;
  output OE;

  wire [7:0]Data;
  wire [7:0]Data_OBUF;
  wire FE;
  wire FE_OBUF;
  wire OE;
  wire OE_OBUF;
  wire PE;
  wire PE_OBUF;
  wire clck;
  wire clck_IBUF;
  wire clck_IBUF_BUFG;
  wire nodo_b_n_4;
  wire rx_rst;
  wire rx_rst_IBUF;
  wire \rx_uart/rClk ;
  wire s_DONE;
  wire start;
  wire start_IBUF;
  wire [0:0]tfSReg;
  wire tx_rst;
  wire tx_rst_IBUF;

initial begin
 $sdf_annotate("tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \Data_OBUF[0]_inst 
       (.I(Data_OBUF[0]),
        .O(Data[0]));
  OBUF \Data_OBUF[1]_inst 
       (.I(Data_OBUF[1]),
        .O(Data[1]));
  OBUF \Data_OBUF[2]_inst 
       (.I(Data_OBUF[2]),
        .O(Data[2]));
  OBUF \Data_OBUF[3]_inst 
       (.I(Data_OBUF[3]),
        .O(Data[3]));
  OBUF \Data_OBUF[4]_inst 
       (.I(Data_OBUF[4]),
        .O(Data[4]));
  OBUF \Data_OBUF[5]_inst 
       (.I(Data_OBUF[5]),
        .O(Data[5]));
  OBUF \Data_OBUF[6]_inst 
       (.I(Data_OBUF[6]),
        .O(Data[6]));
  OBUF \Data_OBUF[7]_inst 
       (.I(Data_OBUF[7]),
        .O(Data[7]));
  OBUF FE_OBUF_inst
       (.I(FE_OBUF),
        .O(FE));
  BUFG \FSM_sequential_strCur_reg[1]_i_2 
       (.I(nodo_b_n_4),
        .O(\rx_uart/rClk ));
  OBUF OE_OBUF_inst
       (.I(OE_OBUF),
        .O(OE));
  OBUF PE_OBUF_inst
       (.I(PE_OBUF),
        .O(PE));
  BUFG clck_IBUF_BUFG_inst
       (.I(clck_IBUF),
        .O(clck_IBUF_BUFG));
  IBUF clck_IBUF_inst
       (.I(clck),
        .O(clck_IBUF));
  NodoA nodo_a
       (.D(tfSReg),
        .clck_IBUF_BUFG(clck_IBUF_BUFG),
        .s_DONE(s_DONE),
        .start_IBUF(start_IBUF),
        .tx_rst_IBUF(tx_rst_IBUF));
  NodoB nodo_b
       (.CLK(\rx_uart/rClk ),
        .D(tfSReg),
        .FE_OBUF(FE_OBUF),
        .OE_OBUF(OE_OBUF),
        .PE_OBUF(PE_OBUF),
        .Q(Data_OBUF),
        .clck_IBUF_BUFG(clck_IBUF_BUFG),
        .rClk_reg(nodo_b_n_4),
        .rx_rst_IBUF(rx_rst_IBUF),
        .s_DONE(s_DONE));
  IBUF rx_rst_IBUF_inst
       (.I(rx_rst),
        .O(rx_rst_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  IBUF tx_rst_IBUF_inst
       (.I(tx_rst),
        .O(tx_rst_IBUF));
endmodule

module NodoA
   (D,
    clck_IBUF_BUFG,
    tx_rst_IBUF,
    start_IBUF,
    s_DONE);
  output [0:0]D;
  input clck_IBUF_BUFG;
  input tx_rst_IBUF;
  input start_IBUF;
  input s_DONE;

  wire [0:0]D;
  wire clck_IBUF_BUFG;
  wire s_DONE;
  wire start_IBUF;
  wire tx_rst_IBUF;
  wire write;

  Rete_controllo_A rc_A
       (.clck_IBUF_BUFG(clck_IBUF_BUFG),
        .s_DONE(s_DONE),
        .start_IBUF(start_IBUF),
        .tx_rst_IBUF(tx_rst_IBUF),
        .write(write));
  Rs232RefComp_0 tx_uart
       (.D(D),
        .clck_IBUF_BUFG(clck_IBUF_BUFG),
        .tx_rst_IBUF(tx_rst_IBUF),
        .write(write));
endmodule

module NodoB
   (s_DONE,
    PE_OBUF,
    FE_OBUF,
    OE_OBUF,
    rClk_reg,
    Q,
    CLK,
    clck_IBUF_BUFG,
    rx_rst_IBUF,
    D);
  output s_DONE;
  output PE_OBUF;
  output FE_OBUF;
  output OE_OBUF;
  output rClk_reg;
  output [7:0]Q;
  input CLK;
  input clck_IBUF_BUFG;
  input rx_rst_IBUF;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire FE_OBUF;
  wire OE_OBUF;
  wire PE_OBUF;
  wire [7:0]Q;
  wire RDA;
  wire clck_IBUF_BUFG;
  wire rClk_reg;
  wire rc_B_n_3;
  wire [7:0]rdReg;
  wire rx_rst_IBUF;
  wire s_DONE;
  wire temp_RD;
  wire temp_write;

  Rete_controllo_B rc_B
       (.\FSM_onehot_curr_state_reg[3]_0 (rc_B_n_3),
        .RDA(RDA),
        .clck_IBUF_BUFG(clck_IBUF_BUFG),
        .rx_rst_IBUF(rx_rst_IBUF),
        .s_DONE(s_DONE),
        .temp_RD(temp_RD),
        .temp_write(temp_write));
  Rs232RefComp rx_uart
       (.CLK(CLK),
        .D(D),
        .FE_OBUF(FE_OBUF),
        .FE_reg_0(rc_B_n_3),
        .OE_OBUF(OE_OBUF),
        .PE_OBUF(PE_OBUF),
        .Q(rdReg),
        .RDA(RDA),
        .clck_IBUF_BUFG(clck_IBUF_BUFG),
        .rClk_reg_0(rClk_reg),
        .rx_rst_IBUF(rx_rst_IBUF),
        .temp_RD(temp_RD));
  Wom_N_M wom
       (.Q(rdReg),
        .clck_IBUF_BUFG(clck_IBUF_BUFG),
        .\output_val_reg[7]_0 (Q),
        .temp_write(temp_write));
endmodule

module Rete_controllo_A
   (write,
    tx_rst_IBUF,
    clck_IBUF_BUFG,
    start_IBUF,
    s_DONE);
  output write;
  input tx_rst_IBUF;
  input clck_IBUF_BUFG;
  input start_IBUF;
  input s_DONE;

  wire \FSM_onehot_curr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_1_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire \FSM_onehot_curr_state_reg_n_0_[4] ;
  wire \FSM_onehot_curr_state_reg_n_0_[5] ;
  wire clck_IBUF_BUFG;
  wire s_DONE;
  wire start_IBUF;
  wire tx_rst_IBUF;
  wire write;
  wire write_reg_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(start_IBUF),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .O(\FSM_onehot_curr_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr_state[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(start_IBUF),
        .O(\FSM_onehot_curr_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_curr_state[4]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(s_DONE),
        .I2(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(\FSM_onehot_curr_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr_state[5]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(s_DONE),
        .O(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "incr_state:000100,write_state:001000,wait_state:010000,check_state:100000,read_state:000010,start_state:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(tx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:000100,write_state:001000,wait_state:010000,check_state:100000,read_state:000010,start_state:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .R(tx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:000100,write_state:001000,wait_state:010000,check_state:100000,read_state:000010,start_state:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(tx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:000100,write_state:001000,wait_state:010000,check_state:100000,read_state:000010,start_state:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .R(tx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:000100,write_state:001000,wait_state:010000,check_state:100000,read_state:000010,start_state:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .R(tx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:000100,write_state:001000,wait_state:010000,check_state:100000,read_state:000010,start_state:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[5] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .R(tx_rst_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    write_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .G(write_reg_i_1_n_0),
        .GE(1'b1),
        .Q(write));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    write_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .O(write_reg_i_1_n_0));
endmodule

module Rete_controllo_B
   (temp_RD,
    temp_write,
    s_DONE,
    \FSM_onehot_curr_state_reg[3]_0 ,
    rx_rst_IBUF,
    clck_IBUF_BUFG,
    RDA);
  output temp_RD;
  output temp_write;
  output s_DONE;
  output \FSM_onehot_curr_state_reg[3]_0 ;
  input rx_rst_IBUF;
  input clck_IBUF_BUFG;
  input RDA;

  wire DONE_reg_i_1_n_0;
  wire \FSM_onehot_curr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_curr_state_reg[3]_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire \FSM_onehot_curr_state_reg_n_0_[4] ;
  wire RDA;
  wire RD_reg_i_1_n_0;
  wire Write_reg_i_1_n_0;
  wire clck_IBUF_BUFG;
  wire rx_rst_IBUF;
  wire s_DONE;
  wire temp_RD;
  wire temp_write;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    DONE_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .G(DONE_reg_i_1_n_0),
        .GE(1'b1),
        .Q(s_DONE));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    DONE_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(DONE_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(RDA),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .O(\FSM_onehot_curr_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr_state[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(RDA),
        .O(\FSM_onehot_curr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "incr_state:00100,fine_lettura_state:01000,end_state:10000,idle_state:00001,write_state:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(rx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:00100,fine_lettura_state:01000,end_state:10000,idle_state:00001,write_state:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .R(rx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:00100,fine_lettura_state:01000,end_state:10000,idle_state:00001,write_state:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(rx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:00100,fine_lettura_state:01000,end_state:10000,idle_state:00001,write_state:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .R(rx_rst_IBUF));
  (* FSM_ENCODED_STATES = "incr_state:00100,fine_lettura_state:01000,end_state:10000,idle_state:00001,write_state:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .R(rx_rst_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    RDA_i_2
       (.I0(temp_RD),
        .I1(rx_rst_IBUF),
        .O(\FSM_onehot_curr_state_reg[3]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    RD_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .G(RD_reg_i_1_n_0),
        .GE(1'b1),
        .Q(temp_RD));
  LUT2 #(
    .INIT(4'hE)) 
    RD_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(RD_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    Write_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .G(Write_reg_i_1_n_0),
        .GE(1'b1),
        .Q(temp_write));
  LUT2 #(
    .INIT(4'hE)) 
    Write_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(Write_reg_i_1_n_0));
endmodule

module Rs232RefComp
   (RDA,
    PE_OBUF,
    FE_OBUF,
    OE_OBUF,
    rClk_reg_0,
    Q,
    CLK,
    FE_reg_0,
    clck_IBUF_BUFG,
    rx_rst_IBUF,
    temp_RD,
    D);
  output RDA;
  output PE_OBUF;
  output FE_OBUF;
  output OE_OBUF;
  output rClk_reg_0;
  output [7:0]Q;
  input CLK;
  input FE_reg_0;
  input clck_IBUF_BUFG;
  input rx_rst_IBUF;
  input temp_RD;
  input [0:0]D;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire FE_OBUF;
  wire FE_reg_0;
  wire \FSM_sequential_strCur[0]_i_1_n_0 ;
  wire \FSM_sequential_strCur[0]_i_2_n_0 ;
  wire \FSM_sequential_strCur[0]_i_3_n_0 ;
  wire \FSM_sequential_strCur[1]_i_1_n_0 ;
  wire OE_OBUF;
  wire PE_OBUF;
  wire PE_i_2_n_0;
  wire [7:0]Q;
  wire RDA;
  wire clck_IBUF_BUFG;
  wire \clkDiv[2]_i_1__0_n_0 ;
  wire \clkDiv[6]_i_2__0_n_0 ;
  wire \clkDiv[8]_i_1__0_n_0 ;
  wire \clkDiv[8]_i_3__0_n_0 ;
  wire \clkDiv[8]_i_4__0_n_0 ;
  wire [8:0]clkDiv_reg;
  wire ctRst;
  wire \ctr[2]_i_1_n_0 ;
  wire \ctr[3]_i_3_n_0 ;
  wire [3:0]ctr_reg;
  wire [3:0]dataCtr_reg;
  wire dataIncr;
  wire dataRST;
  wire frameError;
  wire p_0_in7_in;
  wire p_1_in9_in;
  wire p_2_in8_in;
  wire p_3_in13_in;
  wire p_4_in10_in;
  wire p_5_in12_in;
  wire p_6_in11_in;
  wire parError;
  wire [3:0]plusOp__0__0;
  wire [8:0]plusOp__0__1;
  wire [3:0]plusOp__1;
  wire rClk_i_1__0_n_0;
  wire rClk_reg_0;
  wire rdReg0;
  wire \rdSReg_reg_n_0_[0] ;
  wire \rdSReg_reg_n_0_[8] ;
  wire \rdSReg_reg_n_0_[9] ;
  wire rx_rst_IBUF;
  wire [1:0]strCur;
  wire temp_RD;

  LUT1 #(
    .INIT(2'h1)) 
    FE_i_1
       (.I0(\rdSReg_reg_n_0_[9] ),
        .O(frameError));
  FDCE #(
    .INIT(1'b0)) 
    FE_reg
       (.C(CLK),
        .CE(CE),
        .CLR(FE_reg_0),
        .D(frameError),
        .Q(FE_OBUF));
  LUT5 #(
    .INIT(32'h0000222E)) 
    \FSM_sequential_strCur[0]_i_1 
       (.I0(\FSM_sequential_strCur[0]_i_2_n_0 ),
        .I1(strCur[0]),
        .I2(\FSM_sequential_strCur[0]_i_3_n_0 ),
        .I3(strCur[1]),
        .I4(rx_rst_IBUF),
        .O(\FSM_sequential_strCur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h100000001000FFFF)) 
    \FSM_sequential_strCur[0]_i_2 
       (.I0(dataCtr_reg[2]),
        .I1(dataCtr_reg[0]),
        .I2(dataCtr_reg[3]),
        .I3(dataCtr_reg[1]),
        .I4(strCur[1]),
        .I5(D),
        .O(\FSM_sequential_strCur[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_strCur[0]_i_3 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[0]),
        .O(\FSM_sequential_strCur[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000062222222)) 
    \FSM_sequential_strCur[1]_i_1 
       (.I0(strCur[1]),
        .I1(strCur[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[0]),
        .I5(rx_rst_IBUF),
        .O(\FSM_sequential_strCur[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "stridle:00,streightdelay:01,strgetdata:10,strcheckstop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_strCur_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_strCur[0]_i_1_n_0 ),
        .Q(strCur[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stridle:00,streightdelay:01,strgetdata:10,strcheckstop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_strCur_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_strCur[1]_i_1_n_0 ),
        .Q(strCur[1]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    OE_reg
       (.C(CLK),
        .CE(CE),
        .CLR(FE_reg_0),
        .D(RDA),
        .Q(OE_OBUF));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    PE_i_1
       (.I0(p_0_in7_in),
        .I1(PE_i_2_n_0),
        .I2(p_1_in9_in),
        .I3(p_2_in8_in),
        .I4(p_6_in11_in),
        .I5(p_4_in10_in),
        .O(parError));
  LUT4 #(
    .INIT(16'h6996)) 
    PE_i_2
       (.I0(p_3_in13_in),
        .I1(p_5_in12_in),
        .I2(\rdSReg_reg_n_0_[8] ),
        .I3(\rdSReg_reg_n_0_[0] ),
        .O(PE_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    PE_reg
       (.C(CLK),
        .CE(CE),
        .CLR(FE_reg_0),
        .D(parError),
        .Q(PE_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    RDA_i_1
       (.I0(strCur[0]),
        .I1(strCur[1]),
        .O(CE));
  FDCE #(
    .INIT(1'b0)) 
    RDA_reg
       (.C(CLK),
        .CE(CE),
        .CLR(FE_reg_0),
        .D(1'b1),
        .Q(RDA));
  LUT1 #(
    .INIT(2'h1)) 
    \clkDiv[0]_i_1__0 
       (.I0(clkDiv_reg[0]),
        .O(plusOp__0__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkDiv[1]_i_1__0 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .O(plusOp__0__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDiv[2]_i_1__0 
       (.I0(clkDiv_reg[1]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[2]),
        .O(\clkDiv[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDiv[3]_i_1__0 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[2]),
        .I3(clkDiv_reg[3]),
        .O(plusOp__0__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clkDiv[4]_i_1__0 
       (.I0(clkDiv_reg[2]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[0]),
        .I3(clkDiv_reg[3]),
        .I4(clkDiv_reg[4]),
        .O(plusOp__0__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clkDiv[5]_i_1__0 
       (.I0(clkDiv_reg[3]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[1]),
        .I3(clkDiv_reg[2]),
        .I4(clkDiv_reg[4]),
        .I5(clkDiv_reg[5]),
        .O(plusOp__0__1[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \clkDiv[6]_i_1__0 
       (.I0(clkDiv_reg[4]),
        .I1(clkDiv_reg[2]),
        .I2(\clkDiv[6]_i_2__0_n_0 ),
        .I3(clkDiv_reg[3]),
        .I4(clkDiv_reg[5]),
        .I5(clkDiv_reg[6]),
        .O(plusOp__0__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clkDiv[6]_i_2__0 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .O(\clkDiv[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDiv[7]_i_1__0 
       (.I0(\clkDiv[8]_i_4__0_n_0 ),
        .I1(clkDiv_reg[6]),
        .I2(clkDiv_reg[7]),
        .O(plusOp__0__1[7]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \clkDiv[8]_i_1__0 
       (.I0(clkDiv_reg[3]),
        .I1(clkDiv_reg[4]),
        .I2(clkDiv_reg[6]),
        .I3(clkDiv_reg[8]),
        .I4(\clkDiv[8]_i_3__0_n_0 ),
        .O(\clkDiv[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDiv[8]_i_2__0 
       (.I0(clkDiv_reg[6]),
        .I1(\clkDiv[8]_i_4__0_n_0 ),
        .I2(clkDiv_reg[7]),
        .I3(clkDiv_reg[8]),
        .O(plusOp__0__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \clkDiv[8]_i_3__0 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[5]),
        .I3(clkDiv_reg[2]),
        .I4(clkDiv_reg[7]),
        .O(\clkDiv[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clkDiv[8]_i_4__0 
       (.I0(clkDiv_reg[5]),
        .I1(clkDiv_reg[3]),
        .I2(clkDiv_reg[0]),
        .I3(clkDiv_reg[1]),
        .I4(clkDiv_reg[2]),
        .I5(clkDiv_reg[4]),
        .O(\clkDiv[8]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[0] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[0]),
        .Q(clkDiv_reg[0]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[1] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[1]),
        .Q(clkDiv_reg[1]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[2] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkDiv[2]_i_1__0_n_0 ),
        .Q(clkDiv_reg[2]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[3] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[3]),
        .Q(clkDiv_reg[3]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[4] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[4]),
        .Q(clkDiv_reg[4]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[5] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[5]),
        .Q(clkDiv_reg[5]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[6] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[6]),
        .Q(clkDiv_reg[6]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[7] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[7]),
        .Q(clkDiv_reg[7]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[8] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0__1[8]),
        .Q(clkDiv_reg[8]),
        .R(\clkDiv[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1 
       (.I0(ctr_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[2]_i_1 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[2]),
        .O(\ctr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h308830BB)) 
    \ctr[3]_i_1 
       (.I0(\FSM_sequential_strCur[0]_i_3_n_0 ),
        .I1(strCur[0]),
        .I2(\ctr[3]_i_3_n_0 ),
        .I3(strCur[1]),
        .I4(D),
        .O(ctRst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctr[3]_i_2 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[2]),
        .I3(ctr_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ctr[3]_i_3 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[2]),
        .I3(ctr_reg[3]),
        .O(\ctr[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__1[0]),
        .Q(ctr_reg[0]),
        .R(ctRst));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__1[1]),
        .Q(ctr_reg[1]),
        .R(ctRst));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ctr[2]_i_1_n_0 ),
        .Q(ctr_reg[2]),
        .R(ctRst));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__1[3]),
        .Q(ctr_reg[3]),
        .R(ctRst));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dataCtr[0]_i_1 
       (.I0(dataCtr_reg[0]),
        .O(plusOp__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dataCtr[1]_i_1 
       (.I0(dataCtr_reg[0]),
        .I1(dataCtr_reg[1]),
        .O(plusOp__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dataCtr[2]_i_1 
       (.I0(dataCtr_reg[0]),
        .I1(dataCtr_reg[1]),
        .I2(dataCtr_reg[2]),
        .O(plusOp__0__0[2]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \dataCtr[3]_i_1 
       (.I0(strCur[1]),
        .I1(strCur[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[0]),
        .O(dataRST));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dataCtr[3]_i_2 
       (.I0(dataCtr_reg[1]),
        .I1(dataCtr_reg[0]),
        .I2(dataCtr_reg[2]),
        .I3(dataCtr_reg[3]),
        .O(plusOp__0__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[0] 
       (.C(CLK),
        .CE(dataIncr),
        .D(plusOp__0__0[0]),
        .Q(dataCtr_reg[0]),
        .R(dataRST));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[1] 
       (.C(CLK),
        .CE(dataIncr),
        .D(plusOp__0__0[1]),
        .Q(dataCtr_reg[1]),
        .R(dataRST));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[2] 
       (.C(CLK),
        .CE(dataIncr),
        .D(plusOp__0__0[2]),
        .Q(dataCtr_reg[2]),
        .R(dataRST));
  FDRE #(
    .INIT(1'b0)) 
    \dataCtr_reg[3] 
       (.C(CLK),
        .CE(dataIncr),
        .D(plusOp__0__0[3]),
        .Q(dataCtr_reg[3]),
        .R(dataRST));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    rClk_i_1__0
       (.I0(\clkDiv[8]_i_3__0_n_0 ),
        .I1(clkDiv_reg[8]),
        .I2(clkDiv_reg[6]),
        .I3(clkDiv_reg[4]),
        .I4(clkDiv_reg[3]),
        .I5(rClk_reg_0),
        .O(rClk_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rClk_reg
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(rClk_i_1__0_n_0),
        .Q(rClk_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \rdReg[7]_i_1 
       (.I0(strCur[1]),
        .I1(strCur[0]),
        .I2(rx_rst_IBUF),
        .I3(temp_RD),
        .O(rdReg0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[0] 
       (.C(CLK),
        .CE(rdReg0),
        .D(\rdSReg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[1] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_6_in11_in),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[2] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_5_in12_in),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[3] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_4_in10_in),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[4] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_3_in13_in),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[5] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_2_in8_in),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[6] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_1_in9_in),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdReg_reg[7] 
       (.C(CLK),
        .CE(rdReg0),
        .D(p_0_in7_in),
        .Q(Q[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \rdSReg[9]_i_1 
       (.I0(strCur[0]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[3]),
        .I5(strCur[1]),
        .O(dataIncr));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[0] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_6_in11_in),
        .Q(\rdSReg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[1] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_5_in12_in),
        .Q(p_6_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[2] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_4_in10_in),
        .Q(p_5_in12_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[3] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_3_in13_in),
        .Q(p_4_in10_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[4] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_2_in8_in),
        .Q(p_3_in13_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[5] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_1_in9_in),
        .Q(p_2_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[6] 
       (.C(CLK),
        .CE(dataIncr),
        .D(p_0_in7_in),
        .Q(p_1_in9_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[7] 
       (.C(CLK),
        .CE(dataIncr),
        .D(\rdSReg_reg_n_0_[8] ),
        .Q(p_0_in7_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[8] 
       (.C(CLK),
        .CE(dataIncr),
        .D(\rdSReg_reg_n_0_[9] ),
        .Q(\rdSReg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdSReg_reg[9] 
       (.C(CLK),
        .CE(dataIncr),
        .D(D),
        .Q(\rdSReg_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Rs232RefComp" *) 
module Rs232RefComp_0
   (D,
    clck_IBUF_BUFG,
    tx_rst_IBUF,
    write);
  output [0:0]D;
  input clck_IBUF_BUFG;
  input tx_rst_IBUF;
  input write;

  wire [0:0]D;
  wire \FSM_onehot_sttCur[0]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[1]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[2]_i_1_n_0 ;
  wire \FSM_onehot_sttCur[2]_i_2_n_0 ;
  wire \FSM_onehot_sttCur_reg_n_0_[0] ;
  wire TBE_reg_i_1_n_0;
  wire clck_IBUF_BUFG;
  wire clear;
  wire \clkDiv[2]_i_1_n_0 ;
  wire \clkDiv[6]_i_2_n_0 ;
  wire \clkDiv[8]_i_3_n_0 ;
  wire \clkDiv[8]_i_4_n_0 ;
  wire [8:0]clkDiv_reg;
  wire [3:0]plusOp;
  wire [3:0]plusOp__0;
  wire [8:0]plusOp__2;
  wire rClk;
  wire \rClkDiv_reg_n_0_[0] ;
  wire \rClkDiv_reg_n_0_[1] ;
  wire \rClkDiv_reg_n_0_[2] ;
  wire rClk_i_1_n_0;
  wire shift;
  wire [1:0]stbeCur;
  wire [1:0]stbeNext;
  wire tClk;
  wire tClkRST;
  wire temp_TBE;
  wire [3:0]tfCtr_reg;
  wire [7:1]tfSReg;
  wire \tfSReg[2]_i_1_n_0 ;
  wire \tfSReg[4]_i_1_n_0 ;
  wire \tfSReg[5]_i_1_n_0 ;
  wire \tfSReg[6]_i_1_n_0 ;
  wire \tfSReg[7]_i_1_n_0 ;
  wire tx_rst_IBUF;
  wire write;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \FSM_onehot_sttCur[0]_i_1 
       (.I0(shift),
        .I1(\FSM_onehot_sttCur[2]_i_2_n_0 ),
        .I2(\FSM_onehot_sttCur_reg_n_0_[0] ),
        .I3(temp_TBE),
        .I4(tx_rst_IBUF),
        .O(\FSM_onehot_sttCur[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_sttCur[1]_i_1 
       (.I0(temp_TBE),
        .I1(\FSM_onehot_sttCur_reg_n_0_[0] ),
        .I2(tx_rst_IBUF),
        .O(\FSM_onehot_sttCur[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \FSM_onehot_sttCur[2]_i_1 
       (.I0(shift),
        .I1(\FSM_onehot_sttCur[2]_i_2_n_0 ),
        .I2(tClkRST),
        .I3(tx_rst_IBUF),
        .O(\FSM_onehot_sttCur[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_sttCur[2]_i_2 
       (.I0(tfCtr_reg[1]),
        .I1(tfCtr_reg[0]),
        .I2(tfCtr_reg[2]),
        .I3(tfCtr_reg[3]),
        .O(\FSM_onehot_sttCur[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "stttransfer:010,sttshift:100,sttidle:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_sttCur_reg[0] 
       (.C(tClk),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[0]_i_1_n_0 ),
        .Q(\FSM_onehot_sttCur_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stttransfer:010,sttshift:100,sttidle:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sttCur_reg[1] 
       (.C(tClk),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[1]_i_1_n_0 ),
        .Q(tClkRST),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stttransfer:010,sttshift:100,sttidle:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sttCur_reg[2] 
       (.C(tClk),
        .CE(1'b1),
        .D(\FSM_onehot_sttCur[2]_i_1_n_0 ),
        .Q(shift),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB712)) 
    \FSM_sequential_stbeCur[0]_i_1 
       (.I0(stbeCur[0]),
        .I1(tClkRST),
        .I2(stbeCur[1]),
        .I3(write),
        .O(stbeNext[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBC8C)) 
    \FSM_sequential_stbeCur[1]_i_1 
       (.I0(write),
        .I1(stbeCur[1]),
        .I2(stbeCur[0]),
        .I3(tClkRST),
        .O(stbeNext[1]));
  (* FSM_ENCODED_STATES = "stbesettbe:01,stbewaitload:10,stbeidle:00,stbewaitwrite:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stbeCur_reg[0] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(stbeNext[0]),
        .Q(stbeCur[0]),
        .R(tx_rst_IBUF));
  (* FSM_ENCODED_STATES = "stbesettbe:01,stbewaitload:10,stbeidle:00,stbewaitwrite:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stbeCur_reg[1] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(stbeNext[1]),
        .Q(stbeCur[1]),
        .R(tx_rst_IBUF));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1),
    .IS_G_INVERTED(1'b1)) 
    TBE_reg
       (.CLR(1'b0),
        .D(TBE_reg_i_1_n_0),
        .G(stbeCur[1]),
        .GE(1'b1),
        .Q(temp_TBE));
  LUT1 #(
    .INIT(2'h1)) 
    TBE_reg_i_1
       (.I0(stbeCur[0]),
        .O(TBE_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clkDiv[0]_i_1 
       (.I0(clkDiv_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkDiv[1]_i_1 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDiv[2]_i_1 
       (.I0(clkDiv_reg[1]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[2]),
        .O(\clkDiv[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDiv[3]_i_1 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[2]),
        .I3(clkDiv_reg[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clkDiv[4]_i_1 
       (.I0(clkDiv_reg[2]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[0]),
        .I3(clkDiv_reg[3]),
        .I4(clkDiv_reg[4]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clkDiv[5]_i_1 
       (.I0(clkDiv_reg[3]),
        .I1(clkDiv_reg[0]),
        .I2(clkDiv_reg[1]),
        .I3(clkDiv_reg[2]),
        .I4(clkDiv_reg[4]),
        .I5(clkDiv_reg[5]),
        .O(plusOp__2[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \clkDiv[6]_i_1 
       (.I0(clkDiv_reg[4]),
        .I1(clkDiv_reg[2]),
        .I2(\clkDiv[6]_i_2_n_0 ),
        .I3(clkDiv_reg[3]),
        .I4(clkDiv_reg[5]),
        .I5(clkDiv_reg[6]),
        .O(plusOp__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clkDiv[6]_i_2 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .O(\clkDiv[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDiv[7]_i_1 
       (.I0(\clkDiv[8]_i_4_n_0 ),
        .I1(clkDiv_reg[6]),
        .I2(clkDiv_reg[7]),
        .O(plusOp__2[7]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \clkDiv[8]_i_1 
       (.I0(clkDiv_reg[3]),
        .I1(clkDiv_reg[4]),
        .I2(clkDiv_reg[6]),
        .I3(clkDiv_reg[8]),
        .I4(\clkDiv[8]_i_3_n_0 ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDiv[8]_i_2 
       (.I0(clkDiv_reg[6]),
        .I1(\clkDiv[8]_i_4_n_0 ),
        .I2(clkDiv_reg[7]),
        .I3(clkDiv_reg[8]),
        .O(plusOp__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \clkDiv[8]_i_3 
       (.I0(clkDiv_reg[0]),
        .I1(clkDiv_reg[1]),
        .I2(clkDiv_reg[5]),
        .I3(clkDiv_reg[2]),
        .I4(clkDiv_reg[7]),
        .O(\clkDiv[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clkDiv[8]_i_4 
       (.I0(clkDiv_reg[5]),
        .I1(clkDiv_reg[3]),
        .I2(clkDiv_reg[0]),
        .I3(clkDiv_reg[1]),
        .I4(clkDiv_reg[2]),
        .I5(clkDiv_reg[4]),
        .O(\clkDiv[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[0] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[0]),
        .Q(clkDiv_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[1] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[1]),
        .Q(clkDiv_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[2] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkDiv[2]_i_1_n_0 ),
        .Q(clkDiv_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[3] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[3]),
        .Q(clkDiv_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[4] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[4]),
        .Q(clkDiv_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[5] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[5]),
        .Q(clkDiv_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[6] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[6]),
        .Q(clkDiv_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[7] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[7]),
        .Q(clkDiv_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkDiv_reg[8] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__2[8]),
        .Q(clkDiv_reg[8]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rClkDiv[0]_i_1 
       (.I0(\rClkDiv_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rClkDiv[1]_i_1 
       (.I0(\rClkDiv_reg_n_0_[0] ),
        .I1(\rClkDiv_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rClkDiv[2]_i_1 
       (.I0(\rClkDiv_reg_n_0_[0] ),
        .I1(\rClkDiv_reg_n_0_[1] ),
        .I2(\rClkDiv_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rClkDiv[3]_i_1 
       (.I0(\rClkDiv_reg_n_0_[1] ),
        .I1(\rClkDiv_reg_n_0_[0] ),
        .I2(\rClkDiv_reg_n_0_[2] ),
        .I3(tClk),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \rClkDiv_reg[0] 
       (.C(rClk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\rClkDiv_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rClkDiv_reg[1] 
       (.C(rClk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\rClkDiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rClkDiv_reg[2] 
       (.C(rClk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\rClkDiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rClkDiv_reg[3] 
       (.C(rClk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(tClk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    rClk_i_1
       (.I0(\clkDiv[8]_i_3_n_0 ),
        .I1(clkDiv_reg[8]),
        .I2(clkDiv_reg[6]),
        .I3(clkDiv_reg[4]),
        .I4(clkDiv_reg[3]),
        .I5(rClk),
        .O(rClk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rClk_reg
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(rClk_i_1_n_0),
        .Q(rClk),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tfCtr[0]_i_1 
       (.I0(tfCtr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tfCtr[1]_i_1 
       (.I0(tfCtr_reg[0]),
        .I1(tfCtr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tfCtr[2]_i_1 
       (.I0(tfCtr_reg[0]),
        .I1(tfCtr_reg[1]),
        .I2(tfCtr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tfCtr[3]_i_1 
       (.I0(tfCtr_reg[1]),
        .I1(tfCtr_reg[0]),
        .I2(tfCtr_reg[2]),
        .I3(tfCtr_reg[3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[0] 
       (.C(tClk),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(tfCtr_reg[0]),
        .R(tClkRST));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[1] 
       (.C(tClk),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(tfCtr_reg[1]),
        .R(tClkRST));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[2] 
       (.C(tClk),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(tfCtr_reg[2]),
        .R(tClkRST));
  FDRE #(
    .INIT(1'b0)) 
    \tfCtr_reg[3] 
       (.C(tClk),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(tfCtr_reg[3]),
        .R(tClkRST));
  LUT2 #(
    .INIT(4'hB)) 
    \tfSReg[2]_i_1 
       (.I0(tfSReg[3]),
        .I1(shift),
        .O(\tfSReg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tfSReg[4]_i_1 
       (.I0(tfSReg[5]),
        .I1(shift),
        .O(\tfSReg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tfSReg[5]_i_1 
       (.I0(tClkRST),
        .I1(shift),
        .O(\tfSReg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tfSReg[6]_i_1 
       (.I0(tfSReg[7]),
        .I1(shift),
        .O(\tfSReg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tfSReg[7]_i_1 
       (.I0(shift),
        .I1(tClkRST),
        .O(\tfSReg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[0] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(tfSReg[1]),
        .Q(D),
        .R(\tfSReg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[1] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(tfSReg[2]),
        .Q(tfSReg[1]),
        .R(\tfSReg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[2] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(\tfSReg[2]_i_1_n_0 ),
        .Q(tfSReg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[3] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(tfSReg[4]),
        .Q(tfSReg[3]),
        .R(\tfSReg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[4] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(\tfSReg[4]_i_1_n_0 ),
        .Q(tfSReg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[5] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(tfSReg[6]),
        .Q(tfSReg[5]),
        .R(\tfSReg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[6] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(\tfSReg[6]_i_1_n_0 ),
        .Q(tfSReg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tfSReg_reg[7] 
       (.C(tClk),
        .CE(\tfSReg[7]_i_1_n_0 ),
        .D(shift),
        .Q(tfSReg[7]),
        .R(1'b0));
endmodule

module Wom_N_M
   (\output_val_reg[7]_0 ,
    clck_IBUF_BUFG,
    Q,
    temp_write);
  output [7:0]\output_val_reg[7]_0 ;
  input clck_IBUF_BUFG;
  input [7:0]Q;
  input temp_write;

  wire MEM_reg_0_7_0_5_n_0;
  wire MEM_reg_0_7_0_5_n_1;
  wire MEM_reg_0_7_0_5_n_2;
  wire MEM_reg_0_7_0_5_n_3;
  wire MEM_reg_0_7_0_5_n_4;
  wire MEM_reg_0_7_0_5_n_5;
  wire MEM_reg_0_7_6_7__0_n_0;
  wire MEM_reg_0_7_6_7_n_0;
  wire [7:0]Q;
  wire clck_IBUF_BUFG;
  wire [7:0]\output_val_reg[7]_0 ;
  wire temp_write;
  wire [1:0]NLW_MEM_reg_0_7_0_5_DOD_UNCONNECTED;
  wire NLW_MEM_reg_0_7_6_7_SPO_UNCONNECTED;
  wire NLW_MEM_reg_0_7_6_7__0_SPO_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "nodo_b/wom/MEM_reg_0_7_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ MEM_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({MEM_reg_0_7_0_5_n_0,MEM_reg_0_7_0_5_n_1}),
        .DOB({MEM_reg_0_7_0_5_n_2,MEM_reg_0_7_0_5_n_3}),
        .DOC({MEM_reg_0_7_0_5_n_4,MEM_reg_0_7_0_5_n_5}),
        .DOD(NLW_MEM_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clck_IBUF_BUFG),
        .WE(temp_write));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "nodo_b/wom/MEM_reg_0_7_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_UNIQ_BASE_ MEM_reg_0_7_6_7
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(Q[6]),
        .DPO(MEM_reg_0_7_6_7_n_0),
        .DPRA0(1'b0),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_MEM_reg_0_7_6_7_SPO_UNCONNECTED),
        .WCLK(clck_IBUF_BUFG),
        .WE(temp_write));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "nodo_b/wom/MEM_reg_0_7_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_HD3 MEM_reg_0_7_6_7__0
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(Q[7]),
        .DPO(MEM_reg_0_7_6_7__0_n_0),
        .DPRA0(1'b0),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_MEM_reg_0_7_6_7__0_SPO_UNCONNECTED),
        .WCLK(clck_IBUF_BUFG),
        .WE(temp_write));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[0] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_0_5_n_1),
        .Q(\output_val_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[1] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_0_5_n_0),
        .Q(\output_val_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[2] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_0_5_n_3),
        .Q(\output_val_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[3] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_0_5_n_2),
        .Q(\output_val_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[4] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_0_5_n_5),
        .Q(\output_val_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[5] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_0_5_n_4),
        .Q(\output_val_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[6] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_6_7_n_0),
        .Q(\output_val_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_val_reg[7] 
       (.C(clck_IBUF_BUFG),
        .CE(1'b1),
        .D(MEM_reg_0_7_6_7__0_n_0),
        .Q(\output_val_reg[7]_0 [7]),
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
