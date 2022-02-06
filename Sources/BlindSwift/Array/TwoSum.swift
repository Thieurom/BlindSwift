//
//  TwoSum.swift
//  
//
//  Created by Doan Le Thieu on 06/02/2022.
//

extension Solution {
    // Time: O(n^2)
    // Space: O(1)
    public func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }

        return []
    }

    // Time: O(n^2)
    // Space: O(1)
    public func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 1..<nums.count {
            let complement = target - nums[i]
            // `firstIndex()` call takes O(n) time
            if let j = nums[..<i].firstIndex(of: complement) {
                return [j, i]
            }
        }

        return []
    }

    // Time: O(n)
    // Space: O(n)
    // Modify from `twoSum2`
    // Use an additional dictionary for fast lookup instead of
    // doing on array.
    public func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
        var numsDict = [Int: Int]()

        for (index, value) in nums.enumerated() {
            let complement = target - value

            // Dictionary looking-up takes constant time O(1)
            if let i = numsDict[complement] {
                return [i, index]
            }

            numsDict[value] = index
        }

        return []
    }
}
