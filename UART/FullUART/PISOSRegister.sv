module PISOSRegister (
	input
	WR,
	Rst,
	divClk,
	Clk,
	input [8:0] Din,
	output 
	reg out,
	output reg [10:0] Dout);
	
	reg inpt;
	reg divclk;
	reg [10:0] flips = 11'b11111111111;
	always @ (posedge Clk) begin
		if(Rst) begin
			flips <= 11'b11111111111;
		end
		else if(WR) begin
			flips <= {Din, 2'b01};
		end else if(divclk) begin
			flips <= {1'b1,flips[10:1]};
		end
		
		out <= flips[0];
		Dout <= flips; 
	end
	
	always @(posedge Clk) begin
		inpt <= divClk;
		divclk <= divClk && (!inpt);
		//assign Detect = rising_edge_det;
	end
	
endmodule 