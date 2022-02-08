//: [Previous](@previous)
/*:
 ## [238. Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)
 [__Array__] [__Medium__]

 Given an integer array `nums`, return _an array `answer` such that `answer[i]` is equal to the product of all the elements of `nums` except `nums[i]`_.

 The product of any prefix or suffix of `nums` is __guaranteed__ to fit in a __32-bit__ integer.

 You must write an algorithm that runs in `O(n)` time and without using the division operation.
 */
import BlindSwift

let solution = Solution()

let nums1 = [1, 2, 3, 4]
print(solution.productExceptSelf1(nums1))
print(solution.productExceptSelf2(nums1))

let nums2 = [-1, 1, 0, -3, 3]
print(solution.productExceptSelf1(nums2))
print(solution.productExceptSelf2(nums2))
//: [Next](@next)
