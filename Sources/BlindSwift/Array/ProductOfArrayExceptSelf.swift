//
//  ProductOfArrayExceptSelf.swift
//  
//
//  Created by Doan Le Thieu on 08/02/2022.
//

extension Solution {
    // Loop twice
    public func productExceptSelf1(_ nums: [Int]) -> [Int] {
        var products = Array(repeating: 1, count: nums.count)
        var product = 1

        for i in 0..<nums.count {
            product *= (i == 0 ? 1 : nums[i-1])
            products[i] = product
        }

        product = 1
        // Traverse from back to front
        for i in (0..<nums.count).reversed() {
            product *= (i == products.count - 1 ? 1 : nums[i+1])
            products[i] *= product
        }

        return products
    }

    // Time: O(n)
    // Space: O(1)
    // Loop once
    public func productExceptSelf2(_ nums: [Int]) -> [Int] {
        var products = Array(repeating: 1, count: nums.count)
        var pre = 1
        var post = 1

        for i in 0..<nums.count {
            pre *= (i == 0 ? 1 : nums[i-1])
            products[i] *= pre

            let j = nums.count - i - 1
            post *= (j == products.count - 1 ? 1 : nums[j+1])
            products[j] *= post
        }

        return products
    }
}
