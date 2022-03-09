//
//  LongestIncreasingSubsequence.swift
//  
//
//  Created by Doan Le Thieu on 10/03/2022.
//

extension Solution {
    // Top-down DP with memoization
    // Time: O(n^2)
    // Space: O(n^2)
    public func lengthOfLIS1(_ nums: [Int]) -> Int {
        var dp = Array(
            repeating: Array(repeating: -1, count: nums.count + 1),
            count: nums.count + 1
        )

        return _lengthOfLIS1(nums, previous: -1, current: 0, dp: &dp)
    }

    fileprivate func _lengthOfLIS1(_ nums: [Int], previous: Int, current: Int, dp: inout [[Int]]) -> Int {
        if current == nums.count {
            return 0
        }

        if dp[previous+1][current] == -1 {
            var l1 = 0
            if previous == -1 || nums[previous] < nums[current] {
                l1 = 1 + _lengthOfLIS1(nums, previous: current, current: current + 1, dp: &dp)
            }

            let l2 = _lengthOfLIS1(nums, previous: previous, current: current + 1, dp: &dp)
            dp[previous+1][current] = max(l1, l2)
        }

        return dp[previous+1][current]
    }
}

extension Solution {
    // Bottom-up DP
    // Time: O(n^2)
    // Space: O(n)
    public func lengthOfLIS2(_ nums: [Int]) -> Int {
        precondition(!nums.isEmpty)

        var dp = Array(repeating: 0, count: nums.count)
        dp[0] = 1
        var maxLength = 1

        for i in 1..<nums.count {
            dp[i] = 1
            for j in 0..<i {
                if nums[i] > nums[j] && dp[i] <= dp[j] {
                    dp[i] = 1 + dp[j]
                    maxLength = max(maxLength, dp[i])
                }
            }
        }

        return maxLength
    }
}
