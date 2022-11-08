import PyCall

if Sys.islinux() && PyCall.conda
    #=
    If one uses Python managed by Conda.jl, pin scipy version to avoid an error
    "version `GLIBCXX_3.4.30' not found". See the following issues:
    - https://github.com/JuliaPy/PyCall.jl/issues/990#issuecomment-1224878410
    - https://github.com/AtsushiSakai/SciPy.jl/issues/48
    - https://github.com/AtsushiSakai/SciPy.jl/issues/68
    =#
    PyCall.Conda.add("gcc=12.1.0"; channel="conda-forge")
    # Pin this version, to avoid clashes with libgcc.34
    PyCall.Conda.add("scipy=1.8.0")
end
