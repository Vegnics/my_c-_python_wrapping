cdef extern from "geometry.cpp":
    pass

cdef extern from "geometry.hpp" namespace "geom":
    cdef cppclass point:
        point() except +
        point(float,float,float) except +
        float x,y,z
        float distance(point)