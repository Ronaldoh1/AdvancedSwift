//: Playground - noun: a place where people can play

import UIKit

////Write a function that accepts an integer as its parameter and return true if the number is prime 
//
//func isPrime(_ number: Int) -> Bool {
//    guard number >= 2 else {
//        return false
//    }
//
//    for i in 2..<number {
//        if number % i == 0 {
//            return false
//        }
//    }
//
//    return true
//}



//print(isPrime(9))
//print(isPrime(11))
//print(isPrime(13))
//print(isPrime(4))



func isPrime(_ number: Int) -> Bool {
    guard number >= 2 else {
        return false
    }

    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }

    return true
}

print(isPrime(9))
print(isPrime(11))
print(isPrime(13))
print(isPrime(4))


//this counts 2 up to one less than the input number, and returns false if the input number devides equally into i. The guard statement at the front because the number 1 and lower are not prime definition. 
//This function works but it's really expensive. 

// We can also dramatically reduce our search space: rather than coutning from 2 up that number, we can square root the number and round up, then search up to there and no further. Rembmer, we don't have find both number that multiply to make n, just one of them if we find one andit's not 1 or itself then n is not a prime. 

func isPrimeB(_ number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number != 2 else { return true }

    let max = Int(ceil(sqrt(Double(number))))
    for i in 2...max {
        if number % i == 0 {
            return false
        }
    }
    return true 
}
