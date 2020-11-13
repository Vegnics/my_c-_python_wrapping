from setuptools import setup
from Cython.Build import cythonize
import numpy as np
setup(ext_modules=cythonize("pygeometry.pyx",language="c++"),include_dirs=[np.get_include()])
