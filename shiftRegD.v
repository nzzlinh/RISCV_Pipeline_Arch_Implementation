module shiftRegD(
input [31:0] instr,
input [31:0] pc,
input [31:0] rs1,
input [31:0] rs2,
input [31:0] rs2_mem,
input [31:0] imm,
input [1:0] opA,
input [1:0] opB,
input [4:0] rd,
input [3:0] ALUsel,
input [1:0] WBsel,
input [1:0] branch_dhazard,
input RegWEn,
input memRW,
input clear,
input clk,
output reg [31:0] outIn,
output reg [31:0] outPC,
output reg [3:0] outALUsel,
output reg [31:0] outRs1,
output reg [31:0] outRs2,
output reg [31:0] outRs2_mem,
output reg [1:0] outOpA,
output reg [1:0] outOpB,
output reg [1:0] outWBsel,
output reg [1:0] outBranch_dhazard,
output reg outRegWEn,
output reg outMemRW,
output reg [4:0] outRd,
output reg [31:0] outImm
);

always @(posedge clk) begin
if (clear) begin
	outIn = 0;
	outPC = 0;
	outRs1 = 0;
	outRs2 = 0;
	outRd = 0;
	outOpA = 0;
	outOpB = 0;
	outWBsel = 0;
	outRegWEn = 0;
	outALUsel = 0;
	outRs2_mem = 0;
	outMemRW = 0;
	outImm = 0;
	outBranch_dhazard = 0;
end
else begin
	outIn = instr;
	outPC = pc;
	outRs1 = rs1;
	outRs2 = rs2;
	outRd = rd;
	outOpA = opA;
	outOpB = opB;
	outWBsel = WBsel;
	outRegWEn = RegWEn;
	outRs2_mem = rs2_mem;
	outMemRW = memRW;
	outImm = imm;
	outALUsel = ALUsel;
	outBranch_dhazard = branch_dhazard;
end
end

endmodule