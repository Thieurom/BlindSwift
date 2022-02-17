//: [Previous](@previous)
/*:
 ## [322. Coin Change](https://leetcode.com/problems/coin-change/)
 [__Dynamic Programming__] [__Medium__]

 You are given an integer array `coins` representing coins of different denominations and an integer `amount` representing a total amount of money.

 Return the _fewest number of coins that you need to make up that amount_. If that amount of money cannot be made up by any combination of the coins, return `-1`.

 You may assume that you have an infinite number of each kind of coin.
 */
import BlindSwift

let solution = Solution()

var coins = [1, 2, 5]
var amount = 11
print(solution.coinChange1(coins, amount))
print(solution.coinChange2(coins, amount))

coins = [186, 419, 83, 408]
amount = 6249
print(solution.coinChange1(coins, amount))
print(solution.coinChange2(coins, amount))
print(solution.coinChange2([1], 0))
//: [Next](@next)
