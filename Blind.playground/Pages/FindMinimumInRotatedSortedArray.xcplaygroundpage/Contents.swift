//: [Previous](@previous)
/*:
 ## [153. Find Minimum in Rotated Sorted Array](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)
 [__Array__] [__Medium__]

 Suppose an array of length `n` sorted in ascending order is __rotated__ between `1` and `n` times. For example, the array `nums = [0,1,2,4,5,6,7]` might become:

 - `[4,5,6,7,0,1,2]` if it was rotated `4` times.
 * `[0,1,2,4,5,6,7]` if it was rotated `7` times.

 Notice that __rotating__ an array `[a[0], a[1], a[2], ..., a[n-1]]` 1 time results in the array `[a[n-1], a[0], a[1], a[2], ..., a[n-2]]`.

 Given the sorted rotated array `nums` of __unique__ elements, return the _minimum element of this array_.

 You must write an algorithm that runs in `O(log n) time`.
 */
import BlindSwift

let solution = Solution()

let nums1 = [3, 4, 5, 1, 2]
assert(solution.findMin1(nums1) == 1)
assert(solution.findMin2(nums1) == 1)

let nums2 = [4, 5, 6, 7, 0, 1, 2]
assert(solution.findMin1(nums2) == 0)
assert(solution.findMin2(nums2) == 0)

let nums3 = [11, 13, 15, 17]
assert(solution.findMin1(nums3) == 11)
assert(solution.findMin2(nums3) == 11)

let nums4 = [2, 1]
assert(solution.findMin1(nums4) == 1)
assert(solution.findMin2(nums4) == 1)
//: [Next](@next)
