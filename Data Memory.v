
module dmem (
    input clk, we,
    input [31:0] a, wd,
    output [31:0] rd
);

  reg [31:0] RAM[63:0];
  assign rd = RAM[a[31:2]];

  always @(posedge clk)
    if (we) RAM[a[31:2]] <= wd;
initial begin
        $display("Data Memory Contents:");
        $display("RAM[0] = %h", RAM[0]);
        $display("RAM[1] = %h", RAM[1]);
        $display("RAM[2] = %h", RAM[2]);
	$display("RAM[3] = %h", RAM[3]);
	$display("RAM[4] = %h", RAM[4]);
        $display("RAM[5] = %h", RAM[5]);
        $display("RAM[6] = %h", RAM[6]);
	$display("RAM[7] = %h", RAM[7]);
	$display("RAM[8] = %h", RAM[8]);
        $display("RAM[9] = %h", RAM[9]);
        $display("RAM[10] = %h", RAM[10]);
	$display("RAM[11] = %h", RAM[11]);
end
endmodule