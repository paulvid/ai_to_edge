#!/usr/bin/env python3

import os,png,array
import pandas as pd
import time
import sys

from PIL import Image
from PIL import ImageOps
columnNames = list()

for i in range(784):
    pixel = 'pixel'
    pixel += str(i)
    columnNames.append(pixel)


train_data = pd.DataFrame(columns = columnNames)
start_time = time.time()



img_name = sys.argv[1]
img = Image.open(img_name)
img = img.convert('LA')

rawData = img.load()

data = []
for y in range(28):
    for x in range(28):
        data.append(rawData[x,y][0])
print(i)
k = 0

#print data
train_data.loc[i] = [255-data[k] for k in range(784)]
csvFile = sys.argv[2]
print(csvFile)

train_data.to_csv(csvFile,index = False)