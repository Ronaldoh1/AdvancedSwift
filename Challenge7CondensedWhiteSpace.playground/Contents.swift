//: Playground - noun: a place where people can play

import UIKit


//Write a function that return a string with any consecutive spaces replaced with a single space. 
// initial try
func removeExtraSpacesAttemp1(input: String)  {

    var characters = Array(input.characters)
    var hasSeenSpace = false

    for i in 0...characters.count {
        if i > 0 && characters[i-1] == " " {
            hasSeenSpace = true
        }
        if characters[i] == " " && hasSeenSpace {
            characters.remove(at: i)
        }

    }

    print(characters)
  //  return characters
}

// Solution
//We can use regular expressions to solve this. 

func removeExtraSpaces(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    return components.filter{ !$0.isEmpty}.joined(separator: " ")
}

removeExtraSpaces(input: "a   b   c")


// alternative answer (ok answer)


// In this fucntion, we basically have a string and our job is to remove the extra spaces. We simply need to iterate through all the characters in the string. We need to keep track if we have seen an empty space. If we have seen it, then we jump to the next iteration. If this is the first time we see it, then we simply set the flag to true. and append the value to returnValue.

func removeExtraSpaces(with input: String) -> String {
    var hasSeenSpace = false
    var returnValue = ""

    for letter in input.characters {
        if letter == " "  {
            if hasSeenSpace == true {
                continue
            }
            hasSeenSpace = true
        } else {
            hasSeenSpace = false
        }
        returnValue.append(letter)
    }

    return returnValue
}

removeExtraSpaces(with: "a   b   c")
