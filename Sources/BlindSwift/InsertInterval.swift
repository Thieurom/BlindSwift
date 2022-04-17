//
//  InsertInterval.swift
//  
//
//  Created by Doan Le Thieu on 17/04/2022.
//

extension Solution {
    public func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var _new = newInterval

        for (index, interval) in intervals.enumerated() {
            if _new[1] < interval[0] {
                return result + [_new] + intervals[index..<intervals.count]
            } else if _new[0] > interval[1] {
                result.append(interval)
            } else {
                _new = [min(_new[0], interval[0]), max(_new[1], interval[1])]
            }
        }

        result.append(_new)

        return result
    }
}
