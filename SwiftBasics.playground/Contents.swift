import UIKit

/*
 In Swift, you declare variables with the var keyword and constants using the let keyword. Cannot change value of constants declared using let keyword.
 
 For variables, The Swift compiler can deduce the type by examining the default value given by you.
 */

print("hello \(2+3) worlsd")
print("2+3 = \(2+3+9)")


let constant = 10
var y = 10
var x = y + constant

//Type Inference.
let constant2: Int = 10
var number: Int = 10
var result: Int = number + constant

var message = "The best way to get started is to stop talking and code."

var greeting = "Hello"
var name = "Simon"
message = greeting + name

message.uppercased()
message.count

var bookPrice = 39
var numOfCopies = 5
var totalPrice = bookPrice * numOfCopies
//use String() to concatenate numbers and
var totalPriceMessage = "The price of the book is $" + String(totalPrice)

//alternate way to concatenate numbers -> String interpolations
var totalPriceMessage2 = "The price of the book is $ \(totalPrice)"


//if-else conditions
var timeYouWakeUp = 6

if timeYouWakeUp == 6 {
    print("Cook yourself a big breakfast!")
} else {
    print("Go out for breakfast")
}

var bonus = 5000

if bonus >= 10000 {
    print("I will travel to Paris and London!")
} else if bonus >= 5000 && bonus < 10000 {
    print("I will travel to Tokyo")
} else if bonus >= 1000 && bonus < 5000 {
    print("I will travel to Bangkok")
} else {
    print("Just stay home")
}

//switch statement
switch timeYouWakeUp {
case 6:
    print("Cook yourself a big breakfast!")
default:
    print("Go out for breakfast")
}


//arrays
var bookCollection = ["Tool of Titans", "Rework", "Your Move"]
bookCollection.append("Authority")
print (bookCollection[0])
bookCollection.count


//for loops
for index in 0...bookCollection.count - 1 {
    print(bookCollection[index])
}

for book in bookCollection {
    print(book)
}


//dictionaries
var bookCollectionDict = ["1328683788": "Tool of Titans", "0307463745": "Rework", "1612060919": "Authority"]

bookCollectionDict["0307463745"]

for (key, value) in bookCollectionDict {
    print("ISBN: \(key)")
    print("Title: \(value)")
}

/*
 Optionals -
 optional is just a type in Swift. This type indicates that the variable can have a value or no value. To declare a variable as an optional, you indicate it by appending a question mark (?).
 Unlike a non-optional variable that the compiler can deduce the type from its initial value, you have to explicitly specify the type of an optional variable (e.g. String, Int).
 For any optional variable with no value, a special value called nil is assigned to it.
 Whenever you need to access an optional variable, Xcode forces you to perform verification to find out whether the optional has a value.


 */
var jobTitle: String?

jobTitle = "iOS Developer"


if jobTitle != nil {
    let message = "Your job title is " + jobTitle!
    print(message)
} else {
    print("else")
}

if let jobTitleWithValue = jobTitle {
    let message = "Your job title is " + jobTitleWithValue
    print(message)

}

if let jobTitle = jobTitle {
    let message = "Your job title is " + jobTitle
    print(message)

}

//variable
var arr = ["vasu", "viraj", "Megha"]
print(arr[1])
arr.shuffle()
print(arr[1])

//let is used for constant
let stockName = "Apple"

let stockSymbol = "AAPL"

let randomNumber = Int.random(in: 1...12)
print(randomNumber)

let randomNumber2 = Int.random(in: 1..<5)
let ranomNumber3 = Float.random(in: 1...5)

let password = "Davinci" + "1234"

divide(n1:10, n2:4)

func divide(n1: Int, n2: Int) {
  let decimalN1 = Double(n1)
  let decimalN2 = Double(n2)
  print(decimalN1 / decimalN2)
}


// three dots to create a range
let hardness = 5

switch hardness {
case 1...3:
    print("<3")
case 4...5:
    print(">3")
default:
    print("3")
}

//optionals - use ?? or !
var player1UserName: String? = "virat"
//this is not an optional value
var player2UserName = player1UserName!
player1UserName = nil

//triggers crash
//print(player1UserName!)

if(player1UserName != nil){
    print(player1UserName!)
}


let array = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

print(array[0][2])

let quiz = [
    ["Four + Two is equal to Six", "True"],
    ["Five - Three is greater than One", "True"]
]

print(quiz[1][0])

struct Town {
    let name = "Angelaland"
    var citizens = ["Angela"]
    var resources = ["Grain":100, "Ore":42, "Wool":75]
    
    func fortify(){
        print("Defences increased")
    }
}

var myTown = Town()
print(myTown.citizens)
print(myTown.resources["Grain"]!)
myTown.citizens.append("Keanu Reeves")

myTown.fortify()


//struct self is immutable.
struct Towns {
    let name: String
    var citizens: [String]
    var resources:[String:Int]
    
    init(name:String, people:[String], stats:[String: Int]){
        self.name = name
        citizens = people
        resources = stats
    }
    
    func fortify(){
        print("Defences increased!")
    }
    
    mutating func harvestRice() {
        //changes property within the struct.
        self.resources["Rice"] = 100
    }
}


var anotherTown = Towns(name: "Moderna", people: ["Adam", "Dexter"], stats:["Coconuts":100])

print(anotherTown.citizens)
anotherTown.citizens.append("Wilson")

var someValue:Int!
let defaultValue = 5
let unwrappedValue:Int = someValue ?? defaultValue
print(unwrappedValue)

func getMilk (money: Int) -> Int {
    let change = money-2
    return change
}

var change = getMilk(money:4)

/*
 Optionals
 var bmi:Float?
 
 1. Force Unwrapping (bmi!)
 2. Check for nil value (bmi != nil)
 3. Optional Binding (if let safebmi = bmi)
 4. Nil Coalescing Operator bmi??default value
 5. Optional Chaining (optional?.property) (optiona?.method())
 */

var myOptional: String?

myOptional = nil
myOptional = "Angela"

var text:String = myOptional!
let text2: String = myOptional ?? "I am the default value"

if myOptional != nil {
    text = myOptional!
}

if let safeOptional = myOptional {
    text = safeOptional
}

struct MyOptional {
    var property:Int = 123
    func method() {
        print("I am the struct")
    }
}

let structOptional:MyOptional?

structOptional = nil

print(structOptional?.property)
