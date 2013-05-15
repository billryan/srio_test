///////////////////////////////////////////////////////////////////////////////
//
// DISCLAIMER OF LIABILITY
//
// This file contains proprietary and confidential information of
// Xilinx, Inc. ("Xilinx"), that is distributed under a license
// from Xilinx, and may be used, copied and/or disclosed only
// pursuant to the terms of a valid license agreement with Xilinx.
//
// XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
// ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
// EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
// LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
// MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
// does not warrant that functions included in the Materials will
// meet the requirements of Licensee, or that the operation of the
// Materials will be uninterrupted or error-free, or that defects
// in the Materials will be corrected. Furthermore, Xilinx does
// not warrant or make any representations regarding use, or the
// results of the use, of the Materials in terms of correctness,
// accuracy, reliability or otherwise.
//
// Xilinx products are not designed or intended to be fail-safe,
// or for use in any application requiring fail-safe performance,
// such as life-support or safety devices or systems, Class III
// medical devices, nuclear facilities, applications related to
// the deployment of airbags, or any other applications that could
// lead to death, personal injury or severe property or
// environmental damage (individually and collectively, "critical
// applications"). Customer assumes the sole risk and liability
// of any use of Xilinx products in critical applications,
// subject only to applicable laws and regulations governing
// limitations on product liability.
//
// Copyright 2006 - 2009 Xilinx, Inc.
// All rights reserved.
//
// This disclaimer and copyright notice must be retained as part
// of this file at all times.
//
///////////////////////////////////////////////////////////////////////////////
//
// File name:    srio_gt_wrapper_v5_1x.v
// Rev:          5.4
// Description:  This module instances the one GTP tile to implement the
//               required transceiver which performs the PMA functions
//               of the Serial RapidIO core.
//
///////////////////////////////////////////////////////////////////////////////

`resetall
`timescale 1 ps / 1 ps

module srio_gt_wrapper_v5_1x
  #(
    parameter Tcq = 100
  )
  (
  REFCLK,
  REFCLKOUT,
  PLLLKDET,
  GTPRESET,
  RXBUFERR,
  RXBUFRST,
  RXUSRCLK,
  RXUSRCLK2,
  RXN0,
  RXP0,
  TXN0,
  TXP0,
  RXDATA0,
  RXCHARISK0,
  RXDISPERR0,
  RXNOTINTABLE0,
  TXUSRCLK,
  TXUSRCLK2,
  TXINHIBIT,
  TXDATA0,
  TXCHARISK0
);

input         REFCLK;
output        REFCLKOUT;
output        PLLLKDET;
input         GTPRESET;
output        RXBUFERR;
input         RXBUFRST;
input         RXUSRCLK;
input         RXUSRCLK2;
input         RXN0;
input         RXP0;
output        TXN0;
output        TXP0;
output [15:0] RXDATA0;
output [1:0]  RXCHARISK0;
output [1:0]  RXDISPERR0;
output [1:0]  RXNOTINTABLE0;
input         TXUSRCLK;
input         TXUSRCLK2;
input         TXINHIBIT;
input  [15:0] TXDATA0;
input  [1:0]  TXCHARISK0;

wire REFCLK;
wire REFCLKOUT;
wire PLLLKDET;
wire RXBUFRST;
wire RXUSRCLK;
wire RXUSRCLK2;
wire RXN0;
wire RXP0;
wire TXN0;
wire TXP0;
wire [15:0] RXDATA0;
wire [1:0]  RXCHARISK0;
wire [1:0]  RXDISPERR0;
wire [1:0]  RXNOTINTABLE0;
wire        TXUSRCLK;
wire        TXUSRCLK2;
wire        TXINHIBIT;
wire [15:0] TXDATA0;
wire [1:0]  TXCHARISK0;

wire        GND;
wire [63:0] GND_VEC;
wire        VCC;
wire [63:0] VCC_VEC;
wire [1:0]  TXCHARISK0_swap;
wire [1:0]  RXCHARISK0_swap;
wire [1:0]  RXDISPERR0_swap;
wire [1:0]  RXNOTINTABLE0_swap;
wire        rxelecidle0;
wire        resetdone0;
wire [2:0]  RXBUFSTATUS0;
wire [1:0]  TXBUFSTATUS0;

reg         RXBUFERR;
reg         txreset0;
reg         rxelecidle0_q;
reg         chng_rxelecidle0;
reg         rxcdrreset0;
reg         txinhibit_q;
reg         fall_txinhibit;
reg         fall_txinhibit_q;


assign GND     = 1'b0;
assign GND_VEC = 64'h0000000000000000;
assign VCC     = 1'b1;
assign VCC_VEC = 64'hFFFFFFFFFFFFFFFF;

