module SciPy

using PyCall

export constants

const scipy = PyNULL()
const constants = PyNULL()


function __init__()

    copy!(scipy, pyimport_conda("scipy", "scipy", "conda-forge"))
    copy!(constants, pyimport("scipy.constants"))

end


end
