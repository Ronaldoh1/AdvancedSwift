//: Playground - noun: a place where people can play

import UIKit

//First attempt
//first, we need to create an array of Strings which contains each character converted to a string. 
//then we need to create an NSOrderSet from the array. This will remove the duplicates and keep the order 
//then joined the letters together

func removeRepeatedCharacters(in text: String) -> String {
    let array = text.characters.map { String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}

// you can use brute force to get this done as well. 

func removeRepeatedCharactersBruteForce(in text: String) -> String {
    var used = [Character]()

    for letter in text.characters {
        if !used.contains(letter) {
            used.append(letter)
        }
    }

    return String(used)
}

///WHAT ABOUT DICTIONARIES --PREFERED 

func removeCharactersUsingDictionary(in text: String) -> String {
    var dictionary = [String: Bool]()
    let array = text.characters.map { String($0) }
    for letter in array {
        if dictionary[letter] == nil {
            dictionary[letter] = true
        }
    }
    return ([String](dictionary.keys)).joined()
}


print(removeCharactersUsingDictionary(in: "Hernandez"))




