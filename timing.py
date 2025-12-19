def timing_analysis(netlist, constraints):
    clock_period = constraints["clock_period"]
    total_delay = sum(delay for _, delay in netlist["cells"])

    slack = clock_period - total_delay

    print("\n--- Compile Timing Report ---")
    print(f"Clock period     : {clock_period:.2f} ns")
    print(f"Data path delay  : {total_delay:.2f} ns")
    print(f"Setup slack      : {slack:.2f} ns")

    if slack < 0:
        print("STATUS: SETUP VIOLATION")
    else:
        print("STATUS: TIMING MET")
