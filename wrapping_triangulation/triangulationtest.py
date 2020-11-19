from pytriangulation import py2Dtriangulate,pyAreaCalc
import numpy as np
ptnum = 200

points=np.zeros((ptnum**2,2),dtype=np.int)
points3D=np.zeros((ptnum**2,3),dtype=np.float32)

for i in range(ptnum):
    for j in range(ptnum):
        points[j+ptnum*i,:]=[i,j]
        points3D[j+ptnum*i,:]=[i,j,0]

area = pyAreaCalc(points,points3D)
print("The area is {}".format(area))

