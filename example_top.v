module example_top (
    input  wire tukli,     // main clock
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y,
    output wire z
);

    // Simple combinational logic
    wire n1;
    wire n2;

    assign n1 = a & b;
    assign n2 = n1 | c;

    // Registered output
    reg q;

    always @(posedge tukli) begin
        q <= n2;
    end

    assign y = q;
    assign z = ~q;

endmodule
