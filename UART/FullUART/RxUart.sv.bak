module RxUart (
	input Din, Clk, Rst,
	input [2:0] select,
	output [9:0] dout,
	//Debug Signals well need
	output DivClk,
	output SampleClock,
	output Reading
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
	
	UARTClock RxSample (
		.Rst(Rst),
		.Clk(Clk),
		.enable(1),
		.Select(select),
		.out(SampleClock)
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
endmodule 