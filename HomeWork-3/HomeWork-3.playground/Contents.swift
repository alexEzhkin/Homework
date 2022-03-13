import UIKit
import Foundation


let arrayOfTuples = [(26, "Age"), (185, "Heigh"), (10, "Size Of Leg"), (79, "Weight")]

// First Task

func powIntValuesFromArray(_ array: [(value: Int, name: String)]) -> [Int] {
    var resultArray: [Int] = []
    var arrayOfInteger: [Int] = []
    for intElement in array {
        arrayOfInteger.append(intElement.value)
    }
    for number in 0..<arrayOfInteger.count {
        resultArray.append(Int(pow(Double(arrayOfInteger[number]), 2)))
    }
    print("Result of squaring Int element from array: ", resultArray)
    
    return resultArray
}
// Simple method without range
/*
for intElement in array {
    intArray.append(Int(pow(Double(intElement.value), 2)))
}
*/

powIntValuesFromArray(arrayOfTuples)


// Second Task

func searchEvenNumbersInArray(_ array: [(value: Int, name: String)]) -> [Int] {
    var arrayOfEvenNumbers: [Int] = []
    for intElemnet in array {
        if(intElemnet.value % 2 == 0) {
            arrayOfEvenNumbers.append(intElemnet.value)
        }
    }
    print("Even numbers from array: ", arrayOfEvenNumbers)
    
    return arrayOfEvenNumbers
}

searchEvenNumbersInArray(arrayOfTuples)

// Second task with *

func searchEvenNumbersInArrayWithFilter(_ array: [(value: Int, name: String)]) -> [Int] {
    var intArray: [Int] = []
    for intElement in array {
        intArray.append(intElement.value)
    }

    let evenNumbers = intArray.filter { $0.isMultiple(of: 2) }
    print("Even numbers from array: ", evenNumbers)
    
    return evenNumbers
}

searchEvenNumbersInArrayWithFilter(arrayOfTuples)

// Third Task

func sortArrayOfTuples(_ array: [(value: Int, name: String)]) {
    let sortedArray = array.sorted {
        if $0.name.count == $1.name.count {
            return $0.value < $1.value
        }
        return $0.name.count < $1.name.count
    }
    print("Sorted array by lenght: ", sortedArray)
}

sortArrayOfTuples(arrayOfTuples)

