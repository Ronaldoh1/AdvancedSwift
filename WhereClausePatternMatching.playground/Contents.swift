//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 3, 4, 5]

for number in numbers where number % 2 == 1 {
    print(number)
}


let celebrities = ["Michael Jason", "Taylor Swift", "Adele Adkins", "Ronald Hernandez"]

for name in celebrities where !name.hasPrefix("Ronald") {
    print(name)
}

// use the where clause to filter in the loop