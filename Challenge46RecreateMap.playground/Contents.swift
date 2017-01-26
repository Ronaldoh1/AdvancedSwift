
//: Playground - noun: a place where people can play

import UIKit


/* To solve this problem, you will need the following. 
 Generics, because you don't know what kind of data type will be returned. In the example and output I specifically make the return types different to the input types. 
 Closures, because that's how your transformation function will be specified
 Throwing and rethrowing functions. THe former because the transformation function ought to be able to throw, the latter beacause you dont want to  hhandle exceptions inside yoru ampping method, but also don't wnat to mark the whole method as throwing because thatwould be annnoying all the call site. 
 Protocol extensions, because you're required to extend all collections, not just array or dictionaries
 
 
 */


//extend all collections 

extension Collection {

    // add a generic method that accepts a closure operating on our element type and returns a new types, with the whole method returning an array of that type

    func map2<T>(tranform: (Iterator.Element) throws -> T) rethrows -> [T]  {

        //create the return array 
        var returnValue = [T]()

        // loop over all our items,  trying the transformation and appending it to our return 
        for item in self {
            returnValue.append(try tranform(item))
        }

        return returnValue
    }

}