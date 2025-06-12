// ALU
module alu (
    input signed [31:0] a,
    input signed [31:0] b,
    input [2:0] sel,
    output reg signed [31:0] out,
    output reg out_zero
);

  always @(*) begin
    case(sel)
      3'b000: out = a & b;
      3'b001: out = a | b;
      3'b010: out = a + b;
      3'b100: out = a & ~b;
      3'b101: out = a | ~b;
      3'b110: out = a - b;
      3'b111: out = (a < b) ? 1 : 0;
      default: out = 32'bx;
    endcase
    out_zero = (out == 0);
  end

endmodule