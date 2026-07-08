module alu_tb;
    reg [3:0] a, b;
    reg [2:0] opcode;
    wire [3:0] result;
    wire zero;
    first_alu uut(.a(a), .b(b), .opcode(opcode), 
                  .result(result), .zero(zero));
    
    initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
    $monitor($time, " a=%b b=%b op=%b result=%b zero=%b", 
              a, b, opcode, result, zero);
    a = 4'b0011; b = 4'b0001; opcode = 3'b000; #10;
    a = 4'b0101; b = 4'b0010; opcode = 3'b001; #10;
    a = 4'b1100; b = 4'b1010; opcode = 3'b010; #10;
    a = 4'b1100; b = 4'b1010; opcode = 3'b011; #10;
    a = 4'b1100; b = 4'b1010; opcode = 3'b100; #10;
    a = 4'b1111; b = 4'b0000; opcode = 3'b101; #10;
    a = 4'b0000; b = 4'b0000; opcode = 3'b000; #10;
    $finish;
end
endmodule