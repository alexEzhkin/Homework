import UIKit
import Darwin

// First Task

func divide(_ firstNumber: Int, by secondNumber: Int) -> Int {
    let resultDivision = firstNumber / secondNumber
    
    return resultDivision
}

func divide(_ firstNumber: Double, by secondNumber: Double) -> Double {
    let resultDivision = firstNumber / secondNumber
    
    return resultDivision
}

func divide(_ firstNumber: Float, by secondNumber: Float) -> Float {
    let resultDivision = firstNumber / secondNumber
    
    return resultDivision
}

// In this task, i did the same with other operations by the folowing method:

func sum<T: Numeric>(_ firstNumber: T, plus secondNumber: T) -> T {
    let resultOfSum = firstNumber + secondNumber
    
    return resultOfSum
}

func subtract<T: Numeric>(_ firstNumber: T, minus secondNumber: T) -> T {
    let resultOfSum = firstNumber - secondNumber
    
    return resultOfSum
}

func multiply<T: Numeric>(_ firstNumber: T, by secondNumber: T) -> T {
    let resultOfSum = firstNumber * secondNumber
    
    return resultOfSum
}

// Checking

let firstIntNumber = 9
let secondIntNumber = 3
let firstDoubleNumber = 11.7
let secondDoubleNumber = 2.5
let firstFloatNumber = 53.235534
let secondFloatNumber = 13.2112312

print("Result of division int numbers: ", divide(firstIntNumber, by: secondIntNumber))
print("Result of division double numbers: ", divide(firstDoubleNumber, by: secondDoubleNumber))
print("Result of division float numbers: ", divide(firstFloatNumber, by: secondFloatNumber))

print("Result of sum int numbers: ", sum(firstIntNumber, plus: secondIntNumber))
print("Result of sum double numbers: ", sum(firstDoubleNumber, plus: secondDoubleNumber))
print("Result of sum float numbers: ", sum(firstFloatNumber, plus: secondFloatNumber))

print("Result of substraction int numbers: ", subtract(firstIntNumber, minus: secondIntNumber))
print("Result of substraction double numbers: ", subtract(firstDoubleNumber, minus: secondDoubleNumber))
print("Result of substraction float numbers: ", subtract(firstFloatNumber, minus: secondFloatNumber))

print("Result of multiplication int numbers: ", multiply(firstIntNumber, by: secondIntNumber))
print("Result of multiplication double numbers: ", multiply(firstDoubleNumber, by: secondDoubleNumber))
print("Result of multiplication float numbers: ", multiply(firstFloatNumber, by: secondFloatNumber))

// Second Task

func numberDigitsSum(_ number: Int) -> Int {
    let intNumberIntoString = String(number)
    let digitsArray = intNumberIntoString.compactMap { $0.wholeNumberValue }
    var sum: Int = 0
    for digit in digitsArray {
        sum += digit
    }
   
    return sum
}
var resultSum = numberDigitsSum(1853)
print("Result of summary digits from number: ", resultSum)

// Third Task

func stringComparison(_ firstString: String, equals secondString: String) {
    if firstString == secondString {
        print("This strings are the same")
    }
    else {
        print("This strings are not the same")
    }
}

stringComparison("TeachMeSkills", equals: "TeachMeSkills")
stringComparison("Teach Me", equals: "Teaching Me")
stringComparison("TeachMeSkills", equals: "TeachSKills")


// Fourth Task
/*
var numberForEndlessCycle = 0
func endLessCycle () {
    numberForEndlessCycle = numberForEndlessCycle + 1
    print(numberForEndlessCycle)
    endLessCycle()
}
 
endLessCycle()

//or simple way =)
 
func endLessRecursion() {
    endLessRecursion()
}
*/


// Fifth Task

func powNumber(_ number: Int, factor: Int = 2) -> Int {
    Int(pow(Double(number), Double(factor)))
}

// or

func powNumberWithGuard(_ number: Int, factor: Int = 3) -> Int {
    guard number > 0, factor > 0 else {
        print("You write wrong number")
        return 0
    }
    let resultPow = Int(pow(Double(number), Double(factor)))
    return resultPow
}

powNumber(4)
powNumberWithGuard(4)

// Sixth Task

func factorial(of number: Int) -> Int {
    if number == 1 {
        return 1
    }
    else {
        return number * factorial(of: number - 1)
    }
}

factorial(of: 3)
