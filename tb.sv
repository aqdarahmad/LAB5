module tb ;
initial begin
      ShiftRightRegister sr = new(8'b10101010);
        ShiftLeftRegister  sl = new(8'b00001111);

        $display("Initial SR data = %b", sr.get_data());
        sr.shift();
        $display("After Shift Right = %b", sr.get_data());

        $display("Initial SL data = %b", sl.get_data());
        sl.shift();
        $display("After Shift Left = %b", sl.get_data());

        sr.load(8'b11110000);
        $display("After Load new data into SR = %b", sr.get_data());
end

    
endmodule