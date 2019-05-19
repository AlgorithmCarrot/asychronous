module block(rst_n,req_in,ack_in,data_in,
  data_out,ack_out,req_out);
  parameter data_width = 3;
  input rst_n;
  input req_in;
  input ack_in;
  input [data_width-1:0]data_in;
  output [data_width-1:0]data_out;
  output ack_out;
  output req_out;
  wire z;
  
  muller_c c(
    .a(~ack_in),
    .b(req_in),
    .z(z),
    .rst_n(rst_n)
    );
  assign req_out = z;
  assign ack_out = z;
  
  cp_latch cp(
    .c(z),
    .p(ack_in),
    .data_in(data_in),
    .data_out(data_out),
    .rst_n(rst_n)
    );
endmodule
    