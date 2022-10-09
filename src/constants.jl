"""
scipy.constants module

- [Constants (scipy.constants) Reference Guide](https://docs.scipy.org/doc/scipy/reference/constants.html)

# Examples

You can access each constants:

```julia-repl
julia> SciPy.constants.golden
1.618033988749895

julia> SciPy.constants.physical_constants["electron mass"]
(9.10938356e-31, "kg", 1.1e-38)

julia> SciPy.constants.convert_temperature([-40, 40.0], "Celsius", "Kelvin")

2-element Array{Float64,1}:
 233.14999999999998
 313.15

```
"""
module constants

using PyCall

pyimport_conda("scipy", "scipy")
@pyinclude(joinpath(pkgdir(@__MODULE__), "src", "scipy_api_list.py"))
apis = py"generate_scipy_apis"("constants")

all_properties = [apis["function"]; apis["class"]; apis["constant"]]

import ..pyconstants

import ..LazyHelp

const _ignore_funcs = ["constants"]

for f in [apis["function"]; apis["class"]]
    f in _ignore_funcs && continue

    sf = Symbol(f)
    @eval @doc LazyHelp(pyconstants, $f) $sf(args...; kws...) =
        pycall(pyconstants.$f, PyAny, args...; kws...)
end

function __init__()
    copy!(pyconstants, pyimport_conda("scipy.constants", "scipy"))
    for f in apis["constant"]
        f in _ignore_funcs && continue # just in case
        sf = Symbol(f)
        @eval @doc LazyHelp(pyconstants, $f) const $sf = convert(PyAny, getproperty(pyconstants, $f))
    end
end


end # module
