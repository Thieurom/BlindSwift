//
//  Non-overlappingIntervals.swift
//  
//
//  Created by Doan Le Thieu on 17/04/2022.
//

extension Solution {
    public func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        guard !intervals.isEmpty else {
            return 0
        }

        let intervals = intervals.sorted { $0[0] < $1[0] }
        var count = 0
        var lastEnd = intervals[0][1]

        for interval in intervals.dropFirst() {
            if interval[0] < lastEnd {
                count += 1
                lastEnd = min(lastEnd, interval[1])
            } else {
                lastEnd = interval[1]
            }
        }

        return count
    }
}
