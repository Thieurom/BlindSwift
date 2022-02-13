//
//  ValidAnagram.swift
//  
//
//  Created by Doan Le Thieu on 14/02/2022.
//

extension Solution {
    /// - Returns: `true` if `t` is an anagram of `s`, and `false` otherwise.
    ///
    /// Time: O(n)
    /// Space: O(1), if `s` and `t` contains only ASCII characters
    public func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [String.Element: Int]()

        for c in s {
            dict[c, default: 0] += 1
        }

        for c in t {
            dict[c, default: 0] -= 1
        }

        return dict.values.allSatisfy { $0 == 0 }
    }
}
