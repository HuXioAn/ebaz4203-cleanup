`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/23 15:34:39
// Design Name: 
// Module Name: led
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


module led_top(
output reg led_r=1'b1,
output reg led_g,
input wire clk
);


reg [31:0]cnt0;
always@(posedge clk)begin
    if(cnt0 == 32'd50_000_000 - 1 )begin
        cnt0 <= 'd0;
        led_r <= ~led_r;
        led_g <= ~led_g;
    end else begin
        cnt0<=cnt0+1'd1;
    end
end
endmodule
