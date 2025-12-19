############################################
# Gabor_synthesis – Educational SDC
# Non-production, conceptual timing constraints
############################################

# ------------------------------------------
# 1. Clock definition
# ------------------------------------------
# Main clock enters the chip through port "tukli"
# Period = 5 ns (200 MHz)

create_clock \
  -name core_clk \
  -period 1.0\
  -waveform {0.0 2.5} \
  [get_ports tukli]


# ------------------------------------------
# 2. Clock uncertainty
# ------------------------------------------
# Simplified uncertainty to model jitter + skew

set_clock_uncertainty 0.2 [get_clocks core_clk]


# ------------------------------------------
# 3. Input delays
# ------------------------------------------
# Inputs arrive relative to the clock
# Assumes external logic drives inputs

set_input_delay 1.0 \
  -clock core_clk \
  [all_inputs]

# Do not constrain the clock itself as data
set_input_delay 0.0 \
  -clock core_clk \
  [get_ports tukli]


# ------------------------------------------
# 4. Output delays
# ------------------------------------------
# Outputs must be stable before next clock edge

set_output_delay 1.0 \
  -clock core_clk \
  [all_outputs]


# ------------------------------------------
# 5. Driving strength and load (simplified)
# ------------------------------------------
# Model weak external drivers and moderate loads

set_driving_cell -lib_cell INV_X1 [all_inputs]
set_load 0.2 [all_outputs]


# ------------------------------------------
# 6. False paths (optional, educational)
# ------------------------------------------
# Uncomment if async reset exists
# set_false_path -from [get_ports reset_n]


############################################
# End of Gabor_synthesis SDC
############################################
