//
//  Climbing Stairs.swift
//  
//
//  Created by Doan Le Thieu on 16/02/2022.
//

extension Solution {
    // Time: O(2^n)
    // Space: O(n)
    func _climbStairs1(_ n: Int) -> Int {
        if n == 0 { return 1 }
        if n == 1 { return 1 }
        return _climbStairs1(n - 1) + _climbStairs1(n - 2)
    }

    // Top down memoization
    // Time: O(n)
    // Space: O(n)
    func _climbStairs2(_ n: Int) -> Int {
        var cache = Array(repeating: 0, count: n + 1)
        cache[0] = 1
        cache[1] = 1

        func _climbStairs(_ n: Int, cache: inout [Int]) -> Int {
            if cache[n] == 0 {
                cache[n] = _climbStairs(n - 1, cache: &cache) + _climbStairs(n - 2, cache: &cache)
            }

            return cache[n]
        }

        return _climbStairs(n, cache: &cache)
    }

    // Iterative
    // Time: O(n)
    // Space: O(1)
    public func climbStairs(_ n: Int) -> Int {
        var m = 0
        var k = 1

        for _ in 0..<n {
            let temp = k
            k = k + m
            m = temp
        }

        return k
    }
}
