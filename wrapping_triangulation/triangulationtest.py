from pytriangulation import py2Dtriangulate
import numpy as np
A=np.array([[4,4,8],[5,6,7]],dtype=np.int)
print(A.shape)
C=py2Dtriangulate(A)
