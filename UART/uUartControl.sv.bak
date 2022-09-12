module uUartControl(
	input Clk,Rst, confmode, send, DivClk,
	input [7:0] Din,
	output reg [6:0] ControlLines
);
	reg [9:0] uMem [0:3] = '{10'b1000000110,10'b1011010000,10'b1110110000,10'b1010110000};
	reg [3:0] selection = 4'b0000;
	reg inpt;
	reg inpts;
	reg configmode;
	reg sendmode;
	reg [9:0] CurrentIns;
	reg [1:0] address = 2'd00;
	wire Detect;
//	always @(posedge Clk) begin
//		if(Rst) begin
//			CurrentIns <= uMem[0];
//			ControlLines <= {CurrentIns[9:7], selection};
//		end else if(rising_edge_det) begin
//			CurrentIns <= uMem[CurrentIns[3:2]];
//		end else begin
//			ControlLines <= {CurrentIns[9:7], selection};
//		end
//		if(CurrentIns[6]) begin
//			selection <= Din[3:0];
//		end
//	end

	always @(posedge DivClk) begin
		if(Rst) begin
			address = 2'd00;
		end else if(configmode) begin
			address = CurrentIns[3:2];
		end else if(sendmode) begin
			address = CurrentIns[1:0];	
		end else begin
			address = CurrentIns[5:4];
		end
		
		ControlLines = {CurrentIns[9:7], selection};
		
		if(CurrentIns[6]) begin
			selection <= Din[3:0];
		end
	end

	always @(*) begin
		CurrentIns = uMem[address];
	end
	always @(posedge Clk) begin
		inpt <= confmode;
		configmode <= confmode && (!inpt);
		//assign Detect = rising_edge_det;
	end
	
	always @(posedge DivClk) begin
		inpts <= send;
		sendmode <= send && (!inpts);
		//assign Detect = rising_edge_det;
	end
	
	
endmodule 