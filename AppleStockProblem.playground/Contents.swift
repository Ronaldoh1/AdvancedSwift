//: Playground - noun: a place where people can play

import UIKit

/** Suppose we could access yesterday's stock prices as a list, where:

 The indices are the time in minutes past trade opening time, which was 9:30am local time.
 The values are the price in dollars of Apple stock at that time.
 So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.

 Write an efficient function that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.
 */


/*A greedy algorithm iterates through the problem space taking the optimal solution "so far," until it reaches the end.

The greedy approach is only optimal if the problem has "optimal substructure," which means stitching together optimal solutions to subproblems yields an optimal solution.

*/

func minimum<T: Comparable>(in array: [T]) -> T {


    var minimum = array.first!

    for num in array  {

        minimum = num < minimum ? num : minimum
    }

    return minimum
}

func maximum<T: Comparable>(in array: [T]) -> T {

    var max = array.first!

    for num in array {
        max = num > max ? num : max
    }
    
    return max
}

enum stockPriceError: Error, CustomStringConvertible {

    var description: String {
        switch self {
          case  .lessThanTwo:
             return "Getting a profit requires at least 2 prices"
        }

    }

    case lessThanTwo

}



func highestStockProfit(in yesterdayStock: [Int]) throws -> Int?{

    // check that the array is not empty

    guard yesterdayStock.count >= 2 else {
        throw stockPriceError.lessThanTwo
    }

    let max = maximum(in: yesterdayStock)
    let min = minimum(in: yesterdayStock)



    return max - min
}


let stockPricesYesterday = [10, 7, 5, 8, 11, 9]

// returns 6 (buying for $5 and selling for $11)

try highestStockProfit(in: stockPricesYesterday)

