//
//  SearchInRotatedSortedArray.swift
//  
//
//  Created by Doan Le Thieu on 03/04/2022.
//

extension Solution {
    // Time: O(logn)
    // Space : O(1)
    public func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = (left + right) / 2

            if nums[mid] == target {
                return mid
            }

            if nums[left] <= nums[mid] {  // Left is normally ordered
                if target >= nums[left] && target < nums[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else { // Right is normally ordered
                if target > nums[mid] && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }

        return -1
    }
}
