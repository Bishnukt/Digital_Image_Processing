import cv2
import numpy as np
import os

nm="cameraman.tif"
img=cv2.imread(nm,0)
cv2.imshow("window",img)
os.chmod("test.py",0o744)