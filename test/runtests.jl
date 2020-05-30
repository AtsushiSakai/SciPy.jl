using SciPy
using Test

@testset "SciPy.jl" begin
    @test constants.golden == 1.618033988749895
end
