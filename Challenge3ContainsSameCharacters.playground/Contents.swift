//: Playground - noun: a place where people can play

import UIKit

// first attempt 

func containSameCharacters(input1: String, input2: String) -> Bool {

    let set1 = Set(input1.characters)
    let set2 = Set(input2.characters)

    if set1.count != set2.count {
        return false
    }

    return set1 == set2
}


print(containSameCharacters(input1: "abca", input2: "abca"))
print(containSameCharacters(input1: "abc", input2: "Abc"))

// the naive approach 

func challenge3a(string1: String, string2: String) -> Bool {
    var checkString = string2
    for letter in string1.characters {
        if let index = checkString.characters.index(of: letter) {
            checkString.characters.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.characters.count == 0
}

// best solution it's to use array and sort them

func containsSameCharactersBookSolution(string1: String, string2: String) -> Bool {
    let array1 = Array(string1.characters)
    let array2 = Array(string2.characters)
    return array1.sorted() == array2.sorted()
}