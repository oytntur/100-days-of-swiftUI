import Cocoa

//create a string array with duplicates
let stringArray = ["apple", "banana", "apple", "orange", "banana", "apple" ]

print("item count of array: \(stringArray.count)")

var uniqueStrings: Set<String> = Set(stringArray)
print("unique item count of array: \(uniqueStrings.count)")

