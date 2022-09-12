module RXTXUART(
	input Clk, Rst, Send, Conf,
	input DSin,
	input [7:0] DPin,
	output Dout, Busy, Reading,
	output [7:0] DPout,
	//Debug
	output DivClkout,
	output RxClockD,
	output TenCountD
);
	wire [2:0] Select;
	wire [9:0] DpoutW;
	RxUart RX (
		.Din(DSin),
		.Clk(Clk),
		.Rst(Rst),
		.select(Select),
		.dout(DpoutW),
		.Reading(Reading),
		.DivClk(RxClockD),
		.TenCountD(TenCountD)
	);
	
	TxUART TX (
		.Rst(Rst),
		.Clock(Clk),
		.Send(Send),
		.configmode(Conf),
		.Datain(DPin),
		.out(Dout), 
		.busy(Busy),
		.SelOut(Select),
		.clkout(DivClkout)
	);
	
	assign DPout = DpoutW[8:1];
endmodule 