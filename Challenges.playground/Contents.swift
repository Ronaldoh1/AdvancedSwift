//: Playground - noun: a place where people can play

import UIKit



func hasUniqueLetters(text: String) -> Bool {

    let characters = text.characters

    //check if characters are unique

    var dictionary = Dictionary<Character, Any>()

    for char in characters {
        if dictionary[char] == nil {
            dictionary[char] = 1
        } else {
            return false
        }
    }

    return true

}

print(hasUniqueLetters(text: "Ronald"))
print(hasUniqueLetters(text: "abcdefghijklmnopqrstuvwxyz"))
print(hasUniqueLetters(text: "AaBbCc"))
print(hasUniqueLetters(text: "Hello, world"))

// Alternative Solution

func hasUniqueLettersBruteForce(text: String) -> Bool {
    var usedLetters = [Character]()

    for letter in text.characters {

        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }

    return true
}



// The smart solution is to use Set. which can be created directly from charactes property of input string. 

func hasUniqueLettersUsingSets(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}

