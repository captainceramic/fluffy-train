#!/usr/bin/env python

import pandas as pd
import numpy as np

weight_file = "data/all_weights.txt"

weights = pd.read_csv(weight_file,
                      dtype=np.float16,
                      header=None,
                      delim_whitespace=True)

print("Loaded weights, shape: {}".format(weights.values.shape))

np.save("data/f16_glove_weights.npy", weights.values)

