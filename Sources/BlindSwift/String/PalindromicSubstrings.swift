//
//  PalindromicSubstrings.swift
//  
//
//  Created by Doan Le Thieu on 26/02/2022.
//

extension Solution {
    // Time: O(n^2)
    // Space: O(n^2)
    public func countSubstrings(_ s: String) -> Int {
        let s = Array(s)

        var dp = Array(
            repeating: Array(repeating: false, count: s.count),
            count: s.count
        )

        var count = 0
        for i in 0..<s.count {
            dp[i][i] = true
            count += 1
        }

        for i in (0..<s.count).reversed() {
            for j in i+1..<s.count {
                if s[i] == s[j], j - i == 1 || dp[i+1][j-1] {
                    dp[i][j] = true
                    count += 1
                }
            }
        }

        return count
    }
}
