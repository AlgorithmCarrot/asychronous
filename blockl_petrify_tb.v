module block_petrify_tb();
	reg rst_n,req_in,ack_out;
	reg [2:0]data_in;
	wire req_out,ack_out;
	wire [2:0]data_out;
	
	block_petrify block_test(
		.rst_n(rst_n),
		.req_in(req_in),
		.ack_out(ack_out),
		.req_out(req_out),
		.ack_in(ack_in),
		.data_in(data_in),
		.data_out(data_out));
	
	initial begin
		rst_n=0;
		#10;
		rst_n = 1;
		req_in = 1;
		ack_out <= 0;
		#10;
		req_in <= 0;
		ack_out <= 0;
		
		#10;
		req_in <= 1;
		data_in <= 2;
		ack_out <= 0;
		#10;
		req_in <= 0;
		ack_out <= 1;
	end
endmodule
		