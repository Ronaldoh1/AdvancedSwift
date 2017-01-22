//: Playground - noun: a place where people can play

import UIKit

// Write a function that takes a string with both letters and numbers, write a function that pulls out all the number and then returns their sum 


// initial attempt

// return nil if no numbers are found

func addDigits(in input: String) -> Int {
    let digitsOnly = input.components(separatedBy: CharacterSet.letters).joined(separator: "")
    let array = Array(digitsOnly.characters).map{ Int(String($0))! }
   return array.reduce(0, +)
}

addDigits(in: "12r2b")

