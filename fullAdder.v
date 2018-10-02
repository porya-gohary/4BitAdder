module fullAdder(A,B,C,Sum,Carry);
    //declare Input Ports
    input A;
    input B;
    input C;
    //declare Output Ports
    output Sum;
    output Carry;
     //Internal variables
    wire ha1_sum;
    wire ha2_sum;
    wire ha1_carry;
    wire ha2_carry;
    wire Sum;
    wire Carry;

     //Instantiate the halfAdder1
    halfAdder  ha1(
        .A(A),
        .B(B),
        .Sum(ha1_sum),
        .Carry(ha1_carry)
    );
    
    //Instantiate the halfAdder2
    halfAdder  ha2(
        .A(ha1_sum),
        .B(C),
        .Sum(ha2_sum),
        .Carry(ha2_carry)
    );

    assign Sum = ha2_sum;  
    assign Carry = ha1_carry | ha2_carry;
    
endmodule
