module block_combine_6(ack_in,req_in,rst_n,
  data_in,data_out,ack_out,req_out);
  parameter data_width=3;
  input ack_in,req_in;
  input rst_n;
  input [data_width-1:0]data_in;
  output [data_width-1:0]data_out;
  output ack_out,req_out;
  wire ack;
  wire req;
  wire [data_width-1:0]data;
  
  block_combine bc1(
    .rst_n(rst_n),
    .req_in(req_in),
    .ack_in(ack),
    .data_in(data_in),
    .req_out(req),
    .ack_out(ack_out),
    .data_out(data)
    );
    
  block_combine bc2(
    .rst_n(rst_n),
    .req_in(req),
    .ack_in(ack_in),
    .data_in(data),
    .req_out(req_out),
    .ack_out(ack),
    .data_out(data_out)
    );
endmodule