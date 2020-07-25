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
        assets=String["assets/favicon.ico"],
    ),
    pages=[
        "Home" => "index.md",
        "Examples" => Any[
            "cluster" => "cluster.md",
            "constants" => "constants.md",
            "fft" => "fft.md",
            "interpolate" => "interpolate.md",
            "io" => "io.md",
            "linalg" => "linalg.md",
            "ndimage" => "ndimage.md",
            "odr" => "odr.md",
            "optimize" => "optimize.md",
            "signal" => "signal.md",
            "sparse" => "sparse.md",
            "stats" => "stats.md",
        ],
    ],
)

deploydocs(;
    repo="github.com/AtsushiSakai/SciPy.jl",
)
