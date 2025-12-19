# gabor-synthesis-flow
Educational digital synthesis flow tool inspired by academic teaching, demonstrating analyze, elaborate, generic (GTECH) logic, technology mapping, and timing analysis using Verilog, Liberty, and SDC constraints.
This tool was developed using Python with the assistance of AI-based coding tools.
The overall architecture, synthesis flow design, scope definition, and technical decisions were directed and validated by the author.
The project reflects the author’s understanding of digital synthesis flows rather than a production-grade synthesis engine.

 
## Synthesis Flow Overview

This repository implements an **educational digital synthesis flow tool** called **Gabor Synthesis Flow**.

The tool demonstrates how RTL is transformed into a technology-mapped netlist and how timing is analyzed using simple constraints. It is not a production synthesizer, but rather a **clear, step-by-step demonstration of major synthesis stages**.

The synthesis flow implemented in this project includes:

1. **Analyze RTL**  
   Reads the input Verilog RTL file to confirm syntax and load code.

2. **Elaborate Design**  
   Builds an internal structural representation assuming a single-clock, simple logic design.

3. **Read Constraints (SDC)**  
   Parses a user-provided `.sdc` file to extract timing intent (e.g., clock period).

4. **Build Generic Logic (GTECH-like)**  
   Constructs a basic intermediate generic logic graph representing combinational and sequential operators.

5. **Technology Mapping**  
   Maps generic logic to standard cells defined in `.lib` files (Liberty format).

6. **Compile-Time Timing Analysis**  
   Produces a simple timing report using cell delays and SDC constraints.

7. **Netlist Output**  
   Generates a gate-level netlist (Verilog) and a generic netlist for educational inspection.

Each stage prints clear status messages to console to illustrate the flow as it runs.

## How to Run

1. Put all files (`gabor_synthesis.py`, `.sdc`, `.lib`, `.v`) in the same folder.
2. I used pyCharm to run the code.
3. The tool also demonstrates the output of the synthesis like timing report, number of gates used, and creates a gtech level and a gate level netlsit. An image is attached
   
   <img width="926" height="453" alt="image" src="https://github.com/user-attachments/assets/03859755-dfd3-44d6-a36a-81a679f8067c" />


