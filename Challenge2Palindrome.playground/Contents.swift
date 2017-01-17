//: Playground - noun: a place where people can play

import UIKit



func isAPalindrome(input: String) -> Bool {
    let original = input.characters
    let reversed = input.characters.reversed()
    return String(original).lowercased() == String(reversed).lowercased()
}

print(isAPalindrome(input: "rotator"))
print(isAPalindrome(input: "Ronald"))
print(isAPalindrome(input: "Rats live on no evil star"))


// Alternative solution

func isAPalindromeBookSolution(input: String) -> Bool {
    return input.lowercased().characters.reversed() == Array(input.lowercased().characters)
}

