//: Playground - noun: a place where people can play

import UIKit

//print numbers to 100 that are divible by 3



for i in 1...100 {

    guard i % 3 == 0 else {
        continue
    }
    print(i)
}