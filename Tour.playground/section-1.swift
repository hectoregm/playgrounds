println("Hello, world")

let four: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let name = "Hector"
let price = 10.0

let message = "Hi \(name), the price in dollars is \(price) and in pesos \(price * 13.0)"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "nootle of water"

var occupations = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

let emptyArray = String[]()
let emptyDictionary = Dictionary<String,Float>()

shoppingList = []

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if (score > 50) {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
optionalName = nil
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var kind_largest = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            kind_largest = kind
            largest = number
        }
    }
}

kind_largest
largest

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m

var firstForLoop = 0
for i in 0..3 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += i
}
secondForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", "Tuesday")

func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}
sumOf()
sumOf(42, 597, 12)

func average(numbers: Double...) -> Double {
    var total = 0.0
    var length = 0

    for number in numbers {
        total += number
        length += 1
    }
    
    return total / Double(length)
}
average(10, 9.9, 8.2)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true;
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]

hasAnyMatches(numbers, lessThanTen)
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

numbers.map({
    (number: Int) -> Int in
    if number % 2 != 0 {
        return 0
    } else {
        return number
    }
})

numbers.map({ number in 3 * number})
sort([1, 5, 3, 12, 2]) { $0 > $1 }

