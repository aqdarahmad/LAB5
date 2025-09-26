//Modeling register using classes in SystemVerilog
class Register;
logic [7:0] data;

function new (logic data [7:0] d = 8'd0);
    data = d;
endfunction

function void load(logic [7:0]);
    data =d;
endfunction

function logic[7:0] get_data();
    return data;
endfunction
    
endclass

class shiftregister extends Register;

function new (logic [7:0] d = 8'd0);
super.new(d);
    
endfunction

function void shift();
    data = data >> 1;
endfunction

    
endclass

class shiftleft extends Register;

function new (logic [7:0] d = 8'd0);
    super.new(d);
endfunction

function void shift();
    data = data << 1;
endfunction
    
endclass