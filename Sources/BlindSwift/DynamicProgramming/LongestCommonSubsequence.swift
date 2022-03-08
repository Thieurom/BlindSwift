//
//  LongestCommonSubsequence.swift
//  
//
//  Created by Doan Le Thieu on 09/03/2022.
//

extension Solution {
    // Top-down DP with memoization
    // Time: O(m*n)
    // Space: O(m*n)
    public func longestCommonSubsequence1(_ text1: String, _ text2: String) -> Int {
        var dp = Array(
            repeating: Array(repeating: -1, count: text2.count),
            count: text1.count
        )

        return _lcsLength(s1: ArraySlice(text1), i: 0, s2: ArraySlice(text2), j: 0, dp: &dp)
    }

    fileprivate func _lcsLength(
        s1: ArraySlice<String.Element>,
        i: Int,
        s2: ArraySlice<String.Element>,
        j: Int,
        dp: inout [[Int]]
    ) -> Int {
        if i == s1.count || j == s2.count {
            return 0
        }

        if dp[i][j] == -1 {
            if s1[i] == s2[j] {
                dp[i][j] = 1 + _lcsLength(s1: s1, i: i+1, s2: s2, j: j+1, dp: &dp)
            } else {
                let l1 = _lcsLength(s1: s1, i: i, s2: s2, j: j+1, dp: &dp)
                let l2 = _lcsLength(s1: s1, i: i+1, s2: s2, j: j, dp: &dp)
                dp[i][j] = max(l1, l2)
            }
        }

        return dp[i][j]
    }
}

extension Solution {
    // Bottom-up DP
    // Time: O(m*n)
    // Space: O(n)
    public func longestCommonSubsequence2(_ text1: String, _ text2: String) -> Int {
        return _lcsLength(s1: ArraySlice(text1), i: 0, s2: ArraySlice(text2), j: 0)
    }

    fileprivate func _lcsLength(
        s1: ArraySlice<String.Element>,
        i: Int,
        s2: ArraySlice<String.Element>,
        j: Int
    ) -> Int {
        var dp = Array(
            repeating: Array(repeating: 0, count: s2.count + 1),
            count: 2
        )

        var maxLength = 0
        for i in 1...s1.count {
            for j in 1...s2.count {
                if s1[i-1] == s2[j-1] {
                    dp[i%2][j] = 1 + dp[(i-1)%2][j-1]
                } else {
                    dp[i%2][j] = max(dp[i%2][j-1], dp[(i-1)%2][j])
                }

                maxLength = max(maxLength, dp[i%2][j])
            }
        }

        return maxLength
    }
}
