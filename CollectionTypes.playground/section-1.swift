// Array

var shoppingList = ["Eggs", "Milk"]

println("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
  println("The shopping list is empty.")
} else {
  println("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]

shoppingList.insert("Maple Syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()

for item in shoppingList {
  println(item)
}

for (index, value) in enumerate(shoppingList) {
  println("Item \(index + 1): \(value)")
}

var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)

someInts = []

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)

var sixDoubles = threeDoubles + anotherThreeDoubles

// Dictionary

var airports: [String:String] = ["TYO": "Tokyo", "DUB": "Dublin"]

println("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
  println("the airports dictionary is empty.")
} else {
  println("The airports dictionary is not empty.")
}

airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") {
  println("The old value for DUB was \(oldValue)")
}

if let airportName = airports["DUB"] {
  println("The name of the aiport is \(airportName)")
} else {
  println("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"

airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB") {
  println("The removed airport's name is \(removedValue).")
} else {
  println("The airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports {
  println("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
  println("Airport code: \(airportCode)")
}

for airportName in airports.values {
  println("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)

let aiportNames = [String](airports.values)

var namesOfIntegers = [Int: String]()

namesOfIntegers[16] = "sixteen"

namesOfIntegers = [:]
