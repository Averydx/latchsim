`timescale 1ns / 1ps

module testbed_sim;

    reg reset;
    reg set;

    wire Q,Qbar;

    testbed main(reset,set,Q,Qbar);

    initial
    begin
        set = 1;
        reset = 1;

        #100 set = 0;

        #100 set = 1;

        #100 reset = 0;

        #100 reset = 1;

        #100 set = 0;
        #100 reset = 0;
         
        #100 set = 1;
        #100 reset = 1;
         
        #100 set = 0;
        #100 reset = 0;
         
        #100 set = 1;
        #100 reset = 0;
         
        #100 set = 0;
        #100 reset = 1;

        #100 $finish;
    end

endmodule
