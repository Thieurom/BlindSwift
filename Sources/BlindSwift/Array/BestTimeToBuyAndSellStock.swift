//
//  BestTimeToBuyAndSellStock.swift
//  
//
//  Created by Doan Le Thieu on 06/02/2022.
//

extension Solution {
    // Time: O(n^2)
    // Space: O(1)
    public func maxProfit1(_ prices: [Int]) -> Int {
        var maxProfit = 0

        for i in 0..<prices.count {
            for j in i..<prices.count {
                maxProfit = max(maxProfit, prices[j] - prices[i])
            }
        }

        return maxProfit
    }

    // Time: O(n)
    // Space: O(1)
    public func maxProfit2(_ prices: [Int]) -> Int {
        var buy = 0
        var sell = 1
        var maxProfit = 0

        while sell < prices.count {
            let profit = prices[sell] - prices[buy]
            if profit > 0 {
                maxProfit = max(maxProfit, profit)
            } else {
                buy = sell
            }

            sell += 1
        }

        return maxProfit
    }

    // Time: O(n)
    // Space: O(1)
    public func maxProfit3(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0

        for price in prices {
            maxProfit = max(maxProfit, price - minPrice)
            minPrice = min(price, minPrice)
        }

        return maxProfit
    }
}
