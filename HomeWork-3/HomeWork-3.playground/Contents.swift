import UIKit
import Foundation


let tuplesArray = [(26, "Age"), (185, "Heigh"), (10, "Size Of Leg"), (79, "Weight")]

// First Task

func powIntValuesFromArray(_ array: [(value: Int, name: String)]) -> [Int] {
    var resultArray: [Int] = []
    for number in 0..<array.count {
        resultArray.append(Int(pow(Double(array[number].value), 2)))
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

powIntValuesFromArray(tuplesArray)


// Second Task

func searchEvenNumbersInArray(_ array: [(value: Int, name: String)]) -> [Int] {
    var evenNumbersArray: [Int] = []
    for intElement in array {
        if intElement.value % 2 == 0 {
            evenNumbersArray.append(intElement.value)
        }
    }
    print("Even numbers from array: ", evenNumbersArray)
    
    return evenNumbersArray
}

searchEvenNumbersInArray(tuplesArray)

// Second task with *

func searchEvenNumbersInArrayWithFilter(_ array: [(value: Int, name: String)]) -> [(Int, String)] {
    let evenNumbers = array.filter { $0.value.isMultiple(of: 2)}
    print("Array with even numbers: ", evenNumbers)
    
    return evenNumbers
}

searchEvenNumbersInArrayWithFilter(tuplesArray)

// Third Task

func sortArrayOfTuples(_ array: [(value: Int, name: String)]) {
    let sortedArray = array.sorted {
        if $0.name.count == $1.name.count {
            return $0.value < $1.value
        }
        return $0.name.count < $1.name.count
    }
    print("Sorted array by length: ", sortedArray)
}

sortArrayOfTuples(tuplesArray)

