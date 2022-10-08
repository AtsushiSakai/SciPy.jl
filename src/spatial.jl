"""
scipy.spatial module

- [Spatial algorithms and data structures (scipy.spatial) Reference Guide](https://docs.scipy.org/doc/scipy/reference/spatial.html)


# Examples

You can calculate several rotation representations:

```julia-repl
julia> R = SciPy.spatial.transform.Rotation;

julia> r = R.from_quat([0, 0, sin(π/4.0), cos(π/4)]);

julia> r.as_matrix()
3×3 Array{Float64,2}:
 2.22045e-16  -1.0          0.0
 1.0           2.22045e-16  0.0
 0.0           0.0          1.0

julia> r.as_rotvec()
3-element Array{Float64,1}:
 0.0
 0.0
 1.5707963267948963

julia> r.as_euler("zyx", degrees=true)
3-element Array{Float64,1}:
 90.0
  0.0
  0.0
```
"""
module spatial

using PyCall

import ..pyspatial
import ..LazyHelp

const _ignore_funcs = ["spatial"]

pyimport_conda("scipy", "scipy")
@pyinclude(joinpath(pkgdir(@__MODULE__), "src", "scipy_api_list.py"))
apis = py"generate_scipy_apis"("spatial")

all_properties = [apis["function"]; apis["class"]]


for f in all_properties
    f in _ignore_funcs && continue

    sf = Symbol(f)
    @eval @doc LazyHelp(pyspatial, $f) $sf(args...; kws...) =
        pycall(pyspatial.$f, PyAny, args...; kws...)
end

function __init__()
    copy!(pyspatial, pyimport_conda("scipy.spatial", "scipy"))
end


end # module
