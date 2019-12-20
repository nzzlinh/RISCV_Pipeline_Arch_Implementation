module shiftRegF(
input [31:0] instr,
input [31:0] pc,
input bubble,
input clear,
input nop,
input clk,
output reg [31:0] outIn,
output reg [31:0] outPC);

always @(posedge clk) begin
if (!bubble) begin
	if ( clear == 1 || nop == 1) begin
		outIn = 0;
		outPC = 0;
	end
	else begin
		outIn = instr;
		outPC = pc;
	end
end

end

endmodule
