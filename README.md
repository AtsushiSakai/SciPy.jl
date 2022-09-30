# SciPy.jl

[![Build Status](https://github.com/AtsushiSakai/SciPy.jl/workflows/CI/badge.svg)](https://github.com/AtsushiSakai/SciPy.jl/actions)
[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://AtsushiSakai.github.io/SciPy.jl/dev)
[![version](https://juliahub.com/docs/SciPy/version.svg)](https://juliahub.com/ui/Packages/SciPy/g8Zlq)
[![pkgeval](https://juliahub.com/docs/SciPy/pkgeval.svg)](https://juliahub.com/ui/Packages/SciPy/g8Zlq)
[![deps](https://juliahub.com/docs/SciPy/deps.svg)](https://juliahub.com/ui/Packages/SciPy/g8Zlq?t=2)

<p align="center"><img src="docs/src/assets/scipyjl_logo.png" alt="drawing" width="200"/></p>

[SciPy.jl](https://pkg.juliahub.com/ui/Packages/SciPy/g8Zlq/) is a Julia interface for [SciPy](https://www.scipy.org/scipylib/index.html) using [PyCall.jl](https://github.com/JuliaPy/PyCall.jl).

You can use many useful scientific functions of SciPy from Julia codes.

# Requirements

Julia 1.0 or higher.

# Install

```jl
using Pkg;Pkg.add("SciPy")
```

and then just import it with `using SciPy`.

If you want use latest development code:

```jl
import Pkg; Pkg.add(Pkg.PackageSpec(name="SciPy", rev="master"))
```

# Example

```jl
using SciPy
points1 = rand(15, 2)
points2 = rand(15, 2)
figure(figsize=(6, 6))
plot(points1[:, 1], points1[:, 2], "xk", markersize=14)
plot(points2[:, 1], points2[:, 2], "og", markersize=14)
kd_tree1 = spatial.KDTree(points1)
kd_tree2 = spatial.KDTree(points2)
indexes = kd_tree1.query_ball_tree(kd_tree2, r=0.2)
for i in 1:length(indexes)
    for j in indexes[i]
        plot([points1[i, 1], points2[j+1, 1]], [points1[i, 2], points2[j+1, 2]], "-r")
    end
end
```
<img src="https://github.com/AtsushiSakai/SciPy.jl/raw/master/docs/src/assets/spatial_KDTree_sample.png" width="400">

# Documentation

You can check latest documentation here:
- [SciPy.jl Documentation](https://atsushisakai.github.io/SciPy.jl/stable)


# Maintainers

- [Atsushi Sakai](https://github.com/AtsushiSakai/) ([@Atsushi_twi](https://twitter.com/Atsushi_twi))
- [Satoshi Terasaki](https://github.com/terasakisatoshi)([@GomahuAzarashi](https://twitter.com/MathSorcerer))
