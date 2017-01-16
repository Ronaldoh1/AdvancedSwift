//: Playground - noun: a place where people can play

import UIKit

//guards are used to return early when a precondition is met 

func giveAward(to name: String) {
    guard name == "Taylor Swift" else {
        print("No way!")
        return
    }

    print("Congratulations \(name)")
}


giveAward(to: "Taylor Swift")

// exit the method if the precondition is not me...dont execute the rest 

// common errors are checked immediately 

// you can use a guard to unwrap the optional


func giveAwards(to someName: String?) {

    guard let winner = someName else {
        print("no one won the award")
        return
    }

    print(winner)

}

giveAwards(to: "Ronald")