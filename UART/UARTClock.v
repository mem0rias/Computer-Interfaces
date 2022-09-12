module UARTClock (
	input
	Rst,
	Clk,
	input [2:0] Select,
	input [31:0] Count,
	output 
	reg out,
	output reg [8:0] tiempo);
	
	integer MAXCount = 8'd49999999;
	integer Time = 6'd123456;
	integer count = 1'd0;
	
	
	always @ (Select, Time) begin
		case (Select)
			3'b000 : Time = 300;
			3'b001 : Time = 20833;
			3'b010 : Time = 10416;
			3'b011 : Time = 5208;
			3'b100 : Time = 2604;
			3'b101 : Time = 200;//1302;
			3'b110 : Time = 868;
			3'b111 : Time = 100;
			default : Time = 2604;
		endcase
		tiempo <= Time;
	end
	always @ (posedge Clk) begin
		if(Rst) begin
			count <= 0;
		end
		else begin 
			count <= count + 1'd1;
			if(count >= Time) begin
				count <= 0;
				out <= 1;
			end else begin
				out <= 0;
			end
		end
		 
	end
endmodule 