
module _T_181_ext(
  input W0_clk,
  input [5:0] W0_addr,
  input W0_en,
  input [175:0] W0_data,
  input [7:0] W0_mask,
  input R0_clk,
  input [5:0] R0_addr,
  input R0_en,
  output [175:0] R0_data
);

  reg [5:0] reg_R0_addr;
  reg [175:0] ram [63:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 64; initvar = initvar+1)
        ram[initvar] = {6 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][21:0] <= W0_data[21:0];
      if (W0_mask[1]) ram[W0_addr][43:22] <= W0_data[43:22];
      if (W0_mask[2]) ram[W0_addr][65:44] <= W0_data[65:44];
      if (W0_mask[3]) ram[W0_addr][87:66] <= W0_data[87:66];
      if (W0_mask[4]) ram[W0_addr][109:88] <= W0_data[109:88];
      if (W0_mask[5]) ram[W0_addr][131:110] <= W0_data[131:110];
      if (W0_mask[6]) ram[W0_addr][153:132] <= W0_data[153:132];
      if (W0_mask[7]) ram[W0_addr][175:154] <= W0_data[175:154];
    end
  assign R0_data = ram[reg_R0_addr];

endmodule

module _T_80_ext(
  input W0_clk,
  input [7:0] W0_addr,
  input W0_en,
  input [127:0] W0_data,
  input [1:0] W0_mask,
  input R0_clk,
  input [7:0] R0_addr,
  input R0_en,
  output [127:0] R0_data
);

  reg [7:0] reg_R0_addr;
  reg [127:0] ram [255:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 256; initvar = initvar+1)
        ram[initvar] = {4 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][63:0] <= W0_data[63:0];
      if (W0_mask[1]) ram[W0_addr][127:64] <= W0_data[127:64];
    end
  assign R0_data = ram[reg_R0_addr];

endmodule

