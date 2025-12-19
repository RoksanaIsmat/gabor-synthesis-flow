def build_generic(design):
    print("  Building generic logic graph")
    return {
        "nodes": [
            {"type": "AND"},
            {"type": "OR"},
            {"type": "NOT"},
            {"type": "DFF"}
        ]
    }
