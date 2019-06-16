module handshake_tb;
reg rst_n;
reg req_in;
reg ack_out;
wire req_out;
wire ack_in;
handshake hs(rst_n,req_in,ack_out,req_out,ack_in);
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
	ack_out=0;
	#7 ack_out=1;
	forever #5 ack_out=~ack_out;
end

initial
begin
	#400 $finish;
end
endmodule