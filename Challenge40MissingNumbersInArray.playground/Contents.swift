
//: Playground - noun: a place where people can play

import UIKit

// Create a fucntion that accepts an array of sorted number from 1 to 100 where zero or more numbers might be missing and returns an array of the missing numbers. 

func findMissingNumbers(in array: [Int]) -> [Int] {

    guard array.count > 0 else {
        return array
    }

    let originalSet = Set(array)
    let set = Set(Array(1...100))

    return Array(set.symmetricDifference(originalSet)).sorted()

}

var testArray = Array(1...100)
testArray.remove(at: 25)
testArray.remove(at: 20)
testArray.remove(at: 6)


findMissingNumbers(in: testArray)