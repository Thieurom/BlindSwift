//
//  NumberOf1Bits.swift
//  
//
//  Created by Doan Le Thieu on 03/04/2022.
//

extension Solution {
    public func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var number = n

        while number > 0 {
            count += 1
            number &= number - 1
        }

        return count
    }
}
