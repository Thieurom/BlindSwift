//: [Previous](@previous)
/*:
 ## [213. House Robber II](https://leetcode.com/problems/house-robber-ii/)
 [__Dynamic Programming__] [__Medium__]

 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are __arranged in a circle__. That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have a security system connected, and __it will automatically contact the police if two adjacent houses were broken into on the same night__.

 Given an integer array `nums` representing the amount of money of each house, return _the maximum amount of money you can rob tonight __without alerting the police___.
 */
import BlindSwift

let solution = Solution()

print(solution.rob2([2, 3, 2]))
print(solution.rob2([1, 2, 3, 1]))
print(solution.rob2([1, 2, 3]))
print(solution.rob2([1, 2]))
print(solution.rob2([1]))
//: [Next](@next)
