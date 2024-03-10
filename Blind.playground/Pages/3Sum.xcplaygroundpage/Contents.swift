//: [Previous](@previous)
/*:
 ## [15. 3Sum](https://leetcode.com/problems/3sum/description/)
 [__Array__] [__Medium__]

 Given an integer array nums, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

 Notice that the solution set must not contain duplicate triplets.
 */
import BlindSwift

let solution = Solution()
print(solution.threeSum([-1, 0, 1, 2, -1, 4]))
print(solution.threeSum([0, 1, 1]))
print(solution.threeSum([0, 0, 0]))
//: [Next](@next)
