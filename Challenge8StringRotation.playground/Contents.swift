//: Playground - noun: a place where people can play

import UIKit

//Write a function that accepts two strings, and return true if one string is rotation of the other 

func isStringARotation(_ string1: String, rotatedString: String) -> Bool {
    // ensure we have two strings and that they're equal in character count
    guard string1.characters.count == rotatedString.characters.count, string1.characters.count > 0, rotatedString.characters.count > 0 else {
        return false
    }

    //ex. Ronald and ldRona double it equals RonaldRonald we can see that it does contain that string
    // abc

    let doubledString = string1 + string1

    return doubledString.contains(rotatedString)
}



isStringARotation("Ronald", rotatedString: "ldRona")