//: [Previous](@previous)
/*:
 ## [57. Insert Interval](https://leetcode.com/problems/insert-interval/)
 [__Interval__] [__Medium__]

 You are given an array of non-overlapping intervals `intervals` where `intervals[i] = [starti, endi]` represent the start and the end of the `ith` interval and `intervals` is sorted in ascending order by `starti`. You are also given an interval `newInterval = [start, end]` that represents the start and end of another interval.

 Insert `newInterval` into `intervals` such that `intervals` is still sorted in ascending order by `starti` and `intervals` still does not have any overlapping intervals (merge overlapping intervals if necessary).

 Return `intervals` _after the insertion_.
 */
import BlindSwift

let solution = Solution()

print(solution.insert([[1, 3], [6, 9]], [2, 5]))
print(solution.insert([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8]))
//: [Next](@next)
