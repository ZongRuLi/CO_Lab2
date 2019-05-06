module Mux3to1( data0_i, data1_i, data2_i, select_i, data_o );

parameter size = 0;			   
			
//I/O ports               
input wire	[size-1:0] data0_i;          
input wire	[size-1:0] data1_i;
input wire	[size-1:0] data2_i;
input wire	[2-1:0] select_i;
output wire	[size-1:0] data_o; 

//Main function
/*your code here*/
assign data_o = select_i[1] ? data2_i : ( select_i[0] ? data1_i : data0_i );

always@(data2_i,data1_i,data0_i)begin
	//$display("[result]==> select = %d",select_i);
	case(select_i) 
		2'b00:	$display("[result]==> sel=%d ALU= %b",select_i,data_o);
		2'b01:	$display("[result]==> sel=%d Shift = %b",select_i,data_o);
		2'b10: 	$display("[result]==> sel=%d Zero_filled = %b",select_i,data_o);
	endcase
end

endmodule    

/*
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
*/  
