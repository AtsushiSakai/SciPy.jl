```@meta
CurrentModule = SciPy
```

# SciPy.jl

[![Build Status](https://github.com/AtsushiSakai/SciPy.jl/workflows/CI/badge.svg)](https://github.com/AtsushiSakai/SciPy.jl/actions)
[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/dev)

Julia interface for SciPy

```@docs
SciPy
```


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

You can access each SciPy modules as belows:

## scipy.cluster

```@docs
cluster
```

## scipy.constants

```@docs
constants
```

## scipy.fft

```@docs
fft
```

# Help


# Index

```@index
```

# API Reference

```@autodocs
Modules = [SciPy]
```
