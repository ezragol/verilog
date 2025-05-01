module dff(reset, clock, d, q, qb);
    input reset, clock, d;
    output q, qb;

    reg q;

    assign qb = ~q;

    always @ (negedge clock or posedge reset)
    begin
        if (reset) begin
            q <= 1'b0;
        end 
        else begin
            q <= d;
        end
    end
endmodule