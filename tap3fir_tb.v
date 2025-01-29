`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 16:26:19
// Design Name: 
// Module Name: tap3fir_tb
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


module tap3fir_tb();
    reg clk;
    reg [3:0] x;
    wire [8:0] y;
    tap3fir dup (x,y,clk);
    initial begin
        clk=1'b0;
        x=4'b0001;
        #8 x=4'b0010;//input after 8ns
        #8 x=4'b0101;//input after 6ns 
        #8 x=4'b0011;//input after sns
    end
    always #2 clk=~clk;
    initial begin
        #32 $finish;
    end
endmodule
