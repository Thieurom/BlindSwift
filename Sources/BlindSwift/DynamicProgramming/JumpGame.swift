//
//  JumpGame.swift
//  
//
//  Created by Doan Thieu on 18/4/24.
//

extension Solution {

    // Time: O(n)
    // Space: O(1)
    public func canJump(_ nums: [Int]) -> Bool {
        if nums.count == 1 { return true }

        var target = nums.count - 1
        for i in (0..<nums.count - 1).reversed() {
            if i + nums[i] >= target {
                target = i
            }
        }

        return target == 0
    }
}
