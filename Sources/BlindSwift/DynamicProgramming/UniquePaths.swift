//
//  UniquePaths.swift
//
//
//  Created by Doan Thieu on 18/4/24.
//

extension Solution {

    // Time: O(mxn)
    // Space: O(max(m,n))
    public func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var prevRow = Array(repeating: 1, count: n)
        var currentRow = Array(repeating: 0, count: n)
        currentRow[0] = 1

        for i in (1..<m) {
            for j in (1..<n) {
                if i % 2 == 1 {
                    currentRow[j] = currentRow[j-1] + prevRow[j]
                } else {
                    prevRow[j] = prevRow[j-1] + currentRow[j]
                }
            }
        }

        if (m - 1) % 2 == 1 {
            return currentRow[n-1]
        }
        return prevRow[n-1]
    }
}
