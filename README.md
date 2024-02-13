# Swift Study



## Variables

```
import Foundation

.....
```

```Foundation``` imports all the basic swift modules to be used, like how strings work, how integer works, default operations between variables e, etc.


To create a variable in Swift, we`ve two syntaxes:
- let: create IMMUTABLES variable
- var: create MUTABLES variable	


```
import Foundation

let myName = "Anderson"
let yourName = "Foo"

yourName = myName

// This code Raises the exception below

"error: Variables.playground:6:1: error: cannot assign to value: 'yourName' is a 'let' constant
yourName = myName"
```

Assigning a variable to another only copies the values, For example:

```
let foo = "Foo"
var foo2 = foo

//Set a new value to foo2
foo2 = "Foo 2"

// foo variable has its value unchanged
print(foo) //Result: Foo
print(foo2) // Result: Foo 2
```

important: Structures are value types and Classes are reference types.


## Operators

Operators are special functions in how are declared, for example:
>, >=, <, <=, ==, /, *, -, +  etc.

### Swift has 3 types of operators:
- Unary prefix EX: !,
- Unary postfix EX: ,  
- Binary infix EX: +, -, *, /, >, >=, <, <=, == 
- Ternary Operators EX: age >= 18 ? "You are an adult" : "You are not an adult"


## If-Else

It`s a flow control.

Examples: 

```
if myName == "Anderson" {
    "Your name is \(myAge)"
} else if myName == "Foo" {
    
} else {
    
}


if myName == "Anderson" && myAge == 35 {
    "I`m \(myName) and i`m have \(myAge)"
}

if myName == "Anderson" || myAge == 32 {
    "I`m \(myName) and i`m have \(myAge)"
}
```

## Functions

The last statement of a function is the return, So the return statement can be Optional.


```
Examples:

func noArgumentsAndNoReturnValue() {
    print("I don`t know what I'm doing")
}
noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    let newValue = value + 2
}
plusTwo(value: 30)

// This is called External arguments.
func customMinus(lhs: Int, rhs: Int) -> Int {
    lhs - rhs
}
// External Arguments must named when calling the function
customMinus(lhs: 20, rhs: 10)
// Call the function like
// customMinus(20, 10)
// Raises an exception

// Internal Arguments is only used inside the function
func customMinus2(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}
// And when calling the function, we don`t access the argument name
customMinus2(20, 10)
// So call the function like below
// customMinus(lhs: 20, rhs: 10)
// Raise an exception
```

###Inner Functions

```
// with is the external name of the argument and
// value is the internal name of the argument
// Function can contain other functions
// Inner Functions can`t called externally
func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value)
}

let result = doSomethingComplicated(with: 100)
print(result)
```

### Default argument`s values

```
func getFullName(
    firstName: String = "Anderson",
    lastName: String = "Marques"
) -> String {
    "\(firstName) \(lastName)"
}

// We can call this function in four different ways:
print(getFullName())
print(getFullName(firstName: "Arthur"))
print(getFullName(lastName: "Morais"))
print(getFullName(firstName: "Arthur", lastName: "Morais"))
```