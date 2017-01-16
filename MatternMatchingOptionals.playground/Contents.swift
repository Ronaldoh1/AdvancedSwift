//: Playground - noun: a place where people can play

import UIKit

// basically, you have two optional and you do a switch on the tuple, then use a switch statement. Switch on it, then bind it to local variables and you can use the local variables in case block. 

let name: String? = "twostraws"
let password: String? = "1234"

switch (name, password) {
case let (.some(name), .some(password)):
    print("Hello, \(name) your password is \(password)")
case let (.some(name), .none):
    print("Please enter a password")
default:
    print("Who are you?")
}



switch (name, password) {
case let (name?, password?):
    print("hello, \(name)")
case let (name?, nil):
    print("please enter a password")
default:
    print("who are you?")
}


// you can have an array of any data type and you can you the for case let loop to print the non nil values

let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data {
    print(datum)
}

// or you can use this syntax

for case let datum? in data {
    print(datum)
}