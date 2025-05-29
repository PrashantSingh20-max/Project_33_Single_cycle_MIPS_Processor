// MIPS processor
module mips (
    input clk,
    input reset,
    output [31:0] pc,
    output [31:0] instr,
    output memwrite,
    output [31:0] aluout,
    output [31:0] writedata,
    input [31:0] readdata
);

  wire memtoreg, branch, alusrc, regdst, regwrite, jump;
  wire [2:0] alucontrol;
  wire zero, pcsrc;

  controller c(instr[31:26], instr[5:0], zero, memtoreg, memwrite,
               pcsrc, alusrc, regdst, regwrite, jump, alucontrol);

  datapath dp(clk, reset, memtoreg, pcsrc, alusrc, regdst,
              regwrite, jump, alucontrol, zero, pc, instr,
              aluout, writedata, readdata);

endmodule