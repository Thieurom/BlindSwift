//
//  DecodeWays.swift
//
//
//  Created by Doan Thieu on 14/4/24.
//

extension Solution {

    // Time: O(n)
    // Space: O(1)
    public func numDecodings(_ s: String) -> Int {
        if s.isEmpty { return 0 }

        var s1 = 1
        var s2 = 0
        if s[s.count - 1] != "0" {
            s2 = 1
        }

        for i in (0..<s.count-1).reversed() {
            let temp = s2
            if s[i] != "0" {
                if let number = Int(s[i...i+1]), number <= 26 {
                    s2 += s1
                }
            } else {
                s2 = 0
            }
            s1 = temp
        }
        return s2
    }
}
