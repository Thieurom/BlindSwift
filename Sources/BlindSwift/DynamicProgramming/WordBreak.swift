//
//  WordBreak.swift
//
//
//  Created by Doan Thieu on 15/4/24.
//

extension Solution {

    public func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dp = Array(repeating: false, count: s.count)
        for i in (0..<s.count) {
            for j in (0...i).reversed() {
                if (dp[j] && wordDict.contains(s[j+1...i])) || (j == 0 && wordDict.contains(s[j...i])) {
                    dp[i] = true
                    break
                }
            }
        }
        return dp[s.count - 1]
    }
}
