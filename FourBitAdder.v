module FourBitAdder (A,B,Carry_in,Sum,Carry_Out);
    //declare Input Ports
    input [3:0]A,B;
    input Carry_in;
    //declare Output Ports
    output [3:0]Sum;
    output Carry_Out;
    //wiring
    wire [2:0] co;
        fullAdder fa0(A[0],B[0],Carry_in,Sum[0],co[0]);
        fullAdder fa1(A[1],B[1],co[0],Sum[1],co[1]);
        fullAdder fa2(A[2],B[2],co[1],Sum[2],co[2]);
        fullAdder fa3(A[3],B[3],co[2],Sum[3],Carry_Out);

endmodule
        
