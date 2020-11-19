from pytriangulation import py2Dtriangulate,pyAreaCalc
import numpy as np
points=np.zeros((100,2),dtype=np.int)
points3D=np.zeros((100,3),dtype=np.float32)

for i in range(10):
    for j in range(10):
        points[j+10*i,:]=[i,j]
        points3D[j+10*i,:]=[i,j,0]

print(points.shape)
area = pyAreaCalc(points,points3D)
print("The area is {}".format(area))

