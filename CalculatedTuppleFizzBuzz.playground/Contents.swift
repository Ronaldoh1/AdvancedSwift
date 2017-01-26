//: Playground - noun: a place where people can play

import UIKit


func fizzBuzz(number: Int) -> String {

    var value = ""
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, true):
        value = "FizzBuzz"
    case (true, false):
        value = "Fizz"
    case (false, true):
        value = "Buzz"
    default:
        value = String(number)
    }
    return  value
}


for i in 1...100 {
   print(fizzBuzz(number: i))
}