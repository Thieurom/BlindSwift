//
//  NumberOfIslands.swift
//  BlindSwift
//
//  Created by Doan Thieu on 16/1/25.
//

extension Solution {

    struct Point: Equatable, Hashable {

        let x: Int
        let y: Int
    }

    public func numIslands(_ grid: [[Character]]) -> Int {
        let points = (0 ..< grid.count)
            .map { y in
                (0 ..< grid[y].count)
                    .map { x in
                        Point(x: x, y: y)
                    }
            }
            .flatMap { $0 }

        var map = UnionFind(points)

        for i in (0 ..< grid.count) {
            for j in (0 ..< grid[i].count) {
                if i > 0, grid[i][j] == grid[i - 1][j] {
                    map.union(Point(x: j, y: i), Point(x: j, y: i - 1))
                }
                if j > 0, grid[i][j] == grid[i][j - 1] {
                    map.union(Point(x: j, y: i), Point(x: j - 1, y: i))
                }
            }
        }

        var islands = Set<Point>()
        for i in (0 ..< grid.count) {
            for j in (0 ..< grid[i].count) {
                guard let root = map.find(Point(x: j, y: i)) else {
                    continue
                }
                if grid[root.y][root.x] == "1" {
                    islands.insert(root)
                }
            }
        }

        return islands.count
    }
}
