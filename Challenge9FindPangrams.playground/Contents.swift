//: Playground - noun: a place where people can play

import UIKit

// Write a function that return true if it is given a string that is an English pangram, ignoring letter case.

//initial attempt

func isAPangram(_ string: String) -> Bool {
    let alphabetSet = Set("abcdefghejklmnopqrstuvwxyz".characters)
    let characterSet = Set(string.characters)

    if characterSet.isSuperset(of: alphabetSet) {
        return true
    }

    return false
}


print(isAPangram("The quick brown fox jumps over the lazy dog"))
print(isAPangram("The quick brown fox jumpsed over the lazy dog"))


// Alternative Solution
//You could try an solve this using character sets but its really not needed: Swifts characters conform to Comparable, so you can compare against them "a" and "z" to ensure they're alphabetical

func isAPangram2(_ string: String) -> Bool {
    let set = Set(string.lowercased().characters)
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26 
}