module block_combine(rst_n,ack_in,req_in,
  data_in,data_out,ack_out,req_out);
  parameter data_width=3;
  input ack_in,req_in;
  input rst_n;
  input [data_width-1:0]data_in;
  output [data_width-1:0]data_out;
  output ack_out,req_out;
  wire ack1,req1;
  wire ack2,req2;
  wire [data_width-1:0]data1;
  wire [data_width-1:0]data2;
  
  block b1(
    .rst_n(rst_n),
    .req_in(req_in),
    .ack_in(ack1),
    .data_in(data_in),
    .req_out(req1),
    .ack_out(ack_out),
    .data_out(data1)
    );
    
  block b2(
    .rst_n(rst_n),
    .req_in(req1),
    .ack_in(ack2),
    .data_in(data1),
    .req_out(req2),
    .ack_out(ack1),
    .data_out(data2)
    );
	
  block b3(
  .rst_n(rst_n),
  .req_in(req2),
  .ack_in(ack_in),
  .data_in(data2),
  .req_out(req_out),
  .ack_out(ack2),
  .data_out(data_out)
  );
endmodule