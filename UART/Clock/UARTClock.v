module UARTClock (
	input
	Rst,
	Clk,
	output 
	reg out);
	
	integer MAXCount = 8'd49999999;
	integer Time = 9;
	integer count = 1'd0;
	always @ (posedge Clk) begin
		if(Rst) begin
			count <= 0;
		end
		else begin 
			count <= count + 1'd1;
			if(count == Time) begin
				count <= 0;
				out <= 1;
			end else begin
				out <= 0;
			end
		end
		 
	end
endmodule 