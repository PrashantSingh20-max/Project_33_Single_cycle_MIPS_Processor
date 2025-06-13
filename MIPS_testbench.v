
module testbench();
    reg clk;
    reg reset;
    wire [31:0] writedata,  dataadr;
    wire memwrite;

    // instantiate device to be tested
    top dut(clk, reset, writedata,  dataadr, memwrite);



    // initialize test
    initial begin
        reset <=1; # 22; reset<= 0;
    end

    // generate clock to sequence tests
    always begin
        clk <=1; # 5; clk<= 0; # 5;
    end


   // check results
    always @(negedge clk) begin
        if (memwrite) begin
            if (dataadr == 84 && writedata == 7) begin
              $display("Simulation succeeded ");
                $display("Register x0 = %0d", dut.mips.dp.rf.regs[0]);
                $stop;
            end else if (dataadr != 80) begin
                $display("Simulation failed");
		$display("Register x0 = %0d", dut.mips.dp.rf.regs[0]);
              $stop;
          end
     end
   end
/*
// Delay to allow program to run, then check results
    initial begin
        #150; // Let processor execute the instructions

	$display("---- Instruction Check Results ----");

	//0. addi $t0, $zero, 5       # $t0 = 5
	$display("Value in x1 (regs[1]) = %0d", dut.mips.dp.rf.regs[0]);
        if (dut.mips.dp.rf.regs[0] == 5) $display("PASS:addi $t0, $zero, 5");
        else $display("FAIL: addi ");
end
*/

endmodule
