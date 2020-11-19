cdef extern from "leafarealib.cpp":
    pass

cdef extern from "leafarealib.h" namespace "geom":
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

    triangleList triangulate2D(pixelList)

    cdef cppclass point3DList:
        point3DList() except +
        point3D* points
        int L
        void fill(point3D*,int)

    double areaCalc(point3DList,triangleList)
