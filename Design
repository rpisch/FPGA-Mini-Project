`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 09:32:34 PM
// Design Name: 
// Module Name: PWM_module
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


module PWM_module(
    //inputs
    input clock,
    input SW0,
    input SW1,
    input SW2,
    input SW3,
    input SW4,
    input SW5,
    input SW6,
    input SW7,
    input reset, 
    input cin, 
    input cin2,     // comparator inputs
   
    //outputs
    output PWM1,
    output PWM2,   
    output a, b, c, d, e, f, g, //the individual LED output for the seven segment
    output [3:0] an   // the 4 bit enable signal

    
    );
           
        //registers
       
        localparam N = 20;        
        reg [N-1:0] counter; //the 20 bit counter which allows us to multiplex and run clock frequency at 95Hz
        reg [19:0] width;    // width from (0 - 2^20) - 1 or (0 - 1048575)
        
        reg temp_PWM1;
        reg temp_PWM2;
        reg [6:0] temp_sseg;
        reg [3:0] temp_an;
        reg [6:0]sseg; //the 7 bit register to hold the data to output
        

        
       
        
        //initial values
        initial begin
            counter = 0;
            width = 0;
            temp_PWM1 = 0;
            temp_PWM2 = 0;

     
        end
        
        //clock
        always@(posedge clock) begin
         if(reset)
              counter <= 0;
         else
              counter <= counter + 1;

                   
            
         if (SW0 == 0) begin              
                temp_PWM2 <= 0;                                                                       
            if (counter < width)
                temp_PWM1 <=1;
            else
                temp_PWM1 <=0;
                
          end
            
         if (SW0 == 1) begin              
                temp_PWM1 <=0;                                                                      
            if (counter < width)
                temp_PWM2 <=1;
            else
                temp_PWM2 <=0;
                            
          end
                
        end
        
        //PWM widhths
        always @ (*) begin
            
            if (SW1 == 1) begin               
                    width = 20'd262143;          // 25% duty cycle            
                end
            
            if (SW2 == 1) begin               
                    width = 20'd393215;          // 37.5% duty cycle          
                end
                
            if (SW3 == 1) begin               
                    width = 20'd524076;          // 50% duty cycle                     
                end
                
            if (SW4 == 1) begin               
                    width = 20'd655359;          // 62.5% duty cycle                    
                end

            if (SW5 == 1) begin               
                    width = 20'd786431;          // 75% duty cycle                     
                end
            
            if (SW6 == 1) begin               
                    width = 20'd917503;          // 87.5% duty cycle                     
                end
                
            if (SW7 == 1) begin               
                    width = 20'd1048575;         // 100% duty cycle                     
                    end                  
                             
            if ((SW1 == 0 && SW2 == 0 && SW3 == 0 && SW4 == 0 && SW5 == 0 && SW6 == 0 && SW7 == 0)) begin  
                width = 20'd0;                  // 0% duty cycle 
            end                           
         end
            
        //seven segment display code
        always @ (*) begin            
            
            case(counter[N-1:N-2])               
               2'b00 :  //When the 2 MSB's are 00 enable the fourth display
                begin                 
                 temp_an = 4'b1110;
                 if (SW1 == 1 || SW2 == 1 || SW3 == 1 || SW4 == 1 || SW5 == 1 || SW6 == 1 || SW7 == 1) begin 
                     case(SW0)                      
                         1'd0 : temp_sseg = 7'b0001110; //to display forward "F"
                         1'd1 : temp_sseg = 7'b0000011; //to display backward "B"
                      
                     default : temp_sseg = 7'b0111111; //dash
                       endcase
                end 
                else begin
                    temp_sseg = 7'b0111111;
                end
                end
                
               
               2'b01:  //When the 2 MSB's are 01 enable the third display
                begin
                 temp_an = 4'b1101;
                 temp_sseg = 7'b0001000; //displays A for apmpres
                end
               
               2'b10:  //When the 2 MSB's are 10 enable the second display
                begin
                 temp_an = 4'b1011;
                 temp_sseg = 7'b1111001;   //displays a 1 as the current threshold
                end
                
               2'b11:  //When the 2 MSB's are 11 enable the first display
                begin
                 temp_an = 4'b0111;
                 if(cin || cin2) begin
                    temp_sseg = 7'b0010000;  //displays a g for greater than 1A current 
                                     
                 end
                 else begin
                    temp_sseg = 7'b1000001;  // displays a u for under 1A current
                    
                 end
                end
              endcase
         end
         
         
  
        //assigning final variables            
       

        assign PWM1 = temp_PWM1;
        assign PWM2 = temp_PWM2;
        assign {g, f, e, d, c, b, a} = temp_sseg; 
        assign an = temp_an;

endmodule
