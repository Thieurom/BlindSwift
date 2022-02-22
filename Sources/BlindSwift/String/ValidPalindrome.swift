//
//  ValidPalindrome.swift
//  
//
//  Created by Doan Le Thieu on 22/02/

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func isPalindrome(_ s: String) -> Bool {
        var i = s.startIndex
        var j = s.index(before: s.endIndex)

        while i < j {
            while !s[i].isAlphaNumeric && i < j {
                i = s.index(after: i)
            }

            while !s[j].isAlphaNumeric && i < j {
                j = s.index(before: j)
            }

            if s[i].lowercased() != s[j].lowercased() {
                return false
            }

            // This check is necessary to avoid out of bound index
            if i < s.endIndex {
                i = s.index(after: i)
            }

            if j > s.startIndex {
                j = s.index(before: j)
            }
        }

        return true
    }
}

fileprivate extension String.Element {
    var isAlphaNumeric: Bool {
        return isLetter || isNumber
    }
}
