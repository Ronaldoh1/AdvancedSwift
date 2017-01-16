//: Playground - noun: a place where people can play

import UIKit
// you can actually switch on a number and actually do some pattern matching on ranges 
//instead of using multiple if else statements
let age = 36

switch age {
case 0..<18:
    print("You have the energy and time, but not the money")
case 18..<70:
    print("You have the energy and money but not the time")
default:
    print("You have the time and money but not the energy")
}


// you could also use the if case syntax as follow 


if case 0..<18 = age {
    print("You have the energy and time, but not the money")
} else if case 18..<70  = age {
    print("You have the energy and money but not the time")
} else {
    print("You have the time and money but not the energy")
}

// or you can use ~= syntax 


if  0..<18 ~= age {
    print("You have the energy and time, but not the money")
} else if 18..<70  ~= age {
    print("You have the energy and time, but not the money")
} else {
    print("You have the time and money but not the energy")
}


// or 

if (0..<18).contains(age) {
    print("You have the energy and time, but not the money")
} else if (18..<70).contains(age) {
    print("You have the energy and time, but not the money")
} else {
    print("You have the time and money but not the energy")
}


// you can combine range matching with pattern matching 

let user = (name: "ronald", password: "1234", age: 27)
switch user {
case let (name, _ , 0..<18):
print("\(name) has the energy and time, but no money")
case let (name, _, 18..<70):
 print("\(name) have the energy and time, but not the money")
case let (name, _, _):
    print("\(name) have the time and money but not the energy")
}