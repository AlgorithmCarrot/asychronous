module block_delay_tb;
  parameter data_width = 3;
  reg dreq_in,dack_in;
  wire dreq_out,dack_out;
  reg [data_width-1:0] data_in;
  wire [data_width-1:0] data_out;
  initial begin
    #10;
    dreq_in = 0;
    dack_in = 0;
    data_in = 0;
    #10;
    dreq_in = 1;
    dack_in = 1;
    data_in = 1;
  end
  
  block_delay bd1(
    .dreq_in(dreq_in),
    .dack_in(dack_in),
    .data_in(data_in),
    .dreq_out(dreq_out),
    .dack_out(dack_out),
    .data_out(data_out)
    );
endmodule