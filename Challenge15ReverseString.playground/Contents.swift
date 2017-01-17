//: Playground - noun: a place where people can play

import UIKit


func reverseWords(in text: String) -> String {
    let parts = text.components(separatedBy: " ").reversed()
    let reversed = parts.map { String($0.characters.reversed()) }
                   return reversed.joined(separator: " ")
}



reverseWords(in: "Ronald is awesome")