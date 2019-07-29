#!/usr/bin/env python3

import onnx as ox
import numpy
import pandas as pd
import shutil
import sys

import numpy as np
import mxnet as mx
import mxnet.contrib.onnx as onnx_mxnet

test=pd.read_csv(sys.argv[1])

sym, arg, aux = onnx_mxnet.import_model(sys.argv[2])

number = 0

print(number)