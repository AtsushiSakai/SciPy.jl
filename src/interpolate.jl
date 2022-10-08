"""
scipy.interpolate module

- [Interpolation (scipy.interpolate) Reference Guide](https://docs.scipy.org/doc/scipy/reference/interpolate.html)


# Examples

You can interpolate 1D data:

```julia-repl
julia> x = collect(0:10);
julia> y = exp.(-x/3.0);
julia> f = SciPy.interpolate.interp1d(x, y);
julia> f(0.5)
0-dimensional Array{Float64,0}:
0.8582656552868946

```
"""
module interpolate

using PyCall

import ..pyinterpolate
import ..LazyHelp

const _ignore_funcs = ["interpolate"]

@pyinclude(joinpath(pkgdir(@__MODULE__), "src", "scipy_api_list.py"))
apis = py"generate_scipy_apis"("interpolate")

all_properties = [apis["function"]; apis["class"]]

for f in all_properties
    f in _ignore_funcs && continue

    sf = Symbol(f)
    @eval @doc LazyHelp(pyinterpolate, $f) $sf(args...; kws...) = pycall(pyinterpolate.$f, PyAny, args...; kws...)
end

function __init__()
    copy!(pyinterpolate, pyimport_conda("scipy.interpolate", "scipy"))
end


end # module
