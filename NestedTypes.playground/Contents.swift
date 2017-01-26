//: Playground - noun: a place where people can play

import UIKit

enum London {
    static let coordinates = (lat: 51.507222, long: -0.1275)

    enum SubwayLines {
        case bakerloo, central, circle, district, elizabeth, hammersmithCity, jubilee, metropolitan, northern, picccadilly, victoria, waterlooCity
    }

    enum Places {
        case buckingHamPalace, cityHall, oldBaily, piccadilly, stPaulsCathedral
    }
}


London.Places.buckingHamPalace


enum R {
    enum storyboard: String {
        case main, detail, upgrade, share, help
    }

    enum Images: String {
        case welcome, home, about, button
    }

}

R.storyboard.detail
R.Images.welcome


struct Cat {
    enum Breed {
        case britishShortHair, burmese, persian, ragdoll, russianBlue, scottishFold, siamise
    }
    var name: String
    var breed: Breed
}