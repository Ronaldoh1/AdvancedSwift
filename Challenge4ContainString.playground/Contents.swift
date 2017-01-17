//: Playground - noun: a place where people can play

import UIKit

// first attempt 

extension String {

    func contains(text: String) -> Bool {
      if (self.lowercased().range(of: text.lowercased()) != nil) {
            return true
        }
        return false
    }
}


print("Ronald is awesome".contains(text: "Ronald"))