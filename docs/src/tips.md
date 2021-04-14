# Tips

## Accessing docstring

You can access docstring of a SciPy function:

```julia-repl
help?> SciPy.stats.gmean
    gmean(a, axis=0, dtype=None)

    Compute the geometric mean along the specified axis.
    ...
```

## Print configulations

You can check dependency configulations of SciPy using [`print_configulations()`](@ref).

```julia-repl
julia> print_configulations();
-- Julia settings --
Julia Version 1.6.0
Commit f9720dc2eb (2021-03-24 12:55 UTC)
Platform Info:
  OS: macOS (x86_64-apple-darwin19.6.0)
  CPU: Intel(R) Core(TM) i7-7660U CPU @ 2.50GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-11.0.1 (ORCJIT, skylake)
Environment:
  JULIA_EDITOR = vim
-- PyCall.jl settings --
PyCall.pyversion = v"3.7.7"
PyCall.libpython = "/Users/atsushisakai/.julia/conda/3/lib/libpython3.7m.dylib"
PyCall.pyprogramname = "/Users/atsushisakai/.julia/conda/3/bin/python"
PyCall.conda = true
-- SciPy settings --
scipy.__version__ = "1.6.2"
scipy.version.full_version = "1.6.2"
scipy.version.git_revision = "Unknown"
```

## How to update SciPy

If you are using Linux, PyCall.jl uses `python3` program.

You can update SciPy with:

>$ pip install -U scipy

If you are using Mac or Windows, PyCall.jl uses `Conda.jl` for python runtime.

You can update SciPy with:

```julia-repl
julia> import Conda; Conda.update()
```

