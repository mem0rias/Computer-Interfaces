module Counter10(
	input Clk, Rst, En,
	output out,
	output [4:0] CountOut

);
	int count = 0;
	always @(posedge Clk) begin
		if(En) begin
			if(count >= 9) begin
				out <= 1;
				count <= 0;
			end else begin
				count <= count + 1;
				out <= 0;
			end
		end else begin
			count <= 0;
			out <= 0;
		end
	end
	
	always @(*) begin
		CountOut <= count;
	end
	
endmodule 