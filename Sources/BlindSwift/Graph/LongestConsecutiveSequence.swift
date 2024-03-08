//
//  LongestConsecutiveSequence.swift
//
//
//  Created by Doan Thieu on 08/03/2024.
//

extension Solution {
    // Time: O(n)
    // Space: O(n)
    public func longestConsecutive(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)

        var maxLength = 0
        for num in nums {
            var length = 0
            if !numsSet.contains(num - 1) {
                while numsSet.contains(num + length) {
                    length += 1
                }
            }

            maxLength = max(maxLength, length)
        }

        return maxLength
    }
}
