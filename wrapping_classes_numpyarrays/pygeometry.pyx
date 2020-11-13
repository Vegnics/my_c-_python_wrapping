import numpy as np
cimport pygeometry
cimport numpy as np


DTYPE = np.float32 #np.NPY_FLOAT32
ctypedef np.float32_t DTYPE_t #np.NPY_FLOAT32_t DTYPE_t

cdef class pypoint:
    cdef point pointobj
    def __cinit__(self,float _x, float _y, float _z):
        self.pointobj = point(_x,_y,_z)

    def distance(self,opoint): #a new point c++ object is needed in order to execute the distance method
        cdef point _point
        _point.x=opoint.x
        _point.y=opoint.y
        _point.z=opoint.z
        #_point=opoint.pointobj
        return self.pointobj.distance(_point)

    def readpoint(self,np.ndarray[DTYPE_t,ndim=1] point3d):
        if(point3d.size!=3):
            raise ValueError("The vector must contain exactly 3 elements")
        self.pointobj.x=point3d[0]
        self.pointobj.y=point3d[1]
        self.pointobj.z=point3d[2]
        return

    @property
    def x(self):
        return self.pointobj.x

    @x.setter
    def x(self,_x):
        self.pointobj.x=_x

    @property
    def y(self):
        return self.pointobj.y

    @y.setter
    def y(self,_y):
        self.pointobj.y=_y

    @property
    def z(self):
        return self.pointobj.z

    @z.setter
    def z(self,_z):
        self.pointobj.z=_z


