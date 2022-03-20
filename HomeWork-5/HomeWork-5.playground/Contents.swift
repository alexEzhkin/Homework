import UIKit


// First Task

let integerArray = [3, 65, 2, 512, 985, 122, 74, 7, 155]

let evenNumbersArray = integerArray.filter { $0 % 2 == 0 }
let oddNumbersArray = integerArray.filter { $0 % 2 != 0 }
print(evenNumbersArray)
print(oddNumbersArray)

// Second Task

let optionalStringArray = ["Language", "Skills", nil, "Country", "Heigh", "Animal", nil, "Teach", "Name"]

var charactersArray = [Character]()

for element in optionalStringArray {
    guard let element = element else { continue }

    let lowercasedCharactersArray  = Array(element.lowercased())
    charactersArray.append(contentsOf: lowercasedCharactersArray)
}

func characterFrequencies(of array: [Character]) -> Dictionary<String.Element, Int> {
    let frequencyPair = array.map { ($0, 1) }
    return Dictionary(frequencyPair, uniquingKeysWith: +)
}
print("Count of each character in array: ", characterFrequencies(of: charactersArray))

// Third Task

func sumOptionals(_ firstOptionalString: String?, plus secondOptionalString: String?) -> String {
    guard let firstString = firstOptionalString, let secondString = secondOptionalString else {
        return "Some value is empty"
    }
    return firstString + " " + secondString
}
print(sumOptionals("Teach Me", plus: "Skills"))

func multiplyOptionals(_ firstOptionalIntNumber: Int?, by secondOptionalIntNumber: Int?) -> Int {
    if let firstInt = firstOptionalIntNumber, let secondInt = secondOptionalIntNumber {
        return firstInt * secondInt
    }
    return 0
}
print(multiplyOptionals(15, by: 3))

func divideOptionals(_ firstOptionalFloatNumber: Float?, by secondOptionalFloatNumber: Float?) -> Float {
    if let firstFloat = firstOptionalFloatNumber, let secondFloat = secondOptionalFloatNumber {
        return firstFloat / secondFloat
    }
    return 0
}
print(divideOptionals(357.2312, by: 2.122))

func subtractOptionals(_ firstOptionalDoubleNumber: Double?, minus secondOptionalDoubleNumber: Double?) -> Double {
    (firstOptionalDoubleNumber ?? 0) - (secondOptionalDoubleNumber ?? 0)
}
print(subtractOptionals(9323.111, minus: 72333.23))

func powOptionals(_ firstOptionalIntNumber: Int?, factor secondOptionalIntNumber: Int?) -> Int {
    guard let firstIntNumber = firstOptionalIntNumber, let secondIntNumber = secondOptionalIntNumber else {
        return 0
    }
    return Int(pow(Double(firstIntNumber), Double(secondIntNumber)))
}
print(powOptionals(87, factor: 2))

// Fourth Task

let ignoredSymbols = [" ", ".", "!", "?", ":", ",", "-", "(", ")"]

func checkPalindrome(_ optionalString: String?) -> Bool {
    guard var string = optionalString else {
        print("Input string is empty")
        return false
    }
    for symbols in ignoredSymbols {
        string = string.lowercased().replacingOccurrences(of: symbols, with: "")
    }
    return string == String(string.reversed())
}
print(checkPalindrome("Too bad i hid a boot"))
print(checkPalindrome("Too.., bad !i -hid a )boo!?t"))
print(checkPalindrome("Too bad hi hid a boot"))
