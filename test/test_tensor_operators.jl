using DynamicExpressions
using Test

baseT = Float64
T = Union{baseT,Vector{baseT},Matrix{baseT}}

function vec_add(x, y)
    return x .+ y
end

operators = GenericOperatorEnum(; binary_operators=[vec_add], extend_user_operators=true)

x1, x2, x3 = [Node(T; feature=i) for i in 1:3]
c1 = Node(T; val=[1.0, 2.0, 3.0])

X = [[2.0, 2.0, 2.0], [3.0, 3.0, 3.0]]

tree = Node(1, c1, x2)
@test repr(tree) == "vec_add([1.0, 2.0, 3.0], x2)"
@test tree(X) == [4.0, 5.0, 6.0]
tree = Node(1, x1, c1)
@test repr(tree) == "vec_add(x1, [1.0, 2.0, 3.0])"
@test tree(X) == [3.0, 4.0, 5.0]
