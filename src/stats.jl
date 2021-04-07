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
import PyCall: hasproperty # Base.hasproperty in Julia 1.2

import ..pystats
import .._generate_docstring

const _stats =  pyimport("scipy.stats")
const _ignore_funcs = ["stats", "describe"]

@doc _generate_docstring(_stats.describe) function describe(args...; kws...) 
   desc = pycall(pystats.describe, PyAny, args...; kws...)
   return (nobs=desc[1], minmax=desc[2], mean=desc[3], variance=desc[4], skewness=desc[5], kurtosis=desc[6])
end

for f in _stats.__all__
    f in _ignore_funcs && continue

    sf = Symbol(f)
    @eval @doc _generate_docstring(_stats.$f) $sf(args...; kws...) = pycall(pystats.$f, PyAny, args...; kws...)
end

end # module
