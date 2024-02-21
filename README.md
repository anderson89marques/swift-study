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
- Unary postfix EX: !,  
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

### Inner Functions

```
// "with" is the external name of the argument and
// "value" is the internal name of the argument
// Function can contain other functions
// Inner Functions can`t be called externally
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

## Closures

Closures such as special types of functions are created inline so that we can pass them to another function for instance.

```
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
calculator(2, 4, using: {(lhs: Int, rhs: Int) -> Int in lhs * rhs})

let ages = [34, 19, 40, 20]
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in lhs > rhs})
// passing the function ">", because this function receives exactly two parameter
ages.sorted(by: >)
ages.sorted(by: <)

```

## Structures

Structures are value types structures in Swift.

```
import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Anderson", age: 20)
print(foo.name)
print(foo.age)

// Customer initiaizer
struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}
let c64 = CommodoreComputer(name: "C64")
print(c64)

// We could get the same result as below.
struct CommodoreComputer2 {
    let name: String
    let manufacturer: String = "Commodore"
}
let c128 = CommodoreComputer2(name: "C128")
print(c128)

```
### Mutable Structures

```
// Mutable Struct
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        currentSpeed = speed
    }
}

var car = Car(currentSpeed: 20)
car.drive(speed: 60)
```

| Structures can`t subclass other Structures

## Enumerations

Enumerations are categorizations of similar values that are named.

```
import Foundation

enum Animals {
    case dog
    case cat
    case rabbit
}

let cat = Animals.cat
print(cat)

// Compare enums
if cat == Animals.cat {
    print("It`s a cat")
} else if cat == Animals.dog {
    print("It`s a dog")
}

// Using Switch
switch cat {
case .dog:
    print("It`s a dog")
    break
case .cat:
    print("It`s a cat")
    break
case .rabbit:
    print("It`s a rabbit")
    break
default:
    print("Default Value")
}

// In switch case all the enum values must be checked
```

### Associated Value
```
// Enum with Associated Value
enum shortCut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}
let wwwApple = shortCut.wwwUrl(path: URL(string: "https://apple.com")!)

switch wwwApple {
case let .fileOrFolder(
    path,
    name
):
    print(path)
    break
case let .wwwUrl(path):
    print(path)
    break
case let .song(
    artist,
    songName
):
    print(artist)
    break
}

// Compare a specific case of the enum
// with pattern match
let byob = shortCut.song(
    artist: "S.O.A.D",
    songName: "byob"
)

if case let .song(_, songName) = byob {
    print(songName)
}

// Another example getting a specific value from enum
enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _):
            return manufacturer
        case let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "X"
)

let bike = Vehicle.bike(
    manufacturer: "HD",
    yearMade: 1989
)

bike.manufacturer
car.manufacturer
```

### Raw Value

```
// Enum with Raw Value
enum Family: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

print(Family.brother.rawValue) // "Bro"
print(Family.sister.rawValue) // "Sis"
```

## Classes

Classes are reference-type structures.

Classes are REQUIRED to have a constructor.
When we define a variable with "let" that is an instance of a class, the internal attributes can be changed.

```
import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    // mutating don`t works with classes
    func increaseAge() {
        self.age += 1
    }
}

let person = Person(name: "Anderson", age: 34)
person.age
person.increaseAge()
person.age
```

### Reference Types

Reference Types means that when change one instance, all other instances change too.

```
let person = Person(name: "Anderson", age: 34)
person.age
person.increaseAge()
person.age

let person2 = person
person2.increaseAge()

person2.age // will have the same age
person.age // will have the same age
```

## Hierachy

```
// Hierachy
class Vehicle {
    func goVroom() {
        print("Vroom Vroom")
    }
}

class Car: Vehicle {
    
}
let car = Car()
car.goVroom()

```

### Private Attributes

```
// private attributes

class Person2 {
    var name: String
    private(set) var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    // mutating don`t works with classes
    func increaseAge() {
        self.age += 1
    }
}
let p = Person2(name: "Anr", age: 34)
//p.age += 2 We can`t set direct values
p.increaseAge()

```

### Designated Initializer

```
// Designated Initializer

class Tesla {
    var manufacture = "Tesla"
    var model: String
    var year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(
        model: String
    ) {
        self.init(model: model, year: 2023)
    }
}


class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
}
let modelY = TeslaModelY()
modelY.model
modelY.year
```

### Deinitializers

```
// Deinitializers

class MyClass {
    init() {
        print("Init")
    }
    
    func doSomething() {
        print("Do Somithing")
    }
    
    deinit {
        print("Deinit")
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
    // myClass will go out of scope at the end of the closure
    // so deinit will be called
}
myClosure()
```

## Protocol 

It is a set of roles, something like an interface, that objects must conform with and must follow.

```
import Foundation

protocol CanBreathe {
    // We can`t create an implementation to a protocol function
    // And we can`t Instanciate a protocol
    func canBreathe() // This function must be overrated by the classes/structs that use this protocol
}

struct Animal: CanBreathe {
    func canBreathe() {
        print("Animal can breathe")
    }
}

struct Person: CanBreathe {
    func canBreathe() {
        print("Person can breathe.")
    }
}

let animal = Animal()
animal.canBreathe()

let person = Person()
person.canBreathe()

```

### Protocol Variables

```
protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

struct Dog: HasName {
    let name: String
    var age: Int
}
    
var woof = Dog(name: "Shelby", age: 3)
woof.name
woof.age
```

### Using extensions to implement functions to a protocol

```
protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

extension HasName {
    func describeMe() {
        print("My name is \(name) and i have \(age) years old")
    }
    
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}
    
var woof = Dog(name: "Shelby", age: 3)
woof.name
woof.age
woof.describeMe()
woof.increaseAge()
woof.age
```

```
protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed (by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed (by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}

var car = Bike()
car.speed
car.increaseSpeed(by: 3)
car.speed
```

### Check Protocol Conformity

```
// Check Conforms to the protocol

func describe (obj: Any) {
    if obj is Vehicle {
        print("Obj Conforms to the protocol")
    } else {
        print("Obj does not Conforms To the Protocol")
    }
}

describe(obj: car)

```