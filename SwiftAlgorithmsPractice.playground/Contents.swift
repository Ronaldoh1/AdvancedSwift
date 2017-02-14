//: Playground - noun: a place where people can play

import UIKit

//Are the letters unique
func challenge1(input: String) -> Bool {

    guard !input.isEmpty else {
        return false
    }

    let characters = Set(input.characters)
    return characters.count == input.characters.count
}

challenge1(input: "No duplicates")
challenge1(input: "Hello world")

//challenge 2. Is a string palindrome

func challenge2(input: String) -> Bool {
    guard !input.isEmpty else {
        return false
    }
    let characters = Array(input.lowercased().characters)
    return characters.reversed() == characters
}

challenge2(input:"rotator")
challenge2(input: "Rats live on no evil star")
challenge2(input: "Hello world")

//Challenge 3 = write your own version fo the contains method on String 

func challenge3(input1: String, input2: String) -> Bool {
    guard !input1.isEmpty, !input2.isEmpty else {
        return false
    }

    return Array(input1.characters).sorted() == Array(input2.characters).sorted()
}


challenge3(input1: "abc", input2: "cba")
challenge3(input1: "abc", input2: "Abc")
challenge3(input1: "abc", input2: "cbAa")
challenge3(input1: "a1b2", input2: "b1a2")


//Challenge 4 - String 

extension String {

    func contains1(word: String) -> Bool {
        return self.lowercased().range(of: word.lowercased()) != nil
    }
}

"Hello world".contains1(word: "hello")

//Challenge 5 - count the characters

func challenge5(input: String, character: Character) -> Int {
    guard !input.isEmpty else {
        return 0
    }

    return Array(input.characters).reduce(0) {
        $1 == character ? $0 + 1 : $0
    }
}


// Challenge 6
//write a function that takes a stringand returns same string with duplicate letters removed
func challenge6(input: String) -> String? {
    guard !input.isEmpty else {
        return nil
    }
    let array = input.characters.map { String($0) }
    let characters = NSOrderedSet(array: array)
    let letters = Array(characters) as! Array<String>


    return letters.joined()
}

challenge6(input: "Mississippi")

func challenge7(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

challenge7(input: "    Ronald    is aweseome   !")


// Challenge 8 - String is rotated 

func challenge8(input1: String, input2: String) -> Bool {

    return (input1 + input1).contains(input2)
}

challenge8(input1: "abcde", input2: "cdeab")








