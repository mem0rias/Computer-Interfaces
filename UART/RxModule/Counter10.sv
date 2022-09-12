module Counter10(
	input Clk, Rst, En,
	output out

);
	int count = 0;
	always @(posedge Clk) begin
		if(En) begin
			if(count >= 10) begin
				out <= 1;
			end else begin
				count <= count + 1;
				out <= 0;
			end
		end else begin
			count = 0;
			out <= 0;
		end
	end
	
endmodule 