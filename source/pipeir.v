module pipeir(pc4, ins, wpcir, clock, resetn, dpc4, inst);
	input [31:0] pc4, ins;
	input wpcir, clock, resetn;
	output [31:0] dpc4,inst;
	reg [31:0] dpc4,inst;
	
	always @(posedge clock or negedge resetn)
		begin
		if(resetn==0)
			begin
			dpc4=0;
			inst=0;
			end
		else
			begin
			if(!wpcir)
				begin
				dpc4=pc4;
				inst=ins;
				end
			end
		end

endmodule
