//: Playground - noun: a place where people can play

import UIKit

// nil coalescin ?? access an optional if the optional is nil provide a default value. 

let name: String? = "Ronald"

let unwrappedName = name ?? "Some Dude"

// it's useful for reducing code 


func returnOptionalName() -> String? {
    return nil
}


let returnedNamed = returnOptionalName() ?? "Anonymous"

let savedText: String
do {
     savedText = try String(contentsOfFile: "saved.text")
    print(savedText)
} catch {
    print("Failed to load saved text")
    savedText = "Hello World"
}

// nil coalescin allows you to work with optionals and give a default value if it didn't work. The code above can be reduced to 


let savedText2  = (try? String(contentsOfFile: "saved.text")) ?? "Hello World"

// this is a good example where you try to load something, ok...it didn't work then use the default value. :) 