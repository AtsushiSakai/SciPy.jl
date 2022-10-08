"""
scipy.stats module

- [Statistical functions (scipy.stats) Reference Guide](https://docs.scipy.org/doc/scipy/reference/stats.html)


# Examples

You can calculate Pearson correlation coefficient and p-value:

```julia-repl
julia> a = [0, 0, 0, 1, 1, 1, 1];

julia> b = collect(0:6);

julia> SciPy.stats.pearsonr(a, b)
(0.8660254037844386, 0.011724811003954649)
```
"""
module stats

using PyCall

import ..pystats
import ..LazyHelp

const _ignore_funcs = ["stats", "describe"]

@doc LazyHelp(pystats, "describe") function describe(args...; kws...)
    desc = pycall(pystats.describe, PyAny, args...; kws...)
    return (
        nobs = desc[1],
        minmax = desc[2],
        mean = desc[3],
        variance = desc[4],
        skewness = desc[5],
        kurtosis = desc[6],
    )
end

@pyinclude(joinpath(pkgdir(@__MODULE__), "src", "scipy_api_list.py"))
apis = py"generate_scipy_apis"("stats")

all_properties = [apis["function"]; apis["class"]]

for f in all_properties
    f in _ignore_funcs && continue

    sf = Symbol(f)
    @eval @doc LazyHelp(pystats, $f) $sf(args...; kws...) =
        pycall(pystats.$f, PyAny, args...; kws...)
end

function __init__()
    copy!(pystats, pyimport_conda("scipy.stats", "scipy"))
end

end # module
