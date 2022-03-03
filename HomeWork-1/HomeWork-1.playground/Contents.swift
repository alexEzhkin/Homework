import UIKit


let a = 2.5
let b = 9.7
let c = 6.9
let d = 8.2

var intPartFromA = Int(a)
var fractinalPartFromA = a - Double(intPartFromA)
var intPartFromB = Int(b)
var fractinalPartFromB = (b - Double(intPartFromB))
var intPartFromC = Int(c)
var fractinalPartFromC = c - Double(intPartFromC)
var intPartFromD = Int(d)
var fractinalPartFromD = d - Double(intPartFromD)
//We can also extract the fractional part using "truncatingRemainder"

var sumOfIntPart = intPartFromA + intPartFromB + intPartFromC + intPartFromD
print("Sum of integer part from digit: ", sumOfIntPart)
var sumOfFractionalPart = fractinalPartFromA + fractinalPartFromB + fractinalPartFromC + fractinalPartFromD
print("Sum of fractional part from digit: ", NSString(format: "%.1f", sumOfFractionalPart))

// Parity check

print("\nParity Check:")
var ourDigits = [intPartFromA, intPartFromB, intPartFromC, intPartFromD]
for i in ourDigits {
    if i % 1 == 0 {
        print(i, "- This digit is parity")
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

var condition = (hasKey && hasDocuments && hasPen && (takenApple || takenOrange))
if (condition) {
    shouldGoToWork = "You took all things, you can go to work"
}
else {
    shouldGoToWork = "You forgot some of things, come back home"
}
print(shouldGoToWork)

// Task 3
print("\n")

let numberToDevide = 25

if numberToDevide % 5 == 0 && numberToDevide % 3 == 0 {
    print(numberToDevide, "- This number can be divided by 5 and 3 without a reminder")
}
else if numberToDevide % 5 == 0 {
    print(numberToDevide, "- This number can be divided by 5 without a reminder")
} 
else if numberToDevide % 3 == 0 {
    print(numberToDevide, "- This number can be divided by 3 without a reminder")
}
else {
    print(numberToDevide, "- This number can't be divided by 3 and 5 without a reminder")
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
