def elaborate(rtl):
    print("  Elaborating top module")
    return {
        "ports": ["tukli", "a", "b", "c", "y", "z"],
        "registers": ["q"],
        "logic": ["AND", "OR", "NOT"]
    }
