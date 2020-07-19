using SciPy
using Documenter
using PyPlot # for figure generation
using Distributions

makedocs(;
    modules=[SciPy],
    authors="Atsushi Sakai <asakai.amsl+github@gmail.com> and contributors",
    repo="https://github.com/AtsushiSakai/SciPy.jl/blob/{commit}{path}#L{line}",
    sitename="SciPy.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://AtsushiSakai.github.io/SciPy.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/AtsushiSakai/SciPy.jl",
)
