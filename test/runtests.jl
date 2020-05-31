using SciPy
using Test

@testset "SciPy.jl" begin
    # Print configulations before start testings.
    print_configulations()

    @testset "constants" begin
        @test constants.golden == 1.618033988749895
    end
end
