//: Playground - noun: a place where people can play

import UIKit

//Write a function that accepts two strings, and returns tru if they are identical in lenght, but have no more than three different letters, taking ase and string into account

func threeDifferentLetters(_ input1: String, input2: String) -> Bool {
    let characters1 = Array(input1.characters)
    let characters2 = Array(input2.characters)

    //ensure that the two strings are same length. 

    guard let characters1.count == characters2.count else {
        return false
    }
    var differenceCounter = 0

    for (index, letter) in characters1.enumerated() {
        guard differenceCounter >= 4 else {
            return false
        }

        
    }

    return true
}