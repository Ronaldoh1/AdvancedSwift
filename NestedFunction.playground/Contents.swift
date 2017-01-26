//: Playground - noun: a place where people can play

import UIKit

// create function that calculate the distance between two point, ecleadian squared and manthatton 


struct Point {

    let x: Double
    let y: Double

}


enum DistanceTechnique {
    case eucledean
    case eucledeanSquared
    case manhattan
}


func calculateDistance(start: Point, end: Point, technique: DistanceTechnique) -> Double {

    func calculateEcledianDistanceSquared(start: Point, end: Point) -> Double {
        let deltax = start.x - end.x
        let deltay = start.y - end.y
        return deltax * deltay + deltay * deltay
    }
    func calculateEucledeanDistance(start: Point, end: Point) -> Double {
        return sqrt(calculateEucledeanDistance(start: start, end: end))
    }

    func calculateManhattanDistance(start: Point, end: Point) -> Double {
        return abs(start.x - end.x) + abs(start.y - end.y)
    }

    switch technique {
    case .eucledean:
        return calculateEucledeanDistance(start: start, end: end)
    case .eucledeanSquared:
        return calculateEcledianDistanceSquared(start: start, end: end)
    case .manhattan:
        return calculateManhattanDistance(start: start, end: end)
    }
}




// Repeating values

let heading = "This is a heading"
let underline = String(repeating: "=", count: heading.characters.count)

let equalsArray = [String](repeating: "=", count: heading.characters.count)
var board = [[String]](repeating: [String](repeating: "", count: 10), count: 10)


//Converting and interger to a string

let someInteger = 100
let string = String(someInteger)


//Convert a string to int 

if let int2 = Int("1982") {
    print(int2)
}




//Array with repeated values. 

let scores = [5, 3, 6, 1, 3, 5, 3, 9]

let scoreSet = Set(scores)

let uniqueScores = Array(scoreSet).sorted()



//Enums


enum Color : Int {

    case unknown
    case blue
    case green
    case red
    case pink
    case purple

    var description: String {
        switch self {
        case .unknown:
            return "The color of magic"
        case .blue:
            return "color sky"
        case .red:
            return "color of desire"
        case .purple:
            return "grapes "
        case .pink:
            return "girly"
        default:
            return "nothing to show here"
        }
    }

    func forBoys() -> Bool {
        return true
    }

    func forGirls() -> Bool {
        return true
    }

}


struct Toy {

    let name: String
    let color: Color
}

let barbie = Toy(name: "Barbie", color: .pink)
let raceCar = Toy(name: "Car", color: .red)



enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case unknown
}

//code will count upwards, since you've specified the starting point. 

let mars = Planet(rawValue: 4) ?? Planet.unknown


//Computed Property and Enums 

let barbie2 = Toy(name: "Barbie", color: .pink)

print("(This is \(barbie2.name) toy and is \(barbie2.color.description)")



var names = ["Taylor", "Tim", "Ronald", "Ana"]
let numbers = [5, 4, 2, 1]

let sorted = names.sorted()
names.sort {
    print("Comparing \($0) and \($1)")

    if ($0 == "Taylor") {
        return true
    } else if $1 == "Taylor" {
        return false
    } else {
        return $0 < $1
    }
}

let sortedNums = numbers.sorted()

let lowest = numbers.min()
