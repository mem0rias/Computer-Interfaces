module SIPORegister (
	input Din, Clk, Rst, enable,
	output [9:0] dataout, 
	output dread
);

	reg [9:0] data; 
	int count = 0;
	reg out = 0;
always @(posedge Clk) begin
	if(Rst) begin
		data <= 3'h000;
	end else if(enable) begin
		data <= {Din, data[9:1]};
	end
	
	dataout <= data;
end

always @ (posedge Clk) begin
		if(Rst) begin
			count <= 0;
		end
		else if(enable) begin 
			count <= count + 1'd1;
			if(count >= 9) begin
				count <= 0;
				out <= 1;
			end else begin
				out <= 0;
			end
		end else begin
			count <= 6;
		
		end
		 
	end

always @(*) begin
	dread <= out;
end
endmodule 


	