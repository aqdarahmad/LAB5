module tb;
    initial begin
        // Create objects
        ShiftRightRegister sr1 = new(8'b10101010);
        ShiftLeftRegister  sl1 = new(8'b00001111);
        ShiftRightRegister sr2 = new(8'b11110000);

        $display("sr1 data = %b", sr1.get_data());
        $display("sl1 data = %b", sl1.get_data());
        $display("sr2 data = %b", sr2.get_data());

        // Call static method from base class
        $display("Total objects created (via Register) = %0d", Register::get_count());

        // Optional: Call from derived classes
        $display("Total objects (via ShiftLeftRegister) = %0d", ShiftLeftRegister::get_count());
        $display("Total objects (via ShiftRightRegister) = %0d", ShiftRightRegister::get_count());
    end
endmodule