//
//  TwoSum.swift
//  
//
//  Created by Doan Le Thieu on 06/02/2022.
//

extension Solution {
    // Time: O(n^2)
    // Space: O(1)
    public func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }

        return []
    }

    // Time: O(n)
    // Space: O(n)
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numsDict = [Int: Int]()

        for (index, value) in nums.enumerated() {
            let complement = target - value

            if let i = numsDict[complement] {
                return [i, index]
            }

            numsDict[value] = index
        }

        return []
    }
}
