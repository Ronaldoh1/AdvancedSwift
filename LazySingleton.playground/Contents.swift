//: Playground - noun: a place where people can play

import UIKit

// singleton - it's design pattern that allows you create instance of class and used throughout your program. It should not be used as a global variable

//ex. logger 

//UIDevice - exist as only once

class MusicPlayer {
    init() {
        print("Ready to play songs")
    }

}

class Singer {
    static let musicPlayer = MusicPlayer()
    init() {
        print("Creating a new singer")
    }
}



let taylor = Singer()

Singer.musicPlayer

//all swift static let are lazy loaded automatically and created only when they're needed. 

Singer.musicPlayer