import SciPy
using SciPy.PyCall
const _ignore_funcs = ["constants"]

pyimport_conda("scipy", "scipy")
@pyinclude(joinpath(pkgdir(SciPy), "src", "scipy_api_list.py"))
apis = py"generate_scipy_apis"("constants")

all_properties = [apis["function"]; apis["class"]]

open(joinpath(@__DIR__, "src", "scipy_constants.jl"), "w") do io
    for f in [apis["function"]; apis["class"]]
        f in _ignore_funcs && continue

        sf = Symbol(f)
        h = SciPy.LazyHelp(pyconstants, f)
        println(io, """
        \"\"\"
        $(strip(string(h)))
        \"\"\"
        $sf(args...; kws...) = pycall(pyconstants.$f, PyAny, args...; kws...)
        """)
    end
    for f in pyconstants.__all__ |> unique |> sort
        f in _ignore_funcs && continue # just in case
        sf = Symbol(f)
        help = SciPy.LazyHelp(pyconstants, f)
        a = pybuiltin("getattr")(pyconstants, f)
        a isa PyObject && continue
        str = """
        const $sf = $a
        """
        println(io, str)
    end
end
