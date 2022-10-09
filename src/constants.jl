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
        @eval @doc LazyHelp(pyconstants, $f) const $sf = getproperty(pyconstants, Symbol($f))
    end
end


end # module
