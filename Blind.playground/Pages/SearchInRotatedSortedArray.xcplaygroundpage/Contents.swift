//: [Previous](@previous)
/*:
 ## [33. Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)
 [__Array__] [__Medium__]

 There is an integer array `nums` sorted in ascending order (with __distinct__ values).

 Prior to being passed to your function, `nums` is __possibly rotated__ at an unknown pivot index `k (1 <= k < nums.length)` such that the resulting array is `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]` __(0-indexed)__. For example, `[0,1,2,4,5,6,7]` might be rotated at pivot index `3` and become `[4,5,6,7,0,1,2]`.

 Given the array `nums` __after__ the possible rotation and an integer `target`, return _the index of `target` if it is in `nums`, or `-1` if it is not in `nums`_.

 You must write an algorithm with `O(log n)` runtime complexity.
 */
import BlindSwift

let solution = Solution()

print(solution.search([4, 5, 6, 7, 0, 1, 2], 0))
print(solution.search([4, 5, 6, 7, 0, 1, 2], 3))
print(solution.search([1], 0))
//: [Next](@next)
