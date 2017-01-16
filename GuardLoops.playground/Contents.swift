//: Playground - noun: a place where people can play

import UIKit

//guard lets you exit switches, loops,

//print all numbers to 100 that are evenly divisible by 8
for i in 1...100 {
    guard i % 8 == 0 else {continue}
    print(i)
}