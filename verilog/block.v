module block(rst_n,req_in,ack_out,req_out,ack_in,data_in,data_out);
	input rst_n;
	input req_in;
	input ack_out;
	input [2:0]data_in;
	output [2:0]data_out;
	output req_out;
	output ack_in;
	
	reg req_out;
	reg ack_in;
	reg [2:0]data_out;
	
	always@(rst_n or req_in or ack_out)
		if (~rst_n)
			begin
				req_out = 0;
				ack_in = 0;
			end
		else
			begin 
				#1 req_out = (req_in && (req_out || ~ack_out)) || (~ack_out && req_out);
				ack_in = req_out;
				data_out = data_in;
			end
endmodule