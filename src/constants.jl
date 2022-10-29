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
2-element Vector{Float64}:
 233.14999999999998
 313.15

```
"""
module constants

using PyCall

pyimport_conda("scipy", "scipy")
@pyinclude(joinpath(pkgdir(@__MODULE__), "src", "scipy_api_list.py"))
apis = py"generate_scipy_apis"("constants")

all_properties = [apis["function"]; apis["class"]]

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

    #=
    The following metaprogramming will generate expressions like:

    const zero_Celsius = 273.15
    const golden = 1.618033988749895
    const centi = 0.01

    =#
    for f in pyconstants.__all__ |> unique |> sort
        f in _ignore_funcs && continue # just in case
        a = pybuiltin("getattr")(pyconstants, f)
        if a isa PyObject
            # The variable `a` should be python function, class or module
            continue
        else
            # The variable `a` is converted in a Julia's native type. We assume this is a constant value.
            sf = Symbol(f)
            @eval @doc LazyHelp(pyconstants, $f) const $sf = $a
        end
    end
end

end # module
