//: Playground - noun: a place where people can play

import UIKit

//Write a function that accepts a string and returns true if it only contains numbers 0 through 9. 

//func hasOnlyDigits(_ input: String) -> Bool {
//    let characters = input.characters.map { String($0) }
//    for letter in characters {
//        if Int(letter) == nil {
//            return false
//        }
//    }
//    return true
//}
//
//// solution 1 
//func challenge23(input: String) -> Bool {
//    return UInt(input) != nil
//}
//
//// solution 2
//
//func challenge23b(input: String) -> Bool {
//    return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
//}

//Brute force 

func bruteForceHasOnlyDigits(_ input: String) -> Bool {
    let characters = Array(input.characters.map { String($0) })

    for letter in characters {
        if Int(letter) == nil {
            return false
        }
    }

    return true
}


bruteForceHasOnlyDigits("123b")
bruteForceHasOnlyDigits("1245")

func hasOnlyDigit(_ input: String) -> Bool {

    guard input.characters.count > 0 else {
        return false
    }

    return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil

}
