//
//  ContainsDuplicate.swift
//  
//
//  Created by Doan Le Thieu on 07/02/2022.
//

extension Solution {
    // Time: O(n^2)
    // Space: O(1)
    public func containsDuplicate1(_ nums: [Int]) -> Bool {
        for i in  0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] == nums[j] {
                    return true
                }
            }
        }

        return false
    }

    // Time: O(nlgn)
    // Space: O(n)
    public func containsDuplicate2(_ nums: [Int]) -> Bool {
        let sortedNums = nums.sorted()

        for i in 1..<sortedNums.count {
            if sortedNums[i] == sortedNums[i-1] {
                return true
            }
        }

        return false
    }

    // Time: O(n)
    // Space: O(n)
    public func containsDuplicate3(_ nums: [Int]) -> Bool {
        var set = Set<Int>()

        for num in nums {
            if set.contains(num) {
                return true
            }

            set.insert(num)
        }

        return false
    }

    // Time: O(n)
    // Space: O(n)
    public func containsDuplicate3b(_ nums: [Int]) -> Bool {
        return nums.count != Set(nums).count
    }
}
