//: [Previous](@previous)
/*:
 ## [217. Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)
 [__Array__] [__Easy__]

 Given an integer array `nums`, return `true` if any value appears __at least twice__ in the array, and return `false` if every element is distinct.
 */
import BlindSwift

let solution = Solution()

let nums1 = [1, 2, 3, 1]
assert(solution.containsDuplicate3b(nums1) == true)

let nums2 = [1, 2, 3, 4]
assert(solution.containsDuplicate3b(nums2) == false)

let nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
assert(solution.containsDuplicate3b(nums3) == true)
//: [Next](@next)
