//: Playground - noun: a place where people can play

import UIKit

let data  = ("one", "two", "three")

// want to create 3 constants out out of these values. 

//let one = data.1
//let two = data.2
//let three = data.3

// the method above works, but there is a better way to do it

let (one, two, three) = data


func getPerson() -> (String, Int) {
    return ("Taylor Swfit", 26)
}

let (name, age) = getPerson()

print("\(name) is \(age)")


// or you can even ignore some of the values. 

let (_, age2) = getPerson()

print("The person is \(age2)")

//tuple distructuring is good swapping values. 

// given two integer - how do you swap without using a third variable 

var a = 2
var b = 4

//a = a + b
//b = a - b
//a = a - b
//
//a
//b

//this is the easiest way to do it

(b, a) = (a, b)


