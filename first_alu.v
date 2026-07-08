module first_alu(a, b, opcode, result, zero);
    input [3:0] a, b;
    input [2:0] opcode;
    output reg [3:0] result;
    output zero;
    assign zero = (result == 0);
    always @(*) begin
        case(opcode)
            3'b000: result = a + b;
            3'b001: result = a - b;
            3'b010: result = a & b;
            3'b011: result = a | b; 
            3'b100: result = a ^ b;  
            3'b101: result = ~a;      
            default: result = 4'b0;
        endcase
    end
endmodule
