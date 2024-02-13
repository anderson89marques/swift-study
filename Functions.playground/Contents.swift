import Foundation

func noArgumentsAndNoReturnValue() {
    print("I don`t know what i`m doing")
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
// External Arguments must named when call the functio
customMinus(lhs: 20, rhs: 10)
// Call the function like
// customMinus(20, 10)
// Raises a exception

// Internal Arguments is only used inside the function
func customMinus2(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}
// And when call the funciton, we don`t access the arguments name
customMinus2(20, 10)
// So call the function like below
// customMinus(lhs: 20, rhs: 10)
// Raies a exception


// The function that return a value must be set to a variable
// or a warning will be raised.
// To avoid that we can use the decorator discardableResult to fix this warning
@discardableResult
func myCustomAdd(_ lhs: Int, _ rhs: Int) -> Int {
    lhs + rhs
}
// So i can call the function without consume the result from this function
myCustomAdd(25, 87)


// with is the external name of the argument and
// value is the internal name of the argument
// Function can caontains another functions
// Inner Functions can`t called externally
func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value)
}

let result = doSomethingComplicated(with: 100)
print(result)


func getFullName(
    firstName: String = "Anderson",
    lastName: String = "Marques"
) -> String {
    "\(firstName) \(lastName)"
}
print(getFullName())
