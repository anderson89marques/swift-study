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

Operators are special functions in how are declared