import UIKit


let firstNumber = 2.5
let secondNumber = 9.7
let thirdNumber = 6.9
let fourthNumber = 8.2

let firstNumberIntPart = Int(firstNumber)
let fractinalPartFromA = firstNumber - Double(firstNumberIntPart)
let secondNumberIntPart = Int(secondNumber)
let fractinalPartFromB = (secondNumber - Double(secondNumberIntPart))
let thirdNumberIntPart = Int(thirdNumber)
let fractinalPartFromC = thirdNumber - Double(thirdNumberIntPart)
let fourthNumberIntPart = Int(fourthNumber)
let fractinalPartFromD = fourthNumber - Double(fourthNumberIntPart)
//We can also extract the fractional part using "truncatingRemainder"

let intPartSum = firstNumberIntPart + secondNumberIntPart + thirdNumberIntPart + fourthNumberIntPart
print("Sum of integer part from digit: ", intPartSum)
let fractionalPartSum = fractinalPartFromA + fractinalPartFromB + fractinalPartFromC + fractinalPartFromD
print("Sum of fractional part from digit: ", NSString(format: "%.1f", fractionalPartSum))

// Parity check

print("\nParity Check:")
var ourDigits = [firstNumberIntPart, secondNumberIntPart, thirdNumberIntPart, fourthNumberIntPart]
for digit in ourDigits {
    if digit % 2 == 0 {
        print(digit, "- This digit is parity")
    }
    else{
        print(digit, "- This digit is not parity")
    }
}


// Extra exercises
// Task 1
print("\n")

let height = 15
let width = 20

if height > width {
    print("height more than width:", height, ">", width)
}
else {
  print("width more than height:", width, ">", height)
}

// Task 2
print("\n")

let hasKey = true
let hasDocuments = true
let hasPen = true
let takenApple = false
let takenOrange = true
let shouldGoToWork: String

if hasKey && hasDocuments && hasPen && (takenApple || takenOrange) {
    shouldGoToWork = "You took all things, you can go to work"
}
else {
    shouldGoToWork = "You forgot some of things, come back home"
}
print(shouldGoToWork)

// Task 3
print("\n")

let numberToDivide = 25

if numberToDivide % 5 == 0 && numberToDivide % 3 == 0 {
    print(numberToDivide, "- This number can be divided by 5 and 3 without a reminder")
}
else if numberToDivide % 5 == 0 {
    print(numberToDivide, "- This number can be divided by 5 without a reminder")
} 
else if numberToDivide % 3 == 0 {
    print(numberToDivide, "- This number can be divided by 3 without a reminder")
}
else {
    print(numberToDivide, "- This number can't be divided by 3 and 5 without a reminder")
}

// Task 4
print("\n")

let age = 1

switch age {
case 18...:
    print("You are allowed to drink")
case 16...18:
    print("Think about a way how you can look like an adult")
case 1...16:
    print("Drink Juice")
default:
    print("You write wrong number of age. Try again")
}

// Task 5
print("\n")

let sideOfTheWorld = "south"

switch sideOfTheWorld {
case "south":
    print("There's pretty hot there")
case "north":
    print("There's pretty cold there")
case "west":
    print("There's opportunities there")
case "east":
    print("There's different culture there")
default:
    print("You write wrong side of the world. Try again and be attentive")
}
