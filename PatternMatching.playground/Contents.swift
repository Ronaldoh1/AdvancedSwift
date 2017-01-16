//: Playground - noun: a place where people can play

import UIKit

//let name = "twostraws"
//
//switch name {
//case "billbo":
//    print("Hello, Billbo")
//case "twostraws":
//    print("Hello, Ronald")
//default:
//    print("Authentication Fialed")
//}


// if we wanted to evuate a name and password  => you want to use a tuple

let name = "twostraws"
let password = "letmein123"

let authentication = (name: "twostraws", password: "letmein123")

switch authentication {
case ("billbo", "bagins"):
    print("Hello Billbo")
case ("twostraws", "letmein123"):
    print("Hi, Ronald How are you")
default:
    print("Authentication Failed, who are you?")
}