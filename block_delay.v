module block_delay(dreq_in,dack_in,data_in,
data_out,dreq_out,dack_out);
  parameter data_width = 3;
  input dreq_in;
  input dack_in;
  input [data_width-1:0]data_in;
  output reg [data_width-1:0]data_out;
  output reg dreq_out;
  output reg dack_out;
  always@(*)
  begin 
    #3;
	dreq_out<=dreq_in;
	dack_out<=dack_in;
	data_out<=data_in;
  end
endmodule
