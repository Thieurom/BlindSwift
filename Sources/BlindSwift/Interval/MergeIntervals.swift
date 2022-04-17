//
//  MergeIntervals.swift
//  
//
//  Created by Doan Le Thieu on 17/04/2022.
//

extension Solution {
    // Time: O(nlgn)
    // Space: O(n)
    public func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { $0[0] < $1[0] }
        var result = [[Int]]()

        for interval in intervals {
            if var last = result.last, last[1] >= interval[0] {
                last[1] = max(last[1], interval[1])
                result[result.count-1] = last
            } else {
                result.append(interval)
            }
        }

        return result
    }
}
