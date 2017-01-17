//: Playground - noun: a place where people can play

import UIKit

//Swap two positive variable integrs a and b, without using a temporary variable. 

func swapNumbers(a: Int, b: Int) -> (Int, Int) {
    var someA = a
    var someB = b
     swap(&someA, &someB)
    return (someA, someB)
}


print(swapNumbers(a: 1, b: 10))
