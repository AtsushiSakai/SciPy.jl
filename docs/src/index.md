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

You can check Example sections for each scipy modules:

- [Examples](@ref)



Other utility functionalities are available as belows:

## Accessing docstring

You can access docstring of a SciPy function:

```julia-repl
help?> SciPy.io.savemat

    Save a dictionary of names and arrays into a MATLAB-style .mat file.
    ...
```

# Index

```@index
```

# API Reference

```@autodocs
Modules = [SciPy]
```
