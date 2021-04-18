
@testset "interpolate.interp1d" begin
    x = collect(0:10)
    y = exp.(-x./3.0)
    f = interpolate.interp1d(x, y)
    @test f([0.5, 0.6]) == [0.8582656552868946, 0.8299187863442736]
    @test f(0.5)[1] == 0.8582656552868946
end


