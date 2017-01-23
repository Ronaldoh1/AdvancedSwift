//: Playground - noun: a place where people can play

import UIKit

extension Collection where Iterator.Element == Int {

    func median() -> Double? {
        let sorted = self.sorted()
        let median = sorted.count / 2

        if sorted.count % 2 == 0 {
            return Double(sorted[median] + sorted[median - 1]) / 2
        } else {
            return Double(sorted[median])
        }
    }

}


[1, 2, 3].median()
[1, 2, 9].median()
