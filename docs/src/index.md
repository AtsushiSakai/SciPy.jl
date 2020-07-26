```@meta
CurrentModule = SciPy
```

# SciPy.jl

[![Build Status](https://github.com/AtsushiSakai/SciPy.jl/workflows/CI/badge.svg)](https://github.com/AtsushiSakai/SciPy.jl/actions)
[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/dev)

A Julia interface for [SciPy](https://www.scipy.org/scipylib/index.html) using [PyCall.jl](https://github.com/JuliaPy/PyCall.jl).

You can use many useful scientific functions of SciPy from Julia codes.

You can know which kind of functions are available in the [SciPy Reference Guide](https://docs.scipy.org/doc/scipy/reference/).

# Requirements

Julia 1.4.x or higher.

# Install

The package is tested against, and being developed for, Julia 1.4 and above on Linux, macOS, and Windows.

You can install this package with:

```jl
using Pkg;Pkg.add("SciPy")
```

and then just import it with `using SciPy`.

If you want use latest development code, clone this repo.

Then, command this in Pkg mode:

> Pkg> dev /path/to/module


# How to use

You can check "Examples" sections for each scipy modules.



Other utility functionalities are available as belows:

## Accessing docstring

You can access docstring of a SciPy function:

```julia-repl
help?> SciPy.io.savemat

    Save a dictionary of names and arrays into a MATLAB-style .mat file.
    ...
```

## Print configulations

You can check dependency configulations of SciPy using [`print_configulations()`](@ref).

```julia-repl
julia> print_configulations();
==== SciPy.jl configulations ====
-- Julia settings --
Julia Version 1.4.2
Commit 44fa15b150* (2020-05-23 18:35 UTC)
Platform Info:
  OS: macOS (x86_64-apple-darwin18.7.0)
  CPU: Intel(R) Core(TM) i7-7660U CPU @ 2.50GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-8.0.1 (ORCJIT, skylake)
Environment:
  JULIA_NUM_THREADS = 4
  JULIA_EDITOR = vim
-- PyCall.jl settings --
PyCall.pyversion = v"3.7.1"
PyCall.libpython = "/Users/user/.julia/conda/3/lib/libpython3.7m.dylib"
PyCall.pyprogramname = "/Users/user/.julia/conda/3/bin/python"
PyCall.conda = true
-- SciPy settings --
scipy.__version__ = "1.4.1"
scipy.version.full_version = "1.4.1"
scipy.version.git_revision = "Unknown"
```

# Index

```@index
```

