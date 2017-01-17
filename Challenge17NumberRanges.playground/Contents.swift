//: Playground - noun: a place where people can play

import UIKit

// of the four options, arc4random_uniform() is preferred amonst developers, becuse it generates suitably random numbers for most most purposes, it doesn't require seeding, it isn't prone to modulo bias and it isn't restricted to Apple's platfoms - it's commmonly used C funtion that is well understood. 

//Arc4Random_uniform has three hiccups in Swift. It generates numbers from 0 to upper bound, it excludes the upper bound rather than including it, and it uses UInt32 rather than In, so you need some type casting.

func generateRange(min: Int, max: Int) -> Int {
   return Int(arc4random_uniform(UInt32(max-min+1))) + min

}

print(generateRange(min: 8, max: 10))

