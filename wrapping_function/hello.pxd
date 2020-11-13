cdef extern from "greeting.cpp":
    pass

cdef extern from "greeting.hpp" namespace "greeting":
    void say_hello()
