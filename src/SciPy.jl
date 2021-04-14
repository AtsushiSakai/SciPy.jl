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
export cluster, constants, fft, integrate, interpolate, io, linalg, ndimage, odr
export optimize, signal, sparse, spatial, stats, special
# raw PyObject modules
export pystats


const scipy = PyNULL()

include("util.jl")

"""
scipy.cluster module

- [Clustering package (scipy.cluster) Reference Guide](https://docs.scipy.org/doc/scipy/reference/cluster.html)

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
scipy.constants module

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
scipy.fft module

- [Discrete Fourier transforms (scipy.fft) Reference Guide](https://docs.scipy.org/doc/scipy/reference/fft.html)


# Examples

You can use FFT (Fast Fourier Transform):

```julia-repl

julia> SciPy.fft.fft(exp.(π/8 * collect(1:8)))
8-element Array{Complex{Float64},1}:
   68.17385416403044 - 0.0im
   1.408601300061675 + 31.248171041435185im
 -10.268363617931092 + 15.207165888808841im
 -12.695027025520982 + 6.493878653648949im
 -13.216494113330363 - 0.0im
 -12.695027025520982 - 6.493878653648949im
 -10.268363617931092 - 15.207165888808841im
   1.408601300061675 - 31.248171041435185im

```
"""
const fft = PyNULL()


"""
scipy.integrate module

- [Integration and ODEs (scipy.integrate) Reference Guide](https://docs.scipy.org/doc/scipy/reference/integrate.html)


# Examples

You can compute a definite integral:

```julia-repl
julia> f(x) = x^2
f (generic function with 1 method)

julia> SciPy.integrate.quad(f, 0, 4)
(21.333333333333336, 2.368475785867001e-13)

```
"""
const integrate = PyNULL()

"""
scipy.interpolate module

- [Interpolation (scipy.interpolate) Reference Guide](https://docs.scipy.org/doc/scipy/reference/interpolate.html)


# Examples

You can interpolate 1D data:

```julia-repl
julia> x = collect(0:10);
julia> y = exp.(-x/3.0);
julia> f = SciPy.interpolate.interp1d(x, y);
julia> f(0.5)
0-dimensional Array{Float64,0}:
0.8582656552868946

```
"""
const interpolate = PyNULL()

"""
scipy.io module

- [Input and output (scipy.io) Reference Guide](https://docs.scipy.org/doc/scipy/reference/io.html)


# Examples

You can save a MATLAB-style .mat file:

```julia-repl
julia> mdic = Dict([("a", 100), ("label", "experiment")])
Dict{String,Any} with 2 entries:
  "label" => "experiment"
  "a"     => 100

julia> SciPy.io.savemat("sample_data.mat", mdic)
```
"""
const io = PyNULL()

"""
scipy.linalg module

- [Linear algebra (scipy.linalg) Reference Guide](https://docs.scipy.org/doc/scipy/reference/linalg.html)


# Examples

You can compute the matrix exponential using Pade approximation:

```julia-repl
julia> SciPy.linalg.expm(zeros((2,2)))
2×2 Array{Float64,2}:
 1.0  0.0
 0.0  1.0
```
"""
const linalg = PyNULL()

"""
scipy.ndimage module

- [Multi-dimensional image processing (scipy.ndimage) Reference Guide](https://docs.scipy.org/doc/scipy/reference/ndimage.html)


# Examples

You can compute a multidimensional convolution:

```julia-repl
julia> k = [[1 1 1];[1 1 0];[1 0 0]]
3×3 Array{Int64,2}:
 1  1  1
 1  1  0
 1  0  0

julia> a = [[1 2 0 0];
            [5 3 0 4];
            [0 0 0 7];
            [9 3 0 0]]
4×4 Array{Int64,2}:
 1  2  0  0
 5  3  0  4
 0  0  0  7
 9  3  0  0

julia> SciPy.ndimage.convolve(a, k, mode="constant", cval=0.0)
4×4 Array{Int64,2}:
 11  10   7   4
 10   3  11  11
 15  12  14   7
 12   3   7   0
```
"""
const ndimage = PyNULL()

"""
scipy.odr module

- [Orthogonal distance regression (scipy.odr) Reference Guide](https://docs.scipy.org/doc/scipy/reference/odr.html)


# Examples

You can calculate orthogonal distance regression with an exponential model:

```julia-repl
julia> x = collect(0.0:5.0);

julia> y = -10.0 .+ exp.(0.5*x);

julia> data = SciPy.odr.Data(x, y)
PyObject <scipy.odr.odrpack.Data object at 0x7fe5fda4ccc0>

julia> data = SciPy.odr.Data(x, y);

julia> odr_obj = SciPy.odr.ODR(data, SciPy.odr.exponential);

julia> output = odr_obj.run();

julia> println(output.beta)
[-10.0, 0.5]
```
"""
const odr = PyNULL()

