using SciPy
using Test

@testset "SciPy.jl" begin
    # Print configulations before start testings.
    print_configulations()

    @testset "cluster" begin
        features  = [[ 1.9  2.3];
                    [ 1.5 2.5];
                    [ 0.8 0.6];
                    [ 0.4 1.8];
                    [ 0.1 0.1];
                    [ 0.2 1.8];
                    [ 2.0 0.5];
                    [ 0.3 1.5];
                    [ 1.0 1.0]]
        whitened = cluster.vq.whiten(features)
        @test whitened[1, 1] == 2.739596711878806
    end

    @testset "constants" begin
        @test constants.zero_Celsius == 273.15
        @test constants.golden == 1.618033988749895
        @test constants.centi == 0.01

        @test typeof(pyconstants.zero_Celsius) == typeof(constants.zero_Celsius)
        @test typeof(pyconstants.golden) == typeof(constants.golden)
        @test typeof(pyconstants.centi) == typeof(constants.centi)

        @test constants.convert_temperature([-40, 40.0], "Celsius", "Kelvin") ≈ [233.14999999999998, 313.15]

        @test typeof(pyconstants.physical_constants) == typeof(constants.physical_constants)
        @test constants.physical_constants["electron mass"] == (9.1093837015e-31, "kg", 2.8e-40)
    end

    @testset "fft" begin
        fft = SciPy.fft.fft(exp.(π/8 * collect(1:8)))
        @test length(fft) == 8
    end

    @testset "integrate" begin
        f(x) = x^2
        result = SciPy.integrate.quad(f, 0, 4)
        @test result[1] == 21.333333333333336
    end

    @testset "interpolate" begin
        include("interpolateTest.jl")
    end

    @testset "stats" begin
        include("statsTest.jl")
    end

    @testset "optimize" begin
        include("optimizeTest.jl")
    end

    @testset "spatial" begin
        include("spatialTest.jl")
    end

end
