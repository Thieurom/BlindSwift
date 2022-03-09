//: [Previous](@previous)
/*:
 ## [300. Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)
 [__Dynamic Programming__] [__Medium__]

 Given an integer array `nums`, return the length of the longest strictly increasing subsequence.

 A __subsequence__ is a sequence that can be derived from an array by deleting some or no elements without changing the order of the remaining elements. For example, `[3,6,2,7]` is a subsequence of the array `[0,3,1,6,2,2,7]`.
 */
import BlindSwift

let solution = Solution()

print(solution.lengthOfLIS1([10, 9, 2, 5, 3, 7, 101, 18]))
print(solution.lengthOfLIS1([0, 1, 0, 3, 2, 3]))
print(solution.lengthOfLIS1([7, 7, 7, 7, 7, 7, 7]))
print("-------")

print(solution.lengthOfLIS2([10, 9, 2, 5, 3, 7, 101, 18]))
print(solution.lengthOfLIS2([0, 1, 0, 3, 2, 3]))
print(solution.lengthOfLIS2([7, 7, 7, 7, 7, 7, 7]))
//: [Next](@next)
