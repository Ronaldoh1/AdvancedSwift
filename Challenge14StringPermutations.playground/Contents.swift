//: Playground - noun: a place where people can play

import UIKit

// Write a function that prints all possible permutations ofa given input string. 

func permutationFor(_ input: String, current: String = "") {
    let characters = Array(input.characters)
    let length = characters.count
    // if there are no characters, then simply print 

    if (length == 0) {
        print(current)
        print("******")
    } else {
        print(current)

        //loop through every character 
        for i in 0..<length {
            // get the letters before me
            let left = String(characters[0..<i])
            let right = String(characters[i+1..<length])

            //put those two together and carry on. 

            permutationFor(left + right, current: current + String(characters[i]))


        }
    }

}


print(permutationFor("abc"))



// countDownFrom(10) 

func countDownFrom(number: Int) -> Int {

    if number == 0 {
        return 0
    }


    print("\(number)")
return countDownFrom(number: number - 1)
}


