import Foundation

// Closure add
let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

let minus: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs - rhs
}

func add2(lhs: Int, rhs: Int) -> Int {
    lhs + rhs
}

add(10, 45)
minus(4, 2)

func calculator(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

calculator(10, 45, using: add)
calculator(4, 2, using: minus)
calculator(10, 10, using: add2)

let ages = [34, 19, 40, 20]
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in lhs > rhs})
// passing the function ">", because this function receives exactly two parameters
ages.sorted(by: >)
ages.sorted(by: <)
