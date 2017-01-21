//: Playground - noun: a place where people can play

import UIKit

//write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substrings that prefixes all the words. 


//initial attempt

func findLongestPrefix(input: String) -> String {
    //ensure we have a string
    guard input.characters.count > 0 else {
        return ""
    }

    let words = input.components(separatedBy: " ")

    guard let first = words.first else {
        return ""
    }

    var currentPrefix = ""
    var bestPrefix = ""

    for letter in first.characters {
        currentPrefix.append(letter)

        for word in words {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }

    return bestPrefix
}