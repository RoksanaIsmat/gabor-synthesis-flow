def analyze_rtl(rtl_path):
    with open(rtl_path) as f:
        code = f.read()

    print(f"  Parsed RTL file: {rtl_path}")
    return {"rtl_code": code}
