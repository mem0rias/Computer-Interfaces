module ParityCalc (
	input
	Par,
	input [7:0] Din,
	output 
	reg out);
	always @ (*) begin
		
		if(Par) begin //Par = 1, Gives Even 1s Parity
			out <= ^Din;
		end else begin // Par = 0, Gives Odd 1s Parity
			out <= !(^Din);
		end
		 
	end
endmodule 