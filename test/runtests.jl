using SymbolicRubi
using Test

@testset "SymbolicRubi.jl" begin
    @syms x m
    @test isequal(integrate(x^-1,x) |> r1, log(x))
    @test isequal(integrate(x^m,x) |> r2, x^(m+1)*(m+1)^-1)

end
