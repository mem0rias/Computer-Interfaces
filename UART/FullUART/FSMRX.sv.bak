module FSMRX (
	input Din, Clk, Rst, Count,
	output EnableP
);

localparam [1:0]
	Idle = 2'b00,
	Read = 2'b01,
	Display = 2'b10;

reg[1:0] CurrentState, NextState;

always @(posedge Clk) begin
	if(Rst) begin
		CurrentState <= Idle;
	end else begin
		CurrentState <= NextState;
	end
end

always @(*) begin
	NextState <= CurrentState;
	case(CurrentState)
		Idle:
			if(Din == 0) begin
				NextState <= Read;
			end
		Read:
			if(Count == 1) begin
				NextState <= Display;
			end
		Display:
			NextState <= Idle;
	endcase
end

always @(*) begin
	case(CurrentState) 
		Idle:
			EnableP = 0;
		Read:
			EnableP = 1;
		Display:
			EnableP = 0;
	endcase
end

endmodule 
		


	