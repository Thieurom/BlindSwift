//
//  NumberOfConnectedComponentsInAnUndirectedGraph.swift
//  BlindSwift
//
//  Created by Doan Thieu on 18/1/25.
//

extension Solution {

    public func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        var graph = UnionFind((0 ..< n))
        var roots = Set<Int>()

        for edge in edges {
            graph.union(edge[0], edge[1])
        }

        for i in (0 ..< n) {
            if let root = graph.find(i) {
                roots.insert(root)
            }
        }

        return roots.count
    }
}
