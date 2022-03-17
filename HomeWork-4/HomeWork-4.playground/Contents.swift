import UIKit

var countryDictionaryWithFacts = [
    "France": ("Most time zones", "Europe"),
    "Somalia": ("A country where there is no peace", "Africa"),
    "Monaco": ("A country that is smaller than New York Park", "Europe"),
    "India": ("The most diverse country", "Asia"),
    "Egypt": ("The oldest state", "Africa"),
    "Republic of Nauru": ("The largest number of overweight people", "Oceania"),
    "Japan": ("Island nation", "Asia"),
    "North Korea": ("Is a closed country", "Asia")
]

// First Task

countryDictionaryWithFacts["USA"] = ("Beautiful country", "North America")
countryDictionaryWithFacts.updateValue(("There is no state language in the country", "North America"), forKey: "USA")
countryDictionaryWithFacts.updateValue(("Small country", "Unknown"), forKey: "Monaco")
countryDictionaryWithFacts.removeValue(forKey: "Monaco")

// Second Task

let filteredCountryDictionary = countryDictionaryWithFacts.filter { $0.key.count > 6 }
print(filteredCountryDictionary)

// Third Task

var arrayOfCountryFacts: [String] = []
for (country, fact) in countryDictionaryWithFacts {
    arrayOfCountryFacts.append("\(country): \(fact.0)")
}
let sortedArrayByLength = arrayOfCountryFacts.sorted { $0.count > $1.count }
print(sortedArrayByLength)

// Fourth Task

let reduceCountryByContinent = countryDictionaryWithFacts.reduce(into: [String: [String]]()) {
    $0[$1.value.1, default: []] += [$1.key]
}
print(reduceCountryByContinent)
reduceCountryByContinent["Europe"]

// Extra task

let animalsArray = ["Cat", "Dog", "Bird", "Shark", "Butterfly", "Bull", "Gorilla", "Cat", "Shark", "Lion", "Cat", "Bull", "Spider"]

// First option
let removeDuplicateBySet = Array(Set(animalsArray))
print(removeDuplicateBySet)

// Second option
let removeDuplicateByMap = NSOrderedSet(array: animalsArray).compactMap( { $0 as? String} )
print(removeDuplicateByMap)

// Third option
let removeDublicateByNSOrderedSet = Array(NSOrderedSet(array: animalsArray))
print(removeDublicateByNSOrderedSet)

// Fourth option
extension Sequence where Element: Hashable {
    func removingDuplicatesWithFilter() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}
let filterResult = animalsArray.removingDuplicatesWithFilter()
print(filterResult)

// Fifth option
extension Array where Element: Equatable {
    func removingDuplicatesWithReduce() -> Array {
        return reduce(into: []) { result, element in
            if !result.contains(element) {
                result.append(element)
            }
        }
    }
}
let reduceResult = animalsArray.removingDuplicatesWithReduce()
print(reduceResult)

// Sixth option
let removeDublicatesByFilterAndMap = animalsArray.enumerated().filter { animalsArray.firstIndex(of: $0.1) == $0.0 }.map { $0.1 }
print(removeDublicatesByFilterAndMap)
