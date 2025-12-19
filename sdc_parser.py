import re

def read_sdc(sdc_path):
    clock_period =2.0 #change in .sdc

    with open(sdc_path, "r", encoding="utf-8") as f:
        text = f.read()

    match = re.search(r"-period\s+([0-9]*\.?[0-9]+)", text)
    if match:
        clock_period = float(match.group(1))

    print(f"[SDC] Clock period = {clock_period} ns")
    return clock_period
