//: [Previous](@previous)
/*:
 ## [70. Climbing Stairs](https://leetcode.com/problems/climbing-stairs/)
 [__Dynamic Programming__] [__Easy__]

 You are climbing a staircase. It takes `n` steps to reach the top.

 Each time you can either climb `1` or `2` steps. In how many distinct ways can you climb to the top?
 */
import BlindSwift

let solution = Solution()

var steps = 2
print(solution.climbStairs(steps))

steps = 3
print(solution.climbStairs(steps))

steps = 10
print(solution.climbStairs(steps))
//: [Next](@next)
