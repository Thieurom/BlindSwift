//
//  SetMatrixZeroes.swift
//  BlindSwift
//
//  Created by Doan Thieu on 25/1/25.
//

extension Solution {

    public func setZeroes(_ matrix: inout [[Int]]) {
        var includeFirstRow = false
        var includeFirstColumn = false

        for i in (0 ..< matrix.count) {
            for j in (0 ..< matrix[i].count) {
                guard matrix[i][j] == 0 else {
                    continue
                }
                if i == 0 {
                    includeFirstRow = true
                }
                if j == 0 {
                    includeFirstColumn = true
                }
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }

        for i in (1 ..< matrix.count) {
            if matrix[i][0] == 0 {
                matrix[i] = [Int](repeating: 0, count: matrix[i].count)
            }
        }

        for i in (1 ..< matrix[0].count) {
            if matrix[0][i] == 0 {
                for j in (0 ..< matrix.count) {
                    matrix[j][i] = 0
                }
            }
        }

        if includeFirstRow {
            matrix[0] = [Int](repeating: 0, count: matrix[0].count)
        }
        if includeFirstColumn {
            for i in (0 ..< matrix.count) {
                matrix[i][0] = 0
            }
        }
    }
}
