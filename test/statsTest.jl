using SciPy
using Test


@testset "stats.gmean" begin
    @test stats.gmean([1, 2, 3, 4, 5, 6, 7]) == 3.3800151591412964
end

@testset "stats.describe" begin
    desc = stats.describe(collect(0:9))
    jlexpected = (nobs=10, minmax=(0, 9), mean=4.5, variance=9.166666666666666, skewness=0.0, kurtosis=-1.2242424242424244)
    for (k, v) in pairs(desc)
        @test all(v .≈ jlexpected[k])
    end

    desc = pystats.describe(collect(0:9))
    jlexpected = (10, (0, 9), 4.5, 9.166666666666666, 0.0, -1.2242424242424244)
    zip(desc, jlexpected) do (v, e)
        @test all(v .≈ e)
    end
end


