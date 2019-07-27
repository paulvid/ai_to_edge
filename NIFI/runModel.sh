#!/usr/bin/env python3

import onnxruntime as rt
import onnx as ox
import numpy
import pandas as pd
import shutil
import sys

test=pd.read_csv(sys.argv[1])

X_test = test.values.astype('float32')
X_test = X_test.reshape(X_test.shape[0], 28, 28,1)

session = rt.InferenceSession(sys.argv[2])

input_name = session.get_inputs()[0].name
label_name = session.get_outputs()[0].name
prediction = session.run([label_name], {input_name: X_test.astype(numpy.float32)})[0]

number = 0

for i in range(0, 9):
    if (prediction[0][i] == 1.0):
        number = i

print(number)