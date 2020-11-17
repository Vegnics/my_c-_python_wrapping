cdef extern from "mclasses_v01.cpp":
    pass

cdef extern from "mclasses.h" namespace "geom":
    cdef cppclass pixel:
        pixel() except +
        pixel(int,int,int) except +
        int i,j,idx

    cdef cppclass pixelList:
        pixelList() except +
        int L,rL
        pixel* pixels
        void fillList(pixel*,int)

    cdef cppclass triangle:
        triangle() except +
        triangle(int,int,int) except +
        int p0,p1,p2

    cdef cppclass triangleList:
        triangleList() except +
        int L
        triangle* triangles

    triangleList triangulate2D(pixelList)