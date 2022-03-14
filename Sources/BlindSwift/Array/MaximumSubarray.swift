//
//  MaximumSubarray.swift
//  
//
//  Created by Doan Le Thieu on 14/03/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func maxSubArray(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var sum = nums[0]
        var maxSum = nums[0]

        for num in nums.dropFirst() {
            sum = max(num, sum + num)
            maxSum = max(maxSum, sum)
        }

        return maxSum
    }
}
