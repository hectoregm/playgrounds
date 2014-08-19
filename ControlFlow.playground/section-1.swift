for index in 1...5 {
  println("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
  answer *= base
}

println("\(base) to the power of \(power) is \(answer)")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
  println("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
  println("\(animalName)s have \(legCount) legs")
}

for character in "Hello" {
  println(character)
}

for var index = 0; index < 3; ++index {
  println("index is \(index)")
}

var index: Int
for index = 0; index < 3; ++index {
  println("index is \(index)")
}

println("The loop statements were executed \(index) times")