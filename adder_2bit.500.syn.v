/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP5-1
// Date      : Mon Mar  9 22:36:25 2026
/////////////////////////////////////////////////////////////


module adder_2bit ( clk, a, b, sum, cout );
  input [1:0] a;
  input [1:0] b;
  output [1:0] sum;
  input clk;
  output cout;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [2:0] temp;

  DFFHQNx1_ASAP7_75t_R temp_reg_2_ ( .D(n13), .CLK(clk), .QN(temp[2]) );
  DFFHQNx1_ASAP7_75t_R cout_reg ( .D(n12), .CLK(clk), .QN(cout) );
  DFFHQNx1_ASAP7_75t_R temp_reg_1_ ( .D(n11), .CLK(clk), .QN(temp[1]) );
  DFFHQNx1_ASAP7_75t_R temp_reg_0_ ( .D(n14), .CLK(clk), .QN(temp[0]) );
  DFFHQNx1_ASAP7_75t_R sum_reg_1_ ( .D(n10), .CLK(clk), .QN(sum[1]) );
  DFFHQNx1_ASAP7_75t_R sum_reg_0_ ( .D(n9), .CLK(clk), .QN(sum[0]) );
  INVxp33_ASAP7_75t_R U17 ( .A(temp[0]), .Y(n9) );
  OAI22xp33_ASAP7_75t_R U18 ( .A1(a[1]), .A2(n18), .B1(b[1]), .B2(n18), .Y(n13) );
  INVxp67_ASAP7_75t_R U19 ( .A(temp[2]), .Y(n12) );
  INVxp67_ASAP7_75t_R U20 ( .A(temp[1]), .Y(n10) );
  NAND2xp33_ASAP7_75t_R U21 ( .A(n17), .B(n16), .Y(n18) );
  OAI21xp33_ASAP7_75t_R U22 ( .A1(b[0]), .A2(a[0]), .B(n15), .Y(n14) );
  AOI22xp33_ASAP7_75t_R U23 ( .A1(a[1]), .A2(b[1]), .B1(n20), .B2(n19), .Y(n22) );
  NAND2xp33_ASAP7_75t_R U24 ( .A(b[0]), .B(a[0]), .Y(n15) );
  NAND3xp33_ASAP7_75t_R U25 ( .A(b[0]), .B(a[0]), .C(b[1]), .Y(n17) );
  NAND3xp33_ASAP7_75t_R U26 ( .A(b[0]), .B(a[0]), .C(a[1]), .Y(n16) );
  INVxp33_ASAP7_75t_R U27 ( .A(b[1]), .Y(n20) );
  INVxp33_ASAP7_75t_R U28 ( .A(a[1]), .Y(n19) );
  NAND3xp33_ASAP7_75t_R U29 ( .A(b[0]), .B(a[0]), .C(n22), .Y(n21) );
  A2O1A1Ixp33_ASAP7_75t_R U30 ( .A1(a[0]), .A2(b[0]), .B(n22), .C(n21), .Y(n11) );
endmodule

