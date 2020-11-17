import numpy as np
cimport pytriangulation
cimport numpy as np


pxDTYPE = np.int
ctypedef np.int_t pxDTYPE_t

cdef class pixel:


def py2Dtriangulate(np.ndarray[pxDTYPE_t,ndim=2] pixelarray):
    cdef int idx = 0
    cdef int[10]* pxbuff = new int[10]()
    cdef pixel px
    cdef int pxarrayL = pixelarray.shape[0]

    if(pixelarray.dtype != np.int):
        raise ValueError("Invalid data type")
    if(pixelarray.shape[1] != 2):
        raise AttributeError("The array must be Nx2 in shape")

    #for(idx in range(pixelarray.shape[0])):
    #    pxbuff[idx].i=pixelarray[idx,0]
    #    pxbuff[idx].j=pixelarray[idx,1]
    #    pxbuff[idx].idx=idx
    return 0