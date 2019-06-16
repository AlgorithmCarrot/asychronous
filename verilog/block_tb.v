module block_tb;
reg rst_n;
reg req_in;
reg ack_out;
reg [2:0]data_in;
wire [2:0]data_out;
wire req_out;
wire ack_in;

block tb(
	.rst_n(rst_n),
	.req_in(req_in),
	.ack_out(ack_out),
	.req_out(req_out),
	.ack_in(ack_in),
	.data_in(data_in),
	.data_out(data_out)
	);

initial 
begin
	rst_n=0;
	#1 rst_n=1;
end

initial
begin
	req_in = 0;
	forever #5 req_in = ~req_in;
end

initial
begin
	data_in = 0;
	forever #5 data_in = data_in + 1;
end
	
initial
begin
	ack_out=0;
	#7 ack_out=1;
	forever #5 ack_out=~ack_out;
end

initial
begin
	#400 $finish;
end
endmodule