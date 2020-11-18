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

    cdef cppclass point3D:
        point3D() except +
        point3D(float,float,float) except +
        float x,y,z

    cdef cpp point3DList:
        point3DList() except +
        void fill(point3D* , int)
        point3D* points
	    int L

    triangleList triangulate2D(pixelList)

    double areaCalc(point3DList ,triangleList)