cimport pygeometry

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


