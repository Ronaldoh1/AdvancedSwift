//: Playground - noun: a place where people can play

import UIKit

// write an extension for collections of integers that returns the number of times a specific digit appears in any of its numbers 


extension Collection where Iterator.Element == Int {

    func numberOfDigits(count: Character) -> Int {

        var total = 0
        // loop over every element
        for item in self {
            // stringify this integer
            let itemString = String(item)

            for letter in itemString.characters {
                if letter == count {
                    total += 1
                }
            }
        }
        return total
    }

}


// you can use reduce 


extension Collection where Iterator.Element == Int {

    func countOccurances(of item: Character) -> Int {
        return self.reduce(0) {
            $0 + String($1).characters.filter { $0 ==
                item }.count
        }
    }
}