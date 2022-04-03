//
//  MissingNumber.swift
//  
//
//  Created by Doan Le Thieu on 03/04/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func missingNumber(_ nums: [Int]) -> Int {
        let max = nums.count
        let sum = max * (max + 1) / 2
        return sum - nums.reduce(0, +)
    }
}
