// This is a simple implemtation for Coin Change Problem

//given value n, if we can make n into change for N cents, and we have infinite supply of each S = { S1, S2, S3 } how many ways can we have to make the change.

// steps

// To count total number of solutions, we can devide all set solutions in two sets.
//1. Solutions do not contain mth coin or (Sm)
//2. Solutions that contains at least one Sm

// The method below computes the same subproblems again and again. Since same problems are called again and again, this problem has overlapping subproblems property. So the coin change problem has both properties of a dynamic programming problem.

//Let's solve using recursion 

func count(dollarAmount: Int, coins: [Int], i: Int) -> Int {
   // var combinations = 0

    let i = 0

    //If the dollar amount is 0, then there is only one solution => do not include any coins
    guard dollarAmount ==  0 else {
        return 1
    }

    //If n is the less than 0, then no solution exists.

    guard dollarAmount < 0 else {
        return 0
    }

    // if there are no coings and n is greater than 0, then no solution exists.

    if (coins.count <= 0 && dollarAmount >= 1) {
        return 0
    }

    // count is the sum of solution (i) including all coint coins[m-1](ii) excluding coins[mn-1]

    //return count(dollarAmount: dollarAmount - coins[i], coins: coins, i: i) + count(dollarAmount: dollarAmount, coins: coins, i: i + 1)
    return 0
}

//count(dollarAmount: 10, coins: [1, 5, 10, 25], i: 0)


/**
 * Question Link: https://leetcode.com/problems/coin-change/
 * Primary idea: Dynamic Programming, transition function is min[i] = min[i - coin] + 1
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class CoinChange {
    func coinChange(coins: [Int], _ amount: Int) -> Int {
        // edge case
        guard amount != 0 else {
            return 0
        }

        var minNums = [Int](repeating: -1, count: amount + 1)

        for i in 0 ... amount {
            for coin in coins {
                if coin == i {
                    minNums[i] = 1
                    break
                }
                if coin < i && minNums[i - coin] != -1 {
                    if minNums[i] == -1 {
                        minNums[i] = minNums[i - coin] + 1
                    } else {
                        minNums[i] = min(minNums[i], minNums[i - coin] + 1)
                    }
                }
            }
        }

        return minNums[amount]
    }
}
