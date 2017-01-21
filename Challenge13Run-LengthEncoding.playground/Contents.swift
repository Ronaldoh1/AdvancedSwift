
//: Playground - noun: a place where people can play

import UIKit

//Write a function that accepts a string as input, then return how often each letter is repeated in a single run, taking case into account. 


//initial attempt
func encode(_ input: String) -> String {

    var dictionary = [String: Int]()
    let characters = Array(input.characters)
    var string = ""
    for letter in characters {

        if dictionary[String(letter)] != nil {
            dictionary[String(letter)] = dictionary[String(letter)]! + 1
        } else {
            dictionary[String(letter)] = 1
        }
    }

    print(dictionary)
    var sortedDictionary = dictionary.sorted(by: <)

    for (letter, count) in sortedDictionary {
        print(letter)
        string = string.appending(letter)
        string.append(String(count))
    }
    return string
}



print(encode("aabbcc"))

// Alternative solution 

func encode2(_ input: String) -> String {

    var currentLetter: Character?
    var returnValue = ""
    var returnCounter = 0

    for letter in input.characters {
        if letter == currentLetter {
            returnCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(returnCounter)")
            }
            currentLetter = letter
            returnCounter = 1
        }
    }

    if let current = currentLetter {
        returnValue.append("\(current)\(returnCounter)")
    }
    return returnValue
}




print(encode2("aabbcc"))

// Best implementation 

func encodeText(_ text: String) -> String {
    var currentLetter: Character? // this is the current letter 
    var returnValue = ""
    var count = 0

    //iterate through all the characters

    for letter in text.characters {
        // if letter == the current leter, then we increment the counter.
        if letter == currentLetter {
          count += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(count)")
            }
            count = 1
            currentLetter = letter
        }
    }

    if let current = currentLetter {
        returnValue.append("\(current)\(count)")
    }

    return returnValue

}


print(encodeText("aabbcc"))







