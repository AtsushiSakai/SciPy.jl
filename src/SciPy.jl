"""
A Julia interface module for SciPy

- [GitHub repository: AtsushiSakai/SciPy.jl: Julia interface for SciPy](https://github.com/AtsushiSakai/SciPy.jl)
- [Stable Doc](https://atsushisakai.github.io/SciPy.jl/stable)
- [Dev Doc](https://atsushisakai.github.io/SciPy.jl/dev)

"""
module SciPy

using PyCall
using InteractiveUtils

export print_configulations
export cluster, constants

const scipy = PyNULL()

"""
Scipy.cluster module

- [Clustering package (scipy.cluster) v1.4.1 Reference Guide](https://docs.scipy.org/doc/scipy/reference/cluster.html)

# Examples

You can do k-means clustering using this module:

```julia-repl
julia> features  = [[ 1.9  2.3];
                    [ 1.5 2.5];
                    [ 0.8 0.6];
                    [ 0.4 1.8];
                    [ 0.1 0.1];
                    [ 0.2 1.8];
                    [ 2.0 0.5];
                    [ 0.3 1.5];
                    [ 1.0 1.0]]
9×2 Array{Float64,2}:
 1.9  2.3
 1.5  2.5
 0.8  0.6
 0.4  1.8
 0.1  0.1
 0.2  1.8
 2.0  0.5
 0.3  1.5
 1.0  1.0

julia> whitened = SciPy.cluster.vq.whiten(features)
9×2 Array{Float64,2}:
 2.7396    2.91001
 2.16284   3.16306
 1.15351   0.759134
 0.576757  2.2774
 0.144189  0.126522
 0.288379  2.2774
 2.88379   0.632612
 0.432568  1.89784
 1.44189   1.26522

julia> SciPy.cluster.vq.kmeans(whitened, [whitened[1,:] whitened[3,:]] )
([1.1174670798453024 1.8345740800894272; 2.8837860125040065 0.6326117517549749], 1.073399
3090584457)

```

"""
const cluster = PyNULL()

"""
Scipy.constants module

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
const constants = PyNULL()


"""
Module initialization function
"""
function __init__()

    copy!(scipy, pyimport_conda("scipy", "scipy"))
    copy!(cluster, pyimport_conda("scipy.cluster", "scipy"))
    copy!(constants, pyimport_conda("scipy.constants", "scipy"))

end

"""
Print configulations like:
- Julia version
- Python version
- Python path
- scipy version
"""
function print_configulations()
    println("==== SciPy.jl configulations ====")
    println("-- Julia settings --")
    versioninfo()
    println("-- PyCall.jl settings --")
    @show PyCall.pyversion
    @show PyCall.libpython
    @show PyCall.pyprogramname
    @show PyCall.conda
    println("-- Scipy settings --")
    @show scipy.__version__
    @show scipy.version.full_version
    @show scipy.version.git_revision
end


end
