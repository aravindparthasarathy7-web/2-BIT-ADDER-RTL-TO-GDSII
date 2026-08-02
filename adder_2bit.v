module adder_2bit (
    input clk,
    input [1:0] a,
    input [1:0] b,
    output reg [1:0] sum,
    output reg cout
);

    reg [2:0] temp;

    always @(posedge clk) begin
        temp <= a + b;
        sum  <= temp[1:0];
        cout <= temp[2];
    end

endmodule