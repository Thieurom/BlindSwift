//: [Previous](@previous)
/*:
 ## [121. Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)
 [__Array__] [__Easy__]

 You are given an array `prices` where `prices[i]` is the price of a given stock on the `ith` day.

 You want to maximize your profit by choosing a __single day__ to buy one stock and choosing a __different day in the future__ to sell that stock.

 Return _the maximum profit you can achieve from this transaction_. If you cannot achieve any profit, return `0`.
 */
import BlindSwift

let solution = Solution()

var prices = [7, 1, 5, 3, 6, 4]
assert(solution.maxProfit3(prices) == 5)

prices = [7, 6, 4, 3, 1]
assert(solution.maxProfit3(prices) == 0)
//: [Next](@next)
