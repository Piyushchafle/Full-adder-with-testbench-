'include "enviroment.sv"
program test(intf intff);
  enviroment env;
  
  initial begin
    env = new(intff);
    env.test_run();
  end
  
endprogram 
