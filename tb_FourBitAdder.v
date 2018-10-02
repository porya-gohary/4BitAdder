module tb_FoutBitAdder;
	reg [3:0]ta,tb;
	reg tc;
	wire [3:0]tsum;
	wire tco;
	FourBitAdder fba(.A(ta),
			.B(tb),
			.Carry_in(tc),
			.Sum(tsum),
			.Carry_Out(tco));

	initial begin
		$monitor ("=>> time=%0t A=%d B=%d Carry In=%d SUM=%d Carry Out=%d",$time,ta,tb,tc,tsum,tco);
		#0 ta<=4'b0000; tb<=4'b0000; tc=1'b0;
		#10; ta<=4'b0001; tb<=4'b0010; tc=1'b0;
		#10; ta<=4'b0100; tb<=4'b0100; tc=1'b0;
		#10; ta<=4'b1100; tb<=4'b0100; tc=1'b0;
		#10; $stop;
	end
endmodule
