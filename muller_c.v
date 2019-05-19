module muller_c(a,b,z,rst_n);
    input a;
    input b;
    input rst_n;
    output reg z;
   
    always@(*)
    begin
      if(!rst_n)
        z <= 0;
      else
        if(a^b)
          z <= z;
        else
          z <= a;

    end
endmodule
        
    