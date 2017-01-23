//: Playground - noun: a place where people can play

import UIKit

extension Collection where Iterator.Element == String {

    func  sortArrayOfString() -> [Iterator.Element] {
        let strings = self.sorted { (str1, str2) -> Bool in
            str2.characters.count < str1.characters.count
        }

        return strings
    }
}

["a", "abc", "ab"].sortArrayOfString()


//alternative solution 


extension Collection where Iterator.Element == String {

    func challenge39() -> [String] {
        return self.sorted { $0.characters.count >
            $1.characters.count }
    }
}