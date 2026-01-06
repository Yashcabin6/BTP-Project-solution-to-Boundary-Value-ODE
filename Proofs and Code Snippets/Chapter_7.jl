using Symbolics

@variables x
@variables y(x)
Dy = Differential(x)

# Given second derivative y'' = exp(-y)
y2 = exp(-y)

# Calculate third derivative by differentiating y2 w.r.t x
y3 = Dy(y2)

# Calculate fourth derivative by differentiating y3 w.r.t x
y4 = Dy(y3)

# Simplify the expressions
y3_simplified = simplify(y3)
y4_simplified = simplify(y4)

println("Third derivative y''' = ", y3_simplified)
println("Fourth derivative y'''' = ", y4_simplified)
