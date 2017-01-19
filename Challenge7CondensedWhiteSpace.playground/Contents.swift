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
    return components.filter{ !$0.isEmpty}.joined(separator: "")
}

removeExtraSpaces(input: "a   b   c")
