//: Playground - noun: a place where people can play

import UIKit

//basic enum pattern matting


enum WeatherType {
    case cloudy(coverage: Int)
    case sunny
    case windy
}

let today = WeatherType.cloudy(coverage: 100)


//switch today {
//case .cloudy(let coverage):
//print("It' cloudy with a coverage \(coverage)%")
//case .sunny:
//print("it's sunny")
//default:
//    print("It's sunny")
//}

// or using a requirement clause

switch today {
case .cloudy(let coverage) where coverage < 100:
    print("It' cloudy with a coverage \(coverage)%")
case .cloudy(let coverage) where coverage == 100:
    print("You must live in Germany")
case .windy:
    print("it's sunny")
default:
    print("It's sunny")
}

// if you have an array enums with an associated value, using a for loop with the where clasue it will not work. Since the enums have an associated value. Use case let syntax for example. This for case let allows you to retrieve the binded variable cloudy case.

let forecast: [WeatherType] = [.cloudy(coverage: 10), .sunny, .windy]

for case let .cloudy(coverage) in forecast {
    print("It's cloudy with \(coverage)% coverage")
}