"""
scipy.optimize module

- [Optimization and Root Finding (scipy.optimize) Reference Guide](https://docs.scipy.org/doc/scipy/reference/optimize.html)


# Examples

You can optimize the Rosen function:

```julia-repl
julia> x0 = [1.3, 0.7, 0.8, 1.9, 1.2];

julia> res = SciPy.optimize.minimize(SciPy.optimize.rosen, x0, method="Nelder-Mead", tol=1e-6)
Dict{Any,Any} with 8 entries:
  "fun"           => 1.94206e-13
  "nit"           => 295
  "nfev"          => 494
  "status"        => 0
  "success"       => true
  "message"       => "Optimization terminated successfully."
  "x"             => [1.0, 1.0, 1.0, 1.0, 1.0]
  "final_simplex" => ([1.0 1.0 … 1.0 1.0; 1.0 1.0 … 1.0 1.0; … ; 1.0 1.0 … 1.0 1.0; 1.0 1.0 … 1.0 1.0], [1…

```
"""
const optimize = PyNULL()

"""
scipy.signal module

- [Signal processing (scipy.signal) Reference Guide](https://docs.scipy.org/doc/scipy/reference/signal.html)


# Examples

You can compute the Kaiser parameter beta, given the attenuation a:

```julia-repl
julia> SciPy.signal.kaiser_beta(65)
6.20426

```
"""
const signal = PyNULL()

"""
scipy.sparse module

- [Sparse matrices (scipy.sparse) Reference Guide](https://docs.scipy.org/doc/scipy/reference/sparse.html)


# Examples

You can do sparse matrix calculation:

```julia-repl
julia> A = SciPy.sparse.csc_matrix([[1.0 0.0];
                                   [1.0 2.0]]);

julia> Ainv = SciPy.sparse.linalg.inv(A);

julia> A.dot(Ainv).todense()
2×2 Array{Float64,2}:
 1.0  0.0
 0.0  1.0

```
"""
const sparse = PyNULL()

"""
scipy.spatial module

- [Spatial algorithms and data structures (scipy.spatial) Reference Guide](https://docs.scipy.org/doc/scipy/reference/spatial.html)


# Examples

You can calculate several rotation representations:

```julia-repl
julia> R = SciPy.spatial.transform.Rotation;

julia> r = R.from_quat([0, 0, sin(π/4.0), cos(π/4)]);

julia> r.as_matrix()
3×3 Array{Float64,2}:
 2.22045e-16  -1.0          0.0
 1.0           2.22045e-16  0.0
 0.0           0.0          1.0

julia> r.as_rotvec()
3-element Array{Float64,1}:
 0.0
 0.0
 1.5707963267948963

julia> r.as_euler("zyx", degrees=true)
3-element Array{Float64,1}:
 90.0
  0.0
  0.0
```
"""
const spatial = PyNULL()

"""
scipy.special module

- [Special functions (scipy.special) Reference Guide](https://docs.scipy.org/doc/scipy/reference/special.html)

"""
const special = PyNULL()


const pystats = PyNULL()
include("stats.jl")


"""
Module initialization function
"""
function __init__()
    copy!(scipy, pyimport_conda("scipy", "scipy"))
    copy!(cluster, pyimport_conda("scipy.cluster", "scipy"))
    copy!(constants, pyimport_conda("scipy.constants", "scipy"))
    copy!(fft, pyimport_conda("scipy.fft", "scipy"))
    copy!(integrate, pyimport_conda("scipy.integrate", "scipy"))
    copy!(interpolate, pyimport_conda("scipy.interpolate", "scipy"))
    copy!(io, pyimport_conda("scipy.io", "scipy"))
    copy!(linalg, pyimport_conda("scipy.linalg", "scipy"))
    copy!(ndimage, pyimport_conda("scipy.ndimage", "scipy"))
    copy!(odr, pyimport_conda("scipy.odr", "scipy"))
    copy!(optimize, pyimport_conda("scipy.optimize", "scipy"))
    copy!(signal, pyimport_conda("scipy.signal", "scipy"))
    copy!(sparse, pyimport_conda("scipy.sparse", "scipy"))
    copy!(spatial, pyimport_conda("scipy.spatial", "scipy"))
    copy!(special, pyimport_conda("scipy.special", "scipy"))
    copy!(pystats, pyimport_conda("scipy.stats", "scipy"))
end

"""
Print configulations:
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
    println("-- SciPy settings --")
    @show scipy.__version__
    @show scipy.version.full_version
    @show scipy.version.git_revision
    return nothing
end

end
