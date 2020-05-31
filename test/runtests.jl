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
        @test constants.golden == 1.618033988749895
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
        x = collect(0:10)
        y = exp.(-x/3.0)
        f = SciPy.interpolate.interp1d(x, y)
        @test f(0.5)[1] == 0.8582656552868946
    end

end
