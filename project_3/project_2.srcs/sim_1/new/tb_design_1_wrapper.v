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


module tb_design_1_wrapper;
    
    reg En;
    wire outclk;
 

    design_1_wrapper DUT    (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
    
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
