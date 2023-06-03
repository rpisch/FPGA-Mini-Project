`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 11:04:58 PM
// Design Name: 
// Module Name: PWM_TestBench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PWM_TestBench(
    );
    
    reg clock;
    reg SW0;
    reg SW1;
    reg SW2;
    reg SW3;
    reg SW4;
    reg SW5;
    reg SW6;
    reg SW7;
    reg reset;
//    reg SWE;
   
    
//    reg enable;
//    wire oute1;
//    wire oute2;    
    wire PWM1;
    wire PWM2;
//    wire a, b, c, d, e, f, g;
//    wire an;
//    wire enable1;
//    wire enable2;
//    wire PWM3;
//    wire PWM4;

    
    
    PWM_module UUT(clock, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, reset, PWM1, PWM2, );
    
    initial begin
        clock = 0;
        reset = 0;       
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #10
        
        reset = 0;        
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300

        reset = 0;               
        SW0 = 0;
        SW1 = 1;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300        
        
        reset = 0;               
        SW0 = 0;
        SW1 = 0;
        SW2 = 1;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 1;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 1;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 1;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 1;
        SW7 = 0;
        #300        
        
        reset = 0; 
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 1; 
        #300
                             
        reset = 0;        
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300

        reset = 0;               
        SW0 = 1;
        SW1 = 1;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300        
        
        reset = 0;               
        SW0 = 1;
        SW1 = 0;
        SW2 = 1;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 1;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 1;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 1;
        SW6 = 0;
        SW7 = 0;
        #300
        
        reset = 0;               
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 1;
        SW7 = 0;
        #300        
        
        reset = 0; 
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 1; 
        #300
        
        reset = 1; 
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;
        #10
        
        reset = 1; 
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;  
        #10
        
        reset = 0; 
        SW0 = 0;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;  
        #10 
        
        reset = 0; 
        SW0 = 1;
        SW1 = 0;
        SW2 = 0;
        SW3 = 0;
        SW4 = 0;
        SW5 = 0;
        SW6 = 0;
        SW7 = 0;  
                                  
               
    end
    
    always begin
        #5 clock = ~clock;
    end

endmodule
