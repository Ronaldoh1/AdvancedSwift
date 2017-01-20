//: Playground - noun: a place where people can play

import UIKit

//Given a string in English, return a tuple containing the number of vowels and consonants 


func numberOfVowelsAndConsonants(in input: String) -> (Int, Int) {

    let characters = Array(input.lowercased().characters)
    let vowelSet = Set("aeiou".characters)
    var vowelCount = 0
    var constantCount = 0
    for i in 0..<input.characters.count {
        if vowelSet.contains(characters[i]) {
            vowelCount += 1
        } else {
            constantCount += 1
        }
    }

    return (vowelCount, constantCount)
}


print(numberOfVowelsAndConsonants(in: "Mississippi"))