module tag_array_ext(
  input RW0_clk,
  input [5:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [7:0] RW0_wmask,
  input [159:0] RW0_wdata,
  output [159:0] RW0_rdata
);

  reg [5:0] reg_RW0_addr;
  reg [159:0] ram [63:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 64; initvar = initvar+1)
        ram[initvar] = {5 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][19:0] <= RW0_wdata[19:0];
      if (RW0_wmask[1]) ram[RW0_addr][39:20] <= RW0_wdata[39:20];
      if (RW0_wmask[2]) ram[RW0_addr][59:40] <= RW0_wdata[59:40];
      if (RW0_wmask[3]) ram[RW0_addr][79:60] <= RW0_wdata[79:60];
      if (RW0_wmask[4]) ram[RW0_addr][99:80] <= RW0_wdata[99:80];
      if (RW0_wmask[5]) ram[RW0_addr][119:100] <= RW0_wdata[119:100];
      if (RW0_wmask[6]) ram[RW0_addr][139:120] <= RW0_wdata[139:120];
      if (RW0_wmask[7]) ram[RW0_addr][159:140] <= RW0_wdata[159:140];
    end
  assign RW0_rdata = ram[reg_RW0_addr];

endmodule

module _T_1006_ext(
  input RW0_clk,
  input [7:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [127:0] RW0_wdata,
  output [127:0] RW0_rdata
);

  reg [7:0] reg_RW0_addr;
  reg [127:0] ram [255:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 256; initvar = initvar+1)
        ram[initvar] = {4 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      ram[RW0_addr][127:0] <= RW0_wdata[127:0];
    end
  assign RW0_rdata = ram[reg_RW0_addr];

endmodule

module btb_tag_array_ext(
  input RW0_clk,
  input [5:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [19:0] RW0_wdata,
  output [19:0] RW0_rdata
);

  reg [5:0] reg_RW0_addr;
  reg [19:0] ram [63:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 64; initvar = initvar+1)
        ram[initvar] = {1 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      ram[RW0_addr][19:0] <= RW0_wdata[19:0];
    end
  assign RW0_rdata = ram[reg_RW0_addr];

endmodule

module btb_data_array_ext(
  input RW0_clk,
  input [5:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [43:0] RW0_wdata,
  output [43:0] RW0_rdata
);

  reg [5:0] reg_RW0_addr;
  reg [43:0] ram [63:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 64; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      ram[RW0_addr][43:0] <= RW0_wdata[43:0];
    end
  assign RW0_rdata = ram[reg_RW0_addr];

endmodule

module entries_info_ext(
  input W0_clk,
  input [5:0] W0_addr,
  input W0_en,
  input [54:0] W0_data,
  input R0_clk,
  input [5:0] R0_addr,
  input R0_en,
  output [54:0] R0_data
);

  reg [5:0] reg_R0_addr;
  reg [54:0] ram [39:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 40; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      ram[W0_addr][54:0] <= W0_data[54:0];
    end
  assign R0_data = ram[reg_R0_addr];

endmodule

module smem_ext(
  input RW0_clk,
  input [7:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [127:0] RW0_wmask,
  input [127:0] RW0_wdata,
  output [127:0] RW0_rdata
);

  reg [7:0] reg_RW0_addr;
  reg [127:0] ram [255:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 256; initvar = initvar+1)
        ram[initvar] = {4 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][0:0] <= RW0_wdata[0:0];
      if (RW0_wmask[1]) ram[RW0_addr][1:1] <= RW0_wdata[1:1];
      if (RW0_wmask[2]) ram[RW0_addr][2:2] <= RW0_wdata[2:2];
      if (RW0_wmask[3]) ram[RW0_addr][3:3] <= RW0_wdata[3:3];
      if (RW0_wmask[4]) ram[RW0_addr][4:4] <= RW0_wdata[4:4];
      if (RW0_wmask[5]) ram[RW0_addr][5:5] <= RW0_wdata[5:5];
      if (RW0_wmask[6]) ram[RW0_addr][6:6] <= RW0_wdata[6:6];
      if (RW0_wmask[7]) ram[RW0_addr][7:7] <= RW0_wdata[7:7];
      if (RW0_wmask[8]) ram[RW0_addr][8:8] <= RW0_wdata[8:8];
      if (RW0_wmask[9]) ram[RW0_addr][9:9] <= RW0_wdata[9:9];
      if (RW0_wmask[10]) ram[RW0_addr][10:10] <= RW0_wdata[10:10];
      if (RW0_wmask[11]) ram[RW0_addr][11:11] <= RW0_wdata[11:11];
      if (RW0_wmask[12]) ram[RW0_addr][12:12] <= RW0_wdata[12:12];
      if (RW0_wmask[13]) ram[RW0_addr][13:13] <= RW0_wdata[13:13];
      if (RW0_wmask[14]) ram[RW0_addr][14:14] <= RW0_wdata[14:14];
      if (RW0_wmask[15]) ram[RW0_addr][15:15] <= RW0_wdata[15:15];
      if (RW0_wmask[16]) ram[RW0_addr][16:16] <= RW0_wdata[16:16];
      if (RW0_wmask[17]) ram[RW0_addr][17:17] <= RW0_wdata[17:17];
      if (RW0_wmask[18]) ram[RW0_addr][18:18] <= RW0_wdata[18:18];
      if (RW0_wmask[19]) ram[RW0_addr][19:19] <= RW0_wdata[19:19];
      if (RW0_wmask[20]) ram[RW0_addr][20:20] <= RW0_wdata[20:20];
      if (RW0_wmask[21]) ram[RW0_addr][21:21] <= RW0_wdata[21:21];
      if (RW0_wmask[22]) ram[RW0_addr][22:22] <= RW0_wdata[22:22];
      if (RW0_wmask[23]) ram[RW0_addr][23:23] <= RW0_wdata[23:23];
      if (RW0_wmask[24]) ram[RW0_addr][24:24] <= RW0_wdata[24:24];
      if (RW0_wmask[25]) ram[RW0_addr][25:25] <= RW0_wdata[25:25];
      if (RW0_wmask[26]) ram[RW0_addr][26:26] <= RW0_wdata[26:26];
      if (RW0_wmask[27]) ram[RW0_addr][27:27] <= RW0_wdata[27:27];
      if (RW0_wmask[28]) ram[RW0_addr][28:28] <= RW0_wdata[28:28];
      if (RW0_wmask[29]) ram[RW0_addr][29:29] <= RW0_wdata[29:29];
      if (RW0_wmask[30]) ram[RW0_addr][30:30] <= RW0_wdata[30:30];
      if (RW0_wmask[31]) ram[RW0_addr][31:31] <= RW0_wdata[31:31];
      if (RW0_wmask[32]) ram[RW0_addr][32:32] <= RW0_wdata[32:32];
      if (RW0_wmask[33]) ram[RW0_addr][33:33] <= RW0_wdata[33:33];
      if (RW0_wmask[34]) ram[RW0_addr][34:34] <= RW0_wdata[34:34];
      if (RW0_wmask[35]) ram[RW0_addr][35:35] <= RW0_wdata[35:35];
      if (RW0_wmask[36]) ram[RW0_addr][36:36] <= RW0_wdata[36:36];
      if (RW0_wmask[37]) ram[RW0_addr][37:37] <= RW0_wdata[37:37];
      if (RW0_wmask[38]) ram[RW0_addr][38:38] <= RW0_wdata[38:38];
      if (RW0_wmask[39]) ram[RW0_addr][39:39] <= RW0_wdata[39:39];
      if (RW0_wmask[40]) ram[RW0_addr][40:40] <= RW0_wdata[40:40];
      if (RW0_wmask[41]) ram[RW0_addr][41:41] <= RW0_wdata[41:41];
      if (RW0_wmask[42]) ram[RW0_addr][42:42] <= RW0_wdata[42:42];
      if (RW0_wmask[43]) ram[RW0_addr][43:43] <= RW0_wdata[43:43];
      if (RW0_wmask[44]) ram[RW0_addr][44:44] <= RW0_wdata[44:44];
      if (RW0_wmask[45]) ram[RW0_addr][45:45] <= RW0_wdata[45:45];
      if (RW0_wmask[46]) ram[RW0_addr][46:46] <= RW0_wdata[46:46];
      if (RW0_wmask[47]) ram[RW0_addr][47:47] <= RW0_wdata[47:47];
      if (RW0_wmask[48]) ram[RW0_addr][48:48] <= RW0_wdata[48:48];
      if (RW0_wmask[49]) ram[RW0_addr][49:49] <= RW0_wdata[49:49];
      if (RW0_wmask[50]) ram[RW0_addr][50:50] <= RW0_wdata[50:50];
      if (RW0_wmask[51]) ram[RW0_addr][51:51] <= RW0_wdata[51:51];
      if (RW0_wmask[52]) ram[RW0_addr][52:52] <= RW0_wdata[52:52];
      if (RW0_wmask[53]) ram[RW0_addr][53:53] <= RW0_wdata[53:53];
      if (RW0_wmask[54]) ram[RW0_addr][54:54] <= RW0_wdata[54:54];
      if (RW0_wmask[55]) ram[RW0_addr][55:55] <= RW0_wdata[55:55];
      if (RW0_wmask[56]) ram[RW0_addr][56:56] <= RW0_wdata[56:56];
      if (RW0_wmask[57]) ram[RW0_addr][57:57] <= RW0_wdata[57:57];
      if (RW0_wmask[58]) ram[RW0_addr][58:58] <= RW0_wdata[58:58];
      if (RW0_wmask[59]) ram[RW0_addr][59:59] <= RW0_wdata[59:59];
      if (RW0_wmask[60]) ram[RW0_addr][60:60] <= RW0_wdata[60:60];
      if (RW0_wmask[61]) ram[RW0_addr][61:61] <= RW0_wdata[61:61];
      if (RW0_wmask[62]) ram[RW0_addr][62:62] <= RW0_wdata[62:62];
      if (RW0_wmask[63]) ram[RW0_addr][63:63] <= RW0_wdata[63:63];
      if (RW0_wmask[64]) ram[RW0_addr][64:64] <= RW0_wdata[64:64];
      if (RW0_wmask[65]) ram[RW0_addr][65:65] <= RW0_wdata[65:65];
      if (RW0_wmask[66]) ram[RW0_addr][66:66] <= RW0_wdata[66:66];
      if (RW0_wmask[67]) ram[RW0_addr][67:67] <= RW0_wdata[67:67];
      if (RW0_wmask[68]) ram[RW0_addr][68:68] <= RW0_wdata[68:68];
      if (RW0_wmask[69]) ram[RW0_addr][69:69] <= RW0_wdata[69:69];
      if (RW0_wmask[70]) ram[RW0_addr][70:70] <= RW0_wdata[70:70];
      if (RW0_wmask[71]) ram[RW0_addr][71:71] <= RW0_wdata[71:71];
      if (RW0_wmask[72]) ram[RW0_addr][72:72] <= RW0_wdata[72:72];
      if (RW0_wmask[73]) ram[RW0_addr][73:73] <= RW0_wdata[73:73];
      if (RW0_wmask[74]) ram[RW0_addr][74:74] <= RW0_wdata[74:74];
      if (RW0_wmask[75]) ram[RW0_addr][75:75] <= RW0_wdata[75:75];
      if (RW0_wmask[76]) ram[RW0_addr][76:76] <= RW0_wdata[76:76];
      if (RW0_wmask[77]) ram[RW0_addr][77:77] <= RW0_wdata[77:77];
      if (RW0_wmask[78]) ram[RW0_addr][78:78] <= RW0_wdata[78:78];
      if (RW0_wmask[79]) ram[RW0_addr][79:79] <= RW0_wdata[79:79];
      if (RW0_wmask[80]) ram[RW0_addr][80:80] <= RW0_wdata[80:80];
      if (RW0_wmask[81]) ram[RW0_addr][81:81] <= RW0_wdata[81:81];
      if (RW0_wmask[82]) ram[RW0_addr][82:82] <= RW0_wdata[82:82];
      if (RW0_wmask[83]) ram[RW0_addr][83:83] <= RW0_wdata[83:83];
      if (RW0_wmask[84]) ram[RW0_addr][84:84] <= RW0_wdata[84:84];
      if (RW0_wmask[85]) ram[RW0_addr][85:85] <= RW0_wdata[85:85];
      if (RW0_wmask[86]) ram[RW0_addr][86:86] <= RW0_wdata[86:86];
      if (RW0_wmask[87]) ram[RW0_addr][87:87] <= RW0_wdata[87:87];
      if (RW0_wmask[88]) ram[RW0_addr][88:88] <= RW0_wdata[88:88];
      if (RW0_wmask[89]) ram[RW0_addr][89:89] <= RW0_wdata[89:89];
      if (RW0_wmask[90]) ram[RW0_addr][90:90] <= RW0_wdata[90:90];
      if (RW0_wmask[91]) ram[RW0_addr][91:91] <= RW0_wdata[91:91];
      if (RW0_wmask[92]) ram[RW0_addr][92:92] <= RW0_wdata[92:92];
      if (RW0_wmask[93]) ram[RW0_addr][93:93] <= RW0_wdata[93:93];
      if (RW0_wmask[94]) ram[RW0_addr][94:94] <= RW0_wdata[94:94];
      if (RW0_wmask[95]) ram[RW0_addr][95:95] <= RW0_wdata[95:95];
      if (RW0_wmask[96]) ram[RW0_addr][96:96] <= RW0_wdata[96:96];
      if (RW0_wmask[97]) ram[RW0_addr][97:97] <= RW0_wdata[97:97];
      if (RW0_wmask[98]) ram[RW0_addr][98:98] <= RW0_wdata[98:98];
      if (RW0_wmask[99]) ram[RW0_addr][99:99] <= RW0_wdata[99:99];
      if (RW0_wmask[100]) ram[RW0_addr][100:100] <= RW0_wdata[100:100];
      if (RW0_wmask[101]) ram[RW0_addr][101:101] <= RW0_wdata[101:101];
      if (RW0_wmask[102]) ram[RW0_addr][102:102] <= RW0_wdata[102:102];
      if (RW0_wmask[103]) ram[RW0_addr][103:103] <= RW0_wdata[103:103];
      if (RW0_wmask[104]) ram[RW0_addr][104:104] <= RW0_wdata[104:104];
      if (RW0_wmask[105]) ram[RW0_addr][105:105] <= RW0_wdata[105:105];
      if (RW0_wmask[106]) ram[RW0_addr][106:106] <= RW0_wdata[106:106];
      if (RW0_wmask[107]) ram[RW0_addr][107:107] <= RW0_wdata[107:107];
      if (RW0_wmask[108]) ram[RW0_addr][108:108] <= RW0_wdata[108:108];
      if (RW0_wmask[109]) ram[RW0_addr][109:109] <= RW0_wdata[109:109];
      if (RW0_wmask[110]) ram[RW0_addr][110:110] <= RW0_wdata[110:110];
      if (RW0_wmask[111]) ram[RW0_addr][111:111] <= RW0_wdata[111:111];
      if (RW0_wmask[112]) ram[RW0_addr][112:112] <= RW0_wdata[112:112];
      if (RW0_wmask[113]) ram[RW0_addr][113:113] <= RW0_wdata[113:113];
      if (RW0_wmask[114]) ram[RW0_addr][114:114] <= RW0_wdata[114:114];
      if (RW0_wmask[115]) ram[RW0_addr][115:115] <= RW0_wdata[115:115];
      if (RW0_wmask[116]) ram[RW0_addr][116:116] <= RW0_wdata[116:116];
      if (RW0_wmask[117]) ram[RW0_addr][117:117] <= RW0_wdata[117:117];
      if (RW0_wmask[118]) ram[RW0_addr][118:118] <= RW0_wdata[118:118];
      if (RW0_wmask[119]) ram[RW0_addr][119:119] <= RW0_wdata[119:119];
      if (RW0_wmask[120]) ram[RW0_addr][120:120] <= RW0_wdata[120:120];
      if (RW0_wmask[121]) ram[RW0_addr][121:121] <= RW0_wdata[121:121];
      if (RW0_wmask[122]) ram[RW0_addr][122:122] <= RW0_wdata[122:122];
      if (RW0_wmask[123]) ram[RW0_addr][123:123] <= RW0_wdata[123:123];
      if (RW0_wmask[124]) ram[RW0_addr][124:124] <= RW0_wdata[124:124];
      if (RW0_wmask[125]) ram[RW0_addr][125:125] <= RW0_wdata[125:125];
      if (RW0_wmask[126]) ram[RW0_addr][126:126] <= RW0_wdata[126:126];
      if (RW0_wmask[127]) ram[RW0_addr][127:127] <= RW0_wdata[127:127];
    end
  assign RW0_rdata = ram[reg_RW0_addr];

endmodule

module mem_ext(
  input W0_clk,
  input [24:0] W0_addr,
  input W0_en,
  input [63:0] W0_data,
  input [7:0] W0_mask,
  input R0_clk,
  input [24:0] R0_addr,
  input R0_en,
  output [63:0] R0_data
);

  reg [24:0] reg_R0_addr;
  reg [63:0] ram [33554431:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 33554432; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][7:0] <= W0_data[7:0];
      if (W0_mask[1]) ram[W0_addr][15:8] <= W0_data[15:8];
      if (W0_mask[2]) ram[W0_addr][23:16] <= W0_data[23:16];
      if (W0_mask[3]) ram[W0_addr][31:24] <= W0_data[31:24];
      if (W0_mask[4]) ram[W0_addr][39:32] <= W0_data[39:32];
      if (W0_mask[5]) ram[W0_addr][47:40] <= W0_data[47:40];
      if (W0_mask[6]) ram[W0_addr][55:48] <= W0_data[55:48];
      if (W0_mask[7]) ram[W0_addr][63:56] <= W0_data[63:56];
    end
  assign R0_data = ram[reg_R0_addr];

endmodule

module mem_0_ext(
  input W0_clk,
  input [8:0] W0_addr,
  input W0_en,
  input [63:0] W0_data,
  input [7:0] W0_mask,
  input R0_clk,
  input [8:0] R0_addr,
  input R0_en,
  output [63:0] R0_data
);

  reg [8:0] reg_R0_addr;
  reg [63:0] ram [511:0];
  `ifdef RANDOMIZE
    integer initvar;
    initial begin
      #0.002 begin end
      for (initvar = 0; initvar < 512; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][7:0] <= W0_data[7:0];
      if (W0_mask[1]) ram[W0_addr][15:8] <= W0_data[15:8];
      if (W0_mask[2]) ram[W0_addr][23:16] <= W0_data[23:16];
      if (W0_mask[3]) ram[W0_addr][31:24] <= W0_data[31:24];
      if (W0_mask[4]) ram[W0_addr][39:32] <= W0_data[39:32];
      if (W0_mask[5]) ram[W0_addr][47:40] <= W0_data[47:40];
      if (W0_mask[6]) ram[W0_addr][55:48] <= W0_data[55:48];
      if (W0_mask[7]) ram[W0_addr][63:56] <= W0_data[63:56];
    end
  assign R0_data = ram[reg_R0_addr];

endmodule
