module xor_test;
    reg a, b;
    wire y;

    xor_gate XOR(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        a = 0; b = 0;

        #2 b = 1;

        #2 a = 1; b = 0;

        #2 b = 1;

        #2 a = 0; b = 0;
    end
endmodule

module mux_test;
    reg a, b, sel;
    wire y;

    two_x_mux MUX(.a(a), .b(b), .sel(sel));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        
    end
endmodule