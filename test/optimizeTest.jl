using SciPy
using Test


@testset "optimize.linprog" begin
    A = [-3 1; 
          1 2]
    b = [6, 4]
    c = [-1, 4]
    x0_bounds = (nothing, nothing)
    x1_bounds = (-3, nothing)
    res = optimize.linprog(c, A_ub=A, b_ub=b, bounds=[x0_bounds, x1_bounds])
    @test res == Dict{Any, Any}("fun" => -21.99999984082497, "nit" => 6, "status" => 0, "message" => "Optimization terminated successfully.", "success" => true, "x" => [9.999999890483512, -2.9999999875853645], "slack" => [38.9999996590359, 8.468721723886574e-8], "con" => Float64[])
end

