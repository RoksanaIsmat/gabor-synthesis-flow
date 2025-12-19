def initial_mapping(generic, lib_files):
    print("  Mapping to standard cells")
    return {
        "cells": [
            ("AND2_X1", 0.20),
            ("OR2_X1",  0.20),
            ("INV_X1",  0.10),
            ("DFF_X1",  0.30)
        ]
    }
