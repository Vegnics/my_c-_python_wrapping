from pygeometry import pypoint
import numpy as np

p = pypoint(0,0,20)
p1_a = np.array([4,5,6,7],dtype=np.float32)
p1 = pypoint(0,0,0)
print(p1.x,p1.y,p1.z)
p1.readpoint(p1_a)
print(p1.x,p1.y,p1.z)