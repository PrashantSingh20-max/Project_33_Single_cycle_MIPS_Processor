//Memory modules
module imem (
    input  [5:0] a,
    output [31:0] rd
);
    reg [31:0] RAM[63:0];

    initial begin
        $readmemh("memfile.dat", RAM);
        // Display the first few instructions to confirm loading
        $display("Instruction Memory Contents:");
        $display("RAM[0] = %h", RAM[0]);
        $display("RAM[1] = %h", RAM[1]);
        $display("RAM[2] = %h", RAM[2]);
    end

    assign rd = RAM[a]; // word aligned
endmodule