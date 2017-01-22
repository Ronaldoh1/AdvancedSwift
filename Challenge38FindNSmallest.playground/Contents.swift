//: Playground - noun: a place where people can play

import UIKit

// Write an extension for all collections that return the N smallest element as an array, sorted smallest first, where N is an integer parameter 

extension Collection where Iterator.Element: Comparable {

    func findSmallest(count: Int) -> [Iterator.Element] {
        let sortedArray = self.sorted()
        return Array(sortedArray.prefix(count))
    }
}

[1, 2, 3, 4].findSmallest(count: 2)
