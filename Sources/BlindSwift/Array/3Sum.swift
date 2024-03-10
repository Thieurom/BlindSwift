//
//  3Sum.swift
//  
//
//  Created by Doan Thieu on 10/3/24.
//

extension Solution {

    // Time: O(n^2)
    // Space: O(n)
    public func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var results = Set<[Int]>()

        for i in (0...nums.count - 3) {
            var j = i + 1
            var k = nums.count - 1

            while j < k {
                let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]

                if sum == 0 {
                    results.insert([sortedNums[i], sortedNums[j], sortedNums[k]])
                    break
                } else if sum > 0 {
                    k -= 1
                } else {
                    j += 1
                }
            }
        }

        return Array(results)
    }
}
