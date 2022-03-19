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
    if let element = element {
        let lowercasedCharactersArray  = Array(element.lowercased())
        charactersArray.append(contentsOf: lowercasedCharactersArray)
    } else {
        continue
    }
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
    else {
        print("Some value is empty")
    }
    return 0
}
print(multiplyOptionals(15, by: 3))

func divideOptionals(_ firstOptionalFloatNumber: Float?, by secondOptionalFloatNumber: Float?) -> Float {
    if let firstFloat = firstOptionalFloatNumber, let secondFloat = secondOptionalFloatNumber {
        return firstFloat / secondFloat
    }
    else {
        print("Some value is empty")
    }
    return 0
}
print(divideOptionals(357.2312, by: 2.122))

func subtractOptionals(_ firstoptionalDoubleNumber: Double?, minus secondOptionalDoubleNumber: Double?) -> Double {
    (firstoptionalDoubleNumber ?? 0) - (secondOptionalDoubleNumber ?? 0)
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

func checkPalindrome(_ optionalString: String?) -> Bool {
    guard var string = optionalString else {
        print("Imput string is empty")
        return false
    }
    string = string.lowercased().replacingOccurrences(of: " ", with: "")
    return string == String(string.reversed())
}
print(checkPalindrome("Too bad i hid a boot"))
print(checkPalindrome("Too bad hi hid a boot"))
