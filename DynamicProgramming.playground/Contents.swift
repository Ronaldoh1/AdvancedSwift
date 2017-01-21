// This is a simple implemtation for Coin Change Problem

//given value n, if we can make n into change for N cents, and we have infinite supply of each S = { S1, S2, S3 } how many ways can we have to make the change. 

// steps 

// To count total number of solutions, we can devide all set solutions in two sets. 
//1. Solutions do not contain mth coin or (Sm)
//2. Solutions that contains at least one Sm 

// The method below computes the same subproblems again and again. Since same problems are called again and again, this problem has overlapping subproblems property. So the coin change problem has both properties of a dynamic programming problem.


func count(coins: [Int], dollarAmount: Int) -> Int {
    return 0
}