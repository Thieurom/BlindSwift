//
//  LongestRepeatingCharacterReplacement.swift
//  
//
//  Created by Doan Le Thieu on 03/03/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(n)
    public func characterReplacement(_ s: String, _ k: Int) -> Int {
        return _characterReplacement(ArraySlice(s), k)
    }

    // To avoid dealing with String.Index
    fileprivate func _characterReplacement(_ s: ArraySlice<String.Element>, _ k: Int) -> Int {
        var dict = [String.Element: Int]()
        var i = 0
        var j = 0
        var maxCount = 0

        while j < s.count {
            let c = s[j]
            dict[c, default: 0] += 1
            maxCount = max(maxCount, dict[c]!)

            while (j - i + 1) - maxCount > k {
                let c = s[i]
                dict[c, default: 0] -= 1
                i += 1
            }

            j += 1
        }

        return j - i
    }
}
