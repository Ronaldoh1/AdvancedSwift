//: Playground - noun: a place where people can play

import UIKit

// two loops to find the treasure on the map. 


var board = [[String]](repeating: [String](repeating: "", count: 10), count: 5)

board[3][5] = "x"


rowLoop: for (rowIndex, cols) in board.enumerated() {
    for (colIndex, col) in cols.enumerated() {

        if col == "x" {
            print("Found the treasure at row \(rowIndex) and \(colIndex)")
            break rowLoop
        }

    }
}


//break only exits one level of loop.



if userRequestsPrint() {
    if documentSaved() {
        if userAuthenticated {
            if uploadDocument("resignation.doc") {
                if printDocument() {
                    print("Printed Successfully")
                }
            }
        }
    }
}


printing: if userReuquestPrint() {
    if !documentSaved() { break printing }
    if !userAuthenticated() { break printing }
    if !connectedToNetwork() { break}
    ....
    ..
}

//instead of this nested if statement, try using a guard. 
