//: Playground - noun: a place where people can play

import UIKit

let twostraws = (name: "Ronald", password: "1234")
let miguel = (name: "Miguel", password: "pass234")
let taylor = (name: "Taylor", password: "1234444")

let users = [twostraws, miguel, taylor]


for user in users {
    print(user.name)
}

// use case pattern matching to find specific values 

for case ("Ronald", "1234") in users {
    print("User twostraws has the password 1234")
}

//binding local constants to the values of each tuple

for case (let name, let password) in users {
    print("User \(name) has a password \(password)")
}

// or you can use. Basically finds a match and pulls it out.

for case let (name, password) in users {
  print("User \(name) has a password \(password)")
}

// or 

for case let (name, "1124") in users {
    print("User \(name) has a password 1124")
}