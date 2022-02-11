//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  
//
//  Created by Doan Le Thieu on 11/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(n)
    public func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0
        var substring = Set<String.Element>()
        var index = s.startIndex
        // Start index of non-repeating substring
        var startIndex = s.startIndex

        while index < s.endIndex {
            let c = s[index]
            if !substring.contains(c) {
                substring.insert(c)
                maxLength = max(maxLength, substring.count)
                index = s.index(after: index)
            } else {
                substring.remove(s[startIndex])
                startIndex = s.index(after: startIndex)
            }
        }

        return maxLength
    }
}
