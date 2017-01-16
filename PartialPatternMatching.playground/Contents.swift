//: Playground - noun: a place where people can play

import UIKit

//in some cases you might care about some values but not care about the others. 

let authentication = (name: "twostraws", password: "password123", ipdAddress: "123.04.03")

// you can switch on this tupple, we dont care about the ip address. we simply ignore it.

//switch authentication {
//case ("billbo", "password", _):
//    print("Hi billbo")
//case ("twostraws", "password123", _):
//    print("Hi, Ronald!!!!")
//default:
//    print("Who are you?")
//}

//swift will take the first case it matches. 
//put most specific cases first and least specific cases last. 

// use let syntax when you dont know what the expected value is. 

switch authentication {
case ("billbo", "password", _):
print("Hi billbo")
case ("twostraws", let password, _):
print("Hi, Ronald!!!!, your password was \(password)")
default:
print("Who are you?")

}
