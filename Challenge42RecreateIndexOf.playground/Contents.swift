//: Playground - noun: a place where people can play

import UIKit

extension Collection where Iterator.Element : Equatable {

    func findIndex(of number: Iterator.Element) -> Int? {

        for (index, num) in self.enumerated() {
            if num == number {
                return index
            }
        }
        return nil
    }
}


[1, 2, 3].findIndex(of: 3)