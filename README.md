SystemVerilog Register Classes with Shift Operations
Overview

This project demonstrates Object-Oriented Programming (OOP) concepts in SystemVerilog by modeling registers with:

Base Register class with data storage and basic operations.

Static properties and methods to track the number of objects.

Derived classes ShiftRightRegister and ShiftLeftRegister for shift operations.

Testbench to demonstrate object creation, method calls, and static method usage.

Features
1. Base Class: Register

Stores an 8-bit data value.

Methods:

load(logic [7:0] d) – loads data into the register.

get_data() – returns the current data.

Static property count tracks total objects created.

Static method get_count() returns total objects.

2. Derived Classes

ShiftRightRegister

Inherits from Register.

shift() method shifts data right by one bit.

ShiftLeftRegister

Inherits from Register.

shift() method shifts data left by one bit
