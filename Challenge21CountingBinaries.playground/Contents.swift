//: Playground - noun: a place where people can play

import UIKit

//Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for.

func nextHighestAndLowest(_ number: Int) -> (Int?, Int?) {
    //first get the binary represenation 
    let targetBinary = String(number, radix: 2)
    let targetOnes = targetBinary.characters.filter { $0 ==
        "1" }.count
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil

    for i in number + 1...Int.max {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.characters.filter { $0 ==
            "1" }.count
        if targetOnes == currentOnes {
            nextHighest = i
            break
        }
    }

    for i in (0 ..< number).reversed() {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.characters.filter { $0 ==
            "1" }.count
        if targetOnes == currentOnes {
            nextLowest = i
            break
        }
    }
    return (nextHighest, nextLowest)

}