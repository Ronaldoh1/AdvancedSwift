//: Playground - noun: a place where people can play

import UIKit

//attemp 1 
// Use brute force

func countCharacters(in text: String, character: Character) -> Int {
    let characters = Array(text.characters)
    var count = 0

    for char in characters {
        if char == character {
            count += 1
        }
    }
    return count
}


print(countCharacters(in: "Mississippi", character: "i"))
print(countCharacters(in: "Hacking with Swift", character: "i"))



//The second option is to solve this problem using reduce(). But perforamce wise is not as great.

//func countCharactersUsingReduce( in text: String, character: Character) -> Int {
//    return text.characters.reduce(0) {_,_ in 
//        $1 == character ? $0 + 1 : $0
//    }
//}
//
//

//The third solution is to use a counted set. It's wasteful unless you intend to count several characters. This seems kinda wasteful

func countCharacters(input: String, count: String) -> Int {
    let array = input.characters.map{String($0)}
    let counted = NSCountedSet(array: array)
    return counted.count(for: count)
}


// the fourth and clear option other than brute force is to calcualte how many times a letter appears in a string by removing it, then comparing the lengths 


func countCharactersByRemoving(_ text: String, character: Character) -> Int {
    let modifiedString = text.replacingOccurrences(of: String(character), with: "")
    return text.characters.count - modifiedString.characters.count
}


print(countCharactersByRemoving("Ronald is the greatest", character: "e"))