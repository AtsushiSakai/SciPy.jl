"""

This is a python script to show API for each submodules of SciPy

"""
import importlib
import inspect
from collections import defaultdict

import numpy
import scipy


def generate_scipy_apis(pymod) -> dict:
    """
    Extract API from submodule of SciPy `pymod` which is one of ["function", "class", "module"]
    --- Example in Python---
    >>> from scipy import optimize
    >>> apis = generate_scipy_apis(optimize)
    >>> apis["function"][0]
    'anderson'
    >>> apis = generate_scipy_apis("optimize") # accept string type
    >>> apis["function"][0]
    'anderson'

    --- Example in Julia---
    julia> using PyCall; @pyinclude("scipy_api_list.py")
    julia> apis = py"generate_scipy_apis"("optimize");
    julia> apis["function"][begin]
    "anderson"
    julia> app_properties = [apis["function"]; apis["class"]]
    65-element Vector{String}:
    "anderson"
    "approx_fprime"
    "basinhopping"
    "bisect"
    "bracket"
    "brent"
    ⋮
    "NonlinearConstraint"
    "OptimizeResult"
    "OptimizeWarning"
    "RootResults"
    "SR1"
    """

    if isinstance(pymod, str):
        pymod = importlib.import_module(f"scipy.{pymod}")

    types = [
        ("function", "isfunction"),
        ("class", "isclass"),
        ("module", "ismodule"),
    ]

    d = defaultdict(list)
    attributes = sorted(set(pymod.__all__))
    for attr in attributes:
        for (key, method) in types:
            condition = eval(f"inspect.{method}(pymod.{attr})")
            if condition:
                d[key].append(attr)
                break

    return dict(d)


def print_all():
    print(scipy.__version__, numpy.__version__)
    for str_attr in scipy.__all__:
        attr = getattr(scipy, str_attr)
        if not inspect.ismodule(attr):
            continue
        print(f"=== {str_attr} module ===")
        for (k, v) in generate_scipy_apis(attr).items():
            print(k)
            print(v)
