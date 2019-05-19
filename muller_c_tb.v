module muller_c_tb;
  reg a,b;
  reg rst_n;
  wire z;
  initial begin
    rst_n=0;
    #10;
    rst_n=1;
    a = 0;
    b = 0;
    #10;
    a = 0;
    b = 1;
    #10;
    a = 1;
    b = 1;
    #10;
    a = 1;
    b = 0;
  end
  
  muller_c muc(
    .rst_n(rst_n),
    .a(a),
    .b(b),
    .z(z)
    );
endmodule
    