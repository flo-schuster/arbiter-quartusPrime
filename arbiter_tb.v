module arbiter_tb;
reg req0;
reg req1;
reg clk;
reg reset;
wire gnt0;
wire gnt1;

initial begin
	$monitor ("req0=%b, req1=%b, gnt0=%b, gnt1=%b", req0, req1, gnt0, gnt1);
	
	clk = 0;
	reset = 0;
	req0 = 0;
	req1 = 0;
	
	#5 reset = 1;
	#15 reset = 0;
	#10 req0 = 1;
	#10 req0 = 0;
	#10 req1 = 1;
	#10 req1 = 0;
	#10 {req0, req1} = 2'b11;
	#10 {req0, req1} = 2'b00;
	#10 req0 = 1;
	#10 req0 = 0;
	#10 reset = 1;
	#10 reset = 0;
	#10 $finish;
end

always begin
	#5 clk = !clk;
end

arbiter U0 (
	.clk (clk),
	.reset (reset),
	.req_0 (req0),
	.req_1 (req1),
	.gnt_0 (gnt0),
	.gnt_1 (gnt1)
);

endmodule