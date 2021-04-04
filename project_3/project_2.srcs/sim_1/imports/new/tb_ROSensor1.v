//`timescale 10ns / 10ps
`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2021 01:45:01
// Design Name: 
// Module Name: tb_ROSensor1
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


module tb_RoS1;
    
    reg En;
    wire outclk;
 

    RoS1 DUT (.En(En), .outclk(outclk));
    
    initial begin
            $monitor("@:%t outclk:%0b", $time, outclk);
            En = 1;
            #1;
            
            En = 0; //Reset
            #3;
            
            En = 1;  //RO is enabled
            
            #5000;
            $finish();
            
            En = 0;
            #2;
            
                        
            /*
            En = 1;
            #100;
            
            En = 0;
            #30;
            */
    end

endmodule
