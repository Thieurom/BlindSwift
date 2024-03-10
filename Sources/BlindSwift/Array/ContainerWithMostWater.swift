//
//  ContainerWithMostWater.swift
//
//
//  Created by Doan Thieu on 10/3/24.
//

extension Solution {

    // Time: O(n)
    // Space: O(1)
    public func maxArea(_ height: [Int]) -> Int {
        var result = 0

        // O(n^2)
//        for i in (0..<height.count - 1) {
//            for j in (i..<height.count) {
//                let area = min(height[i], height[j]) * (j - i)
//                result = max(result, area)
//            }
//        }

        var i = 0
        var j = height.count - 1

        while i < j {
            let area = min(height[i], height[j]) * (j - i)
            result = max(result, area)
            if height[i] <= height[j] {
                i += 1
            } else {
                j -= 1
            }
        }

        return result
    }
}
