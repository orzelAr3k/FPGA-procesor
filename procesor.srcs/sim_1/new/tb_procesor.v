`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2022 18:23:42
// Design Name: 
// Module Name: tb_procesor
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


module tb_processor();

reg clk = 1'b0;
reg [15:0]cnt = 8'b0;
//reg [7:0]gpi_;
//wire [7:0]gpo_;

initial
begin
    while(1)
    begin
        #1 clk = 1'b0;
        #1 clk = 1'b1;
        //cnt = cnt + 1;
    end
end

//always @(posedge clk)
//begin
//    case(cnt)
//        200:
//        begin
//            gpi_ <= 8'b00000001;
//        end
//        400:
//        begin
//            gpi_ = 8'b00000010;
//        end
//    endcase
//end

procesor procesor_(
    .clk(clk)
//    .gpi(gpi_),
//    .gpo(gpo_)
);

endmodule

