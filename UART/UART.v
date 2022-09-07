module UART (
	input
	Rst,
	Clk,
	ParitySelect,
	Send,
	input [7:0] Din,
	output out);
	
	wire Selection;
	wire DivClk;
	wire ParityBit;
	wire WR;
	
	UARTClock ClockTx(
		.Clk(Clk),
		.Rst(Rst),
		.Select(Selection),
		.out(DivClk)
	);
	
	ParityCalc ParityGenerator(
		.Par(ParitySelect),
		.Din(Din),
		.out(ParityBit)
	);
	
	PISOSRegister ShiftReg(
		.WR(WR),
		.Rst(Rst),
		.Clk(DivClk),
		.Din({ParityBit,Din}),
		.out(out)
	);
	
endmodule 