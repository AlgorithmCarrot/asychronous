module block_petrify(rst_n,req_in,ack_out,req_out,ack_in,data_in,data_out);

	input rst_n,req_in,ack_out;
	input [2:0]data_in;
	output req_out,ack_in;
	output [2:0]data_out;
	reg req_out,ack_in,lt;
	reg [2:0]data_out;
	always@(*)
	begin
		if(rst_n==0)
			begin
			    #2; 
				req_out <= 0;
				ack_in <= 0;
				lt <= 0;
		    end
		else 
			begin
				req_out <= (req_in && ~ack_out) || (req_out && (req_in || ~ack_out));
				#2 ack_in <= req_out;
				lt <= req_out;
			end
	end
	
	always@(negedge rst_n or posedge lt)
	begin
		if(rst_n==0)
			data_out <= 0;
		else
			data_out <= data_in;
	end
endmodule