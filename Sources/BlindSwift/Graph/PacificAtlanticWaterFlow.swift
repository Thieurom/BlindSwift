//
//  PacificAtlanticWaterFlow.swift
//  BlindSwift
//
//  Created by Doan Thieu on 18/1/25.
//

extension Solution {

    fileprivate struct Cell: Hashable {

        let row: Int
        let column: Int

        init(_ tuple: (Int, Int)) {
            row = tuple.0
            column = tuple.1
        }
    }

    public func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
        if heights.isEmpty || heights[0].isEmpty {
            return []
        }

        var pacificQueue = [(Int, Int)]()
        var atlanticQueue = [(Int, Int)]()
        for i in (0 ..< heights.count) {
            pacificQueue.append((i, 0))
            atlanticQueue.append((i, heights[i].count - 1))
        }
        for i in (0 ..< heights[0].count) {
            pacificQueue.append((0, i))
            atlanticQueue.append((heights.count - 1, i))
        }

        let pacificReachable = bfs(heights, &pacificQueue)
        let atlanticReachable = bfs(heights, &atlanticQueue)

        return Array(pacificReachable.intersection(atlanticReachable))
            .map { [$0.row, $0.column] }
    }

    fileprivate func bfs( _ heights: [[Int]], _ queue: inout [(Int, Int)]) -> Set<Cell> {
        var index = 0
        var result = Set<Cell>()

        while index < queue.count {
            let height = queue[index]
            result.insert(Cell(height))

            let neighbors = [(1, 0), (-1, 0), (0, 1), (0, -1)]
                .map {
                    Cell((height.0 + $0.0, height.1 + $0.1))
                }

            for neighbor in neighbors {
                guard !result.contains(neighbor) else {
                    continue
                }
                guard neighbor.row >= 0, neighbor.row < heights.count, neighbor.column >= 0, neighbor.column < heights[0].count else {
                    continue
                }
                if heights[neighbor.row][neighbor.column] >= heights[height.0][height.1] {
                    queue.append((neighbor.row, neighbor.column))
                }
            }

            index += 1
        }

        return result
    }
}
