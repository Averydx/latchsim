`timescale 1ns / 1ps
module testbed(
        input reset,
        input set,
        output Q, Qbar
    );
    
    assign  #1 Q = ~(reset | Qbar); 
    assign  #1 Qbar = ~(set | Q); 
   
endmodule

//module testbed(
//        input reset,
//        input set,
//        output Q, Qbar
//    );
    
//    assign  #1 Q = ~(~set & Qbar); 
//    assign  #1 Qbar = ~(~reset & Q); 
    
//    endmodule
    
//module testbed(
//        input reset,
//        input set,
//        input enable,
//        output Q, Qbar
//    );
    
//    wire w1,w2;
    
//    assign #1 w1 = ~(set & enable); 
//    assign #1 w2 = ~(reset & enable); 
    
//    assign  #1 Q = ~(w1 & Qbar); 
//    assign  #1 Qbar = ~(w2 & Q); 
    
//    endmodule
    
//module testbed(
//        input reset,
//        input set,
//        input enable,
//        output Q, Qbar
//    );
    
//    wire w1,w2;
    
//    assign #1 w1 = ~(set & enable); 
//    assign #1 w2 = ~(reset & enable); 
    
//    assign  #1 Q = ~(w1 & Qbar); 
//    assign  #1 Qbar = ~(w2 & Q); 
    
//    endmodule

//module testbed(
//        input d,
//        input enable,
//        output Q, Qbar
//    );
    
//    wire w1,w2;
    
//    assign #1 w1 = ~(d & enable); 
//    assign #1 w2 = ~(~d & enable); 
    
//    assign  #1 Q = ~(w1 & Qbar); 
//    assign  #1 Qbar = ~(w2 & Q); 
    
//    endmodule





