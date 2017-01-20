//: Playground - noun: a place where people can play

import UIKit

//Given a string in English, return a tuple containing the number of vowels and consonants 


func numberOfVowelsAndConsonants(in input: String) -> (vowels: Int, consonants: Int) {

    let characters = Array(input.lowercased().characters)
    let vowelsSet = Set("aeiou".characters)
    let consonantsSet = Set("bcdfghjklmnpqrstvwxyz".characters)
    var vowelCount = 0
    var constantCount = 0
    for letter in characters {
        if vowelsSet.contains(letter) {
            vowelCount += 1
        } else if consonantsSet.contains(letter) {
            constantCount += 1
        }
    }

    return (vowelCount, constantCount)
}


print(numberOfVowelsAndConsonants(in: "Mississippi"))


// Improved solution. First you could use a CharacterSet here, but it has a fetal flaw. 


func numberOfVowersAndConsonants2(_ input: String) -> (vowels: Int, consonant: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")

    var vowelCount = 0
    var consonantCount = 0

    for letter in input.lowercased().characters {
        let stringLetter = String(letter)

        if stringLetter.rangeOfCharacter(from: vowels) != nil {
            vowelCount += 1
        } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }

    return (vowelCount, consonantCount)
}

print(numberOfVowersAndConsonants2("Mississippi"))
