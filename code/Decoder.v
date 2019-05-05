module Decoder( instr_op_i, RegWrite_o,	ALUOp_o, ALUSrc_o, RegDst_o );
     
//I/O ports
input	[6-1:0] instr_op_i;

output			RegWrite_o;
output	[3-1:0] ALUOp_o;
output			ALUSrc_o;
output			RegDst_o;
 
//Internal Signals
wire	[3-1:0] ALUOp_o;
wire			ALUSrc_o;
wire			RegWrite_o;
wire			RegDst_o;

//Main function
/*your code here*/

// if R-type instruction
if (instr_op_i == 6'b111111 )begin
	Regwrite = 1;
	ALUOp_o = 2'b10;
	ALUSrc_o = 0;
	RegDst = 1;
end
// ADDI OP = 6'b110111
else if(instr_op_i == 6'b110111) begin
end
// LUI OP = b'b110000
else if(instr_op_i == 6'b110000) begin
end

endmodule
   
