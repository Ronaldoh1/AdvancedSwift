//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//fibonacci sequence - sum of adding previous two. 


//0, 1, 1, 2, 3, 5


func fibonacci(of num: Int) -> Int {

    if num < 2 {
        return num
    }

    return fibonacci(of: num - 1) + fibonacci(of: num - 2)
}

//too much computation this is not idea. This doesn't scale well.



//let fibonacciSequence = (0...20).map(fibonacci)
//print(fibonacciSequence[4])


// lets use lazy sequences, give it a sequence to work with and what code you want it to run. 


let lazyFibonacciSequence = Array(0...190).lazy.map(fibonacci)

print(lazyFibonacciSequence[19])

//only the fibonacci number that's computed is the 20th number as oposed to doing the entire computation of all the numbers. 

//lazy sequences do not have optimization techniques. However it does reduce the amount of work. If you're making the same request multiple times, then it will make that request again and again. It's not like a lazy property where the lazy property only computes once.