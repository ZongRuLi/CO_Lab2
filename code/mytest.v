module test;

reg [2:0] a;	
reg [2:0] b;	
reg [2:0] c;
reg [1:0] sel;	
wire [2:0] o;	


Mux3to1 #(.size(3)) Mux(
	.data0_i(a),
	.data1_i(b),
	.data2_i(c),
	.select_i(sel),
	.data_o(o)
);


initial begin
$dumpfile("WWWWWWWWWWWWWWWWWW.vcd");
$dumpvars;
  a = 3'd4;
  b = 3'd5;
  c = 3'd6;
#0	sel = 2'd0;
#10	sel = 2'd1;
#10 sel = 2'b10;
end

initial #29 $display("finish");
initial #50 $finish;

endmodule
