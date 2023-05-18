`include "uvm_macros.svh"

import uvm_pkg::*;

module tb;
  class my_test extends uvm_test;
    `uvm_component_utils(my_test)
    
    function new (string name, uvm_component parent);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
    endfunction: build_phase

    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
    
      `uvm_info(get_name(), "Hello UVM!", UVM_LOW)
      
      phase.drop_objection(this);
    endtask: run_phase

  endclass
  
  initial begin
    run_test("my_test");
  end
  
endmodule