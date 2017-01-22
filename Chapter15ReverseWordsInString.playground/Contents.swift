//: Playground - noun: a place where people can play

import UIKit

//Write a function that returns a string with each of its words reversed but in the original order without using a loop. 


func reverseWords(in input: String) -> String {

    let words = input.components(separatedBy: " ")
    let reversedWords = Array(words.map { String($0.characters.reversed())})

    return reversedWords.joined(separator: " ")
}



print(reverseWords(in: "I love you Ronald"))