// Bit order must be reversed
assign TXCHARISK0_swap[0] = TXCHARISK0[1];
assign TXCHARISK0_swap[1] = TXCHARISK0[0];

assign RXCHARISK0[0] = RXCHARISK0_swap[1];
assign RXCHARISK0[1] = RXCHARISK0_swap[0];

assign RXDISPERR0[0] = RXDISPERR0_swap[1];
assign RXDISPERR0[1] = RXDISPERR0_swap[0];

assign RXNOTINTABLE0[0] = RXNOTINTABLE0_swap[1];
assign RXNOTINTABLE0[1] = RXNOTINTABLE0_swap[0];


// Looking for elecidle change to issue a CDR reset:
  // 1) When it rises to force the link to drop 
  // 2) When it falls to reset the CDR in order to clear
  // the buffer and CDR state for syncronization/alignment
  always @(posedge RXUSRCLK2) begin
    rxelecidle0_q <= #Tcq rxelecidle0;
  end

  always @(posedge RXUSRCLK2 or posedge GTPRESET) begin
    if (GTPRESET)
      chng_rxelecidle0 <= #Tcq 1'b0;
    else
      chng_rxelecidle0 <= #Tcq rxelecidle0_q ^ rxelecidle0;
  end

// Indicate to SRIO core that an overflow or underflow error has occured
// in the RX Buffer which will cause the SRIO core to issue an RXCDRRESET
  always @(posedge RXUSRCLK2 or posedge GTPRESET) begin
    if (GTPRESET)
      RXBUFERR <= #Tcq 1'b0;
    else
      RXBUFERR <= #Tcq (RXBUFSTATUS0 == 3'b101) || (RXBUFSTATUS0 == 3'b110);
  end

// Reset the RXCDRRESET when a resulting RXBUFRST from the core occurs
// indicating that a RXBUFERR was received or upon the rising edge of
// RXELECIDLE.
  always @(posedge RXUSRCLK2 or posedge GTPRESET) begin
    if (GTPRESET)
      rxcdrreset0 <= #Tcq 1'b0;
    else
      rxcdrreset0 <= #Tcq (RXBUFRST || chng_rxelecidle0);
  end

// Determine falling edge of TXINHIBIT and force a TXRESET
  always @(posedge TXUSRCLK2) begin
    txinhibit_q <= #Tcq TXINHIBIT;
  end

  always @(posedge TXUSRCLK2 or posedge GTPRESET) begin
    if (GTPRESET) begin
      fall_txinhibit    <= #Tcq 1'b0;
      fall_txinhibit_q  <= #Tcq 1'b0;
    end
    else begin
      fall_txinhibit    <= #Tcq txinhibit_q && ~TXINHIBIT;
      fall_txinhibit_q  <= #Tcq fall_txinhibit;
    end
  end

