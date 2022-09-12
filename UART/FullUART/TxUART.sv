module TxUART (
	input
	Rst,
	Clock,
	Send,
	configmode,
	input [7:0] Datain,
	output out, clkout, parity, busy,
	output [10:0] dtout,
	output [6:0] controlLine,
	output [2:0] SelOut
	);
	wire [2:0] Selection;
	wire DivClk;
	wire ParityBit;
	wire WRb;
	wire [6:0] control;
	
	uUartControl uControl(
		.Clk(Clock),
		.Rst(Rst),
		.confmode(configmode),
		.send(Send),
		.divClk(DivClk),
		.Din(Datain),
		.ControlLines(control)
	);
	
	UARTClock ClockTx(
		.Clk(Clock),
		.Rst(Rst),
		.Select(Selection),
		.enable(1),
		.out(DivClk)
	);
	
	ParityCalc ParityGenerator(
		.Par(control[3]),
		.Din(Datain),
		.out(ParityBit)
	);
//	
	PISOSRegister ShiftReg(
		.WR(WRb),
		.Rst(Rst),
		.Clk(Clock),
		.divClk(DivClk),
		.Din({ParityBit,Datain}),
		.out(out),
		.Dout(dtout)
	);
	
   assign WRb = control[5];
	assign clkout = DivClk;
	assign parity = ParityBit;
	assign Selection = control[2:0];
	assign busy = control[4];
	assign controlLine = control;
	assign SelOut = control[2:0];

	
endmodule 

   