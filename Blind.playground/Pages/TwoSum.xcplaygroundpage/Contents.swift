//: [Previous](@previous)
/*:
 ## [1. Two Sum](https://leetcode.com/problems/two-sum/)
 [__Array__] [__Easy__]

 Given an array of integers `nums` and an integer `target`, return _indices of the two numbers such that they add up to `target`_.

 You may assume that each input would have ___exactly_ one solution__, and you may not use the _same_ element twice.

 You can return the answer in any order.
 */
import BlindSwift

let solution = Solution()

let nums1 = [2, 7, 11, 15]
assert(solution.twoSum(nums1, 9) == [0, 1])

let nums2 = [3, 2, 4]
assert(solution.twoSum(nums2, 6) == [1, 2])

let nums3 = [3, 3]
assert(solution.twoSum(nums3, 6) == [0, 1])
//: [Next](@next)
