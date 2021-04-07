using SciPy
using Test


@testset "stats.gmean" begin
    @test stats.gmean([1, 2, 3, 4, 5, 6, 7]) == 3.3800151591412964
end

@testset "stats.describe" begin
    desc = stats.describe(collect(0:9))
    @test desc == (nobs=10, minmax=(0, 9), mean=4.5, variance=9.166666666666666, skewness=0.0, kurtosis=-1.2242424242424244)
end


