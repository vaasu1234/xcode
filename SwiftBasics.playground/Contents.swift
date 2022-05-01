import UIKit

/*
 In Swift, you declare variables with the var keyword and constants using the let keyword. Cannot change value of constants declared using let keyword.
 
 For variables, The Swift compiler can deduce the type by examining the default value given by you.
 */

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
}

if let jobTitleWithValue = jobTitle {
    let message = "Your job title is " + jobTitleWithValue
    print(message)

}

if let jobTitle = jobTitle {
    let message = "Your job title is " + jobTitle
    print(message)

}

