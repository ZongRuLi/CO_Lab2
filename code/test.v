module test;

reg	[31:0] a;
reg	[31:0] b;
reg	[31:0] c;
reg	[6:0] d;

Mux2to1 #(.size(6)) Mux_Shift_Reg(
        .data0_i({0,a[10:6]}),			// sll,srl
        .data1_i(b[6-1:0]),		// sllv,srlv
        .select_i(alu_operation[1]),	//
        .data_o(shamtt)
        );

initial begin
	$dumpfile("www.vcd");
	$dumpvars;
	a = 32'hffffffff;
	c = 6'b011111;
	#0 b = a >> c;
	$display("b = %b",b);
	#1 c = -6'b011111; 
	
	$display("c = %b",c);
	#50 b = a >> c;
	
	$display("b = %b",b);
end

initial #100 $finish;

endmodule
