//: Playground - noun: a place where people can play

import UIKit

// write an extension for all collections that implement min() method

//so, make the lowest value an optional of the same type as our element, then loop through all items. For each item, unwrap our lowest and check whether the new items lower, if so replace it and move on. 

//This works but the optionality here is just getting in the way. A smarter solution is to jettison optiona entirely, because we can't get at least one value from the collection we might as well early return 

//So, we can use guard to pull out self.first. If that returns nil it means the collection is empty so we cna return nill imediately. how ever if it isn't empty itmeans we definitely have a return value and can therefore forget about optioanlltiy for the rest of the time.
extension Collection where Iterator.Element: Comparable {

    func min2() -> Iterator.Element? {

        var lowest: Iterator.Element?

        for item in self {

            if let unwrappedLowest = lowest {

                if item < unwrappedLowest {

                    lowest = item
                }
            } else {
                lowest = item
            }
        }
        return lowest
    }
    
}


// an alternative solution would be to be to remove the optionality 

extension Collection where Iterator.Element: Comparable {

    func min3() -> Iterator.Element? {

        guard var lowest = self.first else {
            return nil
        }

        for item in self {
            if item < lowest {
                lowest = item
            }
        }

        return lowest
    }



}














