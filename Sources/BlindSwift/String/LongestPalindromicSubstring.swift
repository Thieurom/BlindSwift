//
//  Longest Palindromic Substring.swift
//  
//
//  Created by Doan Le Thieu on 25/02/2022.
//

extension Solution {
    // Brute force
    // Time: O(3^n)
    // Space: O(n)
    func _longestPalindrome(_ s: String) -> String {
        return __longestPalindrome(ArraySlice(s), start: 0, end: s.count - 1)
    }

    fileprivate func __longestPalindrome(_ s: ArraySlice<String.Element>, start: Int, end: Int) -> String {
        if start > end { return "" }
        if start == end { return String(s[start]) }

        if s[start] == s[end] {
            let remaining = __longestPalindrome(s, start: start + 1, end: end - 1)
            if remaining.count == end - start - 1 {
                return String(s[start...end])
            }
        }

        let l1 = __longestPalindrome(s, start: start, end: end - 1)
        let l2 = __longestPalindrome(s, start: start + 1, end: end)
        return l1.count > l2.count ? l1 : l2
    }
}

extension Solution {
    fileprivate struct Bound: Hashable {
        let start: Int
        let end: Int

        init(_ start: Int, _ end: Int) {
            self.start = start
            self.end = end
        }
    }

    // Top-down DP with memoization
    // Time: O(n^2)
    // Space: O(n^2)
    public func longestPalindrome1(_ s: String) -> String {
        var dp = [Bound: String]()
        return _longestPalindrome1(ArraySlice(s), bound: Bound(0, s.count - 1), dp: &dp)
    }

    fileprivate func _longestPalindrome1(_ s: ArraySlice<String.Element>, bound: Bound, dp: inout [Bound: String]) -> String {
        let start = bound.start
        let end = bound.end

        if start > end { return "" }
        if start == end { return String(s[start]) }

        if dp[bound] == nil {
            if s[start] == s[end] {
                let remaining = _longestPalindrome1(s, bound: Bound(start + 1, end - 1), dp: &dp)
                if remaining.count == end - start - 1 {
                    dp[bound] = String(s[start...end])
                    return dp[bound]!
                }
            }

            let l1 = _longestPalindrome1(s, bound: Bound(start, end - 1), dp: &dp)
            let l2 = _longestPalindrome1(s, bound: Bound(start + 1, end), dp: &dp)
            dp[bound] = l1.count > l2.count ? l1 : l2
        }

        return dp[bound]!
    }
}

// Bottom-up DP
// Time: O(n^2)
// Space: O(n^2)
extension Solution {
    public func longestPalindrome2(_ s: String) -> String {
        // To make life easier
        let s = Array(s)

        var dp = Array(
            repeating: Array(repeating: false, count: s.count),
            count: s.count
        )

        for i in (0..<s.count) {
            dp[i][i] = true
        }

        var start = 0
        var end = 0

        for i in (0..<s.count).reversed() {
            for j in (i+1..<s.count) {
                if s[i] == s[j], j - i == 1 || dp[i+1][j-1] {
                    dp[i][j] = true
                    if j - i > end - start {
                        start = i
                        end = j
                    }
                }
            }
        }

        return String(s[start...end])
    }
}

// Expand Around Center
// Time: O(n^2)
// Space: O(1)
extension Solution {
    public func longestPalindrome3(_ s: String) -> String {
        let s = Array(s)
        var start = 0
        var end = 0

        for i in (0..<s.count) {
            let l1 = expandAroundCenter(s, left: i, right: i)
            let l2 = expandAroundCenter(s, left: i, right: i + 1)
            let l = max(l1, l2)

            if l > end - start {
                start = i - (l - 1) / 2
                end = i + l / 2
            }
        }

        return String(s[start...end])
    }

    fileprivate func expandAroundCenter(_ s: [String.Element], left: Int, right: Int) -> Int {
        var i = left
        var j = right

        while i >= 0 && j < s.count && s[i] == s[j] {
            i -= 1
            j += 1
        }

        return j - i - 1
    }
}
