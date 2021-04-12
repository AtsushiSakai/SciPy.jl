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
            "cluster" => "examples/cluster.md",
            "constants" => "examples/constants.md",
            "fft" => "examples/fft.md",
            "interpolate" => "examples/interpolate.md",
            "io" => "examples/io.md",
            "linalg" => "examples/linalg.md",
            "ndimage" => "examples/ndimage.md",
            "odr" => "examples/odr.md",
            "optimize" => "examples/optimize.md",
            "signal" => "examples/signal.md",
            "sparse" => "examples/sparse.md",
            "spatial" => "examples/spatial.md",
            "special" => "examples/special.md",
            "stats" => "examples/stats.md",
        ],
        "API References" => "api_references.md",
    ],
    doctest = false, # workaround for https://github.com/JuliaDocs/Documenter.jl/issues/1394
)

deploydocs(;
    repo="github.com/AtsushiSakai/SciPy.jl",
)
