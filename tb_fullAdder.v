module tb_fullAdder;

    // Inputs
    reg Data_in_A;
    reg Data_in_B;
    reg Data_in_C;

    // Outputs
    wire Data_out_Sum;
    wire Data_out_Carry;

   
    fullAdder uut (
        .A(Data_in_A), 
        .B(Data_in_B), 
        .C(Data_in_C), 
        .Sum(Data_out_Sum), 
        .Carry(Data_out_Carry)
    );

    initial begin
        $monitor ("=>> time=%0t A=%d B=%d Carry In=%d SUM=%d Carry Out=%d",$time,Data_in_A,Data_in_B,Data_in_C,Data_out_Sum,Data_out_Carry);
        #0  Data_in_A = 1'b0;  Data_in_B = 1'b0;  Data_in_C = 1'b0;
        #10;  Data_in_A = 1'b1;  Data_in_B = 1'b0;  Data_in_C = 1'b0;
        #10;  Data_in_A = 1'b0;  Data_in_B = 1'b1;  Data_in_C = 1'b0;
        #10;  Data_in_A = 1'b0;  Data_in_B = 1'b0;  Data_in_C = 1'b1;
        #10;  Data_in_A = 1'b1;  Data_in_B = 1'b1;  Data_in_C = 1'b0;
        #10;  Data_in_A = 1'b1;  Data_in_B = 1'b0;  Data_in_C = 1'b1;
        #10;  Data_in_A = 1'b0;  Data_in_B = 1'b1;  Data_in_C = 1'b1;
        #10;  Data_in_A = 1'b1;  Data_in_B = 1'b1;  Data_in_C = 1'b1;
      
    end
    endmodule
