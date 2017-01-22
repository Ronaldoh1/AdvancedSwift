//: Playground - noun: a place where people can play

import UIKit

// Write a function that returns the square of a root of a positive integer, rounded to the nearest integer, without using sqrt() 

//Naive Solution 

func calculateSquareRoot(for number: Int) -> Int? {
    guard number >= 0 else {
        return nil
    }

    for i in 0..<number {
        if i * i == number {
            return i
        }
    }
    return nil
}



calculateSquareRoot(for: 9)

func squareRoot(_ number: Int) -> Int {
    guard number >= 1 else {
        return 1
    }

    var lowerBound = 0
    var upperBound = 1 + number / 2

    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle

        if middleSquared == number {
            return middle
        } else if middleSquared < number {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }

    return lowerBound
}