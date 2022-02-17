//
//  CoinChange.swift
//  
//
//  Created by Doan Le Thieu on 16/02/2022.
//

extension Solution {
    // Top down memoization
    // Time: O(n*c)
    // Space: O(n)
    // `n` is `amount` value, `c` is number of coins
    public func coinChange1(_ coins: [Int], _ amount: Int) -> Int {
        var cache = Array(repeating: amount + 1, count: amount + 1)
        return _coinChange(coins, amount, &cache)
    }

    fileprivate func _coinChange(_ coins: [Int], _ amount: Int, _ cache: inout [Int]) -> Int {
        if amount < 0 { return -1 }
        if amount == 0 { return 0 }

        if cache[amount] > amount {
            var minChanges = Int.max
            for coin in coins {
                let changes = _coinChange(coins, amount - coin, &cache)
                if changes >= 0 {
                    minChanges = min(1 + changes, minChanges)
                }
            }

            cache[amount] = minChanges == Int.max ? -1 : minChanges
        }

        return cache[amount]
    }
}

extension Solution {
    // Iterative, bottom-up
    // Time: O(n*c)
    // Space: O(n)
    public func coinChange2(_ coins: [Int], _ amount: Int) -> Int {
        var cache = Array(repeating: amount + 1, count: amount + 1)
        cache[0] = 0

        for a in 0...amount {
            for coin in coins {
                if a - coin >= 0 {
                    cache[a] = min(cache[a], 1 + cache[a - coin])
                }
            }
        }

        return cache[amount] > amount ? -1 : cache[amount]
    }
}
