module testbench;

  intf intff();          // Interface instance
  test tst (intff);    // Test instance

  full_adder FA (
    .a     (intff.a),
    .b     (intff.b),
    .c     (intff.c),
    .sum   (intff.sum),
    .carry (intff.carry)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
  
  initial begin
    intff.a = 0; intff.b = 0; intff.c = 0; #10;
    intff.a = 0; intff.b = 0; intff.c = 1; #10;
    intff.a = 0; intff.b = 1; intff.c = 0; #10;
    intff.a = 0; intff.b = 1; intff.c = 1; #10;
    intff.a = 1; intff.b = 0; intff.c = 0; #10;
    intff.a = 1; intff.b = 0; intff.c = 1; #10;
    intff.a = 1; intff.b = 1; intff.c = 0; #10;
    intff.a = 1; intff.b = 1; intff.c = 1; #10;

    $finish;
  end

endmodule
   
              
              