// Issue TXRESET when TXBUFSTATUS indicates that the TX Buffer has either
// overflowed or underflowed OR upon coming out of TXINHIBIT.
  always @(posedge TXUSRCLK2 or posedge GTPRESET) begin
    if (GTPRESET)
      txreset0 <= #Tcq 1'b0;
    else
      txreset0 <= #Tcq (TXBUFSTATUS0[1] || fall_txinhibit_q);
  end


  GTP_WRAPPER #
  (
      // Simulation attributes
      .WRAPPER_SIM_GTPRESET_SPEEDUP (1)
  )
  gtp_wrapper
  (
      //_________________________________________________________________________
      //_________________________________________________________________________
      //TILE0  (Location)

      //---------------------- Loopback and Powerdown Ports ----------------------
      .TILE0_LOOPBACK0_IN           (GND_VEC[2:0]),
      .TILE0_LOOPBACK1_IN           (GND_VEC[2:0]),
      .TILE0_RXPOWERDOWN0_IN        (GND_VEC[1:0]),
      .TILE0_RXPOWERDOWN1_IN        (VCC_VEC[1:0]),
      .TILE0_TXPOWERDOWN0_IN        (GND_VEC[1:0]),
      .TILE0_TXPOWERDOWN1_IN        (VCC_VEC[1:0]),
      //--------------------- Receive Ports - 8b10b Decoder ----------------------
      .TILE0_RXCHARISCOMMA0_OUT     (),
      .TILE0_RXCHARISCOMMA1_OUT     (),
      .TILE0_RXCHARISK0_OUT         (RXCHARISK0_swap[1:0]),
      .TILE0_RXCHARISK1_OUT         (),
      .TILE0_RXDISPERR0_OUT         (RXDISPERR0_swap),
      .TILE0_RXDISPERR1_OUT         (),
      .TILE0_RXNOTINTABLE0_OUT      (RXNOTINTABLE0_swap),
      .TILE0_RXNOTINTABLE1_OUT      (),
      //----------------- Receive Ports - Clock Correction Ports -----------------
      .TILE0_RXCLKCORCNT0_OUT       (),
      .TILE0_RXCLKCORCNT1_OUT       (),
      //------------- Receive Ports - Comma Detection and Alignment --------------
      .TILE0_RXBYTEISALIGNED0_OUT   (),
      .TILE0_RXBYTEISALIGNED1_OUT   (),
      .TILE0_RXBYTEREALIGN0_OUT     (),
      .TILE0_RXBYTEREALIGN1_OUT     (),
      .TILE0_RXCOMMADET0_OUT        (),
      .TILE0_RXCOMMADET1_OUT        (),
      .TILE0_RXENMCOMMAALIGN0_IN    (VCC),
      .TILE0_RXENMCOMMAALIGN1_IN    (GND),
      .TILE0_RXENPCOMMAALIGN0_IN    (VCC),
      .TILE0_RXENPCOMMAALIGN1_IN    (GND),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .TILE0_RXDATA0_OUT            ({RXDATA0[7:0], RXDATA0[15:8]}),
      .TILE0_RXDATA1_OUT            (),
      .TILE0_RXRESET0_IN            (GND),
      .TILE0_RXRESET1_IN            (GND),
      .TILE0_RXUSRCLK0_IN           (RXUSRCLK),
      .TILE0_RXUSRCLK1_IN           (GND),
      .TILE0_RXUSRCLK20_IN          (RXUSRCLK2),
      .TILE0_RXUSRCLK21_IN          (GND),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .TILE0_RXCDRRESET0_IN         (rxcdrreset0),
      .TILE0_RXCDRRESET1_IN         (GND),
      .TILE0_RXELECIDLE0_OUT        (rxelecidle0),
      .TILE0_RXELECIDLE1_OUT        (),
      .TILE0_RXEQMIX0_IN            (GND_VEC[1:0]),
      .TILE0_RXEQMIX1_IN            (GND_VEC[1:0]),
      .TILE0_RXEQPOLE0_IN           (4'b1000),
      .TILE0_RXEQPOLE1_IN           (4'b1000),
      .TILE0_RXN0_IN                (RXN0),
      .TILE0_RXN1_IN                (GND),
      .TILE0_RXP0_IN                (RXP0),
      .TILE0_RXP1_IN                (VCC),
      //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
      .TILE0_RXBUFRESET0_IN         (GND),
      .TILE0_RXBUFRESET1_IN         (GND),
      .TILE0_RXBUFSTATUS0_OUT       (RXBUFSTATUS0),
      .TILE0_RXBUFSTATUS1_OUT       (),
      //------------- Receive Ports - RX Loss-of-sync State Machine --------------
      .TILE0_RXLOSSOFSYNC0_OUT      (),
      .TILE0_RXLOSSOFSYNC1_OUT      (),
      //------------------- Shared Ports - Tile and PLL Ports --------------------
      .TILE0_CLKIN_IN               (REFCLK),
      .TILE0_GTPRESET_IN            (GTPRESET),
      .TILE0_PLLLKDET_OUT           (PLLLKDET),
      .TILE0_REFCLKOUT_OUT          (REFCLKOUT),
      .TILE0_RESETDONE0_OUT         (resetdone0),
      .TILE0_RESETDONE1_OUT         (),
      //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
      .TILE0_TXCHARISK0_IN          (TXCHARISK0_swap),
      .TILE0_TXCHARISK1_IN          (GND_VEC[1:0]),
      //----------- Transmit Ports - TX Buffering and Phase Alignment ------------
      .TILE0_TXBUFSTATUS0_OUT       (TXBUFSTATUS0),
      .TILE0_TXBUFSTATUS1_OUT       (),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .TILE0_TXDATA0_IN             ({TXDATA0[7:0], TXDATA0[15:8]}),
      .TILE0_TXDATA1_IN             (GND_VEC[15:0]),
      .TILE0_TXRESET0_IN            (txreset0),
      .TILE0_TXRESET1_IN            (GND),
      .TILE0_TXUSRCLK0_IN           (TXUSRCLK),
      .TILE0_TXUSRCLK1_IN           (GND),
      .TILE0_TXUSRCLK20_IN          (TXUSRCLK2),
      .TILE0_TXUSRCLK21_IN          (GND),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .TILE0_TXINHIBIT0_IN          (TXINHIBIT),
      .TILE0_TXINHIBIT1_IN          (VCC),
      .TILE0_TXN0_OUT               (TXN0),
      .TILE0_TXN1_OUT               (),
      .TILE0_TXP0_OUT               (TXP0),
      .TILE0_TXP1_OUT               ()
  );

endmodule
