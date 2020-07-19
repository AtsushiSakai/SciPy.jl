```@meta
CurrentModule = SciPy
```

# SciPy.jl

[![Build Status](https://github.com/AtsushiSakai/SciPy.jl/workflows/CI/badge.svg)](https://github.com/AtsushiSakai/SciPy.jl/actions)
[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/dev)

![logo](assets/scipyjl_logo_small.png)

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

You can access each SciPy modules as belows:

## scipy.cluster

```@docs
cluster
```

### scipy.cluster.vq.kmeans

- [scipy\.cluster\.vq\.kmeans Reference Guide](http://scipy.github.io/devdocs/generated/scipy.cluster.vq.kmeans.html#scipy.cluster.vq.kmeans)

```@example
using PyPlot # hide
n_points = 50;
points1=[rand(Normal(0.0, 0.2), n_points) rand(Normal(0.0, 3.0), n_points)];
points2=[rand(Normal(3.0, 0.5), n_points) rand(Normal(2.0, 0.5), n_points)];
points=[points1; points2];
whitened = cluster.vq.whiten(points);
codebook, distortion = cluster.vq.kmeans(whitened, [whitened[1,:] whitened[3,:]] );
plot(whitened[:, 1], whitened[:, 2], ".k");
plot(codebook[:, 1], codebook[:, 2], "or");
savefig("cluster_vq_kmeans.png") # hide
```

![](cluster_vq_kmeans.png)


## scipy.constants

```@docs
constants
```

## scipy.fft

```@docs
fft
```

## scipy.interpolate

```@docs
interpolate
```

## scipy.io

```@docs
io
```

## scipy.linalg

```@docs
linalg
```

## scipy.ndimage

```@docs
ndimage
```

## scipy.odr

```@docs
odr
```

## scipy.optimize

```@docs
optimize
```

## scipy.signal

```@docs
signal
```

## scipy.sparse

```@docs
sparse
```

## scipy.spatial

```@docs
spatial
```

## scipy.stats

```@docs
stats
```

# Accessing docstring

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
