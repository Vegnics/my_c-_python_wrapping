from pytriangulation import py2Dtriangulate
import numpy as np
points=np.zeros((100,2),dtype=np.int)

for i in range(10):
    for j in range(10):
        points[j+10*i,:]=[i,j]

print(points.shape)
C=py2Dtriangulate(points)
print(C)

