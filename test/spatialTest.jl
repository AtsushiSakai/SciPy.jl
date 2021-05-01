using SciPy
using Test


@testset "spatial.KDTree" begin
    points1 = rand(15, 2)
    points2 = rand(15, 2)
    kd_tree1 = spatial.KDTree(points1)
    kd_tree2 = spatial.KDTree(points2)
    indexes = kd_tree1.query_ball_tree(kd_tree2, r=0.2)
    @test length(indexes) >= 1
end



