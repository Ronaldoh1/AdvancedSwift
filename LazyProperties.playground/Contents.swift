//: Playground - noun: a place where people can play

import UIKit

//lazy loading is one of the best system performance optimization. It's indemic in iOS. 


class Singer {
    let name: String

    init(name: String) {
        self.name = name
    }

    func reverseName() -> String {
        return String(name.uppercased().characters.reversed())
    }
}

let ronald = Singer(name: "Ronald")
ronald.reverseName()

//each singer has a property called name. And amethod that does some work on that property. Everytime you want to print the name backward - you have to call the method again since the work done by reverse name is not stored anywhere. You could also have another property to store work. If you never called reversed. Now it cases your code to run slower if it's never used. 

//lazy properties are only calculated once and stored. Never calculated if they aren't used. If your code access it repeatedly then only pay performance cost once. If they're never used then it's never run. 

lazy var view: UIView = {
    let view = UIView()
    return view
}()

// self inside the closure will not cause any retain cycles. Swift is smart enough to know that self inside the closure is weak. 
