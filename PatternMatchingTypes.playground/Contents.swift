//: Playground - noun: a place where people can play

import UIKit

// you can use is keyword for loops and switch cases

let view: AnyObject =  UIButton()


switch view {
case is UIButton:
print("Found a button")
case is UILabel:
print("Found a UILabel")
case is UISwitch:
print("Found a switch")
case is UIView:
print("Found a view")
default:
print("Found something else")
}

// iterate through all the subviews in the label 


for label in view.subviews where label is UILabel {
    print("Found a label with frame \(label.frame)")
}

// where key word ensures that only UILabel are processed. The key word is does not type cast. 

//if you want to type cast a view and print out the text of it. you'd do something like 

for case let label as UILabel in view.subviews {
    print("Found label with text \(label.text)")
}