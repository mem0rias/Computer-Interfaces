module PairRXTX (
	input Clk, Rst, Send, Conf,
	input [7:0] DPin,
	output Busy, Reading, clkout, Rxclkout, dsout, TenCount,
	output [7:0] DPout
);
	wire DM1Out;
	RXTXUART M1 (
		.Clk(Clk),
		.Rst(Rst),
		.Send(Send),
		.Conf(Conf),
		.DPin(DPin),
		.Dout(DM1Out),
		.Busy(Busy),
		.DivClkout(clkout)
		
	);
	
	RXTXUART M2 (
		.Clk(Clk),
		.Rst(Rst),
		.DSin(DM1Out),
		.DPout(DPout),
		.Reading(Reading),
		.RxClockD(Rxclkout),
		.TenCountD(TenCount)
	);
	
	assign dsout = DM1Out;
endmodule 