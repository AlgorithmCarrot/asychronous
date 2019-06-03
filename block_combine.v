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
  wire ack3,req3;
  wire ack4,req4;
  wire [data_width-1:0]data1;
  wire [data_width-1:0]data2;
  wire [data_width-1:0]data3;
  wire [data_width-1:0]data4;

  block b1(
    .rst_n(rst_n),
    .req_in(req_in),
    .ack_in(ack4),
    .data_in(data_in),
    .req_out(req1),
    .ack_out(ack_out),
    .data_out(data1)
    );
  
  block_delay bd1(
    .dreq_in(req1),
    .dreq_out(req2),
    .dack_in(ack3),
    .dack_out(ack4),
    .data_in(data1),
    .data_out(data2)
    );
    
  block b2(
    .rst_n(rst_n),
    .req_in(req2),
    .ack_in(ack2),
    .data_in(data2),
    .req_out(req3),
    .ack_out(ack3),
    .data_out(data3)
    );
    
  block_delay bd2(
    .dreq_in(req3),
    .dreq_out(req4),
    .dack_in(ack1),
    .dack_out(ack2),
    .data_in(data3),
    .data_out(data4)
    );
	
  block b3(
  .rst_n(rst_n),
  .req_in(req4),
  .ack_in(ack_in),
  .data_in(data4),
  .req_out(req_out),
  .ack_out(ack1),
  .data_out(data_out)
  );
endmodule