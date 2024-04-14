//
//  String+Extensions.swift
//
//
//  Created by Doan Thieu on 14/4/24.
//

public extension String {

    subscript(_ r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return String(self[start..<end])
    }

    subscript(_ r: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return String(self[start...end])
    }

    subscript(_ i: Int) -> String {
        self[i...i]
    }
}
