//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let age = 36

switch age {

case 0..<18 :
    print("You have the energy and time, but not the money")
case 18..<70:
    print("You have the energy and money but not the time")
default:
    print("You have the time and money, but not the energy")

}

// you can say if something like if 0 to 18 matches age

if 0 ..< 18 ~= age {
    print("You have the energy and time, but not the money")
} else if 18..<70 ~= age {
    print("You have the energy and money but not the time")
} else {
    print("You have the time and money but not the energy")
}

// you can also use ranges and use the properties for them to make it easier to read. 

if (0..<18).contains(age) {
    print("You have the energy and time, but not the money")
} else if (18..<70).contains(age) {
    print("You have the energy and money but not the time")
} else {
    print("You have the time and money but not the energy")
}


// you can use pattern matching with tuple code

let user = (name: "twostraws", password: "frosties", age: 36)

// we actually switch on user 

switch user {
case let (name, _, 0..<18):
    print("\(name) has the energy and time, but no money")

case let (name,_, 18..<70):
    print("\(name) has the money and energy but no time")
case let (name, _, _):
    print("\(name) has the moeny and time but not the energy")
}



