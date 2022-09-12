module uUartControl(
	input Clk,Rst, confmode, send, divClk,
	input [7:0] Din,
	output reg [6:0] ControlLines,
	output reg [3:0] inputout,
	output reg [13:0] CurrentInsout,
	output reg [3:0] countoud
);
	reg [13:0] uMem [0:3] = '{14'b10000001101000,
		14'b10110100010000,
		14'b11101011100010,
		14'b10101100000001
	};
	reg [3:0] selection = 4'b0000;
	reg inpt;
	reg inpts;
	reg configmode;
	reg sendmode;
	reg [3:0] inputs = 4'b0000;
	reg [13:0] CurrentIns;
	reg [1:0] address = 2'b00;
	reg [3:0] count = 4'b0000;
	reg write = 0;
	wire Detect;
	reg countout = 0;
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

	always @(posedge Clk) begin
		if(Rst) begin
			address = 2'd00;
		end else if(inputs == CurrentIns[3:0]) begin
			address = CurrentIns[7:6];
		end else if(inputs == 4'b0100 && address == 2'b00) begin
			address = CurrentIns[5:4];
		end else begin
			address = CurrentIns[9:8];
		end
		
		ControlLines = {CurrentIns[13:11], selection};
		
		
		if(CurrentIns[10]) begin
			selection <= Din[3:0];
		end
	end

	always @(*) begin
		CurrentIns <= uMem[address];
		inputs <= {confmode,send,divClk,countout};
		inputout <= inputs;
		CurrentInsout <= CurrentIns;
		countoud <= count;
		
	end
	always @(posedge Clk) begin
		inpt <= confmode;
		configmode <= confmode && (!inpt);
		//assign Detect = rising_edge_det;
	end
	
	always @(posedge Clk) begin
		inpts <= send;
		sendmode <= send && (!inpts);
		//assign Detect = rising_edge_det;
	end
	
	
	
	always@(posedge divClk) begin
		if(CurrentIns[11] && !CurrentIns[10]) begin
			if(count >= 4'd1100) begin
				count <= 0;
				countout <= 1;
			end else begin
				count <= count + 1;
				countout <= 0;
			end
		end else begin
			count <= 0;
			countout <= 0;
		end
	end
	
endmodule 