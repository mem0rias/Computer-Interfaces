module PISOSRegister (
	input
	WR,
	Rst,
	Clk,
	input [8:0] Din,
	output 
	reg out);
	
	reg [8:0] flips = 8'b111111111;
	always @ (posedge Clk) begin
		if(Rst) begin
			flips <= 8'b11111111;
		end
		else if(WR) begin
			flips <= Din;
		end else begin
			flips <= {flips[7:0],1'b1};
		end
		
		out <= flips[8];
		 
	end
endmodule 