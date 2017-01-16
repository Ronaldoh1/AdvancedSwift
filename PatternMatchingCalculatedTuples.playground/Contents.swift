//: Playground - noun: a place where people can play

import UIKit

let name = ("Ranald", "Hernandez")

// we can use a calculated tuple to calculate fizzbuzz

func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }

}


//print(fizzbuzz(number: 15))

for i in 1...100 {
    print(fizzbuzz(number: i))
}