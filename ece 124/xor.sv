module xor_gate(a, b, y);
    input a, b;
    output y;

    wire w1, w2;

    and (w1, a, ~b);
    and (w2, ~a, b);
    or (y, w1, w2);
endmodule