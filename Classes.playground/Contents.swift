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

let person2 = person
person2.increaseAge()

person2.age
person.age

// Hieritance
class Vehicle {
    func goVroom() {
        print("Vroom Vroom")
    }
}

class Car: Vehicle {
    
}
let car = Car()
car.goVroom()

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
    // myClass will go out of scope in the end of closure
    // so deinit will be call
}
myClosure()
