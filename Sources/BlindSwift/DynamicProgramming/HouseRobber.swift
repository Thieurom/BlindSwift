//
//  HouseRobber.swift
//  
//
//  Created by Doan Le Thieu on 13/03/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func rob(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }

        var s1 = 0
        var s2 = nums[0]

        for i in 1..<nums.count {
            let temp = s2
            s2 = max(s2, nums[i] + s1)
            s1 = temp
        }

        return s2
    }
}
