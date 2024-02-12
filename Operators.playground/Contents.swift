import Foundation

let myAge = 35
let yourAge = 32

// Binary infix
if myAge > yourAge {
    "I`m older than you."
} else if  myAge < yourAge {
    "I`m younger than you."
} else {
    "Ooh, We are the same age."
}

let myMothersAges = myAge + 30
let doubleMyAge = myAge * 2
let frase = "Hello" + " " + "World"

// Unary prefix: !
let isOk = !false
var age = 15
age += 1

// Unary postfix
let name = Optional("Anderson")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

// Ternary Operators
let message: String
if age > 18 {
    "You are a adult"
} else {
    "you are not a adult"
}
// Converting this code to Ternary
// CONDITION ? VALUE IF CONDITION IS MET : VALUE IF CONDITION IS NOT MET

let message2 = age >= 18 
    ? "You are a adult"
    : "You are not a adult"
