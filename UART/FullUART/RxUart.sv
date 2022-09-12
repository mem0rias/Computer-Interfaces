module RxUart (
	input Din, Clk, Rst,
	input [2:0] select,
	output [9:0] dout,
	//Debug Signals well need
	output DivClk,
	output SampleClock,
	output Reading,
	output TenCountD
);
	
	wire Enable;
	wire divClk;
	wire TenCount;
	UARTClock RxClock (
		.Rst(Rst),
		.Clk(Clk),
		.enable(Enable),
		.Select(select),
		.out(divClk)
	);
	
	
	Counter10 RCounter (
		.Clk(DivClk),
		.Rst(Rst),
		.En(Enable),
		.out(TenCount)
	);
	
	SIPORegister SIPO (
		.Din(Din),
		.Clk(Clk),
		.Rst(Rst),
		.enable(divClk),
		.dataout(dout)
	);
	
	FSMRX FSM (
		.Din(Din),
		.Clk(Clk),
		.Rst(Rst),
		.Count(TenCount),
		.EnableP(Enable)
	);
	
	assign DivClk = divClk;
	assign Reading = Enable;
	assign TenCountD = TenCount;
endmodule 