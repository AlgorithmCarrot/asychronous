module cp_latch(c,p,data_in,data_out,rst_n);
  parameter data_width=3;
  input c;
  input p;
  input [data_width-1:0]data_in;
  input rst_n;
  output reg [data_width-1:0]data_out;
  
  always@(*)
  begin
    if(!rst_n)
      data_out <= 3'b000;
    else
      if(c^p)
        data_out <= data_out;
      else
        data_out <= data_in;
  end
endmodule
  