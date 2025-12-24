`timescale 1ns/1ns

module johnson_counter_tb;
 reg rst, clk;
 wire [3:0] q;

 johnson_counter uut(rst,clk,q);

 always #5 clk=~clk;
 initial begin 
 $monitor("time=%d \t rst=%b \t clk=%b \t q=%b",$time,rst, clk ,q);
 clk=0;
 rst=1;

 #10 rst=0;
 #100 ;
 $finish;
end 
endmodule