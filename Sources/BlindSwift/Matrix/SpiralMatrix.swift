//
//  SpiralMatrix.swift
//  BlindSwift
//
//  Created by Doan Thieu on 25/1/25.
//

extension Solution {

    public func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var result = [Int]()
        var startingRow = 0
        var endingRow = matrix.count - 1
        var startingColumn = 0
        var endingColumn = matrix[0].count - 1

        while result.count < matrix.count * matrix[0].count {
            if startingColumn <= endingColumn {
                for c in (startingColumn ... endingColumn) {
                    result.append(matrix[startingRow][c])
                }
            }
            if startingRow + 1 <= endingRow {
                for r in (startingRow + 1 ... endingRow) {
                    result.append(matrix[r][endingColumn])
                }
            }
            if startingRow < endingRow, startingColumn < endingColumn {
                for c in (startingColumn ..< endingColumn).reversed() {
                    result.append(matrix[endingRow][c])
                }
            }
            if startingColumn < endingColumn, startingRow + 1 < endingRow {
                for r in (startingRow + 1 ..< endingRow).reversed() {
                    result.append(matrix[r][startingColumn])
                }
            }
            startingRow += 1
            endingRow -= 1
            startingColumn += 1
            endingColumn -= 1
        }

        return result
    }
}
