module halfAdder(A,B,Sum,Carry);

    //declare Input Ports
    input A;
    input B;
    //declare Output Ports
    output Sum;
    output Carry;
     
     //Implement the Sum and Carry
    assign Sum = A ^ B;  //XOR operation
    assign Carry = A & B; //AND operation
    
endmodule