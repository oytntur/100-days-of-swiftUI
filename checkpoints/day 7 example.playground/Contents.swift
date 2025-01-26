import Cocoa

let text1="Hello, World!"
let text2="Hel, World!"

print("is anagram: \(checkAnagrams(string1: text1, string2: text2))")

func checkAnagrams( string1: String,  string2: String) -> Bool {
    let lowercaseString1 = string1.lowercased()
    let lowercaseString2 = string2.lowercased()
    
    let set1 = Set(lowercaseString1)
    let set2 = Set(lowercaseString2)
    
    if set1.count != set2.count {
        return false
    }
    
    return set1.isSubset(of: set2)
    
}
