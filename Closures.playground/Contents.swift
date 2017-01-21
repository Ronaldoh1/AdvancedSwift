//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//closure is a function that get's passed around and can be stored in a variable.

var multiplyClosure: (Int, Int) -> Int

// as you can see, you don't need the parameter names when you define it. 
// you will need names when you're actually implementing it.

multiplyClosure = {
    (number: Int, multiplier: Int) -> Int
    in

    return number * multiplier
}

multiplyClosure(12, 3)