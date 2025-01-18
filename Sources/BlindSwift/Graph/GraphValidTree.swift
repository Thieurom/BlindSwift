//
//  GraphValidTree.swift
//  BlindSwift
//
//  Created by Doan Thieu on 18/1/25.
//

extension Solution {

    public func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        guard edges.count == n - 1 else { return false }
        var graph = UnionFind((0 ..< n))

        for edge in edges {
            if !graph.union(edge[0], edge[1]) {
                return false
            }
        }

        return true
    }
}
