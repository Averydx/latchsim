`timescale 1ns / 1ps
//module NOR_SR_LATCH
//    (
//        input reset,
//        input set,
//        output Q, Qbar
//    );
    
//    wire Q_int,Qn_int; 

//    assign  #1 Q = ~(reset | Qbar); 
//    assign  #1 Qbar = ~(set | Q);  
   
       
//endmodule

module sr_latch(
    input set,
    input reset,
    output Q,
    output Qbar
    );
 
wire Q_int, Qn_int;
 
assign #1 Q_int = ~(set & Qn_int);
assign #1 Qn_int = ~(reset & Q_int);
assign Q = Q_int;
assign Qbar = Qn_int;
 
endmodule

