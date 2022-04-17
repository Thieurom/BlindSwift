//: [Previous](@previous)
/*:
 ## [56. Merge Intervals](https://leetcode.com/problems/merge-intervals/)
 [__Interval__] [__Medium__]

 Given an array of `intervals` where `intervals[i] = [starti, endi]`, merge all overlapping intervals, _and return an array of the non-overlapping intervals that cover all the intervals in the input_.
 */
import BlindSwift

let solution = Solution()

print(solution.eraseOverlapIntervals([[1, 2], [2, 3], [3, 4], [1, 3]]))
print(solution.eraseOverlapIntervals([[1, 2], [1, 2], [1, 2]]))
print(solution.eraseOverlapIntervals([[1, 2], [2, 3]]))
//: [Next](@next)
