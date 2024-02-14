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

// we could get the same result like below.
struct CommodoreComputer2 {
    let name: String
    let manufacturer: String = "Commodore"
}
let c128 = CommodoreComputer2(name: "C128")
print(c128)

// Computer Properties

struct Person2 {
    let firstName: String
    let lastName: String
    // This is the Computer Property
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
print(Person2(firstName: "Anderson", lastName: "Marques").fullName)

// Mutable Struct
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        currentSpeed = speed
    }
}

var car = Car(currentSpeed: 20)
car.drive(speed: 60)
