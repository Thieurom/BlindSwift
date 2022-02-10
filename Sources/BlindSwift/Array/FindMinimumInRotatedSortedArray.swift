//
//  FindMinimumInRotatedSortedArray.swift
//  
//
//  Created by Doan Le Thieu on 09/02/2022.
//

extension Solution {
    // Recursive solution
    // Time: O(lgn)
    // Space: O(lgn)
    public func findMin1(_ nums: [Int]) -> Int {
        return _findMin1(nums, start: 0, end: nums.count - 1)
    }

    private func _findMin1(_ nums: [Int], start: Int, end: Int) -> Int {
        // There's 1 element
        if start == end { return nums[start] }
        // 2 elements
        if end == start + 1 { return min(nums[start], nums[end]) }
        // No rotated
        if nums[start] < nums[end] { return nums[start] }

        let middle = (start + end) / 2
        if nums[middle] > nums[start] {
            return _findMin1(nums, start: middle+1, end: end)
        } else {
            return _findMin1(nums, start: start, end: middle)
        }
    }

    // Iterative solution
    // Time: O(lgn)
    // Space: O(1)
    public func findMin2(_ nums: [Int]) -> Int {
        var start = 0
        var end = nums.count - 1

        while start < end {
            if nums[start] < nums[end] {
                break
            }
            
            let middle = (start + end) / 2
            // The trick is using `>=` instead of `>` :)
            if nums[middle] >= nums[0] {
                start = middle + 1
            } else {
                end = middle
            }
        }

        return nums[start]
    }
}
