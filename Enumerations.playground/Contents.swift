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
// In swict case all the enum values must be checked


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

// Enum with Raw Value
enum Family: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

print(Family.brother.rawValue) // "Bro"
print(Family.sister.rawValue) // "Sis"
