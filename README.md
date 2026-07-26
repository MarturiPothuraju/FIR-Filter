# FIR-Filter
* ## Source Code
```
module tap3fir(x,y,clk);
    input wire [3:0] x;
    input wire clk;
    output reg [8:0] y;
    reg [3:0] b0,b1,b2;
    reg [8:0] m1,m2,m3;
    initial begin
    //coiffents of FIR filter
        b0=4'b0010;
        b1=4'b0011;
        b2=4'b0101;
    end
    always @ (posedge clk)
    begin
        m1=x;
        m2=x;
        m3<=m2;
    end
    initial begin
        assign y=(m1*b0)+(m2*b1)+(m3*b2);
    end
endmodule
```
|![Screenshot 2025-01-29 123045.png](./Screenshot%202025-01-29%20123045.png)|
|:-----:|
|Simulated Waveforms|

<!-- START_CODE -->
<!-- END_CODE -->

