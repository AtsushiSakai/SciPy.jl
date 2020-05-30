module SciPy

using PyCall

export constants

const scipy = PyNULL()
const constants = PyNULL()


function __init__()

    copy!(scipy, pyimport_conda("scipy", "scipy"))
    copy!(constants, pyimport("scipy.constants"))

end


end
