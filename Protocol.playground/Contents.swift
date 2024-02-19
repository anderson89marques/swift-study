import Foundation

protocol CanBreathe {
    // We can`t create a implementation to a protocol function
    // And we can`t Instanciate a protocol
    func canBreathe() // This function must be overrated by the classes that use this protocol
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

// Protocol Variables

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

// Check Conforms to the protocol

func describe (obj: Any) {
    if obj is Vehicle {
        print("Obj Conforms to the protocol")
    } else {
        print("Obj Not Conforms To the Protocol")
    }
}

describe(obj: car)
