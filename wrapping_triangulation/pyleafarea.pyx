import numpy as np
cimport pyleafarea
cimport numpy as np
from libc.stdlib cimport malloc, free

pxDTYPE = np.int
ctypedef np.int_t pxDTYPE_t
ctypedef np.float32_t p3dDTYPE_t

#cdef class pixel:


def py2Dtriangulate(np.ndarray[pxDTYPE_t,ndim=2] pixelarray):
    cdef int idx = 0
    cdef pixel* pxbuff = <pixel *> malloc(pixelarray.shape[0]*sizeof(pixel))
    cdef pixelList pxlist
    cdef triangleList T
    cdef int Tidx

    if(pixelarray.dtype != np.int):
        raise ValueError("Invalid data type")
    if(pixelarray.shape[1] != 2):
        raise AttributeError("The array must be Nx2 in shape")

    for idx in range(pixelarray.shape[0]):
        pxbuff[idx].i=pixelarray[idx,0]
        pxbuff[idx].j=pixelarray[idx,1]
        pxbuff[idx].idx=idx

    pxlist.fillList(pxbuff,pixelarray.shape[0])
    T = triangulate2D(pxlist)
    Tarray = np.zeros((T.L,3),dtype=np.int)
    for Tidx in range(T.L):
        Tarray[Tidx,:]=[T.triangles[Tidx].p0,T.triangles[Tidx].p1,T.triangles[Tidx].p2]
    free(pxbuff)
    return Tarray

def pyAreaCalc(np.ndarray[pxDTYPE_t,ndim=2] pixelarray,np.ndarray[p3dDTYPE_t,ndim=2] p3darray):
    cdef unsigned int idx = 0
    cdef pixel* pxbuff = <pixel *> malloc(pixelarray.shape[0]*sizeof(pixel))
    cdef pixelList pxlist
    cdef triangleList T
    cdef int Tidx
    cdef point3D* p3dbuff = <point3D *> malloc(p3darray.shape[0]*sizeof(pixel))
    cdef point3DList p3dlist
    cdef double area

    if(pixelarray.dtype != np.int):
        raise ValueError("Invalid data type")
    if(pixelarray.shape[1] != 2):
        raise AttributeError("The array must be Nx2 in shape")
    if(pixelarray.dtype != np.int):
        raise ValueError("Invalid data type")
    if(pixelarray.shape[1] != 2):
        raise AttributeError("The array must be Nx2 in shape")

    for idx in range(pixelarray.shape[0]):
        pxbuff[idx].i=pixelarray[idx,0]
        pxbuff[idx].j=pixelarray[idx,1]
        pxbuff[idx].idx=idx

    pxlist.fillList(pxbuff,pixelarray.shape[0])
    T = triangulate2D(pxlist)

    for idx in range(p3darray.shape[0]):
        p3dbuff[idx].x=p3darray[idx,0]
        p3dbuff[idx].y=p3darray[idx,1]
        p3dbuff[idx].z=p3darray[idx,2]

    p3dlist.fill(p3dbuff,p3darray.shape[0])
    area = areaCalc(p3dlist,T)
    free(pxbuff)
    free(p3dbuff)
    return area
