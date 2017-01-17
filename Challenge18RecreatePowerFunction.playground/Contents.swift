//: Playground - noun: a place where people can play

import UIKit

// Recreate the pow function. It takes a positive integer and raises the first to the power of the second. 

func myPow(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else {
        return 0
    }

    if power == 1 {
        return number
    }

    return number * myPow(number: number, power: power - 1)
}


print(myPow(number: 2, power: 3))
print(myPow(number: 4, power: 3))
print(myPow(number: 2, power: 8))