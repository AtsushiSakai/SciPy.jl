"""
A Julia interface module for SciPy

"""
module SciPy

using PyCall
using InteractiveUtils

export print_configulations
export constants

const scipy = PyNULL()

"""
Scipy.constants module

https://docs.scipy.org/doc/scipy/reference/constants.html
"""
const constants = PyNULL()


"""
Module initialization function
"""
function __init__()

    copy!(scipy, pyimport_conda("scipy", "scipy", "conda-forge"))
    copy!(constants, pyimport("scipy.constants"))

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
