let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)


let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("the status message is \(statusMessage)")

http404Error.1

let http200Status = (statusCode: 200, description: "OK")
http200Status.statusCode

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

if convertedNumber {
    println("\(possibleNumber) has an integer value of \(convertedNumber)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

class Person {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

println(1 + 2)

var array: String[] = []
println(array[10])

