//
//  CombinationSumIV.swift
//  
//
//  Created by Doan Le Thieu on 11/03/2022.
//

// Top-down DP with memoization
// Time: O(target*nums)
// Space: O(target)
extension Solution {
    public func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var dp = Array(repeating: -1, count: target + 1)
        dp[0] = 1
        return _combinationSum4(nums, target, dp: &dp)
    }

    fileprivate func _combinationSum4(_ nums: [Int], _ target: Int, dp: inout [Int]) -> Int {
        if dp[target] != -1 {
            return dp[target]
        }

        var ways = 0
        for num in nums {
            if num <= target {
                ways += _combinationSum4(nums, target - num, dp: &dp)
            }
        }

        dp[target] = ways
        return ways
    }
}

// Bottom-down DP
// Time: O(target*nums)
// Space: O(target)
extension Solution {
    public func combinationSum4b(_ nums: [Int], _ target: Int) -> Int {
        var dp = Array(repeating: 0, count: target + 1)
        dp[0] = 1

        for t in 1...target {
            for num in nums {
                if num <= t && !dp[t].addingReportingOverflow(dp[t-num]).overflow {
                    dp[t] += dp[t-num]
                }
            }
        }

        return dp[target]
    }
}
