"""

This is a python script to show API for each submodules of SciPy

"""
import sys, scipy, numpy, json
print(scipy.__version__, numpy.__version__, sys.version_info)

print("=== stats module ===")
from scipy import stats
print(json.dumps(stats.__all__))

print("=== optimize module ===")
from scipy import optimize
print(json.dumps(optimize.__all__))

print("=== interpolate module ===")
from scipy import interpolate
print(json.dumps(interpolate.__all__))

print("=== spatial module ===")
from scipy import spatial
print(json.dumps(spatial.__all__))


