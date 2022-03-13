//
//  HouseRobberII.swift
//  
//
//  Created by Doan Le Thieu on 14/03/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func rob2(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }

        if nums.count == 1 {
            return nums[0]
        }

        var o1 = 0
        var o2 = nums[0]
        var e1 = 0
        var e2 = 0

        for i in 1..<nums.count-1 {
            var temp = o2
            o2 = max(o2, nums[i] + o1)
            o1 = temp

            temp = e2
            e2 = max(e2, nums[i] + e1)
            e1 = temp
        }

        e2 = max(e2, e1 + nums.last!)

        return max(e2, o2)
    }
}
