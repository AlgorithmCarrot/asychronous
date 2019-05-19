module cp_latch_tb;
  parameter data_width = 3;
  reg c,p;
  reg rst_n;
  reg [data_width-1:0]data_in;
  wire [data_width-1:0]data_out;
  initial begin
    rst_n=0;
    #10;
    rst_n=1;
    c = 0;
    p = 0;
    data_in = 1;
    #10;
    c = 0;
    p = 1;
    data_in = 0;
    #10;
    c = 1;
    p = 0;
    data_in = 1;
    #10;
    c = 1;
    p = 1;
    data_in = 0;
    #10;
    data_in = 1;
  end
  
  cp_latch uut(
    .rst_n(rst_n),
    .c(c),
    .p(p),
    .data_in(data_in),
    .data_out(data_out)
    );
endmodule